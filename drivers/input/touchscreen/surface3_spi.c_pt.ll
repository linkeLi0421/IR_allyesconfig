; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/surface3_spi.c_pt.bc'
source_filename = "../drivers/input/touchscreen/surface3_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.surface3_ts_data = type { ptr, [2 x ptr], ptr, ptr, i32, [104 x i8], [264 x i8], [120 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.surface3_ts_data_finger = type <{ i8, i16, i16, i16, i16, i16, i16, i16, i32 }>

@__initcall__kmod_surface3_spi__235_417_surface3_spi_driver_init6 = internal global ptr @surface3_spi_driver_init, section ".initcall6.init", align 4
@surface3_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @surface3_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @surface3_spi_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_surface3_spi_driver_exit = internal global ptr @surface3_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author236 = internal constant [70 x i8] c"surface3_spi.author=Benjamin Tissoires <benjamin.tissoires@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [58 x i8] c"surface3_spi.description=Surface 3 SPI touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [57 x i8] c"surface3_spi.file=drivers/input/touchscreen/surface3_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [28 x i8] c"surface3_spi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Surface3-spi\00", [19 x i8] zeroinitializer }, align 32
@surface3_spi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @surface3_spi_suspend, ptr @surface3_spi_resume, ptr @surface3_spi_suspend, ptr @surface3_spi_resume, ptr @surface3_spi_suspend, ptr @surface3_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Surface3-irq\00", [19 x i8] zeroinitializer }, align 32
@surface3_spi_get_gpio_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 240, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get power GPIO %d: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"surface3_spi_get_gpio_config\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/input/touchscreen/surface3_spi.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@surface3_spi_get_gpio_config._entry_ptr = internal global ptr @surface3_spi_get_gpio_config._entry, section ".printk_index", align 4
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Surface3 SPI Capacitive TouchScreen\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"input/ts\00", [23 x i8] zeroinitializer }, align 32
@surface3_spi_create_touch_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register input device: %d\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"surface3_spi_create_touch_input\00", [32 x i8] zeroinitializer }, align 32
@surface3_spi_create_touch_input._entry_ptr = internal global ptr @surface3_spi_create_touch_input._entry, section ".printk_index", align 4
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Surface3 SPI Pen Input\00", [41 x i8] zeroinitializer }, align 32
@surface3_spi_create_pen_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.12, ptr @.str.4, i32 320, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"surface3_spi_create_pen_input\00", [34 x i8] zeroinitializer }, align 32
@surface3_spi_create_pen_input._entry_ptr = internal global ptr @surface3_spi_create_pen_input._entry, section ".printk_index", align 4
@surface3_spi_irq_handler.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"surface3_spi\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"surface3_spi_irq_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s received -> %*ph\0A\00", [43 x i8] zeroinitializer }, align 32
@surface3_spi_process.header = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\FF\FF\FF\FF\A5Z\E7~\01", [23 x i8] zeroinitializer }, align 32
@surface3_spi_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 178, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s header error: %*ph, ignoring...\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"surface3_spi_process\00", [43 x i8] zeroinitializer }, align 32
@surface3_spi_process._entry_ptr = internal global ptr @surface3_spi_process._entry, section ".printk_index", align 4
@surface3_spi_process._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 190, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s unknown packet type: %x, ignoring...\0A\00", [55 x i8] zeroinitializer }, align 32
@surface3_spi_process._entry_ptr.20 = internal global ptr @surface3_spi_process._entry.18, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 22, i64 210]
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"surface3_spi_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 408, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 410, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"surface3_spi_pm_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 396, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 365, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 237, i32 5 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 269, i32 16 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 270, i32 16 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 278, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 310, i32 16 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 319, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 202, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 170, i32 20 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 176, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [44 x i8] c"../drivers/input/touchscreen/surface3_spi.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 188, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_surface3_spi_driver_exit, ptr @__initcall__kmod_surface3_spi__235_417_surface3_spi_driver_init6, ptr @surface3_spi_create_pen_input._entry, ptr @surface3_spi_create_pen_input._entry_ptr, ptr @surface3_spi_create_touch_input._entry, ptr @surface3_spi_create_touch_input._entry_ptr, ptr @surface3_spi_driver_exit, ptr @surface3_spi_get_gpio_config._entry, ptr @surface3_spi_get_gpio_config._entry_ptr, ptr @surface3_spi_process._entry, ptr @surface3_spi_process._entry.18, ptr @surface3_spi_process._entry_ptr, ptr @surface3_spi_process._entry_ptr.20, ptr @surface3_spi_driver, ptr @.str, ptr @surface3_spi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @surface3_spi_process.header, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @surface3_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @surface3_spi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @surface3_spi_get_gpio_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @surface3_spi_create_touch_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @surface3_spi_create_pen_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @surface3_spi_process.header to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @surface3_spi_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @surface3_spi_process._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @surface3_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @surface3_spi_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @surface3_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @surface3_spi_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @surface3_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %bits_per_word, align 1
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %mode, align 8
  %call = tail call i32 @spi_setup(ptr noundef %spi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 512, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %call.i, align 128
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i49 = tail call ptr @devm_gpiod_get_index(ptr noundef %spi, ptr noundef null, i32 noundef 0, i32 noundef 3) #7
  %cmp.i.i = icmp ugt ptr %call.i49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end4.if.then.i_crit_edge, label %if.end6.i

if.end4.if.then.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %if.end6.i.if.then.i_crit_edge, %if.end4.if.then.i_crit_edge
  %i.021.lcssa.i = phi i32 [ 0, %if.end4.if.then.i_crit_edge ], [ 1, %if.end6.i.if.then.i_crit_edge ]
  %call.lcssa.i = phi ptr [ %call.i49, %if.end4.if.then.i_crit_edge ], [ %call.1.i, %if.end6.i.if.then.i_crit_edge ]
  %cmp4.not.i = icmp eq ptr %call.lcssa.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp4.not.i, label %if.then.i.cleanup_crit_edge, label %surface3_spi_get_gpio_config.exit

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %if.end4
  %arrayidx.i = getelementptr %struct.surface3_ts_data, ptr %call.i, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i49, ptr %arrayidx.i, align 4
  %call.1.i = tail call ptr @devm_gpiod_get_index(ptr noundef %spi, ptr noundef null, i32 noundef 1, i32 noundef 3) #7
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.end6.i.if.then.i_crit_edge, label %surface3_spi_get_gpio_config.exit.thread

if.end6.i.if.then.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

surface3_spi_get_gpio_config.exit.thread:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1.i = getelementptr %struct.surface3_ts_data, ptr %call.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.1.i, ptr %arrayidx.1.i, align 4
  br label %if.end9

surface3_spi_get_gpio_config.exit:                ; preds = %if.then.i
  %6 = ptrtoint ptr %call.lcssa.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2, i32 noundef %i.021.lcssa.i, i32 noundef %6) #10
  %tobool7.not = icmp eq ptr %call.lcssa.i, null
  br i1 %tobool7.not, label %surface3_spi_get_gpio_config.exit.if.end9_crit_edge, label %surface3_spi_get_gpio_config.exit.cleanup_crit_edge

