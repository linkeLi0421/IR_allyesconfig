; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-el15203000.c_pt.bc'
source_filename = "../drivers/leds/leds-el15203000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.el15203000 = type { ptr, %struct.mutex, ptr, i32, i32, [0 x %struct.el15203000_led] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.el15203000_led = type { %struct.led_classdev, ptr, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.led_pattern = type { i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_leds_el15203000__237_343_el15203000_driver_init6 = internal global ptr @el15203000_driver_init, section ".initcall6.init", align 4
@el15203000_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @el15203000_probe, ptr @el15203000_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @el15203000_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_el15203000_driver_exit = internal global ptr @el15203000_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author238 = internal constant [57 x i8] c"leds_el15203000.author=Oleh Kravchenko <oleg@kaa.org.ua>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [50 x i8] c"leds_el15203000.description=el15203000 LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [50 x i8] c"leds_el15203000.file=drivers/leds/leds-el15203000\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [31 x i8] c"leds_el15203000.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias242 = internal constant [37 x i8] c"leds_el15203000.alias=spi:el15203000\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"leds_el15203000\00", [16 x i8] zeroinitializer }, align 32
@el15203000_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"crane,el15203000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@el15203000_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 297, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"LEDs are not defined in device tree!\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"el15203000_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/leds/leds-el15203000.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@el15203000_probe._entry_ptr = internal global ptr @el15203000_probe._entry, section ".printk_index", align 4
@el15203000_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@el15203000_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LED without ID number\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"el15203000_probe_dt\00", [44 x i8] zeroinitializer }, align 32
@el15203000_probe_dt._entry_ptr = internal global ptr @el15203000_probe_dt._entry, section ".printk_index", align 4
@el15203000_probe_dt._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LED value %d is invalid\00", [40 x i8] zeroinitializer }, align 32
@el15203000_probe_dt._entry_ptr.12 = internal global ptr @el15203000_probe_dt._entry.10, section ".printk_index", align 4
@el15203000_probe_dt._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.3, i32 276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to register LED device %s, err %d\00", [55 x i8] zeroinitializer }, align 32
@el15203000_probe_dt._entry_ptr.15 = internal global ptr @el15203000_probe_dt._entry.13, section ".printk_index", align 4
@el15203000_cmd.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"el15203000_cmd\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Set brightness of 0x%02x(%c) to 0x%02x(%c)\00", [53 x i8] zeroinitializer }, align 32
@el15203000_cmd.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.18, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wait %luus to sync\00", [45 x i8] zeroinitializer }, align 32
@el15203000_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.3, i32 119, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spi_write() error %d\00", [43 x i8] zeroinitializer }, align 32
@el15203000_cmd._entry_ptr = internal global ptr @el15203000_cmd._entry, section ".printk_index", align 4
@el15203000_pattern_set_S.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"el15203000_pattern_set_S\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Breathing mode for 0x%02x(%c)\00", [34 x i8] zeroinitializer }, align 32
@el15203000_pattern_set_P.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"el15203000_pattern_set_P\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cascade mode for 0x%02x(%c)\00", [36 x i8] zeroinitializer }, align 32
@el15203000_pattern_set_P.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.24, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Inverse cascade mode for 0x%02x(%c)\00", [60 x i8] zeroinitializer }, align 32
@el15203000_pattern_set_P.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.25, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Bounce mode for 0x%02x(%c)\00", [37 x i8] zeroinitializer }, align 32
@el15203000_pattern_set_P.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.26, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Inverse bounce mode for 0x%02x(%c)\00", [61 x i8] zeroinitializer }, align 32
@el15203000_pattern_set_P._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid hw_pattern for 0x%02x(%c)!\00", [61 x i8] zeroinitializer }, align 32
@el15203000_pattern_set_P._entry_ptr = internal global ptr @el15203000_pattern_set_P._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 80, i64 83]
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"el15203000_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 334, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 338, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"el15203000_dt_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 327, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 297, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 306, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 246, i32 41 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 248, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 253, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 274, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 96, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 101, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 118, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 150, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 201, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 206, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 211, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 216, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [34 x i8] c"../drivers/leds/leds-el15203000.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 221, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_el15203000_driver_exit, ptr @__initcall__kmod_leds_el15203000__237_343_el15203000_driver_init6, ptr @el15203000_cmd._entry, ptr @el15203000_cmd._entry_ptr, ptr @el15203000_driver_exit, ptr @el15203000_pattern_set_P._entry, ptr @el15203000_pattern_set_P._entry_ptr, ptr @el15203000_probe._entry, ptr @el15203000_probe._entry_ptr, ptr @el15203000_probe_dt._entry, ptr @el15203000_probe_dt._entry.10, ptr @el15203000_probe_dt._entry.13, ptr @el15203000_probe_dt._entry_ptr, ptr @el15203000_probe_dt._entry_ptr.12, ptr @el15203000_probe_dt._entry_ptr.15, ptr @el15203000_driver, ptr @.str, ptr @el15203000_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @el15203000_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @el15203000_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @el15203000_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @el15203000_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @el15203000_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @el15203000_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @el15203000_probe_dt._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @el15203000_probe_dt._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @el15203000_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @el15203000_pattern_set_P._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @el15203000_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @el15203000_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @el15203000_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @el15203000_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @el15203000_probe(ptr noundef %spi) #2 align 64 {
entry:
  %init_data.i = alloca %struct.led_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_get_child_node_count(ptr noundef %spi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 408) #7
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %3 = add nuw i32 %2, 108
  %retval.0.i = select i1 %1, i32 -1, i32 %3
  %call.i32 = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef %retval.0.i, i32 noundef 3520) #7
  %tobool5.not = icmp eq ptr %call.i32, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.body8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body8:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.el15203000, ptr %call.i32, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @el15203000_probe.__key) #7
  %count11 = getelementptr inbounds %struct.el15203000, ptr %call.i32, i32 0, i32 4
  %4 = ptrtoint ptr %count11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %count11, align 4
  %5 = ptrtoint ptr %call.i32 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spi, ptr %call.i32, align 4
  %spi14 = getelementptr inbounds %struct.el15203000, ptr %call.i32, i32 0, i32 2
  %6 = ptrtoint ptr %spi14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi, ptr %spi14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 20000
  %spec.select.i.neg = select i1 %cmp.i, i32 -1073741822, i32 -2
  %sub = add i32 %spec.select.i.neg, %7
  %delay = getelementptr inbounds %struct.el15203000, ptr %call.i32, i32 0, i32 3
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %delay, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i32, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %call.i32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i32, align 4
  %call.i33 = tail call ptr @device_get_next_child_node(ptr noundef %11, ptr noundef null) #7
  %tobool.not87.i = icmp eq ptr %call.i33, null
  br i1 %tobool.not87.i, label %do.body8.cleanup_crit_edge, label %for.body.preheader.i

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader.i:                             ; preds = %do.body8
  %leds.i = getelementptr inbounds %struct.el15203000, ptr %call.i32, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %child.089.i = phi ptr [ %call40.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i33, %for.body.preheader.i ]
  %led.088.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %leds.i, %for.body.preheader.i ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i) #7
  %12 = call ptr @memset(ptr %init_data.i, i32 0, i32 16)
  %reg.i = getelementptr inbounds %struct.el15203000_led, ptr %led.088.i, i32 0, i32 2
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.089.i, ptr noundef nonnull @.str.7, ptr noundef %reg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call.i32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.8) #10
  br label %err_child_out.i

