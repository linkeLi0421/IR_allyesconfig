; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/ili922x.c_pt.bc'
source_filename = "../drivers/video/backlight/ili922x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ili922x = type { ptr, ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.lcd_device = type { %struct.lcd_properties, %struct.mutex, ptr, %struct.mutex, %struct.notifier_block, %struct.device }
%struct.lcd_properties = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_ili922x_id = internal constant [19 x i8] c"ili922x.ili922x_id\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ili922x_id = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_ili922x_id = internal constant %struct.kernel_param { ptr @__param_str_ili922x_id, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @ili922x_id } }, section "__param", align 4
@__UNIQUE_ID_ili922x_idtype303 = internal constant [32 x i8] c"ili922x.parmtype=ili922x_id:int\00", section ".modinfo", align 1
@__param_str_tx_invert = internal constant [18 x i8] c"ili922x.tx_invert\00", align 1
@tx_invert = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_tx_invert = internal constant %struct.kernel_param { ptr @__param_str_tx_invert, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @tx_invert } }, section "__param", align 4
@__UNIQUE_ID_tx_inverttype304 = internal constant [31 x i8] c"ili922x.parmtype=tx_invert:int\00", section ".modinfo", align 1
@__initcall__kmod_ili922x__308_543_ili922x_driver_init6 = internal global ptr @ili922x_driver_init, section ".initcall6.init", align 4
@ili922x_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ili922x_probe, ptr @ili922x_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ili922x_driver_exit = internal global ptr @ili922x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author309 = internal constant [46 x i8] c"ili922x.author=Stefano Babic <sbabic@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [44 x i8] c"ili922x.description=ILI9221/9222 LCD driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [45 x i8] c"ili922x.file=drivers/video/backlight/ili922x\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [20 x i8] c"ili922x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_ili922x_id313 = internal constant [62 x i8] c"ili922x.parm=ili922x_id:set controller identifier (default=1)\00", section ".modinfo", align 1
@__UNIQUE_ID_tx_invert314 = internal constant [51 x i8] c"ili922x.parm=tx_invert:invert bytes before sending\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ili922x\00", [24 x i8] zeroinitializer }, align 32
@ili922x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no LCD found: Chip ID 0x%x, ret %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ili922x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/video/backlight/ili922x.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ili922x_probe._entry_ptr = internal global ptr @ili922x_probe._entry, section ".printk_index", align 4
@ili922x_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 500, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ILI%x found, SPI freq %d, mode %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ili922x_probe._entry_ptr.9 = internal global ptr @ili922x_probe._entry.6, section ".printk_index", align 4
@ili922x_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 504, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reading RS failed...\0A\00", [42 x i8] zeroinitializer }, align 32
@ili922x_probe._entry_ptr.12 = internal global ptr @ili922x_probe._entry.10, section ".printk_index", align 4
@ili922x_probe.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"status: 0x%x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ili922xlcd\00", [21 x i8] zeroinitializer }, align 32
@ili922x_ops = internal global { %struct.lcd_ops, [40 x i8] } { %struct.lcd_ops { ptr @ili922x_get_power, ptr @ili922x_set_power, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ili922x_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 517, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot register LCD\0A\00", [43 x i8] zeroinitializer }, align 32
@ili922x_probe._entry_ptr.17 = internal global ptr @ili922x_probe._entry.15, section ".printk_index", align 4
@ili922x_read.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ili922x_read\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error sending SPI message 0x%x\00", [33 x i8] zeroinitializer }, align 32
@ili922x_read_status.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.19, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ili922x_read_status\00", [44 x i8] zeroinitializer }, align 32
@ili922x_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.21, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ili922x_write\00", [18 x i8] zeroinitializer }, align 32
@ili922x_write._entry_ptr = internal global ptr @ili922x_write._entry, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant [11 x i8] c"ili922x_id\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 129, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"tx_invert\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 132, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"ili922x_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 535, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 537, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 493, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 499, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 504, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 508, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 514, i32 44 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"ili922x_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 471, i32 23 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 517, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 232, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 178, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [37 x i8] c"../drivers/video/backlight/ili922x.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 289, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_ili922x_id313, ptr @__UNIQUE_ID_ili922x_idtype303, ptr @__UNIQUE_ID_license312, ptr @__UNIQUE_ID_tx_invert314, ptr @__UNIQUE_ID_tx_inverttype304, ptr @__exitcall_ili922x_driver_exit, ptr @__initcall__kmod_ili922x__308_543_ili922x_driver_init6, ptr @__param_ili922x_id, ptr @__param_tx_invert, ptr @ili922x_driver_exit, ptr @ili922x_probe._entry, ptr @ili922x_probe._entry.10, ptr @ili922x_probe._entry.15, ptr @ili922x_probe._entry.6, ptr @ili922x_probe._entry_ptr, ptr @ili922x_probe._entry_ptr.12, ptr @ili922x_probe._entry_ptr.17, ptr @ili922x_probe._entry_ptr.9, ptr @ili922x_write._entry, ptr @ili922x_write._entry_ptr, ptr @ili922x_id, ptr @tx_invert, ptr @ili922x_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @ili922x_ops, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili922x_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_invert to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili922x_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili922x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili922x_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili922x_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili922x_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili922x_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili922x_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ili922x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ili922x_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ili922x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ili922x_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili922x_probe(ptr noundef %spi) #2 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %reg, align 2
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spi, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = call fastcc i32 @ili922x_read(ptr noundef %spi, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %reg, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 37408, i32 %and)
  %cmp.not = icmp eq i32 %and, 37408
  br i1 %cmp.not, label %do.end11, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %conv7 = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef %conv7, i32 noundef %call2) #9
  br label %cleanup

do.end11:                                         ; preds = %lor.lhs.false
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %7 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_speed_hz, align 8
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %8, i32 noundef %10) #9
  %call14 = call fastcc i32 @ili922x_read_status(ptr noundef %spi, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body22, label %do.end19

do.end19:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.11) #9
  br label %cleanup

