; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/l4f00242t03.c_pt.bc'
source_filename = "../drivers/video/backlight/l4f00242t03.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.l4f00242t03_priv = type { ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.lcd_device = type { %struct.lcd_properties, %struct.mutex, ptr, %struct.mutex, %struct.notifier_block, %struct.device }
%struct.lcd_properties = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_l4f00242t03__308_252_l4f00242t03_driver_init6 = internal global ptr @l4f00242t03_driver_init, section ".initcall6.init", align 4
@l4f00242t03_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @l4f00242t03_probe, ptr @l4f00242t03_remove, ptr @l4f00242t03_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_l4f00242t03_driver_exit = internal global ptr @l4f00242t03_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author309 = internal constant [69 x i8] c"l4f00242t03.author=Alberto Panizzo <maramaopercheseimorto@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [46 x i8] c"l4f00242t03.description=EPSON L4F00242T03 LCD\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [53 x i8] c"l4f00242t03.file=drivers/video/backlight/l4f00242t03\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [27 x i8] c"l4f00242t03.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l4f00242t03\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@l4f00242t03_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 184, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unable to get the lcd l4f00242t03 reset gpio.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l4f00242t03_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/video/backlight/l4f00242t03.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@l4f00242t03_probe._entry_ptr = internal global ptr @l4f00242t03_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lcd l4f00242t03 reset\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@l4f00242t03_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 192, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unable to get the lcd l4f00242t03 data en gpio.\0A\00", [47 x i8] zeroinitializer }, align 32
@l4f00242t03_probe._entry_ptr.11 = internal global ptr @l4f00242t03_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lcd l4f00242t03 data enable\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@l4f00242t03_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Unable to get the IO regulator\0A\00", [60 x i8] zeroinitializer }, align 32
@l4f00242t03_probe._entry_ptr.16 = internal global ptr @l4f00242t03_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vcore\00", [26 x i8] zeroinitializer }, align 32
@l4f00242t03_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 207, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Unable to get the core regulator\0A\00", [58 x i8] zeroinitializer }, align 32
@l4f00242t03_probe._entry_ptr.20 = internal global ptr @l4f00242t03_probe._entry.18, section ".printk_index", align 4
@l4f_ops = internal global { %struct.lcd_ops, [40 x i8] } { %struct.lcd_ops { ptr @l4f00242t03_lcd_power_get, ptr @l4f00242t03_lcd_power_set, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@l4f00242t03_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 221, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Epson l4f00242t03 lcd probed.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@l4f00242t03_probe._entry_ptr.24 = internal global ptr @l4f00242t03_probe._entry.21, section ".printk_index", align 4
@l4f00242t03_lcd_init.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"l4f00242t03_lcd_init\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"initializing LCD\0A\00", [46 x i8] zeroinitializer }, align 32
@l4f00242t03_lcd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.4, i32 56, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to set the IO regulator voltage.\0A\00", [55 x i8] zeroinitializer }, align 32
@l4f00242t03_lcd_init._entry_ptr = internal global ptr @l4f00242t03_lcd_init._entry, section ".printk_index", align 4
@l4f00242t03_lcd_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.4, i32 61, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to enable the IO regulator.\0A\00", [60 x i8] zeroinitializer }, align 32
@l4f00242t03_lcd_init._entry_ptr.30 = internal global ptr @l4f00242t03_lcd_init._entry.28, section ".printk_index", align 4
@l4f00242t03_lcd_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.25, ptr @.str.4, i32 67, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to set the core regulator voltage.\0A\00", [53 x i8] zeroinitializer }, align 32
@l4f00242t03_lcd_init._entry_ptr.33 = internal global ptr @l4f00242t03_lcd_init._entry.31, section ".printk_index", align 4
@l4f00242t03_lcd_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.25, ptr @.str.4, i32 73, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to enable the core regulator.\0A\00", [58 x i8] zeroinitializer }, align 32
@l4f00242t03_lcd_init._entry_ptr.36 = internal global ptr @l4f00242t03_lcd_init._entry.34, section ".printk_index", align 4
@l4f00242t03_reset.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.4, ptr @.str.38, i8 0, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l4f00242t03_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l4f00242t03_reset.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"l4f00242t03: l4f00242t03_reset.\0A\00", [63 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@l4f00242t03_lcd_power_set.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"l4f00242t03_lcd_power_set\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Resuming LCD\0A\00", [18 x i8] zeroinitializer }, align 32
@l4f00242t03_lcd_power_set.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.4, ptr @.str.42, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Standby the LCD\0A\00", [47 x i8] zeroinitializer }, align 32
@l4f00242t03_lcd_powerdown.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"l4f00242t03_lcd_powerdown\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Powering down LCD\0A\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"l4f00242t03_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 243, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 245, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 181, i32 42 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 183, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 187, i32 39 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 189, i32 43 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 191, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 195, i32 40 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 197, i32 47 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 199, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 204, i32 49 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 206, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [8 x i8] c"l4f_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 161, i32 23 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 221, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 52, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 56, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 61, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 67, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 73, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 35, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 119, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 133, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [41 x i8] c"../drivers/video/backlight/l4f00242t03.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 89, i32 2 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_l4f00242t03_driver_exit, ptr @__initcall__kmod_l4f00242t03__308_252_l4f00242t03_driver_init6, ptr @l4f00242t03_driver_exit, ptr @l4f00242t03_lcd_init._entry, ptr @l4f00242t03_lcd_init._entry.28, ptr @l4f00242t03_lcd_init._entry.31, ptr @l4f00242t03_lcd_init._entry.34, ptr @l4f00242t03_lcd_init._entry_ptr, ptr @l4f00242t03_lcd_init._entry_ptr.30, ptr @l4f00242t03_lcd_init._entry_ptr.33, ptr @l4f00242t03_lcd_init._entry_ptr.36, ptr @l4f00242t03_probe._entry, ptr @l4f00242t03_probe._entry.14, ptr @l4f00242t03_probe._entry.18, ptr @l4f00242t03_probe._entry.21, ptr @l4f00242t03_probe._entry.9, ptr @l4f00242t03_probe._entry_ptr, ptr @l4f00242t03_probe._entry_ptr.11, ptr @l4f00242t03_probe._entry_ptr.16, ptr @l4f00242t03_probe._entry_ptr.20, ptr @l4f00242t03_probe._entry_ptr.24, ptr @l4f00242t03_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @l4f_ops, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4f00242t03_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4f00242t03_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4f00242t03_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4f00242t03_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4f00242t03_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4f_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4f00242t03_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4f00242t03_lcd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4f00242t03_lcd_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4f00242t03_lcd_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4f00242t03_lcd_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @l4f00242t03_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @l4f00242t03_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @l4f00242t03_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @l4f00242t03_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l4f00242t03_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 28, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %1 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 9, ptr %bits_per_word, align 1
  %call1 = tail call i32 @spi_setup(ptr noundef %spi) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %call.i, align 4
  %call4 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef 7) #6
  %reset = getelementptr inbounds %struct.l4f00242t03_priv, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %reset, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2) #9
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call i32 @gpiod_set_consumer_name(ptr noundef %call4, ptr noundef nonnull @.str.7) #6
  %call15 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.8, i32 noundef 3) #6
  %enable = getelementptr inbounds %struct.l4f00242t03_priv, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call15, ptr %enable, align 4
  %cmp.i105 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %do.end21, label %if.end25