if.end.i:                                         ; preds = %for.body.i
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %16)
  %cmp.i34 = icmp ugt i32 %16, 255
  br i1 %cmp.i34, label %do.end8.i, label %if.end11.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call.i32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.11, i32 noundef %16) #10
  br label %err_child_out.i

if.end11.i:                                       ; preds = %if.end.i
  %priv12.i = getelementptr inbounds %struct.el15203000_led, ptr %led.088.i, i32 0, i32 1
  %19 = ptrtoint ptr %priv12.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i32, ptr %priv12.i, align 4
  %max_brightness.i = getelementptr inbounds %struct.led_classdev, ptr %led.088.i, i32 0, i32 2
  %20 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %max_brightness.i, align 4
  %brightness_set_blocking.i = getelementptr inbounds %struct.led_classdev, ptr %led.088.i, i32 0, i32 6
  %21 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @el15203000_set_blocking, ptr %brightness_set_blocking.i, align 4
  %22 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.end11.i.if.end27.i_crit_edge [
    i32 83, label %if.end11.i.if.end27.sink.split.i_crit_edge
    i32 80, label %if.then21.i
  ]

if.end11.i.if.end27.sink.split.i_crit_edge:       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.sink.split.i

if.end11.i.if.end27.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then21.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.sink.split.i

if.end27.sink.split.i:                            ; preds = %if.then21.i, %if.end11.i.if.end27.sink.split.i_crit_edge
  %el15203000_pattern_set_P.sink.i = phi ptr [ @el15203000_pattern_set_P, %if.then21.i ], [ @el15203000_pattern_set_S, %if.end11.i.if.end27.sink.split.i_crit_edge ]
  %pattern_set23.i = getelementptr inbounds %struct.led_classdev, ptr %led.088.i, i32 0, i32 9
  %23 = ptrtoint ptr %pattern_set23.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %el15203000_pattern_set_P.sink.i, ptr %pattern_set23.i, align 4
  %pattern_clear25.i = getelementptr inbounds %struct.led_classdev, ptr %led.088.i, i32 0, i32 10
  %24 = ptrtoint ptr %pattern_clear25.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @el15203000_pattern_clear, ptr %pattern_clear25.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end27.sink.split.i, %if.end11.i.if.end27.i_crit_edge
  %25 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %child.089.i, ptr %init_data.i, align 4
  %26 = ptrtoint ptr %call.i32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i32, align 4
  %call30.i = call i32 @devm_led_classdev_register_ext(ptr noundef %27, ptr noundef %led.088.i, ptr noundef nonnull %init_data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %for.inc.i, label %do.end35.i

do.end35.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %call.i32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i32, align 4
  %30 = ptrtoint ptr %led.088.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %led.088.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.14, ptr noundef %31, i32 noundef %call30.i) #10
  br label %err_child_out.i

for.inc.i:                                        ; preds = %if.end27.i
  %incdec.ptr.i = getelementptr %struct.el15203000_led, ptr %led.088.i, i32 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #7
  %32 = ptrtoint ptr %call.i32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i32, align 4
  %call40.i = call ptr @device_get_next_child_node(ptr noundef %33, ptr noundef nonnull %child.089.i) #7
  %tobool.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_child_out.i:                                  ; preds = %do.end35.i, %do.end8.i, %do.end.i
  %ret.0.ph.i = phi i32 [ %call30.i, %do.end35.i ], [ -22, %do.end8.i ], [ %call.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i) #7
  call void @fwnode_handle_put(ptr noundef nonnull %child.089.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_child_out.i, %for.inc.i.cleanup_crit_edge, %do.body8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %ret.0.ph.i, %err_child_out.i ], [ 0, %do.body8.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @el15203000_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.el15203000, ptr %1, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %lock) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @el15203000_set_blocking(ptr nocapture noundef readonly %ldev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp = icmp eq i32 %brightness, 0
  %conv = select i1 %cmp, i8 48, i8 49
  %call = tail call fastcc i32 @el15203000_cmd(ptr noundef %ldev, i8 noundef zeroext %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @el15203000_pattern_set_S(ptr nocapture noundef readonly %ldev, ptr nocapture noundef readonly %pattern, i32 noundef %len, i32 noundef %repeat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %repeat)
  %cmp = icmp slt i32 %repeat, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp1.not = icmp eq i32 %len, 2
  %or.cond = and i1 %cmp1.not, %cmp
  br i1 %or.cond, label %lor.lhs.false2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %0 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %1)
  %cmp3.not = icmp eq i32 %1, 4000
  br i1 %cmp3.not, label %lor.lhs.false4, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %brightness = getelementptr inbounds %struct.led_pattern, ptr %pattern, i32 0, i32 1
  %2 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not = icmp eq i32 %3, 0
  br i1 %cmp6.not, label %lor.lhs.false7, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %arrayidx8 = getelementptr %struct.led_pattern, ptr %pattern, i32 1
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %5)
  %cmp10.not = icmp eq i32 %5, 4000
  br i1 %cmp10.not, label %lor.lhs.false11, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false7
  %brightness13 = getelementptr %struct.led_pattern, ptr %pattern, i32 1, i32 1
  %6 = ptrtoint ptr %brightness13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brightness13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp14.not = icmp eq i32 %7, 1
  br i1 %cmp14.not, label %do.body, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el15203000_pattern_set_S.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el15203000_pattern_set_S, %if.then18)) #7
          to label %do.end [label %if.then18], !srcloc !85

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr inbounds %struct.el15203000_led, ptr %ldev, i32 0, i32 1
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %reg = getelementptr inbounds %struct.el15203000_led, ptr %ldev, i32 0, i32 2
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @el15203000_pattern_set_S.__UNIQUE_ID_ddebug232, ptr noundef %11, ptr noundef nonnull @.str.21, i32 noundef %13, i32 noundef %13) #7
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %call21 = tail call fastcc i32 @el15203000_cmd(ptr noundef %ldev, i8 noundef zeroext 50)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %do.end ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @el15203000_pattern_clear(ptr nocapture noundef readonly %ldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @el15203000_cmd(ptr noundef %ldev, i8 noundef zeroext 48)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @el15203000_pattern_set_P(ptr nocapture noundef readonly %ldev, ptr noundef readonly %pattern, i32 noundef %len, i32 noundef %repeat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %repeat)
  %cmp = icmp sgt i32 %repeat, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %len)
  %cmp.not.i = icmp eq i32 %len, 5
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.else31_crit_edge