do.body22:                                        ; preds = %do.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ili922x_probe.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ili922x_probe, %if.then27)) #6
          to label %do.end32 [label %if.then27], !srcloc !78

if.then27:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg, align 2
  %conv29 = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ili922x_probe.__UNIQUE_ID_ddebug307, ptr noundef %spi, ptr noundef nonnull @.str.13, i32 noundef %conv29) #6
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %do.body22
  tail call fastcc void @ili922x_display_init(ptr noundef %spi)
  %power = getelementptr inbounds %struct.ili922x, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %power, align 4
  %call35 = tail call ptr @devm_lcd_device_register(ptr noundef %spi, ptr noundef nonnull @.str.14, ptr noundef %spi, ptr noundef nonnull %call.i, ptr noundef nonnull @ili922x_ops) #6
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end40, label %if.end43

do.end40:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16) #9
  %14 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end43:                                         ; preds = %do.end32
  %ld = getelementptr inbounds %struct.ili922x, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %ld to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call35, ptr %ld, align 4
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %17 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp2.i = icmp slt i32 %18, 2
  br i1 %cmp2.i, label %if.end43.if.then11.i_crit_edge, label %if.then.i

if.end43.if.then11.i_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i

if.then.i:                                        ; preds = %if.end43
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %call.i76 = tail call fastcc i32 @ili922x_poweron(ptr noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool.not.i = icmp eq i32 %call.i76, 0
  br i1 %tobool.not.i, label %if.then.i.if.then11.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.then11.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i

if.then11.i:                                      ; preds = %if.then.i.if.then11.i_crit_edge, %if.end43.if.then11.i_crit_edge
  %21 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %power, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11.i, %if.then.i.cleanup_crit_edge, %do.end40, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call14, %do.end19 ], [ %14, %do.end40 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.then11.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili922x_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 16, i16 noundef zeroext 0) #6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 10500, i32 noundef 2) #6
  %call1.i = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 17, i16 noundef zeroext 0) #6
  %call2.i = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 18, i16 noundef zeroext 0) #6
  tail call void @msleep(i32 noundef 40) #6
  %call4.i = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 19, i16 noundef zeroext 0) #6
  tail call void @msleep(i32 noundef 40) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ili922x_read(ptr noundef %spi, ptr nocapture noundef writeonly %rx) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %xfer_regindex = alloca %struct.spi_transfer, align 4
  %xfer_regvalue = alloca %struct.spi_transfer, align 4
  %tbuf = alloca [16 x i8], align 1
  %rbuf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer_regindex) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer_regvalue) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tbuf) #6
  %0 = getelementptr inbounds [16 x i8], ptr %tbuf, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %tbuf, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %tbuf, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %tbuf, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %tbuf, i32 0, i32 5
  %5 = getelementptr inbounds i8, ptr %tbuf, i32 3
  %6 = call ptr @memset(ptr %5, i32 255, i32 13)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rbuf) #6
  %7 = getelementptr inbounds [16 x i8], ptr %rbuf, i32 0, i32 3
  %8 = getelementptr inbounds [16 x i8], ptr %rbuf, i32 0, i32 4
  %9 = getelementptr inbounds [16 x i8], ptr %rbuf, i32 0, i32 5
  %10 = call ptr @memset(ptr %rbuf, i32 255, i32 16)
  %11 = getelementptr inbounds i8, ptr %xfer_regindex, i32 12
  %12 = call ptr @memset(ptr %11, i32 0, i32 84)
  %13 = call ptr @memset(ptr %xfer_regvalue, i32 0, i32 96)
  %14 = getelementptr inbounds i8, ptr %msg, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %20 = ptrtoint ptr %xfer_regindex to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %tbuf, ptr %xfer_regindex, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regindex, i32 0, i32 1
  %21 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rbuf, ptr %rx_buf, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regindex, i32 0, i32 7
  %22 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 64, ptr %cs_change, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %23 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %24)
  %cmp = icmp ugt i32 %24, 4000000
  br i1 %cmp, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regindex, i32 0, i32 12
  %25 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4000000, ptr %speed_hz, align 4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %26 = load i32, ptr @tx_invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  %27 = load i32, ptr @ili922x_id, align 4
  %and4 = shl i32 %27, 2
  %shl5 = and i32 %and4, 4
  %neg = xor i32 %shl5, 143
  %or6 = or i32 %shl5, 112
  %cond = select i1 %tobool.not, i32 %or6, i32 %neg
  %conv = trunc i32 %cond to i8
  %28 = ptrtoint ptr %tbuf to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %tbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool9.not = icmp ne i32 %26, 0
  %conv11 = sext i1 %tobool9.not to i8
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv11, ptr %0, align 1
  %not.tobool.not = xor i1 %tobool.not, true
  %. = sext i1 %not.tobool.not to i8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %., ptr %1, align 1
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regindex, i32 0, i32 8
  %31 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 8, ptr %bits_per_word, align 1
  %len23 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regindex, i32 0, i32 2
  %32 = ptrtoint ptr %len23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %len23, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regindex, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.spi_message_add_tail.exit_crit_edge