do.end21:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10) #9
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end11
  %call27 = tail call i32 @gpiod_set_consumer_name(ptr noundef %call15, ptr noundef nonnull @.str.12) #6
  %call29 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.13) #6
  %io_reg = getelementptr inbounds %struct.l4f00242t03_priv, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %io_reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call29, ptr %io_reg, align 4
  %cmp.i106 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %do.end35, label %if.end39

do.end35:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3) #9
  %12 = ptrtoint ptr %io_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_reg, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end25
  %call41 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.17) #6
  %core_reg = getelementptr inbounds %struct.l4f00242t03_priv, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %core_reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call41, ptr %core_reg, align 4
  %cmp.i107 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %do.end47, label %if.end51

do.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3) #9
  %16 = ptrtoint ptr %core_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core_reg, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end51:                                         ; preds = %if.end39
  %call54 = tail call ptr @devm_lcd_device_register(ptr noundef %spi, ptr noundef nonnull @.str, ptr noundef %spi, ptr noundef nonnull %call.i, ptr noundef nonnull @l4f_ops) #6
  %ld = getelementptr inbounds %struct.l4f00242t03_priv, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %ld to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call54, ptr %ld, align 4
  %cmp.i108 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call54 to i32
  br label %cleanup

if.end60:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @l4f00242t03_lcd_init(ptr noundef %spi)
  %lcd_state = getelementptr inbounds %struct.l4f00242t03_priv, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %lcd_state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %lcd_state, align 4
  %22 = ptrtoint ptr %ld to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ld, align 4
  %call62 = tail call i32 @l4f00242t03_lcd_power_set(ptr noundef %23, i32 noundef 0)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.22) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then57, %do.end47, %do.end35, %do.end21, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ %10, %do.end21 ], [ %14, %do.end35 ], [ %18, %do.end47 ], [ %20, %if.then57 ], [ 0, %if.end60 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l4f00242t03_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ld = getelementptr inbounds %struct.l4f00242t03_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ld to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ld, align 4
  %call1 = tail call i32 @l4f00242t03_lcd_power_set(ptr noundef %3, i32 noundef 4)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @l4f00242t03_shutdown(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ld = getelementptr inbounds %struct.l4f00242t03_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ld to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ld, align 4
  %call1 = tail call i32 @l4f00242t03_lcd_power_set(ptr noundef %3, i32 noundef 4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_lcd_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @l4f00242t03_lcd_init(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %cmd = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #6
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 15200748257804640, ptr %cmd, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l4f00242t03_lcd_init.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l4f00242t03_lcd_init, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @l4f00242t03_lcd_init.__UNIQUE_ID_ddebug304, ptr noundef %spi, ptr noundef nonnull @.str.26) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %io_reg = getelementptr inbounds %struct.l4f00242t03_priv, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %io_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_reg, align 4
  %call4 = tail call i32 @regulator_set_voltage(ptr noundef %4, i32 noundef 1800000, i32 noundef 1800000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %5 = ptrtoint ptr %io_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_reg, align 4
  %call13 = tail call i32 @regulator_enable(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %core_reg = getelementptr inbounds %struct.l4f00242t03_priv, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %core_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core_reg, align 4
  %call21 = tail call i32 @regulator_set_voltage(ptr noundef %8, i32 noundef 2800000, i32 noundef 2800000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end30, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.32) #9
  %9 = ptrtoint ptr %io_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_reg, align 4
  %call29 = tail call i32 @regulator_disable(ptr noundef %10) #6
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %11 = ptrtoint ptr %core_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core_reg, align 4
  %call32 = tail call i32 @regulator_enable(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end41, label %do.end37

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.35) #9
  %13 = ptrtoint ptr %io_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_reg, align 4
  %call40 = tail call i32 @regulator_disable(ptr noundef %14) #6
  br label %cleanup

if.end41:                                         ; preds = %if.end30
  %reset = getelementptr inbounds %struct.l4f00242t03_priv, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset, align 4
  tail call fastcc void @l4f00242t03_reset(ptr noundef %16)
  %enable = getelementptr inbounds %struct.l4f00242t03_priv, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %enable, align 4
  tail call void @gpiod_set_value(ptr noundef %18, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 60) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %19 = getelementptr inbounds i8, ptr %t.i, i32 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 92)
  %21 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cmd, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %22 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %23 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %24 = call ptr @memset(ptr %23, i32 0, i32 40)
  %25 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %27 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end41.spi_write.exit_crit_edge

if.end41.spi_write.exit_crit_edge:                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end41.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit, %do.end37, %do.end26, %do.end18, %do.end9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l4f00242t03_lcd_power_set(ptr nocapture noundef readonly %ld, i32 noundef %power) #2 align 64 {
entry:
  %msg.i.i125 = alloca %struct.spi_message, align 4
  %t.i126 = alloca %struct.spi_transfer, align 4
  %msg.i.i113 = alloca %struct.spi_message, align 4
  %t.i114 = alloca %struct.spi_transfer, align 4
  %msg.i.i101 = alloca %struct.spi_message, align 4
  %t.i102 = alloca %struct.spi_transfer, align 4
  %msg.i.i89 = alloca %struct.spi_message, align 4
  %t.i90 = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %slpout = alloca i16, align 2
  %dison = alloca i16, align 2
  %slpin = alloca i16, align 2
  %disoff = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %slpout) #6
  %4 = ptrtoint ptr %slpout to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 17, ptr %slpout, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dison) #6
  %5 = ptrtoint ptr %dison to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 41, ptr %dison, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %slpin) #6
  %6 = ptrtoint ptr %slpin to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 16, ptr %slpin, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %disoff) #6
  %7 = ptrtoint ptr %disoff to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 40, ptr %disoff, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %power)
  %cmp = icmp slt i32 %power, 2
  br i1 %cmp, label %if.then, label %if.else19