if.end.if.else31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else31

if.end.i:                                         ; preds = %if.end
  %0 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %1)
  %cmp5.not.i = icmp eq i32 %1, 800
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %if.end.i.if.else31_crit_edge

if.end.i.if.else31_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else31

lor.lhs.false.i:                                  ; preds = %if.end.i
  %brightness.i = getelementptr %struct.led_pattern, ptr %pattern, i32 0, i32 1
  %2 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brightness.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp7.not.i = icmp eq i32 %3, 1
  br i1 %cmp7.not.i, label %if.end9.i, label %lor.lhs.false.i.if.end.i124_crit_edge

lor.lhs.false.i.if.end.i124_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i124

if.end9.i:                                        ; preds = %lor.lhs.false.i
  %arrayidx.1.i = getelementptr %struct.led_pattern, ptr %pattern, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %5)
  %cmp5.not.1.i = icmp eq i32 %5, 800
  br i1 %cmp5.not.1.i, label %lor.lhs.false.1.i, label %if.end9.i.if.end.i124_crit_edge

if.end9.i.if.end.i124_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i124

lor.lhs.false.1.i:                                ; preds = %if.end9.i
  %brightness.1.i = getelementptr %struct.led_pattern, ptr %pattern, i32 1, i32 1
  %6 = ptrtoint ptr %brightness.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brightness.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp7.not.1.i = icmp eq i32 %7, 2
  br i1 %cmp7.not.1.i, label %if.end9.1.i, label %lor.lhs.false.1.i.if.end.i124_crit_edge

lor.lhs.false.1.i.if.end.i124_crit_edge:          ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i124

if.end9.1.i:                                      ; preds = %lor.lhs.false.1.i
  %arrayidx.2.i = getelementptr %struct.led_pattern, ptr %pattern, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %9)
  %cmp5.not.2.i = icmp eq i32 %9, 800
  br i1 %cmp5.not.2.i, label %lor.lhs.false.2.i, label %if.end9.1.i.if.end.i124_crit_edge

if.end9.1.i.if.end.i124_crit_edge:                ; preds = %if.end9.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i124

lor.lhs.false.2.i:                                ; preds = %if.end9.1.i
  %brightness.2.i = getelementptr %struct.led_pattern, ptr %pattern, i32 2, i32 1
  %10 = ptrtoint ptr %brightness.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brightness.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp7.not.2.i = icmp eq i32 %11, 4
  br i1 %cmp7.not.2.i, label %if.end9.2.i, label %lor.lhs.false.2.i.if.end.i124_crit_edge

lor.lhs.false.2.i.if.end.i124_crit_edge:          ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i124

if.end9.2.i:                                      ; preds = %lor.lhs.false.2.i
  %arrayidx.3.i = getelementptr %struct.led_pattern, ptr %pattern, i32 3
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %13)
  %cmp5.not.3.i = icmp eq i32 %13, 800
  br i1 %cmp5.not.3.i, label %lor.lhs.false.3.i, label %if.end9.2.i.if.end.i124_crit_edge

if.end9.2.i.if.end.i124_crit_edge:                ; preds = %if.end9.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i124

lor.lhs.false.3.i:                                ; preds = %if.end9.2.i
  %brightness.3.i = getelementptr %struct.led_pattern, ptr %pattern, i32 3, i32 1
  %14 = ptrtoint ptr %brightness.3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %brightness.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %cmp7.not.3.i = icmp eq i32 %15, 8
  br i1 %cmp7.not.3.i, label %if.end9.3.i, label %lor.lhs.false.3.i.if.end.i124_crit_edge

lor.lhs.false.3.i.if.end.i124_crit_edge:          ; preds = %lor.lhs.false.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i124

if.end9.3.i:                                      ; preds = %lor.lhs.false.3.i
  %arrayidx.4.i = getelementptr %struct.led_pattern, ptr %pattern, i32 4
  %16 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %17)
  %cmp5.not.4.i = icmp eq i32 %17, 800
  br i1 %cmp5.not.4.i, label %is_cascade.exit, label %if.end9.3.i.if.end.i124_crit_edge

if.end9.3.i.if.end.i124_crit_edge:                ; preds = %if.end9.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i124

is_cascade.exit:                                  ; preds = %if.end9.3.i
  %brightness.4.i = getelementptr %struct.led_pattern, ptr %pattern, i32 4, i32 1
  %18 = ptrtoint ptr %brightness.4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %brightness.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %19)
  %cmp7.not.4.i = icmp eq i32 %19, 16
  br i1 %cmp7.not.4.i, label %do.body, label %is_cascade.exit.if.end.i124_crit_edge

is_cascade.exit.if.end.i124_crit_edge:            ; preds = %is_cascade.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i124