do.end.spi_message_add_tail.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regindex, i32 0, i32 18, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %do.end.spi_message_add_tail.exit_crit_edge
  %37 = load i32, ptr @tx_invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool24.not = icmp eq i32 %37, 0
  %38 = load i32, ptr @ili922x_id, align 4
  %and33 = shl i32 %38, 2
  %shl34 = and i32 %and33, 4
  %neg31 = xor i32 %shl34, 140
  %or37 = or i32 %shl34, 115
  %cond39 = select i1 %tobool24.not, i32 %or37, i32 %neg31
  %conv40 = trunc i32 %cond39 to i8
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv40, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool42.not = icmp ne i32 %37, 0
  %conv44 = sext i1 %tobool42.not to i8
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv44, ptr %3, align 1
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv44, ptr %4, align 1
  %cs_change51 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regvalue, i32 0, i32 7
  %42 = ptrtoint ptr %cs_change51 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load52 = load i8, ptr %cs_change51, align 4
  %bf.set54 = or i8 %bf.load52, 64
  store i8 %bf.set54, ptr %cs_change51, align 4
  %len55 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regvalue, i32 0, i32 2
  %43 = ptrtoint ptr %len55 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %len55, align 4
  %44 = ptrtoint ptr %xfer_regvalue to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %2, ptr %xfer_regvalue, align 4
  %rx_buf59 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regvalue, i32 0, i32 1
  %45 = ptrtoint ptr %rx_buf59 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %7, ptr %rx_buf59, align 4
  %46 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %47)
  %cmp62 = icmp ugt i32 %47, 4000000
  br i1 %cmp62, label %if.then64, label %spi_message_add_tail.exit.do.end68_crit_edge

spi_message_add_tail.exit.do.end68_crit_edge:     ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end68

if.then64:                                        ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %speed_hz65 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regvalue, i32 0, i32 12
  %48 = ptrtoint ptr %speed_hz65 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4000000, ptr %speed_hz65, align 4
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %spi_message_add_tail.exit.do.end68_crit_edge
  %transfer_list.i1 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regvalue, i32 0, i32 18
  %49 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i3 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i1, ptr noundef %50, ptr noundef nonnull %msg) #6
  br i1 %call.i.i.i3, label %if.end.i.i.i5, label %do.end68.spi_message_add_tail.exit6_crit_edge

do.end68.spi_message_add_tail.exit6_crit_edge:    ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit6

if.end.i.i.i5:                                    ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %transfer_list.i1, ptr %prev.i.i.i, align 4
  %52 = ptrtoint ptr %transfer_list.i1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg, ptr %transfer_list.i1, align 4
  %prev3.i.i.i4 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regvalue, i32 0, i32 18, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i4 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i.i4, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %transfer_list.i1, ptr %50, align 4
  br label %spi_message_add_tail.exit6