surface3_spi_get_gpio_config.exit.cleanup_crit_edge: ; preds = %surface3_spi_get_gpio_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

surface3_spi_get_gpio_config.exit.if.end9_crit_edge: ; preds = %surface3_spi_get_gpio_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %surface3_spi_get_gpio_config.exit.if.end9_crit_edge, %surface3_spi_get_gpio_config.exit.thread
  %gpiod_rst.i = getelementptr inbounds %struct.surface3_ts_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %gpiod_rst.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpiod_rst.i, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 1) #7
  %arrayidx2.i = getelementptr %struct.surface3_ts_data, ptr %call.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 1) #7
  tail call void @msleep(i32 noundef 20) #7
  %11 = ptrtoint ptr %gpiod_rst.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpiod_rst.i, align 4
  tail call void @gpiod_set_value(ptr noundef %12, i32 noundef 0) #7
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @gpiod_set_value(ptr noundef %14, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 20) #7
  %15 = ptrtoint ptr %gpiod_rst.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpiod_rst.i, align 4
  tail call void @gpiod_set_value(ptr noundef %16, i32 noundef 1) #7
  %17 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @gpiod_set_value(ptr noundef %18, i32 noundef 1) #7
  tail call void @msleep(i32 noundef 20) #7
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 128
  %call.i54 = tail call ptr @devm_input_allocate_device(ptr noundef %20) #7
  %tobool.not.i = icmp eq ptr %call.i54, null
  br i1 %tobool.not.i, label %if.end9.cleanup_crit_edge, label %if.end.i

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end9
  %input_dev.i = getelementptr inbounds %struct.surface3_ts_data, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i54, ptr %input_dev.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i54, i32 noundef 53, i32 noundef 0, i32 noundef 9600, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i54) #7
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i54, i32 0, i32 26
  %22 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.end.i.input_abs_set_res.exit.i_crit_edge, label %if.then.i.i