if.then:                                          ; preds = %entry
  %lcd_state = getelementptr inbounds %struct.l4f00242t03_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %lcd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lcd_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp2 = icmp slt i32 %9, 2
  br i1 %cmp2, label %if.then.if.end60_crit_edge, label %if.else

if.then.if.end60_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp5 = icmp ult i32 %9, 4
  br i1 %cmp5, label %do.body, label %if.else13

do.body:                                          ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l4f00242t03_lcd_power_set.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l4f00242t03_lcd_power_set, %if.then10)) #6
          to label %do.end [label %if.then10], !srcloc !98

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @l4f00242t03_lcd_power_set.__UNIQUE_ID_ddebug306, ptr noundef %3, ptr noundef nonnull @.str.41) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %10 = getelementptr inbounds i8, ptr %t.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 92)
  %12 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %slpout, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %13 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %14 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %do.end.spi_write.exit_crit_edge

do.end.spi_write.exit_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %do.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @msleep(i32 noundef 60) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i90) #6
  %24 = getelementptr inbounds i8, ptr %t.i90, i32 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 92)
  %26 = ptrtoint ptr %t.i90 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dison, ptr %t.i90, align 4
  %len1.i91 = getelementptr inbounds %struct.spi_transfer, ptr %t.i90, i32 0, i32 2
  %27 = ptrtoint ptr %len1.i91 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %len1.i91, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i89) #6
  %28 = getelementptr inbounds i8, ptr %msg.i.i89, i32 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 40)
  %30 = ptrtoint ptr %msg.i.i89 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %msg.i.i89, ptr %msg.i.i89, align 4
  %prev.i.i.i.i.i.i92 = getelementptr inbounds %struct.list_head, ptr %msg.i.i89, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i89, ptr %prev.i.i.i.i.i.i92, align 4
  %resources.i.i.i.i.i93 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i89, i32 0, i32 10
  %32 = ptrtoint ptr %resources.i.i.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %resources.i.i.i.i.i93, ptr %resources.i.i.i.i.i93, align 4
  %prev.i2.i.i.i.i.i94 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i89, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %prev.i2.i.i.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %resources.i.i.i.i.i93, ptr %prev.i2.i.i.i.i.i94, align 4
  %transfer_list.i.i.i.i95 = getelementptr inbounds %struct.spi_transfer, ptr %t.i90, i32 0, i32 18
  %call.i.i.i.i.i.i96 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i95, ptr noundef nonnull %msg.i.i89, ptr noundef nonnull %msg.i.i89) #6
  br i1 %call.i.i.i.i.i.i96, label %if.end.i.i.i.i.i.i98, label %spi_write.exit.spi_write.exit100_crit_edge