spi_message_add_tail.exit6:                       ; preds = %if.end.i.i.i5, %do.end68.spi_message_add_tail.exit6_crit_edge
  %call = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp69 = icmp slt i32 %call, 0
  br i1 %cmp69, label %do.body72, label %if.end81

do.body72:                                        ; preds = %spi_message_add_tail.exit6
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ili922x_read.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ili922x_read, %if.then77)) #6
          to label %cleanup [label %if.then77], !srcloc !78

if.then77:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ili922x_read.__UNIQUE_ID_ddebug306, ptr noundef %spi, ptr noundef nonnull @.str.19, i32 noundef %call) #6
  br label %cleanup

if.end81:                                         ; preds = %spi_message_add_tail.exit6
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %8, align 1
  %conv83 = zext i8 %56 to i16
  %shl84 = shl nuw i16 %conv83, 8
  %57 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %9, align 1
  %conv87 = zext i8 %58 to i16
  %add88 = or i16 %shl84, %conv87
  %59 = ptrtoint ptr %rx to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %add88, ptr %rx, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %if.then77, %do.body72
  %retval.0 = phi i32 [ 0, %if.end81 ], [ %call, %if.then77 ], [ %call, %do.body72 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rbuf) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tbuf) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer_regvalue) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer_regindex) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ili922x_read_status(ptr noundef %spi, ptr nocapture noundef writeonly %rs) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %xfer = alloca %struct.spi_transfer, align 4
  %tbuf = alloca [16 x i8], align 1
  %rbuf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tbuf) #6
  %0 = getelementptr inbounds [16 x i8], ptr %tbuf, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %tbuf, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rbuf) #6
  %3 = getelementptr inbounds [16 x i8], ptr %rbuf, i32 0, i32 2
  %4 = getelementptr inbounds [16 x i8], ptr %rbuf, i32 0, i32 3
  %5 = call ptr @memset(ptr %rbuf, i32 255, i32 16)
  %6 = getelementptr inbounds i8, ptr %xfer, i32 12
  %7 = call ptr @memset(ptr %6, i32 0, i32 84)
  %8 = getelementptr inbounds i8, ptr %msg, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %14 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tbuf, ptr %xfer, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %15 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rbuf, ptr %rx_buf, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 7
  %16 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 64, ptr %cs_change, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %17 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %18)
  %cmp = icmp ugt i32 %18, 4000000
  br i1 %cmp, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %19 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4000000, ptr %speed_hz, align 4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %20 = load i32, ptr @tx_invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  %21 = load i32, ptr @ili922x_id, align 4
  %and4 = shl i32 %21, 2
  %shl5 = and i32 %and4, 4
  %neg = xor i32 %shl5, 142
  %or8 = or i32 %shl5, 113
  %cond = select i1 %tobool.not, i32 %or8, i32 %neg
  %conv = trunc i32 %cond to i8
  %22 = ptrtoint ptr %tbuf to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %tbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool11.not = icmp ne i32 %20, 0
  %conv13 = sext i1 %tobool11.not to i8
  %23 = zext i8 %conv13 to i32
  %24 = call ptr @memset(ptr %0, i32 %23, i32 3)
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 8
  %25 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 8, ptr %bits_per_word, align 1
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %26 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %len, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.spi_message_add_tail.exit_crit_edge

do.end.spi_message_add_tail.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %30 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %do.end.spi_message_add_tail.exit_crit_edge
  %call = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp15 = icmp slt i32 %call, 0
  br i1 %cmp15, label %do.body18, label %if.end27

do.body18:                                        ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ili922x_read_status.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ili922x_read_status, %if.then23)) #6
          to label %cleanup [label %if.then23], !srcloc !78

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ili922x_read_status.__UNIQUE_ID_ddebug305, ptr noundef %spi, ptr noundef nonnull @.str.19, i32 noundef %call) #6
  br label %cleanup