if.end.i.input_abs_set_res.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %input_abs_set_res.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %resolution.i.i = getelementptr %struct.input_absinfo, ptr %23, i32 53, i32 5
  %24 = ptrtoint ptr %resolution.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 40, ptr %resolution.i.i, align 4
  br label %input_abs_set_res.exit.i

input_abs_set_res.exit.i:                         ; preds = %if.then.i.i, %if.end.i.input_abs_set_res.exit.i_crit_edge
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i54, i32 noundef 54, i32 noundef 0, i32 noundef 7200, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i54) #7
  %25 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i32.i = icmp eq ptr %26, null
  br i1 %tobool.not.i32.i, label %input_abs_set_res.exit.i.input_abs_set_res.exit35.i_crit_edge, label %if.then.i34.i

input_abs_set_res.exit.i.input_abs_set_res.exit35.i_crit_edge: ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %input_abs_set_res.exit35.i

if.then.i34.i:                                    ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %resolution.i33.i = getelementptr %struct.input_absinfo, ptr %26, i32 54, i32 5
  %27 = ptrtoint ptr %resolution.i33.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 48, ptr %resolution.i33.i, align 4
  br label %input_abs_set_res.exit35.i

input_abs_set_res.exit35.i:                       ; preds = %if.then.i34.i, %input_abs_set_res.exit.i.input_abs_set_res.exit35.i_crit_edge
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i54, i32 noundef 50, i32 noundef 0, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i54, i32 noundef 51, i32 noundef 0, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #7
  %call1.i = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call.i54, i32 noundef 10, i32 noundef 2) #7
  %28 = ptrtoint ptr %call.i54 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.7, ptr %call.i54, align 8
  %phys.i = getelementptr inbounds %struct.input_dev, ptr %call.i54, i32 0, i32 1
  %29 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.8, ptr %phys.i, align 4
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call.i54, i32 0, i32 3
  %30 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 28, ptr %id.i, align 4
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call.i54, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1118, ptr %vendor.i, align 2
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call.i54, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %product.i, align 4
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call.i54, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %version.i, align 2
  %call5.i = tail call i32 @input_register_device(ptr noundef nonnull %call.i54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 128
  br i1 %tobool6.not.i, label %if.end13, label %do.end.i55

do.end.i55:                                       ; preds = %input_abs_set_res.exit35.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.9, i32 noundef %call5.i) #10
  br label %cleanup

if.end13:                                         ; preds = %input_abs_set_res.exit35.i
  %call.i57 = tail call ptr @devm_input_allocate_device(ptr noundef %35) #7
  %tobool.not.i58 = icmp eq ptr %call.i57, null
  br i1 %tobool.not.i58, label %if.end13.cleanup_crit_edge, label %if.end.i61

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i61:                                       ; preds = %if.end13
  %pen_input_dev.i = getelementptr inbounds %struct.surface3_ts_data, ptr %call.i, i32 0, i32 3
  %36 = ptrtoint ptr %pen_input_dev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i57, ptr %pen_input_dev.i, align 16
  %pen_tool.i = getelementptr inbounds %struct.surface3_ts_data, ptr %call.i, i32 0, i32 4
  %37 = ptrtoint ptr %pen_tool.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 320, ptr %pen_tool.i, align 4
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 4
  %38 = ptrtoint ptr %propbit.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %propbit.i, align 4
  %or.i37.i = or i32 %39, 3
  store i32 %or.i37.i, ptr %propbit.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i57, i32 noundef 0, i32 noundef 0, i32 noundef 9600, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i57) #7
  %absinfo.i.i59 = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 26
  %40 = ptrtoint ptr %absinfo.i.i59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %absinfo.i.i59, align 8
  %tobool.not.i.i60 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i60, label %if.end.i61.input_abs_set_res.exit.i64_crit_edge, label %if.then.i.i63

if.end.i61.input_abs_set_res.exit.i64_crit_edge:  ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %input_abs_set_res.exit.i64

if.then.i.i63:                                    ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #9
  %resolution.i.i62 = getelementptr %struct.input_absinfo, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %resolution.i.i62 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 40, ptr %resolution.i.i62, align 4
  br label %input_abs_set_res.exit.i64