spi_write.exit.spi_write.exit100_crit_edge:       ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit100

if.end.i.i.i.i.i.i98:                             ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %prev.i.i.i.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %transfer_list.i.i.i.i95, ptr %prev.i.i.i.i.i.i92, align 4
  %35 = ptrtoint ptr %transfer_list.i.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i89, ptr %transfer_list.i.i.i.i95, align 4
  %prev3.i.i.i.i.i.i97 = getelementptr inbounds %struct.spi_transfer, ptr %t.i90, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i89, ptr %prev3.i.i.i.i.i.i97, align 4
  %37 = ptrtoint ptr %msg.i.i89 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %transfer_list.i.i.i.i95, ptr %msg.i.i89, align 4
  br label %spi_write.exit100

spi_write.exit100:                                ; preds = %if.end.i.i.i.i.i.i98, %spi_write.exit.spi_write.exit100_crit_edge
  %call.i.i99 = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i89) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i89) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i90) #6
  br label %if.end60

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @l4f00242t03_lcd_init(ptr noundef %3)
  %38 = ptrtoint ptr %lcd_state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %lcd_state, align 4
  %ld15 = getelementptr inbounds %struct.l4f00242t03_priv, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %ld15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ld15, align 4
  %call16 = tail call i32 @l4f00242t03_lcd_power_set(ptr noundef %40, i32 noundef %power)
  br label %if.end60