if.end27:                                         ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %3, align 1
  %conv29 = zext i8 %32 to i16
  %shl30 = shl nuw i16 %conv29, 8
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %4, align 1
  %conv32 = zext i8 %34 to i16
  %add = or i16 %shl30, %conv32
  %35 = ptrtoint ptr %rs to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %add, ptr %rs, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then23, %do.body18
  %retval.0 = phi i32 [ 0, %if.end27 ], [ %call, %if.then23 ], [ %call, %do.body18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rbuf) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tbuf) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ili922x_display_init(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca %struct.spi_transfer, align 4
  %tbuf.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 0, i16 noundef zeroext 1)
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 10500, i32 noundef 2) #6
  %call1 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 1, i16 noundef zeroext 26907)
  %call2 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 2, i16 noundef zeroext 1792)
  %call3 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 3, i16 noundef zeroext 4144)
  %call4 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 4, i16 noundef zeroext 0)
  %call5 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 5, i16 noundef zeroext 0)
  %call6 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 7, i16 noundef zeroext 55)
  %call7 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 8, i16 noundef zeroext 514)
  %call8 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 9, i16 noundef zeroext 0)
  %call9 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 11, i16 noundef zeroext 0)
  %call10 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 12, i16 noundef zeroext 272)
  %call11 = tail call fastcc i32 @ili922x_poweron(ptr noundef %spi)
  %call12 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 48, i16 noundef zeroext 770)
  %call13 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 49, i16 noundef zeroext 1031)
  %call14 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 50, i16 noundef zeroext 772)
  %call15 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 51, i16 noundef zeroext 515)
  %call16 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 52, i16 noundef zeroext 1798)
  %call17 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 53, i16 noundef zeroext 1031)
  %call18 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 54, i16 noundef zeroext 1798)
  %call19 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 55, i16 noundef zeroext 0)
  %call20 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 56, i16 noundef zeroext 3078)
  %call21 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 57, i16 noundef zeroext 3840)
  %call22 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 33, i16 noundef zeroext 0)
  %call23 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 64, i16 noundef zeroext 0)
  %call24 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 65, i16 noundef zeroext 0)
  %call25 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 66, i16 noundef zeroext -9472)
  %call26 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 67, i16 noundef zeroext -9472)
  %call27 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 68, i16 noundef zeroext -20736)
  %call28 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 69, i16 noundef zeroext -9472)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tbuf.i) #6
  %0 = getelementptr inbounds [16 x i8], ptr %tbuf.i, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %tbuf.i, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %tbuf.i, i32 3
  %3 = call ptr @memset(ptr %2, i32 255, i32 13)
  %4 = getelementptr inbounds i8, ptr %xfer.i, i32 12
  %5 = call ptr @memset(ptr %4, i32 0, i32 84)
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %10 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %12 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tbuf.i, ptr %xfer.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 1
  %13 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rx_buf.i, align 4
  %cs_change.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 7
  %14 = ptrtoint ptr %cs_change.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 64, ptr %cs_change.i, align 4
  %15 = load i32, ptr @ili922x_id, align 4
  %.tr.i = trunc i32 %15 to i8
  %16 = shl i8 %.tr.i, 2
  %17 = and i8 %16, 4
  %conv.i = or i8 %17, 112
  %18 = ptrtoint ptr %tbuf.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %tbuf.i, align 1
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %0, align 1
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 34, ptr %1, align 1
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 8
  %21 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 8, ptr %bits_per_word.i, align 1
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.set_write_to_gram_reg.exit_crit_edge

entry.set_write_to_gram_reg.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_write_to_gram_reg.exit

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %26 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %set_write_to_gram_reg.exit

set_write_to_gram_reg.exit:                       ; preds = %if.end.i.i.i.i, %entry.set_write_to_gram_reg.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tbuf.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_lcd_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ili922x_lcd_power(ptr nocapture noundef %lcd, i32 noundef %power) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %power)
  %cmp = icmp slt i32 %power, 2
  %power1 = getelementptr inbounds %struct.ili922x, ptr %lcd, i32 0, i32 2
  %0 = ptrtoint ptr %power1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp2 = icmp slt i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true4.critedge

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp2, label %land.lhs.true.if.then11_crit_edge, label %if.then

land.lhs.true.if.then11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lcd, align 4
  %call = tail call fastcc i32 @ili922x_poweron(ptr noundef %3)
  br label %if.end10

land.lhs.true4.critedge:                          ; preds = %entry
  br i1 %cmp2, label %if.then7, label %land.lhs.true4.critedge.if.then11_crit_edge