input_abs_set_res.exit.i64:                       ; preds = %if.then.i.i63, %if.end.i61.input_abs_set_res.exit.i64_crit_edge
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i57, i32 noundef 1, i32 noundef 0, i32 noundef 7200, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i57) #7
  %43 = ptrtoint ptr %absinfo.i.i59 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %absinfo.i.i59, align 8
  %tobool.not.i39.i = icmp eq ptr %44, null
  br i1 %tobool.not.i39.i, label %input_abs_set_res.exit.i64.input_abs_set_res.exit42.i_crit_edge, label %if.then.i41.i

input_abs_set_res.exit.i64.input_abs_set_res.exit42.i_crit_edge: ; preds = %input_abs_set_res.exit.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %input_abs_set_res.exit42.i

if.then.i41.i:                                    ; preds = %input_abs_set_res.exit.i64
  call void @__sanitizer_cov_trace_pc() #9
  %resolution.i40.i = getelementptr %struct.input_absinfo, ptr %44, i32 1, i32 5
  %45 = ptrtoint ptr %resolution.i40.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 48, ptr %resolution.i40.i, align 4
  br label %input_abs_set_res.exit42.i

input_abs_set_res.exit42.i:                       ; preds = %if.then.i41.i, %input_abs_set_res.exit.i64.input_abs_set_res.exit42.i_crit_edge
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i57, i32 noundef 24, i32 noundef 0, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_set_capability(ptr noundef nonnull %call.i57, i32 noundef 1, i32 noundef 330) #7
  tail call void @input_set_capability(ptr noundef nonnull %call.i57, i32 noundef 1, i32 noundef 331) #7
  tail call void @input_set_capability(ptr noundef nonnull %call.i57, i32 noundef 1, i32 noundef 320) #7
  tail call void @input_set_capability(ptr noundef nonnull %call.i57, i32 noundef 1, i32 noundef 321) #7
  %46 = ptrtoint ptr %call.i57 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.11, ptr %call.i57, align 8
  %phys.i65 = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 1
  %47 = ptrtoint ptr %phys.i65 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.8, ptr %phys.i65, align 4
  %id.i66 = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 3
  %48 = ptrtoint ptr %id.i66 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 28, ptr %id.i66, align 4
  %vendor.i67 = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %vendor.i67 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1118, ptr %vendor.i67, align 2
  %product.i68 = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 3, i32 2
  %50 = ptrtoint ptr %product.i68 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 2, ptr %product.i68, align 4
  %version.i69 = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %version.i69 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %version.i69, align 2
  %call6.i = tail call i32 @input_register_device(ptr noundef nonnull %call.i57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end17, label %do.end.i70

do.end.i70:                                       ; preds = %input_abs_set_res.exit42.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.9, i32 noundef %call6.i) #10
  br label %cleanup