if.else19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %power)
  %cmp20 = icmp ult i32 %power, 4
  %lcd_state22 = getelementptr inbounds %struct.l4f00242t03_priv, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %lcd_state22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lcd_state22, align 4
  br i1 %cmp20, label %if.then21, label %if.else53

if.then21:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp23 = icmp slt i32 %42, 2
  br i1 %cmp23, label %do.body25, label %if.else44

do.body25:                                        ; preds = %if.then21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l4f00242t03_lcd_power_set.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l4f00242t03_lcd_power_set, %if.then37)) #6
          to label %do.end41 [label %if.then37], !srcloc !98

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @l4f00242t03_lcd_power_set.__UNIQUE_ID_ddebug307, ptr noundef %3, ptr noundef nonnull @.str.42) #6
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body25
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i102) #6
  %43 = getelementptr inbounds i8, ptr %t.i102, i32 4
  %44 = call ptr @memset(ptr %43, i32 0, i32 92)
  %45 = ptrtoint ptr %t.i102 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %disoff, ptr %t.i102, align 4
  %len1.i103 = getelementptr inbounds %struct.spi_transfer, ptr %t.i102, i32 0, i32 2
  %46 = ptrtoint ptr %len1.i103 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %len1.i103, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i101) #6
  %47 = getelementptr inbounds i8, ptr %msg.i.i101, i32 8
  %48 = call ptr @memset(ptr %47, i32 0, i32 40)
  %49 = ptrtoint ptr %msg.i.i101 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %msg.i.i101, ptr %msg.i.i101, align 4
  %prev.i.i.i.i.i.i104 = getelementptr inbounds %struct.list_head, ptr %msg.i.i101, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i101, ptr %prev.i.i.i.i.i.i104, align 4
  %resources.i.i.i.i.i105 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i101, i32 0, i32 10
  %51 = ptrtoint ptr %resources.i.i.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %resources.i.i.i.i.i105, ptr %resources.i.i.i.i.i105, align 4
  %prev.i2.i.i.i.i.i106 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i101, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %prev.i2.i.i.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %resources.i.i.i.i.i105, ptr %prev.i2.i.i.i.i.i106, align 4
  %transfer_list.i.i.i.i107 = getelementptr inbounds %struct.spi_transfer, ptr %t.i102, i32 0, i32 18
  %call.i.i.i.i.i.i108 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i107, ptr noundef nonnull %msg.i.i101, ptr noundef nonnull %msg.i.i101) #6
  br i1 %call.i.i.i.i.i.i108, label %if.end.i.i.i.i.i.i110, label %do.end41.spi_write.exit112_crit_edge

do.end41.spi_write.exit112_crit_edge:             ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit112

if.end.i.i.i.i.i.i110:                            ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %prev.i.i.i.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %transfer_list.i.i.i.i107, ptr %prev.i.i.i.i.i.i104, align 4
  %54 = ptrtoint ptr %transfer_list.i.i.i.i107 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %msg.i.i101, ptr %transfer_list.i.i.i.i107, align 4
  %prev3.i.i.i.i.i.i109 = getelementptr inbounds %struct.spi_transfer, ptr %t.i102, i32 0, i32 18, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg.i.i101, ptr %prev3.i.i.i.i.i.i109, align 4
  %56 = ptrtoint ptr %msg.i.i101 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %transfer_list.i.i.i.i107, ptr %msg.i.i101, align 4
  br label %spi_write.exit112