land.lhs.true4.critedge.if.then11_crit_edge:      ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then7:                                         ; preds = %land.lhs.true4.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %lcd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcd, align 4
  %call.i = tail call fastcc i32 @ili922x_write(ptr noundef %5, i8 noundef zeroext 16, i16 noundef zeroext 0) #6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 10500, i32 noundef 2) #6
  %call1.i = tail call fastcc i32 @ili922x_write(ptr noundef %5, i8 noundef zeroext 17, i16 noundef zeroext 0) #6
  %add.i = add i32 %call1.i, %call.i
  %call2.i = tail call fastcc i32 @ili922x_write(ptr noundef %5, i8 noundef zeroext 18, i16 noundef zeroext 0) #6
  %add3.i = add i32 %add.i, %call2.i
  tail call void @msleep(i32 noundef 40) #6
  %call4.i = tail call fastcc i32 @ili922x_write(ptr noundef %5, i8 noundef zeroext 19, i16 noundef zeroext 0) #6
  %add5.i = add i32 %add3.i, %call4.i
  tail call void @msleep(i32 noundef 40) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then
  %ret.0 = phi i32 [ %add5.i, %if.then7 ], [ %call, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.end10.if.then11_crit_edge, label %if.end10.if.end13_crit_edge

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end10.if.then11_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %if.end10.if.then11_crit_edge, %land.lhs.true4.critedge.if.then11_crit_edge, %land.lhs.true.if.then11_crit_edge
  %power12 = getelementptr inbounds %struct.ili922x, ptr %lcd, i32 0, i32 2
  %6 = ptrtoint ptr %power12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %power, ptr %power12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end10.if.end13_crit_edge
  %ret.023 = phi i32 [ 0, %if.then11 ], [ %ret.0, %if.end10.if.end13_crit_edge ]
  ret i32 %ret.023
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext %reg, i16 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %xfer_regindex = alloca %struct.spi_transfer, align 4
  %xfer_regvalue = alloca %struct.spi_transfer, align 4
  %tbuf = alloca [16 x i8], align 1
  %rbuf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer_regindex) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer_regvalue) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tbuf) #6
  %0 = getelementptr inbounds [16 x i8], ptr %tbuf, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %tbuf, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %tbuf, i32 3
  %3 = call ptr @memset(ptr %2, i32 255, i32 13)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rbuf) #6
  %4 = call ptr @memset(ptr %rbuf, i32 255, i32 16)
  %5 = getelementptr inbounds i8, ptr %xfer_regindex, i32 12
  %6 = call ptr @memset(ptr %5, i32 0, i32 84)
  %7 = call ptr @memset(ptr %xfer_regvalue, i32 0, i32 96)
  %8 = getelementptr inbounds i8, ptr %msg, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %14 = ptrtoint ptr %xfer_regindex to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tbuf, ptr %xfer_regindex, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regindex, i32 0, i32 1
  %15 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rbuf, ptr %rx_buf, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regindex, i32 0, i32 7
  %16 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 64, ptr %cs_change, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %17 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %18)
  %cmp = icmp ugt i32 %18, 4000000
  br i1 %cmp, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regindex, i32 0, i32 12
  %19 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4000000, ptr %speed_hz, align 4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %20 = load i32, ptr @tx_invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  %21 = load i32, ptr @ili922x_id, align 4
  %and4 = shl i32 %21, 2
  %shl5 = and i32 %and4, 4
  %neg = xor i32 %shl5, 143
  %or6 = or i32 %shl5, 112
  %cond = select i1 %tobool.not, i32 %or6, i32 %neg
  %conv = trunc i32 %cond to i8
  %22 = ptrtoint ptr %tbuf to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %tbuf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool9.not = icmp ne i32 %20, 0
  %conv11 = sext i1 %tobool9.not to i8
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv11, ptr %0, align 1
  %not.tobool.not = xor i1 %tobool.not, true
  %neg16 = sext i1 %not.tobool.not to i8
  %cond20 = xor i8 %neg16, %reg
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %cond20, ptr %1, align 1
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regindex, i32 0, i32 8
  %25 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 8, ptr %bits_per_word, align 1
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regindex, i32 0, i32 2
  %26 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %len, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regindex, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.spi_message_add_tail.exit_crit_edge