do.body:                                          ; preds = %is_cascade.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el15203000_pattern_set_P.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el15203000_pattern_set_P, %if.then6)) #7
          to label %if.end88 [label %if.then6], !srcloc !85

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr inbounds %struct.el15203000_led, ptr %ldev, i32 0, i32 1
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %reg = getelementptr inbounds %struct.el15203000_led, ptr %ldev, i32 0, i32 2
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @el15203000_pattern_set_P.__UNIQUE_ID_ddebug233, ptr noundef %23, ptr noundef nonnull @.str.23, i32 noundef %25, i32 noundef %25) #7
  br label %if.end88

if.end.i124:                                      ; preds = %is_cascade.exit.if.end.i124_crit_edge, %if.end9.3.i.if.end.i124_crit_edge, %lor.lhs.false.3.i.if.end.i124_crit_edge, %if.end9.2.i.if.end.i124_crit_edge, %lor.lhs.false.2.i.if.end.i124_crit_edge, %if.end9.1.i.if.end.i124_crit_edge, %lor.lhs.false.1.i.if.end.i124_crit_edge, %if.end9.i.if.end.i124_crit_edge, %lor.lhs.false.i.if.end.i124_crit_edge
  %26 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %.pr)
  %cmp5.not.i123 = icmp eq i32 %.pr, 800
  br i1 %cmp5.not.i123, label %lor.lhs.false.i127, label %if.end.i124.if.else31_crit_edge

if.end.i124.if.else31_crit_edge:                  ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else31

lor.lhs.false.i127:                               ; preds = %if.end.i124
  %27 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %brightness.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %28)
  %cmp7.not.i126 = icmp eq i32 %28, 30
  br i1 %cmp7.not.i126, label %if.end9.i130, label %lor.lhs.false.i127.if.else31_crit_edge

lor.lhs.false.i127.if.else31_crit_edge:           ; preds = %lor.lhs.false.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else31

if.end9.i130:                                     ; preds = %lor.lhs.false.i127
  %arrayidx.1.i128 = getelementptr %struct.led_pattern, ptr %pattern, i32 1
  %29 = ptrtoint ptr %arrayidx.1.i128 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.1.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %30)
  %cmp5.not.1.i129 = icmp eq i32 %30, 800
  br i1 %cmp5.not.1.i129, label %lor.lhs.false.1.i133, label %if.end9.i130.if.else31_crit_edge

if.end9.i130.if.else31_crit_edge:                 ; preds = %if.end9.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else31

lor.lhs.false.1.i133:                             ; preds = %if.end9.i130
  %brightness.1.i131 = getelementptr %struct.led_pattern, ptr %pattern, i32 1, i32 1
  %31 = ptrtoint ptr %brightness.1.i131 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %brightness.1.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %32)
  %cmp7.not.1.i132 = icmp eq i32 %32, 29
  br i1 %cmp7.not.1.i132, label %if.end9.1.i136, label %lor.lhs.false.1.i133.if.else31_crit_edge

lor.lhs.false.1.i133.if.else31_crit_edge:         ; preds = %lor.lhs.false.1.i133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else31

if.end9.1.i136:                                   ; preds = %lor.lhs.false.1.i133
  %arrayidx.2.i134 = getelementptr %struct.led_pattern, ptr %pattern, i32 2
  %33 = ptrtoint ptr %arrayidx.2.i134 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.2.i134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %34)
  %cmp5.not.2.i135 = icmp eq i32 %34, 800
  br i1 %cmp5.not.2.i135, label %lor.lhs.false.2.i139, label %if.end9.1.i136.if.else31_crit_edge

if.end9.1.i136.if.else31_crit_edge:               ; preds = %if.end9.1.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else31

lor.lhs.false.2.i139:                             ; preds = %if.end9.1.i136
  %brightness.2.i137 = getelementptr %struct.led_pattern, ptr %pattern, i32 2, i32 1
  %35 = ptrtoint ptr %brightness.2.i137 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %brightness.2.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %36)
  %cmp7.not.2.i138 = icmp eq i32 %36, 27
  br i1 %cmp7.not.2.i138, label %if.end9.2.i142, label %lor.lhs.false.2.i139.if.else31_crit_edge

lor.lhs.false.2.i139.if.else31_crit_edge:         ; preds = %lor.lhs.false.2.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else31

if.end9.2.i142:                                   ; preds = %lor.lhs.false.2.i139
  %arrayidx.3.i140 = getelementptr %struct.led_pattern, ptr %pattern, i32 3
  %37 = ptrtoint ptr %arrayidx.3.i140 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.3.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %38)
  %cmp5.not.3.i141 = icmp eq i32 %38, 800
  br i1 %cmp5.not.3.i141, label %lor.lhs.false.3.i145, label %if.end9.2.i142.if.else31_crit_edge

if.end9.2.i142.if.else31_crit_edge:               ; preds = %if.end9.2.i142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else31

lor.lhs.false.3.i145:                             ; preds = %if.end9.2.i142
  %brightness.3.i143 = getelementptr %struct.led_pattern, ptr %pattern, i32 3, i32 1
  %39 = ptrtoint ptr %brightness.3.i143 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %brightness.3.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %40)
  %cmp7.not.3.i144 = icmp eq i32 %40, 23
  br i1 %cmp7.not.3.i144, label %if.end9.3.i148, label %lor.lhs.false.3.i145.if.else31_crit_edge

lor.lhs.false.3.i145.if.else31_crit_edge:         ; preds = %lor.lhs.false.3.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else31

if.end9.3.i148:                                   ; preds = %lor.lhs.false.3.i145
  %arrayidx.4.i146 = getelementptr %struct.led_pattern, ptr %pattern, i32 4
  %41 = ptrtoint ptr %arrayidx.4.i146 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.4.i146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %42)
  %cmp5.not.4.i147 = icmp eq i32 %42, 800
  br i1 %cmp5.not.4.i147, label %is_cascade.exit153, label %if.end9.3.i148.if.else31_crit_edge

if.end9.3.i148.if.else31_crit_edge:               ; preds = %if.end9.3.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else31

is_cascade.exit153:                               ; preds = %if.end9.3.i148
  %brightness.4.i149 = getelementptr %struct.led_pattern, ptr %pattern, i32 4, i32 1
  %43 = ptrtoint ptr %brightness.4.i149 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %brightness.4.i149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %44)
  %cmp7.not.4.i150 = icmp eq i32 %44, 15
  br i1 %cmp7.not.4.i150, label %do.body11, label %is_cascade.exit153.if.else31_crit_edge