if.end17:                                         ; preds = %input_abs_set_res.exit42.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %54 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq, align 4
  %call19 = tail call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %55, ptr noundef null, ptr noundef nonnull @surface3_spi_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end.i70, %if.end13.cleanup_crit_edge, %do.end.i55, %if.end9.cleanup_crit_edge, %surface3_spi_get_gpio_config.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %6, %surface3_spi_get_gpio_config.exit.cleanup_crit_edge ], [ %call19, %if.end17 ], [ -517, %if.then.i.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ %call5.i, %do.end.i55 ], [ -12, %if.end13.cleanup_crit_edge ], [ %call6.i, %do.end.i70 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @surface3_spi_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 128
  %rd_buf.i = getelementptr inbounds %struct.surface3_ts_data, ptr %dev_id, i32 0, i32 6
  %2 = call ptr @memset(ptr %rd_buf.i, i32 0, i32 264)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #7
  %3 = call ptr @memset(ptr %t.i.i, i32 0, i32 96)
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rd_buf.i, ptr %rx_buf.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 264, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #7
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.surface3_spi_read.exit_crit_edge

entry.surface3_spi_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %surface3_spi_read.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %surface3_spi_read.exit

surface3_spi_read.exit:                           ; preds = %if.end.i.i.i.i.i.i.i, %entry.surface3_spi_read.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %do.body, label %surface3_spi_read.exit.cleanup_crit_edge

surface3_spi_read.exit.cleanup_crit_edge:         ; preds = %surface3_spi_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %surface3_spi_read.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @surface3_spi_irq_handler.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@surface3_spi_irq_handler, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !66

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_id, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @surface3_spi_irq_handler.__UNIQUE_ID_ddebug234, ptr noundef %17, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i32 noundef 264, ptr noundef %rd_buf.i) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) @surface3_spi_process.header, ptr noundef dereferenceable(9) %rd_buf.i, i32 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %do.end.if.end.i_crit_edge, label %do.end.i

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_id, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 9, ptr noundef %rd_buf.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.end.if.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.surface3_ts_data, ptr %dev_id, i32 0, i32 6, i32 9
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %do.end4.i [
    i8 -46, label %sw.bb.i
    i8 22, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %input_dev.i.i.i = getelementptr inbounds %struct.surface3_ts_data, ptr %dev_id, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.bb.i
  %i.09.i.i = phi i32 [ 0, %sw.bb.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = mul nuw nsw i32 %i.09.i.i, 19
  %add.i.i = add nuw nsw i32 %mul.i.i, 17
  %arrayidx.i.i = getelementptr i8, ptr %rd_buf.i, i32 %add.i.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i, align 1
  %25 = and i8 %24, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.surface3_spi_process_touch.exit.i_crit_edge

for.body.i.i.surface3_spi_process_touch.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %surface3_spi_process_touch.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %26 = ptrtoint ptr %input_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input_dev.i.i.i, align 4
  %tracking_id.i.i.i = getelementptr inbounds %struct.surface3_ts_data_finger, ptr %arrayidx.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %tracking_id.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %tracking_id.i.i.i, align 1
  %30 = call i16 @llvm.bswap.i16(i16 %29) #7
  %conv1.i.i.i = zext i16 %30 to i32
  %call2.i.i.i = call i32 @input_mt_get_slot_by_key(ptr noundef %27, i32 noundef %conv1.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.end.i.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %31 = and i8 %24, 1
  %32 = ptrtoint ptr %input_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input_dev.i.i.i, align 4
  call void @input_event(ptr noundef %33, i32 noundef 3, i32 noundef 47, i32 noundef %call2.i.i.i) #7
  %34 = ptrtoint ptr %input_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %input_dev.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.i.i.i = icmp ne i8 %31, 0
  %call6.i.i.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %35, i32 noundef 0, i1 noundef zeroext %tobool.i.i.i) #7
  br i1 %tobool.i.i.i, label %if.then8.i.i.i, label %if.end.i.i.i.for.inc.i.i_crit_edge

if.end.i.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then8.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %input_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %input_dev.i.i.i, align 4
  %x.i.i.i = getelementptr inbounds %struct.surface3_ts_data_finger, ptr %arrayidx.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %x.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %x.i.i.i, align 1
  %40 = call i16 @llvm.bswap.i16(i16 %39) #7
  %conv11.i.i.i = zext i16 %40 to i32
  call void @input_event(ptr noundef %37, i32 noundef 3, i32 noundef 53, i32 noundef %conv11.i.i.i) #7
  %41 = ptrtoint ptr %input_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %input_dev.i.i.i, align 4
  %y.i.i.i = getelementptr inbounds %struct.surface3_ts_data_finger, ptr %arrayidx.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %y.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %y.i.i.i, align 1
  %45 = call i16 @llvm.bswap.i16(i16 %44) #7
  %conv14.i.i.i = zext i16 %45 to i32
  call void @input_event(ptr noundef %42, i32 noundef 3, i32 noundef 54, i32 noundef %conv14.i.i.i) #7
  %46 = ptrtoint ptr %input_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %input_dev.i.i.i, align 4
  %width.i.i.i = getelementptr inbounds %struct.surface3_ts_data_finger, ptr %arrayidx.i.i, i32 0, i32 6
  %48 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %width.i.i.i, align 1
  %50 = call i16 @llvm.bswap.i16(i16 %49) #7
  %conv17.i.i.i = zext i16 %50 to i32
  call void @input_event(ptr noundef %47, i32 noundef 3, i32 noundef 50, i32 noundef %conv17.i.i.i) #7
  %51 = ptrtoint ptr %input_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %input_dev.i.i.i, align 4
  %height.i.i.i = getelementptr inbounds %struct.surface3_ts_data_finger, ptr %arrayidx.i.i, i32 0, i32 7
  %53 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %height.i.i.i, align 1
  %55 = call i16 @llvm.bswap.i16(i16 %54) #7
  %conv20.i.i.i = zext i16 %55 to i32
  call void @input_event(ptr noundef %52, i32 noundef 3, i32 noundef 51, i32 noundef %conv20.i.i.i) #7
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then8.i.i.i, %if.end.i.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 13
  br i1 %exitcond.not.i.i, label %for.inc.i.i.surface3_spi_process_touch.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.surface3_spi_process_touch.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %surface3_spi_process_touch.exit.i

surface3_spi_process_touch.exit.i:                ; preds = %for.inc.i.i.surface3_spi_process_touch.exit.i_crit_edge, %for.body.i.i.surface3_spi_process_touch.exit.i_crit_edge
  %56 = ptrtoint ptr %input_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %input_dev.i.i.i, align 4
  call void @input_mt_sync_frame(ptr noundef %57) #7
  %58 = ptrtoint ptr %input_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %input_dev.i.i.i, align 4
  call void @input_event(ptr noundef %59, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end.i
  %arrayidx.i18.i = getelementptr %struct.surface3_ts_data, ptr %dev_id, i32 0, i32 6, i32 15
  %pen_input_dev.i.i.i = getelementptr inbounds %struct.surface3_ts_data, ptr %dev_id, i32 0, i32 3
  %60 = ptrtoint ptr %pen_input_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pen_input_dev.i.i.i, align 16
  %62 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i18.i, align 1
  %conv.i.i.i = zext i8 %63 to i32
  %and.i.i.i = and i32 %conv.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %and1.i.i.i = and i32 %conv.i.i.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and1.i.i.i, 0
  %64 = or i1 %tobool.not.i.i.i, %tobool2.not.i.i.i
  %65 = select i1 %64, i32 320, i32 321
  %pen_tool.i.i.i = getelementptr inbounds %struct.surface3_ts_data, ptr %dev_id, i32 0, i32 4
  %66 = ptrtoint ptr %pen_tool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pen_tool.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %65)
  %cmp.not.i.i.i = icmp eq i32 %67, %65
  br i1 %cmp.not.i.i.i, label %sw.bb1.i.if.end.i.i19.i_crit_edge, label %if.then.i.i.i

sw.bb1.i.if.end.i.i19.i_crit_edge:                ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i19.i

if.then.i.i.i:                                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @input_event(ptr noundef %61, i32 noundef 1, i32 noundef %67, i32 noundef 0) #7
  call void @input_event(ptr noundef %61, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %68 = ptrtoint ptr %pen_tool.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %65, ptr %pen_tool.i.i.i, align 4
  br label %if.end.i.i19.i

if.end.i.i19.i:                                   ; preds = %if.then.i.i.i, %sw.bb1.i.if.end.i.i19.i_crit_edge
  %and6.i.i.i = and i32 %conv.i.i.i, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool.i.i.i.i = icmp ne i32 %and6.i.i.i, 0
  %lnot.ext.i.i.i.i = zext i1 %tobool.i.i.i.i to i32
  call void @input_event(ptr noundef %61, i32 noundef 1, i32 noundef 330, i32 noundef %lnot.ext.i.i.i.i) #7
  %69 = ptrtoint ptr %pen_tool.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pen_tool.i.i.i, align 4
  call void @input_event(ptr noundef %61, i32 noundef 1, i32 noundef %70, i32 noundef %and.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool8.not.i.i.i = icmp eq i8 %63, 0
  br i1 %tobool8.not.i.i.i, label %if.end.i.i19.i.surface3_spi_process_pen.exit.i_crit_edge, label %if.then9.i.i.i

if.end.i.i19.i.surface3_spi_process_pen.exit.i_crit_edge: ; preds = %if.end.i.i19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %surface3_spi_process_pen.exit.i

if.then9.i.i.i:                                   ; preds = %if.end.i.i19.i
  call void @__sanitizer_cov_trace_pc() #9
  %and10.i.i.i = lshr i32 %conv.i.i.i, 2
  %and10.lobit.i.i.i = and i32 %and10.i.i.i, 1
  call void @input_event(ptr noundef %61, i32 noundef 1, i32 noundef 331, i32 noundef %and10.lobit.i.i.i) #7
  %x.i.i20.i = getelementptr %struct.surface3_ts_data, ptr %dev_id, i32 0, i32 6, i32 16
  %71 = ptrtoint ptr %x.i.i20.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %x.i.i20.i, align 1
  %73 = call i16 @llvm.bswap.i16(i16 %72) #7
  %conv11.i.i21.i = zext i16 %73 to i32
  call void @input_event(ptr noundef %61, i32 noundef 3, i32 noundef 0, i32 noundef %conv11.i.i21.i) #7
  %y.i.i22.i = getelementptr %struct.surface3_ts_data, ptr %dev_id, i32 0, i32 6, i32 18
  %74 = ptrtoint ptr %y.i.i22.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %y.i.i22.i, align 1
  %76 = call i16 @llvm.bswap.i16(i16 %75) #7
  %conv13.i.i.i = zext i16 %76 to i32
  call void @input_event(ptr noundef %61, i32 noundef 3, i32 noundef 1, i32 noundef %conv13.i.i.i) #7
  %pressure.i.i.i = getelementptr %struct.surface3_ts_data, ptr %dev_id, i32 0, i32 6, i32 20
  %77 = ptrtoint ptr %pressure.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %pressure.i.i.i, align 1
  %79 = call i16 @llvm.bswap.i16(i16 %78) #7
  %conv15.i.i.i = zext i16 %79 to i32
  call void @input_event(ptr noundef %61, i32 noundef 3, i32 noundef 24, i32 noundef %conv15.i.i.i) #7
  br label %surface3_spi_process_pen.exit.i

surface3_spi_process_pen.exit.i:                  ; preds = %if.then9.i.i.i, %if.end.i.i19.i.surface3_spi_process_pen.exit.i_crit_edge
  %80 = ptrtoint ptr %pen_input_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pen_input_dev.i.i.i, align 16
  call void @input_event(ptr noundef %81, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

do.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %21 to i32
  %82 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_id, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %conv.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end4.i, %surface3_spi_process_pen.exit.i, %surface3_spi_process_touch.exit.i, %surface3_spi_read.exit.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_get_slot_by_key(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @surface3_spi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %irq = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #7
  %gpiod_rst.i = getelementptr inbounds %struct.surface3_ts_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %gpiod_rst.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpiod_rst.i, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #7
  %arrayidx2.i = getelementptr %struct.surface3_ts_data, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 20) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @surface3_spi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpiod_rst.i = getelementptr inbounds %struct.surface3_ts_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %gpiod_rst.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod_rst.i, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #7
  %arrayidx2.i = getelementptr %struct.surface3_ts_data, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #7
  tail call void @msleep(i32 noundef 20) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 128
  %irq = getelementptr inbounds %struct.spi_device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %9) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_surface3_spi__235_417_surface3_spi_driver_init6, !1, !"__initcall__kmod_surface3_spi__235_417_surface3_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 417, i32 1}
!2 = !{ptr @__exitcall_surface3_spi_driver_exit, !1, !"__exitcall_surface3_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author236, !4, !"__UNIQUE_ID_author236", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 419, i32 1}
!5 = !{ptr @__UNIQUE_ID_description237, !6, !"__UNIQUE_ID_description237", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 420, i32 1}
!7 = !{ptr @__UNIQUE_ID_file238, !8, !"__UNIQUE_ID_file238", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 421, i32 1}
!9 = !{ptr @__UNIQUE_ID_license239, !8, !"__UNIQUE_ID_license239", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 410, i32 11}
!12 = !{ptr @surface3_spi_driver, !13, !"surface3_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 408, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 365, i32 8}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 237, i32 5}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @surface3_spi_get_gpio_config._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @surface3_spi_get_gpio_config._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 269, i32 16}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 270, i32 16}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 278, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @surface3_spi_create_touch_input._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @surface3_spi_create_touch_input._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 310, i32 16}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 319, i32 3}
!37 = !{ptr @surface3_spi_create_pen_input._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @surface3_spi_create_pen_input._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 202, i32 2}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @surface3_spi_irq_handler.__UNIQUE_ID_ddebug234, !40, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!44 = !{ptr @surface3_spi_process.header, !45, !"header", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 170, i32 20}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 176, i32 3}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @surface3_spi_process._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @surface3_spi_process._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 188, i32 3}
!53 = !{ptr @surface3_spi_process._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @surface3_spi_process._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @surface3_spi_pm_ops, !56, !"surface3_spi_pm_ops", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/surface3_spi.c", i32 396, i32 8}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2148699519, i64 2148699524, i64 2148699537, i64 2148699581, i64 2148699615, i64 2148699636}