do.end.spi_message_add_tail.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regindex, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %30 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %do.end.spi_message_add_tail.exit_crit_edge
  %call = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg) #6
  %31 = call ptr @memset(ptr %8, i32 0, i32 40)
  %32 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %msg, ptr %msg, align 4
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %35 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %36 = load i32, ptr @tx_invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool23.not = icmp eq i32 %36, 0
  %37 = load i32, ptr @ili922x_id, align 4
  %and32 = shl i32 %37, 2
  %shl33 = and i32 %and32, 4
  %neg30 = xor i32 %shl33, 141
  %or35 = or i32 %shl33, 114
  %cond38 = select i1 %tobool23.not, i32 %or35, i32 %neg30
  %conv39 = trunc i32 %cond38 to i8
  %38 = ptrtoint ptr %tbuf to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv39, ptr %tbuf, align 1
  %39 = lshr i16 %value, 8
  %40 = trunc i16 %39 to i8
  %not.tobool23.not = xor i1 %tobool23.not, true
  %neg45 = sext i1 %not.tobool23.not to i8
  %cond51 = xor i8 %neg45, %40
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %cond51, ptr %0, align 1
  %conv56 = trunc i16 %value to i8
  %cond63 = xor i8 %neg45, %conv56
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %cond63, ptr %1, align 1
  %cs_change66 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regvalue, i32 0, i32 7
  %43 = ptrtoint ptr %cs_change66 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load67 = load i8, ptr %cs_change66, align 4
  %bf.set69 = or i8 %bf.load67, 64
  store i8 %bf.set69, ptr %cs_change66, align 4
  %len70 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regvalue, i32 0, i32 2
  %44 = ptrtoint ptr %len70 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %len70, align 4
  %45 = ptrtoint ptr %xfer_regvalue to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %tbuf, ptr %xfer_regvalue, align 4
  %rx_buf74 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regvalue, i32 0, i32 1
  %46 = ptrtoint ptr %rx_buf74 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %rbuf, ptr %rx_buf74, align 4
  %47 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %48)
  %cmp77 = icmp ugt i32 %48, 4000000
  br i1 %cmp77, label %if.then79, label %spi_message_add_tail.exit.do.end83_crit_edge

spi_message_add_tail.exit.do.end83_crit_edge:     ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end83

if.then79:                                        ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %speed_hz80 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regvalue, i32 0, i32 12
  %49 = ptrtoint ptr %speed_hz80 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4000000, ptr %speed_hz80, align 4
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %spi_message_add_tail.exit.do.end83_crit_edge
  %transfer_list.i110 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regvalue, i32 0, i32 18
  %call.i.i.i112 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i110, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #6
  br i1 %call.i.i.i112, label %if.end.i.i.i114, label %do.end83.spi_message_add_tail.exit115_crit_edge

do.end83.spi_message_add_tail.exit115_crit_edge:  ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit115

if.end.i.i.i114:                                  ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %transfer_list.i110, ptr %prev.i.i.i, align 4
  %51 = ptrtoint ptr %transfer_list.i110 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg, ptr %transfer_list.i110, align 4
  %prev3.i.i.i113 = getelementptr inbounds %struct.spi_transfer, ptr %xfer_regvalue, i32 0, i32 18, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i113 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg, ptr %prev3.i.i.i113, align 4
  %53 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %transfer_list.i110, ptr %msg, align 4
  br label %spi_message_add_tail.exit115

spi_message_add_tail.exit115:                     ; preds = %if.end.i.i.i114, %do.end83.spi_message_add_tail.exit115_crit_edge
  %call84 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %do.end90, label %spi_message_add_tail.exit115.cleanup_crit_edge