is_cascade.exit153.if.else31_crit_edge:           ; preds = %is_cascade.exit153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else31

do.body11:                                        ; preds = %is_cascade.exit153
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el15203000_pattern_set_P.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el15203000_pattern_set_P, %if.then23)) #7
          to label %if.end88 [label %if.then23], !srcloc !85

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %priv24 = getelementptr inbounds %struct.el15203000_led, ptr %ldev, i32 0, i32 1
  %45 = ptrtoint ptr %priv24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv24, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %reg26 = getelementptr inbounds %struct.el15203000_led, ptr %ldev, i32 0, i32 2
  %49 = ptrtoint ptr %reg26 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @el15203000_pattern_set_P.__UNIQUE_ID_ddebug234, ptr noundef %48, ptr noundef nonnull @.str.24, i32 noundef %50, i32 noundef %50) #7
  br label %if.end88

if.else31:                                        ; preds = %is_cascade.exit153.if.else31_crit_edge, %if.end9.3.i148.if.else31_crit_edge, %lor.lhs.false.3.i145.if.else31_crit_edge, %if.end9.2.i142.if.else31_crit_edge, %lor.lhs.false.2.i139.if.else31_crit_edge, %if.end9.1.i136.if.else31_crit_edge, %lor.lhs.false.1.i133.if.else31_crit_edge, %if.end9.i130.if.else31_crit_edge, %lor.lhs.false.i127.if.else31_crit_edge, %if.end.i124.if.else31_crit_edge, %if.end.i.if.else31_crit_edge, %if.end.if.else31_crit_edge
  %call32 = tail call fastcc zeroext i1 @is_bounce(ptr noundef %pattern, i32 noundef %len, i1 noundef zeroext false)
  br i1 %call32, label %do.body34, label %if.else54

do.body34:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el15203000_pattern_set_P.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el15203000_pattern_set_P, %if.then46)) #7
          to label %if.end88 [label %if.then46], !srcloc !85

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %priv47 = getelementptr inbounds %struct.el15203000_led, ptr %ldev, i32 0, i32 1
  %51 = ptrtoint ptr %priv47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv47, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %reg49 = getelementptr inbounds %struct.el15203000_led, ptr %ldev, i32 0, i32 2
  %55 = ptrtoint ptr %reg49 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reg49, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @el15203000_pattern_set_P.__UNIQUE_ID_ddebug235, ptr noundef %54, ptr noundef nonnull @.str.25, i32 noundef %56, i32 noundef %56) #7
  br label %if.end88

if.else54:                                        ; preds = %if.else31
  %call55 = tail call fastcc zeroext i1 @is_bounce(ptr noundef %pattern, i32 noundef %len, i1 noundef zeroext true)
  br i1 %call55, label %do.body57, label %do.end80

do.body57:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el15203000_pattern_set_P.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el15203000_pattern_set_P, %if.then69)) #7
          to label %if.end88 [label %if.then69], !srcloc !85

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %priv70 = getelementptr inbounds %struct.el15203000_led, ptr %ldev, i32 0, i32 1
  %57 = ptrtoint ptr %priv70 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv70, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %reg72 = getelementptr inbounds %struct.el15203000_led, ptr %ldev, i32 0, i32 2
  %61 = ptrtoint ptr %reg72 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reg72, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @el15203000_pattern_set_P.__UNIQUE_ID_ddebug236, ptr noundef %60, ptr noundef nonnull @.str.26, i32 noundef %62, i32 noundef %62) #7
  br label %if.end88

do.end80:                                         ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #9
  %priv81 = getelementptr inbounds %struct.el15203000_led, ptr %ldev, i32 0, i32 1
  %63 = ptrtoint ptr %priv81 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv81, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %reg83 = getelementptr inbounds %struct.el15203000_led, ptr %ldev, i32 0, i32 2
  %67 = ptrtoint ptr %reg83 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %reg83, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.27, i32 noundef %68, i32 noundef %68) #10
  br label %cleanup

if.end88:                                         ; preds = %if.then69, %do.body57, %if.then46, %do.body34, %if.then23, %do.body11, %if.then6, %do.body
  %cmd.0 = phi i8 [ 50, %if.then6 ], [ 51, %if.then23 ], [ 52, %if.then46 ], [ 53, %if.then69 ], [ 50, %do.body ], [ 51, %do.body11 ], [ 52, %do.body34 ], [ 53, %do.body57 ]
  %call89 = tail call fastcc i32 @el15203000_cmd(ptr noundef %ldev, i8 noundef zeroext %cmd.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %do.end80, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call89, %if.end88 ], [ -22, %do.end80 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @el15203000_cmd(ptr nocapture noundef readonly %led, i8 noundef zeroext %brightness) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %cmd = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds [2 x i8], ptr %cmd, i32 0, i32 1
  %priv = getelementptr inbounds %struct.el15203000_led, ptr %led, i32 0, i32 1
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %lock = getelementptr inbounds %struct.el15203000, ptr %2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el15203000_cmd.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el15203000_cmd, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !85

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %reg = getelementptr inbounds %struct.el15203000_led, ptr %led, i32 0, i32 2
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %conv = zext i8 %brightness to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @el15203000_cmd.__UNIQUE_ID_ddebug230, ptr noundef %6, ptr noundef nonnull @.str.17, i32 noundef %8, i32 noundef %8, i32 noundef %conv, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %delay = getelementptr inbounds %struct.el15203000, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay, align 4
  %sub = sub i32 %9, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body9, label %do.end.if.end35_crit_edge

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.body9:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @el15203000_cmd.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@el15203000_cmd, %if.then21)) #7
          to label %do.end26 [label %if.then21], !srcloc !85

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @el15203000_cmd.__UNIQUE_ID_ddebug231, ptr noundef %17, ptr noundef nonnull @.str.18, i32 noundef 20000) #7
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %do.body9
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 20001, i32 noundef 2) #7
  br label %if.end35

if.end35.1:                                       ; preds = %spi_write.exit
  call void @usleep_range_state(i32 noundef 20000, i32 noundef 20001, i32 noundef 2) #7
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  %spi.1 = getelementptr inbounds %struct.el15203000, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %spi.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spi.1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #7
  %22 = call ptr @memset(ptr %38, i32 0, i32 92)
  %23 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %0, ptr %t.i, align 4
  %24 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #7
  %25 = call ptr @memset(ptr %39, i32 0, i32 40)
  %26 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #7
  br i1 %call.i.i.i.i.i.i.1, label %if.end.i.i.i.i.i.i.1, label %if.end35.1.spi_write.exit.1_crit_edge