spi_write.exit112:                                ; preds = %if.end.i.i.i.i.i.i110, %do.end41.spi_write.exit112_crit_edge
  %call.i.i111 = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i101) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i101) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i102) #6
  call void @msleep(i32 noundef 60) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i114) #6
  %57 = getelementptr inbounds i8, ptr %t.i114, i32 4
  %58 = call ptr @memset(ptr %57, i32 0, i32 92)
  %59 = ptrtoint ptr %t.i114 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %slpin, ptr %t.i114, align 4
  %len1.i115 = getelementptr inbounds %struct.spi_transfer, ptr %t.i114, i32 0, i32 2
  %60 = ptrtoint ptr %len1.i115 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %len1.i115, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i113) #6
  %61 = getelementptr inbounds i8, ptr %msg.i.i113, i32 8
  %62 = call ptr @memset(ptr %61, i32 0, i32 40)
  %63 = ptrtoint ptr %msg.i.i113 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %msg.i.i113, ptr %msg.i.i113, align 4
  %prev.i.i.i.i.i.i116 = getelementptr inbounds %struct.list_head, ptr %msg.i.i113, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i.i.i.i.i116 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %msg.i.i113, ptr %prev.i.i.i.i.i.i116, align 4
  %resources.i.i.i.i.i117 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i113, i32 0, i32 10
  %65 = ptrtoint ptr %resources.i.i.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %resources.i.i.i.i.i117, ptr %resources.i.i.i.i.i117, align 4
  %prev.i2.i.i.i.i.i118 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i113, i32 0, i32 10, i32 1
  %66 = ptrtoint ptr %prev.i2.i.i.i.i.i118 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %resources.i.i.i.i.i117, ptr %prev.i2.i.i.i.i.i118, align 4
  %transfer_list.i.i.i.i119 = getelementptr inbounds %struct.spi_transfer, ptr %t.i114, i32 0, i32 18
  %call.i.i.i.i.i.i120 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i119, ptr noundef nonnull %msg.i.i113, ptr noundef nonnull %msg.i.i113) #6
  br i1 %call.i.i.i.i.i.i120, label %if.end.i.i.i.i.i.i122, label %spi_write.exit112.spi_write.exit124_crit_edge

spi_write.exit112.spi_write.exit124_crit_edge:    ; preds = %spi_write.exit112
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit124

if.end.i.i.i.i.i.i122:                            ; preds = %spi_write.exit112
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %prev.i.i.i.i.i.i116 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %transfer_list.i.i.i.i119, ptr %prev.i.i.i.i.i.i116, align 4
  %68 = ptrtoint ptr %transfer_list.i.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg.i.i113, ptr %transfer_list.i.i.i.i119, align 4
  %prev3.i.i.i.i.i.i121 = getelementptr inbounds %struct.spi_transfer, ptr %t.i114, i32 0, i32 18, i32 1
  %69 = ptrtoint ptr %prev3.i.i.i.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %msg.i.i113, ptr %prev3.i.i.i.i.i.i121, align 4
  %70 = ptrtoint ptr %msg.i.i113 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %transfer_list.i.i.i.i119, ptr %msg.i.i113, align 4
  br label %spi_write.exit124

spi_write.exit124:                                ; preds = %if.end.i.i.i.i.i.i122, %spi_write.exit112.spi_write.exit124_crit_edge
  %call.i.i123 = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i113) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i113) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i114) #6
  br label %if.end60

if.else44:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp46 = icmp ult i32 %42, 4
  br i1 %cmp46, label %if.else44.if.end60_crit_edge, label %if.else48

if.else44.if.end60_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.else48:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @l4f00242t03_lcd_init(ptr noundef %3)
  %71 = ptrtoint ptr %lcd_state22 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %lcd_state22, align 4
  %call50 = tail call i32 @l4f00242t03_lcd_power_set(ptr noundef %ld, i32 noundef %power)
  br label %if.end60

if.else53:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp55.not = icmp eq i32 %42, 4
  br i1 %cmp55.not, label %if.else53.if.end60_crit_edge, label %if.then56