spi_message_add_tail.exit115.cleanup_crit_edge:   ; preds = %spi_message_add_tail.exit115
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end90:                                         ; preds = %spi_message_add_tail.exit115
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.19, i32 noundef %call84) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end90, %spi_message_add_tail.exit115.cleanup_crit_edge
  %retval.0 = phi i32 [ %call84, %do.end90 ], [ 0, %spi_message_add_tail.exit115.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rbuf) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tbuf) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer_regvalue) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer_regindex) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ili922x_poweron(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 16, i16 noundef zeroext 0)
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 10500, i32 noundef 2) #6
  %call1 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 17, i16 noundef zeroext 0)
  %add = add i32 %call1, %call
  %call2 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 18, i16 noundef zeroext 0)
  %add3 = add i32 %add, %call2
  tail call void @msleep(i32 noundef 40) #6
  %call4 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 19, i16 noundef zeroext 0)
  %add5 = add i32 %add3, %call4
  tail call void @msleep(i32 noundef 40) #6
  %call6 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 86, i16 noundef zeroext 2063)
  %add7 = add i32 %add5, %call6
  %call8 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 16, i16 noundef zeroext 16960)
  %add9 = add i32 %add7, %call8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 10500, i32 noundef 2) #6
  %call10 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 17, i16 noundef zeroext 0)
  %add11 = add i32 %add9, %call10
  %call12 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 18, i16 noundef zeroext 20)
  %add13 = add i32 %add11, %call12
  tail call void @msleep(i32 noundef 40) #6
  %call14 = tail call fastcc i32 @ili922x_write(ptr noundef %spi, i8 noundef zeroext 19, i16 noundef zeroext 4889)
  %add15 = add i32 %add13, %call14
  tail call void @msleep(i32 noundef 40) #6
  ret i32 %add15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ili922x_get_power(ptr nocapture noundef readonly %ld) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power = getelementptr inbounds %struct.ili922x, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili922x_set_power(ptr nocapture noundef readonly %ld, i32 noundef %power) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @ili922x_lcd_power(ptr noundef %1, i32 noundef %power)
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !16, !18, !20, !22, !23, !25, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__param_ili922x_id, !1, !"__param_ili922x_id", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/ili922x.c", i32 130, i32 1}
!2 = !{ptr @__UNIQUE_ID_ili922x_idtype303, !1, !"__UNIQUE_ID_ili922x_idtype303", i1 false, i1 false}
!3 = !{ptr @__param_tx_invert, !4, !"__param_tx_invert", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/ili922x.c", i32 133, i32 1}
!5 = !{ptr @__UNIQUE_ID_tx_inverttype304, !4, !"__UNIQUE_ID_tx_inverttype304", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_ili922x__308_543_ili922x_driver_init6, !7, !"__initcall__kmod_ili922x__308_543_ili922x_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/video/backlight/ili922x.c", i32 543, i32 1}
!8 = !{ptr @__exitcall_ili922x_driver_exit, !7, !"__exitcall_ili922x_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author309, !10, !"__UNIQUE_ID_author309", i1 false, i1 false}
!10 = !{!"../drivers/video/backlight/ili922x.c", i32 545, i32 1}
!11 = !{ptr @__UNIQUE_ID_description310, !12, !"__UNIQUE_ID_description310", i1 false, i1 false}
!12 = !{!"../drivers/video/backlight/ili922x.c", i32 546, i32 1}
!13 = !{ptr @__UNIQUE_ID_file311, !14, !"__UNIQUE_ID_file311", i1 false, i1 false}
!14 = !{!"../drivers/video/backlight/ili922x.c", i32 547, i32 1}
!15 = !{ptr @__UNIQUE_ID_license312, !14, !"__UNIQUE_ID_license312", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_ili922x_id313, !17, !"__UNIQUE_ID_ili922x_id313", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/ili922x.c", i32 548, i32 1}
!18 = !{ptr @__UNIQUE_ID_tx_invert314, !19, !"__UNIQUE_ID_tx_invert314", i1 false, i1 false}
!19 = !{!"../drivers/video/backlight/ili922x.c", i32 549, i32 1}
!20 = !{ptr @tx_invert, !21, !"tx_invert", i1 false, i1 false}
!21 = !{!"../drivers/video/backlight/ili922x.c", i32 132, i32 12}
!22 = !{ptr @__param_str_ili922x_id, !1, !"__param_str_ili922x_id", i1 false, i1 false}
!23 = !{ptr @ili922x_id, !24, !"ili922x_id", i1 false, i1 false}
!24 = !{!"../drivers/video/backlight/ili922x.c", i32 129, i32 12}
!25 = !{ptr @__param_str_tx_invert, !4, !"__param_str_tx_invert", i1 false, i1 false}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/backlight/ili922x.c", i32 537, i32 11}
!28 = !{ptr @ili922x_driver, !29, !"ili922x_driver", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/ili922x.c", i32 535, i32 26}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/video/backlight/ili922x.c", i32 493, i32 3}
!32 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ili922x_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @ili922x_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/backlight/ili922x.c", i32 499, i32 2}
!40 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ili922x_probe._entry.6, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ili922x_probe._entry_ptr.9, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/video/backlight/ili922x.c", i32 504, i32 3}
!45 = !{ptr @ili922x_probe._entry.10, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ili922x_probe._entry_ptr.12, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/backlight/ili922x.c", i32 508, i32 2}
!49 = !{ptr @ili922x_probe.__UNIQUE_ID_ddebug307, !48, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/backlight/ili922x.c", i32 514, i32 44}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/video/backlight/ili922x.c", i32 517, i32 3}
!54 = !{ptr @ili922x_probe._entry.15, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ili922x_probe._entry_ptr.17, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/backlight/ili922x.c", i32 232, i32 3}
!58 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ili922x_read.__UNIQUE_ID_ddebug306, !57, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/backlight/ili922x.c", i32 178, i32 3}
!62 = !{ptr @ili922x_read_status.__UNIQUE_ID_ddebug305, !61, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/backlight/ili922x.c", i32 289, i32 3}
!65 = !{ptr @ili922x_write._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ili922x_write._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @ili922x_ops, !68, !"ili922x_ops", i1 false, i1 false}
!68 = !{!"../drivers/video/backlight/ili922x.c", i32 471, i32 23}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2148617657, i64 2148617662, i64 2148617675, i64 2148617719, i64 2148617753, i64 2148617774}