if.end35.1.spi_write.exit.1_crit_edge:            ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit.1

if.end.i.i.i.i.i.i.1:                             ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %32 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit.1

spi_write.exit.1:                                 ; preds = %if.end.i.i.i.i.i.i.1, %if.end35.1.spi_write.exit.1_crit_edge
  %call.i.i.1 = call i32 @spi_sync(ptr noundef %21, ptr noundef nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool39.not.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool39.not.1, label %spi_write.exit.1.for.end_crit_edge, label %spi_write.exit.1.do.end43_crit_edge

spi_write.exit.1.do.end43_crit_edge:              ; preds = %spi_write.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

spi_write.exit.1.for.end_crit_edge:               ; preds = %spi_write.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end35:                                         ; preds = %do.end26, %do.end.if.end35_crit_edge
  %reg28 = getelementptr inbounds %struct.el15203000_led, ptr %led, i32 0, i32 2
  %34 = ptrtoint ptr %reg28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg28, align 4
  %conv29 = trunc i32 %35 to i8
  %36 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv29, ptr %cmd, align 1
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %brightness, ptr %0, align 1
  %38 = getelementptr inbounds i8, ptr %t.i, i32 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %39 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 4
  %spi = getelementptr inbounds %struct.el15203000, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #7
  %44 = call ptr @memset(ptr %38, i32 0, i32 92)
  %45 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %cmd, ptr %t.i, align 4
  %46 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #7
  %47 = call ptr @memset(ptr %39, i32 0, i32 40)
  %48 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %49 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %50 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %51 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #7
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end35.spi_write.exit_crit_edge

if.end35.spi_write.exit_crit_edge:                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %53 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %54 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %55 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end35.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %43, ptr noundef nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool39.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool39.not, label %if.end35.1, label %spi_write.exit.do.end43_crit_edge

spi_write.exit.do.end43_crit_edge:                ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

do.end43:                                         ; preds = %spi_write.exit.do.end43_crit_edge, %spi_write.exit.1.do.end43_crit_edge
  %call.i.i.lcssa = phi i32 [ %call.i.i, %spi_write.exit.do.end43_crit_edge ], [ %call.i.i.1, %spi_write.exit.1.do.end43_crit_edge ]
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.19, i32 noundef %call.i.i.lcssa) #10
  br label %for.end

for.end:                                          ; preds = %do.end43, %spi_write.exit.1.for.end_crit_edge
  %ret.1 = phi i32 [ %call.i.i.lcssa, %do.end43 ], [ 0, %spi_write.exit.1.for.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %call.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 20000
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 2
  %add = add i32 %spec.select.i, %60
  %61 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv, align 4
  %delay49 = getelementptr inbounds %struct.el15203000, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %delay49 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add, ptr %delay49, align 4
  %64 = load ptr, ptr %priv, align 4
  %lock51 = getelementptr inbounds %struct.el15203000, ptr %64, i32 0, i32 1
  call void @mutex_unlock(ptr noundef %lock51) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #7
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @is_bounce(ptr nocapture noundef readonly %pattern, i32 noundef %len, i1 noundef zeroext %inv) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %len)
  %cmp.not = icmp eq i32 %len, 10
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %1)
  %cmp5.not.i = icmp eq i32 %1, 800
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false.i:                                  ; preds = %if.end
  %cond4.i = select i1 %inv, i32 30, i32 1
  %brightness.i = getelementptr %struct.led_pattern, ptr %pattern, i32 0, i32 1
  %2 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brightness.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cond4.i)
  %cmp7.not.i = icmp eq i32 %3, %cond4.i
  br i1 %cmp7.not.i, label %if.end9.i, label %lor.lhs.false.i.return_crit_edge

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end9.i:                                        ; preds = %lor.lhs.false.i
  %arrayidx.1.i = getelementptr %struct.led_pattern, ptr %pattern, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %5)
  %cmp5.not.1.i = icmp eq i32 %5, 800
  br i1 %cmp5.not.1.i, label %lor.lhs.false.1.i, label %if.end9.i.return_crit_edge

if.end9.i.return_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false.1.i:                                ; preds = %if.end9.i
  %cond4.1.i = select i1 %inv, i32 29, i32 2
  %brightness.1.i = getelementptr %struct.led_pattern, ptr %pattern, i32 1, i32 1
  %6 = ptrtoint ptr %brightness.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brightness.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cond4.1.i)
  %cmp7.not.1.i = icmp eq i32 %7, %cond4.1.i
  br i1 %cmp7.not.1.i, label %if.end9.1.i, label %lor.lhs.false.1.i.return_crit_edge

lor.lhs.false.1.i.return_crit_edge:               ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end9.1.i:                                      ; preds = %lor.lhs.false.1.i
  %arrayidx.2.i = getelementptr %struct.led_pattern, ptr %pattern, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %9)
  %cmp5.not.2.i = icmp eq i32 %9, 800
  br i1 %cmp5.not.2.i, label %lor.lhs.false.2.i, label %if.end9.1.i.return_crit_edge

if.end9.1.i.return_crit_edge:                     ; preds = %if.end9.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false.2.i:                                ; preds = %if.end9.1.i
  %cond4.2.i = select i1 %inv, i32 27, i32 4
  %brightness.2.i = getelementptr %struct.led_pattern, ptr %pattern, i32 2, i32 1
  %10 = ptrtoint ptr %brightness.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brightness.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cond4.2.i)
  %cmp7.not.2.i = icmp eq i32 %11, %cond4.2.i
  br i1 %cmp7.not.2.i, label %if.end9.2.i, label %lor.lhs.false.2.i.return_crit_edge

lor.lhs.false.2.i.return_crit_edge:               ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end9.2.i:                                      ; preds = %lor.lhs.false.2.i
  %arrayidx.3.i = getelementptr %struct.led_pattern, ptr %pattern, i32 3
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %13)
  %cmp5.not.3.i = icmp eq i32 %13, 800
  br i1 %cmp5.not.3.i, label %lor.lhs.false.3.i, label %if.end9.2.i.return_crit_edge