if.else53.if.end60_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then56:                                        ; preds = %if.else53
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i126) #6
  %72 = getelementptr inbounds i8, ptr %t.i126, i32 4
  %73 = call ptr @memset(ptr %72, i32 0, i32 92)
  %74 = ptrtoint ptr %t.i126 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %disoff, ptr %t.i126, align 4
  %len1.i127 = getelementptr inbounds %struct.spi_transfer, ptr %t.i126, i32 0, i32 2
  %75 = ptrtoint ptr %len1.i127 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 2, ptr %len1.i127, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i125) #6
  %76 = getelementptr inbounds i8, ptr %msg.i.i125, i32 8
  %77 = call ptr @memset(ptr %76, i32 0, i32 40)
  %78 = ptrtoint ptr %msg.i.i125 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %msg.i.i125, ptr %msg.i.i125, align 4
  %prev.i.i.i.i.i.i128 = getelementptr inbounds %struct.list_head, ptr %msg.i.i125, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %msg.i.i125, ptr %prev.i.i.i.i.i.i128, align 4
  %resources.i.i.i.i.i129 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i125, i32 0, i32 10
  %80 = ptrtoint ptr %resources.i.i.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %resources.i.i.i.i.i129, ptr %resources.i.i.i.i.i129, align 4
  %prev.i2.i.i.i.i.i130 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i125, i32 0, i32 10, i32 1
  %81 = ptrtoint ptr %prev.i2.i.i.i.i.i130 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %resources.i.i.i.i.i129, ptr %prev.i2.i.i.i.i.i130, align 4
  %transfer_list.i.i.i.i131 = getelementptr inbounds %struct.spi_transfer, ptr %t.i126, i32 0, i32 18
  %call.i.i.i.i.i.i132 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i131, ptr noundef nonnull %msg.i.i125, ptr noundef nonnull %msg.i.i125) #6
  br i1 %call.i.i.i.i.i.i132, label %if.end.i.i.i.i.i.i134, label %if.then56.spi_write.exit136_crit_edge

if.then56.spi_write.exit136_crit_edge:            ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit136

if.end.i.i.i.i.i.i134:                            ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %prev.i.i.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %transfer_list.i.i.i.i131, ptr %prev.i.i.i.i.i.i128, align 4
  %83 = ptrtoint ptr %transfer_list.i.i.i.i131 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %msg.i.i125, ptr %transfer_list.i.i.i.i131, align 4
  %prev3.i.i.i.i.i.i133 = getelementptr inbounds %struct.spi_transfer, ptr %t.i126, i32 0, i32 18, i32 1
  %84 = ptrtoint ptr %prev3.i.i.i.i.i.i133 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %msg.i.i125, ptr %prev3.i.i.i.i.i.i133, align 4
  %85 = ptrtoint ptr %msg.i.i125 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %transfer_list.i.i.i.i131, ptr %msg.i.i125, align 4
  br label %spi_write.exit136

spi_write.exit136:                                ; preds = %if.end.i.i.i.i.i.i134, %if.then56.spi_write.exit136_crit_edge
  %call.i.i135 = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i125) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i125) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i126) #6
  call void @msleep(i32 noundef 60) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %86 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l4f00242t03_lcd_powerdown.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l4f00242t03_lcd_power_set, %if.then.i)) #6
          to label %l4f00242t03_lcd_powerdown.exit [label %if.then.i], !srcloc !98

if.then.i:                                        ; preds = %spi_write.exit136
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @l4f00242t03_lcd_powerdown.__UNIQUE_ID_ddebug305, ptr noundef %3, ptr noundef nonnull @.str.44) #6
  br label %l4f00242t03_lcd_powerdown.exit

l4f00242t03_lcd_powerdown.exit:                   ; preds = %if.then.i, %spi_write.exit136
  %enable.i = getelementptr inbounds %struct.l4f00242t03_priv, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %enable.i, align 4
  call void @gpiod_set_value(ptr noundef %89, i32 noundef 0) #6
  %io_reg.i = getelementptr inbounds %struct.l4f00242t03_priv, ptr %87, i32 0, i32 3
  %90 = ptrtoint ptr %io_reg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %io_reg.i, align 4
  %call4.i = call i32 @regulator_disable(ptr noundef %91) #6
  %core_reg.i = getelementptr inbounds %struct.l4f00242t03_priv, ptr %87, i32 0, i32 4
  %92 = ptrtoint ptr %core_reg.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %core_reg.i, align 4
  %call5.i = call i32 @regulator_disable(ptr noundef %93) #6
  br label %if.end60