if.end9.2.i.return_crit_edge:                     ; preds = %if.end9.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false.3.i:                                ; preds = %if.end9.2.i
  %cond4.3.i = select i1 %inv, i32 23, i32 8
  %brightness.3.i = getelementptr %struct.led_pattern, ptr %pattern, i32 3, i32 1
  %14 = ptrtoint ptr %brightness.3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %brightness.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %cond4.3.i)
  %cmp7.not.3.i = icmp eq i32 %15, %cond4.3.i
  br i1 %cmp7.not.3.i, label %if.end9.3.i, label %lor.lhs.false.3.i.return_crit_edge

lor.lhs.false.3.i.return_crit_edge:               ; preds = %lor.lhs.false.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end9.3.i:                                      ; preds = %lor.lhs.false.3.i
  %arrayidx.4.i = getelementptr %struct.led_pattern, ptr %pattern, i32 4
  %16 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %17)
  %cmp5.not.4.i = icmp eq i32 %17, 800
  br i1 %cmp5.not.4.i, label %is_cascade.exit, label %if.end9.3.i.return_crit_edge

if.end9.3.i.return_crit_edge:                     ; preds = %if.end9.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

is_cascade.exit:                                  ; preds = %if.end9.3.i
  %cond4.4.i = select i1 %inv, i32 15, i32 16
  %brightness.4.i = getelementptr %struct.led_pattern, ptr %pattern, i32 4, i32 1
  %18 = ptrtoint ptr %brightness.4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %brightness.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %cond4.4.i)
  %cmp7.not.4.i = icmp eq i32 %19, %cond4.4.i
  br i1 %cmp7.not.4.i, label %land.rhs, label %is_cascade.exit.return_crit_edge

is_cascade.exit.return_crit_edge:                 ; preds = %is_cascade.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.rhs:                                         ; preds = %is_cascade.exit
  %add.ptr = getelementptr %struct.led_pattern, ptr %pattern, i32 5
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %21)
  %cmp5.not.i5 = icmp eq i32 %21, 800
  br i1 %cmp5.not.i5, label %lor.lhs.false.i9, label %land.rhs.return_crit_edge

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false.i9:                                 ; preds = %land.rhs
  %brightness.i7 = getelementptr %struct.led_pattern, ptr %pattern, i32 5, i32 1
  %22 = ptrtoint ptr %brightness.i7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %brightness.i7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %cond4.4.i)
  %cmp7.not.i8 = icmp eq i32 %23, %cond4.4.i
  br i1 %cmp7.not.i8, label %if.end9.i12, label %lor.lhs.false.i9.return_crit_edge

lor.lhs.false.i9.return_crit_edge:                ; preds = %lor.lhs.false.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end9.i12:                                      ; preds = %lor.lhs.false.i9
  %arrayidx.1.i10 = getelementptr %struct.led_pattern, ptr %pattern, i32 6
  %24 = ptrtoint ptr %arrayidx.1.i10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.1.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %25)
  %cmp5.not.1.i11 = icmp eq i32 %25, 800
  br i1 %cmp5.not.1.i11, label %lor.lhs.false.1.i16, label %if.end9.i12.return_crit_edge

if.end9.i12.return_crit_edge:                     ; preds = %if.end9.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false.1.i16:                              ; preds = %if.end9.i12
  %brightness.1.i14 = getelementptr %struct.led_pattern, ptr %pattern, i32 6, i32 1
  %26 = ptrtoint ptr %brightness.1.i14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %brightness.1.i14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %cond4.3.i)
  %cmp7.not.1.i15 = icmp eq i32 %27, %cond4.3.i
  br i1 %cmp7.not.1.i15, label %if.end9.1.i19, label %lor.lhs.false.1.i16.return_crit_edge

lor.lhs.false.1.i16.return_crit_edge:             ; preds = %lor.lhs.false.1.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end9.1.i19:                                    ; preds = %lor.lhs.false.1.i16
  %arrayidx.2.i17 = getelementptr %struct.led_pattern, ptr %pattern, i32 7
  %28 = ptrtoint ptr %arrayidx.2.i17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.2.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %29)
  %cmp5.not.2.i18 = icmp eq i32 %29, 800
  br i1 %cmp5.not.2.i18, label %lor.lhs.false.2.i23, label %if.end9.1.i19.return_crit_edge

if.end9.1.i19.return_crit_edge:                   ; preds = %if.end9.1.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false.2.i23:                              ; preds = %if.end9.1.i19
  %brightness.2.i21 = getelementptr %struct.led_pattern, ptr %pattern, i32 7, i32 1
  %30 = ptrtoint ptr %brightness.2.i21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %brightness.2.i21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %cond4.2.i)
  %cmp7.not.2.i22 = icmp eq i32 %31, %cond4.2.i
  br i1 %cmp7.not.2.i22, label %if.end9.2.i26, label %lor.lhs.false.2.i23.return_crit_edge

lor.lhs.false.2.i23.return_crit_edge:             ; preds = %lor.lhs.false.2.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end9.2.i26:                                    ; preds = %lor.lhs.false.2.i23
  %arrayidx.3.i24 = getelementptr %struct.led_pattern, ptr %pattern, i32 8
  %32 = ptrtoint ptr %arrayidx.3.i24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.3.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %33)
  %cmp5.not.3.i25 = icmp eq i32 %33, 800
  br i1 %cmp5.not.3.i25, label %lor.lhs.false.3.i30, label %if.end9.2.i26.return_crit_edge

if.end9.2.i26.return_crit_edge:                   ; preds = %if.end9.2.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false.3.i30:                              ; preds = %if.end9.2.i26
  %brightness.3.i28 = getelementptr %struct.led_pattern, ptr %pattern, i32 8, i32 1
  %34 = ptrtoint ptr %brightness.3.i28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %brightness.3.i28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %cond4.1.i)
  %cmp7.not.3.i29 = icmp eq i32 %35, %cond4.1.i
  br i1 %cmp7.not.3.i29, label %if.end9.3.i33, label %lor.lhs.false.3.i30.return_crit_edge