if.end60:                                         ; preds = %l4f00242t03_lcd_powerdown.exit, %if.else53.if.end60_crit_edge, %if.else48, %if.else44.if.end60_crit_edge, %spi_write.exit124, %if.else13, %spi_write.exit100, %if.then.if.end60_crit_edge
  %lcd_state61 = getelementptr inbounds %struct.l4f00242t03_priv, ptr %1, i32 0, i32 2
  %94 = ptrtoint ptr %lcd_state61 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %power, ptr %lcd_state61, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %disoff) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %slpin) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dison) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %slpout) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @l4f00242t03_lcd_power_get(ptr nocapture noundef readonly %ld) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lcd_state = getelementptr inbounds %struct.l4f00242t03_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %lcd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lcd_state, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @l4f00242t03_reset(ptr noundef %gpiod) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @l4f00242t03_reset.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@l4f00242t03_reset, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @l4f00242t03_reset.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.39) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @gpiod_set_value(ptr noundef %gpiod, i32 noundef 1) #6
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end
  %__ms.019 = phi i32 [ 100, %do.end ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.019, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #6
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value(ptr noundef %gpiod, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  tail call void @gpiod_set_value(ptr noundef %gpiod, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !51, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !87, !88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_l4f00242t03__308_252_l4f00242t03_driver_init6, !1, !"__initcall__kmod_l4f00242t03__308_252_l4f00242t03_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 252, i32 1}
!2 = !{ptr @__exitcall_l4f00242t03_driver_exit, !1, !"__exitcall_l4f00242t03_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author309, !4, !"__UNIQUE_ID_author309", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 254, i32 1}
!5 = !{ptr @__UNIQUE_ID_description310, !6, !"__UNIQUE_ID_description310", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 255, i32 1}
!7 = !{ptr @__UNIQUE_ID_file311, !8, !"__UNIQUE_ID_file311", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 256, i32 1}
!9 = !{ptr @__UNIQUE_ID_license312, !8, !"__UNIQUE_ID_license312", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 245, i32 11}
!12 = !{ptr @l4f00242t03_driver, !13, !"l4f00242t03_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 243, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 181, i32 42}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 183, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @l4f00242t03_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @l4f00242t03_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 187, i32 39}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 189, i32 43}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 191, i32 3}
!30 = !{ptr @l4f00242t03_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @l4f00242t03_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 195, i32 40}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 197, i32 47}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 199, i32 3}
!38 = !{ptr @l4f00242t03_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @l4f00242t03_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 204, i32 49}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 206, i32 3}
!44 = !{ptr @l4f00242t03_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @l4f00242t03_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 221, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @l4f00242t03_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @l4f00242t03_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @l4f_ops, !52, !"l4f_ops", i1 false, i1 false}
!52 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 161, i32 23}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 52, i32 2}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @l4f00242t03_lcd_init.__UNIQUE_ID_ddebug304, !54, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 56, i32 3}
!59 = !{ptr @l4f00242t03_lcd_init._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @l4f00242t03_lcd_init._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 61, i32 3}
!63 = !{ptr @l4f00242t03_lcd_init._entry.28, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @l4f00242t03_lcd_init._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 67, i32 3}
!67 = !{ptr @l4f00242t03_lcd_init._entry.31, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @l4f00242t03_lcd_init._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 73, i32 3}
!71 = !{ptr @l4f00242t03_lcd_init._entry.34, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @l4f00242t03_lcd_init._entry_ptr.36, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 35, i32 2}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @l4f00242t03_reset.__UNIQUE_ID_ddebug303, !74, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!77 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 119, i32 4}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @l4f00242t03_lcd_power_set.__UNIQUE_ID_ddebug306, !79, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 133, i32 4}
!84 = !{ptr @l4f00242t03_lcd_power_set.__UNIQUE_ID_ddebug307, !83, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/video/backlight/l4f00242t03.c", i32 89, i32 2}
!87 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @l4f00242t03_lcd_powerdown.__UNIQUE_ID_ddebug305, !86, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i64 2148282157, i64 2148282162, i64 2148282175, i64 2148282219, i64 2148282253, i64 2148282274}