lor.lhs.false.3.i30.return_crit_edge:             ; preds = %lor.lhs.false.3.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end9.3.i33:                                    ; preds = %lor.lhs.false.3.i30
  %arrayidx.4.i31 = getelementptr %struct.led_pattern, ptr %pattern, i32 9
  %36 = ptrtoint ptr %arrayidx.4.i31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.4.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %37)
  %cmp5.not.4.i32 = icmp eq i32 %37, 800
  br i1 %cmp5.not.4.i32, label %lor.lhs.false.4.i37, label %if.end9.3.i33.return_crit_edge

if.end9.3.i33.return_crit_edge:                   ; preds = %if.end9.3.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false.4.i37:                              ; preds = %if.end9.3.i33
  call void @__sanitizer_cov_trace_pc() #9
  %brightness.4.i35 = getelementptr %struct.led_pattern, ptr %pattern, i32 9, i32 1
  %38 = ptrtoint ptr %brightness.4.i35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %brightness.4.i35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %cond4.i)
  %cmp7.not.4.i36 = icmp eq i32 %39, %cond4.i
  br label %return

return:                                           ; preds = %lor.lhs.false.4.i37, %if.end9.3.i33.return_crit_edge, %lor.lhs.false.3.i30.return_crit_edge, %if.end9.2.i26.return_crit_edge, %lor.lhs.false.2.i23.return_crit_edge, %if.end9.1.i19.return_crit_edge, %lor.lhs.false.1.i16.return_crit_edge, %if.end9.i12.return_crit_edge, %lor.lhs.false.i9.return_crit_edge, %land.rhs.return_crit_edge, %is_cascade.exit.return_crit_edge, %if.end9.3.i.return_crit_edge, %lor.lhs.false.3.i.return_crit_edge, %if.end9.2.i.return_crit_edge, %lor.lhs.false.2.i.return_crit_edge, %if.end9.1.i.return_crit_edge, %lor.lhs.false.1.i.return_crit_edge, %if.end9.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %is_cascade.exit.return_crit_edge ], [ false, %lor.lhs.false.i9.return_crit_edge ], [ false, %land.rhs.return_crit_edge ], [ false, %if.end9.i12.return_crit_edge ], [ false, %lor.lhs.false.1.i16.return_crit_edge ], [ false, %if.end9.1.i19.return_crit_edge ], [ false, %lor.lhs.false.2.i23.return_crit_edge ], [ false, %if.end9.2.i26.return_crit_edge ], [ false, %lor.lhs.false.3.i30.return_crit_edge ], [ false, %if.end9.3.i33.return_crit_edge ], [ %cmp7.not.4.i36, %lor.lhs.false.4.i37 ], [ false, %lor.lhs.false.i.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %if.end9.i.return_crit_edge ], [ false, %lor.lhs.false.1.i.return_crit_edge ], [ false, %if.end9.1.i.return_crit_edge ], [ false, %lor.lhs.false.2.i.return_crit_edge ], [ false, %if.end9.2.i.return_crit_edge ], [ false, %lor.lhs.false.3.i.return_crit_edge ], [ false, %if.end9.3.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_leds_el15203000__237_343_el15203000_driver_init6, !1, !"__initcall__kmod_leds_el15203000__237_343_el15203000_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-el15203000.c", i32 343, i32 1}
!2 = !{ptr @__exitcall_el15203000_driver_exit, !1, !"__exitcall_el15203000_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author238, !4, !"__UNIQUE_ID_author238", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-el15203000.c", i32 345, i32 1}
!5 = !{ptr @__UNIQUE_ID_description239, !6, !"__UNIQUE_ID_description239", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-el15203000.c", i32 346, i32 1}
!7 = !{ptr @__UNIQUE_ID_file240, !8, !"__UNIQUE_ID_file240", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-el15203000.c", i32 347, i32 1}
!9 = !{ptr @__UNIQUE_ID_license241, !8, !"__UNIQUE_ID_license241", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias242, !11, !"__UNIQUE_ID_alias242", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-el15203000.c", i32 348, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-el15203000.c", i32 338, i32 12}
!14 = !{ptr @el15203000_driver, !15, !"el15203000_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-el15203000.c", i32 334, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-el15203000.c", i32 297, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @el15203000_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @el15203000_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @el15203000_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-el15203000.c", i32 306, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/leds/leds-el15203000.c", i32 246, i32 41}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/leds/leds-el15203000.c", i32 248, i32 4}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @el15203000_probe_dt._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @el15203000_probe_dt._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/leds/leds-el15203000.c", i32 253, i32 4}
!36 = !{ptr @el15203000_probe_dt._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @el15203000_probe_dt._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-el15203000.c", i32 274, i32 4}
!40 = !{ptr @el15203000_probe_dt._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @el15203000_probe_dt._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-el15203000.c", i32 96, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @el15203000_cmd.__UNIQUE_ID_ddebug230, !43, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/leds-el15203000.c", i32 101, i32 3}
!48 = !{ptr @el15203000_cmd.__UNIQUE_ID_ddebug231, !47, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/leds/leds-el15203000.c", i32 118, i32 4}
!51 = !{ptr @el15203000_cmd._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @el15203000_cmd._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/leds/leds-el15203000.c", i32 150, i32 2}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @el15203000_pattern_set_S.__UNIQUE_ID_ddebug232, !54, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/leds/leds-el15203000.c", i32 201, i32 3}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @el15203000_pattern_set_P.__UNIQUE_ID_ddebug233, !58, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/leds/leds-el15203000.c", i32 206, i32 3}
!63 = !{ptr @el15203000_pattern_set_P.__UNIQUE_ID_ddebug234, !62, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/leds/leds-el15203000.c", i32 211, i32 3}
!66 = !{ptr @el15203000_pattern_set_P.__UNIQUE_ID_ddebug235, !65, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/leds/leds-el15203000.c", i32 216, i32 3}
!69 = !{ptr @el15203000_pattern_set_P.__UNIQUE_ID_ddebug236, !68, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/leds/leds-el15203000.c", i32 221, i32 3}
!72 = !{ptr @el15203000_pattern_set_P._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @el15203000_pattern_set_P._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @el15203000_dt_ids, !75, !"el15203000_dt_ids", i1 false, i1 false}
!75 = !{!"../drivers/leds/leds-el15203000.c", i32 327, i32 34}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2148763616, i64 2148763621, i64 2148763634, i64 2148763678, i64 2148763712, i64 2148763733}
