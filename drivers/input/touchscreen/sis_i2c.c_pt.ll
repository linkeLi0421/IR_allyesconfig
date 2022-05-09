; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/sis_i2c.c_pt.bc'
source_filename = "../drivers/input/touchscreen/sis_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.sis_ts_data = type { ptr, ptr, ptr, ptr, [64 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_sis_i2c__288_400_sis_ts_driver_init6 = internal global ptr @sis_ts_driver_init, section ".initcall6.init", align 4
@sis_ts_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sis_ts_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sis_ts_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sis_ts_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sis_ts_driver_exit = internal global ptr @sis_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [55 x i8] c"sis_i2c.description=SiS 9200 Family Touchscreen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [47 x i8] c"sis_i2c.file=drivers/input/touchscreen/sis_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [23 x i8] c"sis_i2c.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [59 x i8] c"sis_i2c.author=Mika Penttil\C3\A4 <mika.penttila@nextfour.com>\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sis_i2c_ts\00", [21 x i8] zeroinitializer }, align 32
@sis_ts_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sis,9200-ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sis_ts_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sis_i2c_ts\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"9200-ts\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"attn\00", [27 x i8] zeroinitializer }, align 32
@sis_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 318, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get attention GPIO: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sis_ts_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/touchscreen/sis_i2c.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sis_ts_probe._entry_ptr = internal global ptr @sis_ts_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@sis_ts_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 328, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get reset GPIO: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sis_ts_probe._entry_ptr.10 = internal global ptr @sis_ts_probe._entry.8, section ".printk_index", align 4
@sis_ts_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 336, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@sis_ts_probe._entry_ptr.13 = internal global ptr @sis_ts_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SiS Touchscreen\00", [16 x i8] zeroinitializer }, align 32
@sis_ts_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 354, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize MT slots: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sis_ts_probe._entry_ptr.17 = internal global ptr @sis_ts_probe._entry.15, section ".printk_index", align 4
@sis_ts_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 363, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@sis_ts_probe._entry_ptr.20 = internal global ptr @sis_ts_probe._entry.18, section ".printk_index", align 4
@sis_ts_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 370, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@sis_ts_probe._entry_ptr.23 = internal global ptr @sis_ts_probe._entry.21, section ".printk_index", align 4
@sis_ts_handle_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 244, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: nonzero (%d) point count in tail packet\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sis_ts_handle_packet\00", [43 x i8] zeroinitializer }, align 32
@sis_ts_handle_packet._entry_ptr = internal global ptr @sis_ts_handle_packet._entry, section ".printk_index", align 4
@sis_read_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 122, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: invalid packet length (%d vs %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sis_read_packet\00", [16 x i8] zeroinitializer }, align 32
@sis_read_packet._entry_ptr = internal global ptr @sis_read_packet._entry, section ".printk_index", align 4
@sis_read_packet._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 146, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: CRC Error (%d vs %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@sis_read_packet._entry_ptr.30 = internal global ptr @sis_read_packet._entry.28, section ".printk_index", align 4
@sis_read_packet._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.4, i32 155, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: invalid packet ID %#02x\0A\00", [35 x i8] zeroinitializer }, align 32
@sis_read_packet._entry_ptr.33 = internal global ptr @sis_read_packet._entry.31, section ".printk_index", align 4
@sis_ts_report_contact._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 183, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unexpected touch status: %#02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sis_ts_report_contact\00", [42 x i8] zeroinitializer }, align 32
@sis_ts_report_contact._entry_ptr = internal global ptr @sis_ts_report_contact._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"sis_ts_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 392, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 394, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"sis_ts_dt_ids\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 378, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"sis_ts_id\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 385, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 313, i32 7 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 317, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 323, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 327, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 336, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 340, i32 16 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 353, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 363, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 369, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 242, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 120, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 144, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 153, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [39 x i8] c"../drivers/input/touchscreen/sis_i2c.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 182, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_sis_ts_driver_exit, ptr @__initcall__kmod_sis_i2c__288_400_sis_ts_driver_init6, ptr @sis_read_packet._entry, ptr @sis_read_packet._entry.28, ptr @sis_read_packet._entry.31, ptr @sis_read_packet._entry_ptr, ptr @sis_read_packet._entry_ptr.30, ptr @sis_read_packet._entry_ptr.33, ptr @sis_ts_driver_exit, ptr @sis_ts_handle_packet._entry, ptr @sis_ts_handle_packet._entry_ptr, ptr @sis_ts_probe._entry, ptr @sis_ts_probe._entry.11, ptr @sis_ts_probe._entry.15, ptr @sis_ts_probe._entry.18, ptr @sis_ts_probe._entry.21, ptr @sis_ts_probe._entry.8, ptr @sis_ts_probe._entry_ptr, ptr @sis_ts_probe._entry_ptr.10, ptr @sis_ts_probe._entry_ptr.13, ptr @sis_ts_probe._entry_ptr.17, ptr @sis_ts_probe._entry_ptr.20, ptr @sis_ts_probe._entry_ptr.23, ptr @sis_ts_report_contact._entry, ptr @sis_ts_report_contact._entry_ptr, ptr @sis_ts_driver, ptr @.str, ptr @sis_ts_dt_ids, ptr @sis_ts_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_ts_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_ts_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_ts_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_ts_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_ts_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_ts_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_ts_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_ts_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_ts_handle_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_read_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_read_packet._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_read_packet._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_ts_report_contact._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sis_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sis_ts_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sis_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @sis_ts_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis_ts_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 80, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %call3 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 1) #5
  %attn_gpio = getelementptr inbounds %struct.sis_ts_data, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %attn_gpio to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %attn_gpio, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end
  %cmp.not = icmp eq ptr %call3, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then6.cleanup_crit_edge, label %do.end

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %2) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call14 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 3) #5
  %reset_gpio = getelementptr inbounds %struct.sis_ts_data, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call14, ptr %reset_gpio, align 4
  %cmp.i114 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.then17, label %if.end27

if.then17:                                        ; preds = %if.end12
  %cmp20.not = icmp eq ptr %call14, inttoptr (i32 -517 to ptr)
  br i1 %cmp20.not, label %if.then17.cleanup_crit_edge, label %do.end24

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end24:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %4) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end12
  %tobool.not.i = icmp eq ptr %call14, null
  br i1 %tobool.not.i, label %if.end27.sis_ts_reset.exit_crit_edge, label %if.then.i

if.end27.sis_ts_reset.exit_crit_edge:             ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %sis_ts_reset.exit

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %5 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %6, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  tail call void @gpiod_set_value(ptr noundef %6, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 100) #5
  br label %sis_ts_reset.exit

sis_ts_reset.exit:                                ; preds = %if.then.i, %if.end27.sis_ts_reset.exit_crit_edge
  %call29 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %input30 = getelementptr inbounds %struct.sis_ts_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %input30 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call29, ptr %input30, align 4
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %do.end35, label %if.end37

do.end35:                                         ; preds = %sis_ts_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end37:                                         ; preds = %sis_ts_reset.exit
  %8 = ptrtoint ptr %call29 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.14, ptr %call29, align 8
  %id38 = getelementptr inbounds %struct.input_dev, ptr %call29, i32 0, i32 3
  %9 = ptrtoint ptr %id38 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 24, ptr %id38, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call29, i32 noundef 53, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call29, i32 noundef 54, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call29, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call29, i32 noundef 48, i32 noundef 0, i32 noundef 5792, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call29, i32 noundef 49, i32 noundef 0, i32 noundef 5792, i32 noundef 0, i32 noundef 0) #5
  %call39 = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call29, i32 noundef 10, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call39) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end37
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %name48 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call49 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %11, ptr noundef null, ptr noundef nonnull @sis_ts_irq_handler, i32 noundef 8192, ptr noundef %name48, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end56, label %do.end54

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call49) #8
  br label %cleanup

if.end56:                                         ; preds = %if.end46
  %12 = ptrtoint ptr %input30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input30, align 4
  %call58 = tail call i32 @input_register_device(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end56.cleanup_crit_edge, label %do.end63

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call58) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %if.end56.cleanup_crit_edge, %do.end54, %do.end44, %do.end35, %do.end24, %if.then17.cleanup_crit_edge, %do.end, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %do.end44 ], [ %call49, %do.end54 ], [ %call58, %do.end63 ], [ -12, %do.end35 ], [ -12, %entry.cleanup_crit_edge ], [ %2, %do.end ], [ -517, %if.then6.cleanup_crit_edge ], [ %4, %do.end24 ], [ -517, %if.then17.cleanup_crit_edge ], [ 0, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis_ts_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %packet.i = getelementptr inbounds %struct.sis_ts_data, ptr %dev_id, i32 0, i32 4
  %arrayidx12.i.i = getelementptr %struct.sis_ts_data, ptr %dev_id, i32 0, i32 4, i32 2
  %arrayidx10.i = getelementptr %struct.sis_ts_data, ptr %dev_id, i32 0, i32 4, i32 3
  %input1.i.i = getelementptr inbounds %struct.sis_ts_data, ptr %dev_id, i32 0, i32 1
  %attn_gpio = getelementptr inbounds %struct.sis_ts_data, ptr %dev_id, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %entry
  %num_to_report.0.i = phi i32 [ 0, %entry ], [ %num_to_report.0.i.be, %do.body.i.backedge ]
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %call.i.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %packet.i, i32 noundef 64, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 1
  br i1 %cmp.i.i, label %do.body.i.sis_ts_handle_packet.exit_crit_edge, label %if.end.i.i

do.body.i.sis_ts_handle_packet.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sis_ts_handle_packet.exit

if.end.i.i:                                       ; preds = %do.body.i
  %2 = ptrtoint ptr %packet.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %packet.i, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #5
  %conv.i.i = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %4)
  %cmp2.i.i = icmp ugt i16 %4, 64
  br i1 %cmp2.i.i, label %do.end.i.i, label %if.end6.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %conv.i.i, i32 noundef 64) #8
  br label %sis_ts_handle_packet.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %4)
  %cmp8.i.i = icmp ult i16 %4, 10
  br i1 %cmp8.i.i, label %if.end6.i.i.sis_ts_handle_packet.exit_crit_edge, label %if.end11.i.i

if.end6.i.i.sis_ts_handle_packet.exit_crit_edge:  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sis_ts_handle_packet.exit

if.end11.i.i:                                     ; preds = %if.end6.i.i
  %5 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12.i.i, align 1
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %conv14.i.i = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %6)
  %cmp15.not.i.i = icmp eq i8 %6, 16
  br i1 %cmp15.not.i.i, label %if.end11.i.i.if.end.i_crit_edge, label %if.then17.i.i

if.end11.i.i.if.end.i_crit_edge:                  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then17.i.i:                                    ; preds = %if.end11.i.i
  %and.i.i = and i32 %conv14.i.i, 15
  %7 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i, label %do.end50.i.i [
    i32 1, label %if.then21.i.i
    i32 6, label %if.then17.i.i.if.end54.i.i_crit_edge
  ]

if.then17.i.i.if.end54.i.i_crit_edge:             ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54.i.i

if.then21.i.i:                                    ; preds = %if.then17.i.i
  %sub23.i.i = add nsw i32 %conv.i.i, -2
  %sub24.i.i = add nsw i32 %conv.i.i, -4
  %call25.i.i = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %arrayidx12.i.i, i32 noundef %sub24.i.i) #5
  %arrayidx28.i.i = getelementptr i8, ptr %packet.i, i32 %sub23.i.i
  %8 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %arrayidx28.i.i, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #5
  call void @__sanitizer_cov_trace_cmp2(i16 %call25.i.i, i16 %10)
  %cmp32.not.i.i = icmp eq i16 %call25.i.i, %10
  br i1 %cmp32.not.i.i, label %if.end41.i.i, label %do.end37.i.i

do.end37.i.i:                                     ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv31.i.i = zext i16 %10 to i32
  %conv30.i.i = zext i16 %call25.i.i to i32
  %dev38.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38.i.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %conv30.i.i, i32 noundef %conv31.i.i) #8
  br label %sis_ts_handle_packet.exit

if.end41.i.i:                                     ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub42.i.i = add nsw i32 %conv.i.i, -3
  br label %if.end54.i.i

do.end50.i.i:                                     ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv14.i.i.le = zext i8 %6 to i32
  %dev51.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51.i.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27, i32 noundef %conv14.i.i.le) #8
  br label %sis_ts_handle_packet.exit

if.end54.i.i:                                     ; preds = %if.end41.i.i, %if.then17.i.i.if.end54.i.i_crit_edge
  %count_idx.0.i.i = phi i32 [ %sub42.i.i, %if.end41.i.i ], [ %sub.i.i, %if.then17.i.i.if.end54.i.i_crit_edge ]
  %and56.i.i = and i32 %conv14.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i.i)
  %tobool.not.i.i = icmp eq i32 %and56.i.i, 0
  %sub58.i.i = add nsw i32 %count_idx.0.i.i, -2
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %count_idx.0.i.i, i32 %sub58.i.i
  %and61.i.i = and i32 %conv14.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i.i)
  %tobool62.not.i.i = icmp eq i32 %and61.i.i, 0
  %spec.select.i = select i1 %tobool62.not.i.i, i32 6, i32 8
  %and66.i.i = lshr i32 %conv14.i.i, 5
  %11 = and i32 %and66.i.i, 1
  %12 = or i32 %spec.select.i, %11
  br label %if.end.i

if.end.i:                                         ; preds = %if.end54.i.i, %if.end11.i.i.if.end.i_crit_edge
  %contact_size.2.i = phi i32 [ 6, %if.end11.i.i.if.end.i_crit_edge ], [ %12, %if.end54.i.i ]
  %count_idx.2.i.i = phi i32 [ %sub.i.i, %if.end11.i.i.if.end.i_crit_edge ], [ %spec.select.i.i, %if.end54.i.i ]
  %arrayidx72.i.i = getelementptr i8, ptr %packet.i, i32 %count_idx.2.i.i
  %13 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx72.i.i, align 1
  %conv73.i.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_to_report.0.i)
  %cmp.i = icmp eq i32 %num_to_report.0.i, 0
  br i1 %cmp.i, label %if.end.i.if.end7.i_crit_edge, label %if.else.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp2.not.i = icmp eq i8 %14, 0
  br i1 %cmp2.not.i, label %if.else.i.if.end7.i_crit_edge, label %do.end.i

if.else.i.if.end7.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv73.i.i.le = zext i8 %14 to i32
  %15 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_id, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %conv73.i.i.le) #8
  br label %sis_ts_handle_packet.exit

if.end7.i:                                        ; preds = %if.else.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %num_to_report.1.i = phi i32 [ %num_to_report.0.i, %if.else.i.if.end7.i_crit_edge ], [ %conv73.i.i, %if.end.i.if.end7.i_crit_edge ]
  %17 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx12.i.i, align 2
  %conv22.i.i = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %18)
  %cmp23.not.i.i = icmp eq i8 %18, 16
  %and.i46.i = and i32 %conv22.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46.i)
  %tobool.not.i47.i = icmp eq i32 %and.i46.i, 0
  %and32.i.i = and i32 %conv22.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i.i)
  %tobool33.not.i.i = icmp eq i32 %and32.i.i, 0
  %cond.i.i = select i1 %tobool.not.i47.i, i32 6, i32 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %18)
  %cmp16.not.i = icmp ne i8 %18, 16
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end15.i.while.cond.i_crit_edge, %if.end7.i
  %contact.0.i = phi ptr [ %arrayidx10.i, %if.end7.i ], [ %add.ptr.i, %if.end15.i.while.cond.i_crit_edge ]
  %num_to_report.2.i = phi i32 [ %num_to_report.1.i, %if.end7.i ], [ %dec.i, %if.end15.i.while.cond.i_crit_edge ]
  %num_reported.0.i = phi i32 [ 0, %if.end7.i ], [ %inc.i, %if.end15.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_to_report.2.i)
  %cmp11.not.i = icmp eq i32 %num_to_report.2.i, 0
  br i1 %cmp11.not.i, label %while.cond.i.sis_ts_handle_packet.exit_crit_edge, label %while.body.i

while.cond.i.sis_ts_handle_packet.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sis_ts_handle_packet.exit

while.body.i:                                     ; preds = %while.cond.i
  %19 = ptrtoint ptr %input1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input1.i.i, align 4
  %21 = ptrtoint ptr %contact.0.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %contact.0.i, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %22, label %do.end.i43.i [
    i8 3, label %while.body.i.if.end.i44.i_crit_edge
    i8 0, label %while.body.i.if.end.i44.i_crit_edge95
  ]

while.body.i.if.end.i44.i_crit_edge95:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i44.i

while.body.i.if.end.i44.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i44.i

do.end.i43.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i41.i = zext i8 %22 to i32
  %24 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_id, align 4
  %dev.i42.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i42.i, ptr noundef nonnull @.str.34, i32 noundef %conv.i41.i) #8
  br label %do.cond22.i

if.end.i44.i:                                     ; preds = %while.body.i.if.end.i44.i_crit_edge, %while.body.i.if.end.i44.i_crit_edge95
  %arrayidx8.i.i = getelementptr i8, ptr %contact.0.i, i32 1
  %26 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %27 to i32
  %call.i.i = tail call i32 @input_mt_get_slot_by_key(ptr noundef %20, i32 noundef %conv9.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp10.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp10.i.i, label %if.end.i44.i.do.cond22.i_crit_edge, label %if.end13.i.i

if.end.i44.i.do.cond22.i_crit_edge:               ; preds = %if.end.i44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond22.i

if.end13.i.i:                                     ; preds = %if.end.i44.i
  tail call void @input_event(ptr noundef %20, i32 noundef 3, i32 noundef 47, i32 noundef %call.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp15.i.i = icmp eq i8 %22, 3
  %call17.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %20, i32 noundef 0, i1 noundef zeroext %cmp15.i.i) #5
  br i1 %cmp15.i.i, label %if.then21.i45.i, label %if.end13.i.i.if.end15.i_crit_edge

if.end13.i.i.if.end15.i_crit_edge:                ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i

if.then21.i45.i:                                  ; preds = %if.end13.i.i
  br i1 %cmp23.not.i.i, label %if.then21.i45.i.if.end40.i.i_crit_edge, label %if.then25.i.i

if.then21.i45.i.if.end40.i.i_crit_edge:           ; preds = %if.then21.i45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i.i

if.then25.i.i:                                    ; preds = %if.then21.i45.i
  br i1 %tobool.not.i47.i, label %if.then25.i.i.if.end30.i.i_crit_edge, label %if.then27.i.i

if.then25.i.i.if.end30.i.i_crit_edge:             ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i.i

if.then27.i.i:                                    ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx28.i48.i = getelementptr i8, ptr %contact.0.i, i32 6
  %28 = ptrtoint ptr %arrayidx28.i48.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx28.i48.i, align 1
  %arrayidx29.i.i = getelementptr i8, ptr %contact.0.i, i32 7
  %30 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx29.i.i, align 1
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then27.i.i, %if.then25.i.i.if.end30.i.i_crit_edge
  %height.0.i.i = phi i8 [ %31, %if.then27.i.i ], [ 1, %if.then25.i.i.if.end30.i.i_crit_edge ]
  %width.0.i.i = phi i8 [ %29, %if.then27.i.i ], [ 1, %if.then25.i.i.if.end30.i.i_crit_edge ]
  br i1 %tobool33.not.i.i, label %if.end30.i.i.if.end40.i.i_crit_edge, label %if.then34.i.i

if.end30.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i.i

if.then34.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx38.i.i = getelementptr i8, ptr %contact.0.i, i32 %cond.i.i
  %32 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx38.i.i, align 1
  %phi.cast.i.i = zext i8 %33 to i32
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.then34.i.i, %if.end30.i.i.if.end40.i.i_crit_edge, %if.then21.i45.i.if.end40.i.i_crit_edge
  %pressure.0.i.i = phi i32 [ %phi.cast.i.i, %if.then34.i.i ], [ 1, %if.end30.i.i.if.end40.i.i_crit_edge ], [ 1, %if.then21.i45.i.if.end40.i.i_crit_edge ]
  %height.1.i.i = phi i8 [ %height.0.i.i, %if.then34.i.i ], [ %height.0.i.i, %if.end30.i.i.if.end40.i.i_crit_edge ], [ 1, %if.then21.i45.i.if.end40.i.i_crit_edge ]
  %width.1.i.i = phi i8 [ %width.0.i.i, %if.then34.i.i ], [ %width.0.i.i, %if.end30.i.i.if.end40.i.i_crit_edge ], [ 1, %if.then21.i45.i.if.end40.i.i_crit_edge ]
  %arrayidx41.i.i = getelementptr i8, ptr %contact.0.i, i32 2
  %34 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %arrayidx41.i.i, align 1
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #5
  %arrayidx43.i.i = getelementptr i8, ptr %contact.0.i, i32 4
  %37 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %arrayidx43.i.i, align 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #5
  %conv45.i.i = zext i8 %width.1.i.i to i32
  %mul.i.i = mul nuw nsw i32 %conv45.i.i, 181
  tail call void @input_event(ptr noundef %20, i32 noundef 3, i32 noundef 48, i32 noundef %mul.i.i) #5
  %conv46.i.i = zext i8 %height.1.i.i to i32
  %mul47.i.i = mul nuw nsw i32 %conv46.i.i, 181
  tail call void @input_event(ptr noundef %20, i32 noundef 3, i32 noundef 49, i32 noundef %mul47.i.i) #5
  tail call void @input_event(ptr noundef %20, i32 noundef 3, i32 noundef 58, i32 noundef %pressure.0.i.i) #5
  %conv49.i.i = zext i16 %36 to i32
  tail call void @input_event(ptr noundef %20, i32 noundef 3, i32 noundef 53, i32 noundef %conv49.i.i) #5
  %conv50.i.i = zext i16 %39 to i32
  tail call void @input_event(ptr noundef %20, i32 noundef 3, i32 noundef 54, i32 noundef %conv50.i.i) #5
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end40.i.i, %if.end13.i.i.if.end15.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %contact.0.i, i32 %contact_size.2.i
  %dec.i = add i32 %num_to_report.2.i, -1
  %inc.i = add i32 %num_reported.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc.i)
  %cmp18.i = icmp ugt i32 %inc.i, 4
  %or.cond.i = select i1 %cmp16.not.i, i1 %cmp18.i, i1 false
  br i1 %or.cond.i, label %if.end15.i.do.cond22.i_crit_edge, label %if.end15.i.while.cond.i_crit_edge

if.end15.i.while.cond.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

if.end15.i.do.cond22.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond22.i

do.cond22.i:                                      ; preds = %if.end15.i.do.cond22.i_crit_edge, %if.end.i44.i.do.cond22.i_crit_edge, %do.end.i43.i
  %num_to_report.3.i = phi i32 [ %num_to_report.2.i, %do.end.i43.i ], [ %dec.i, %if.end15.i.do.cond22.i_crit_edge ], [ %num_to_report.2.i, %if.end.i44.i.do.cond22.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_to_report.3.i)
  %cmp23.not.i = icmp eq i32 %num_to_report.3.i, 0
  br i1 %cmp23.not.i, label %do.cond22.i.sis_ts_handle_packet.exit_crit_edge, label %do.cond22.i.do.body.i.backedge_crit_edge

do.cond22.i.do.body.i.backedge_crit_edge:         ; preds = %do.cond22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.backedge

do.cond22.i.sis_ts_handle_packet.exit_crit_edge:  ; preds = %do.cond22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sis_ts_handle_packet.exit

do.body.i.backedge:                               ; preds = %land.rhs.do.body.i.backedge_crit_edge, %do.cond22.i.do.body.i.backedge_crit_edge
  %num_to_report.0.i.be = phi i32 [ %num_to_report.3.i, %do.cond22.i.do.body.i.backedge_crit_edge ], [ 0, %land.rhs.do.body.i.backedge_crit_edge ]
  br label %do.body.i

sis_ts_handle_packet.exit:                        ; preds = %do.cond22.i.sis_ts_handle_packet.exit_crit_edge, %while.cond.i.sis_ts_handle_packet.exit_crit_edge, %do.end.i, %do.end50.i.i, %do.end37.i.i, %if.end6.i.i.sis_ts_handle_packet.exit_crit_edge, %do.end.i.i, %do.body.i.sis_ts_handle_packet.exit_crit_edge
  %40 = ptrtoint ptr %input1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %input1.i.i, align 4
  tail call void @input_mt_sync_frame(ptr noundef %41) #5
  %42 = ptrtoint ptr %input1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input1.i.i, align 4
  tail call void @input_event(ptr noundef %43, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %44 = ptrtoint ptr %attn_gpio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %attn_gpio, align 4
  %tobool.not = icmp eq ptr %45, null
  br i1 %tobool.not, label %sis_ts_handle_packet.exit.do.end_crit_edge, label %land.rhs

sis_ts_handle_packet.exit.do.end_crit_edge:       ; preds = %sis_ts_handle_packet.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.rhs:                                         ; preds = %sis_ts_handle_packet.exit
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %45) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body.i.backedge_crit_edge

land.rhs.do.body.i.backedge_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.backedge

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %sis_ts_handle_packet.exit.do.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_get_slot_by_key(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_sis_i2c__288_400_sis_ts_driver_init6, !1, !"__initcall__kmod_sis_i2c__288_400_sis_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 400, i32 1}
!2 = !{ptr @__exitcall_sis_ts_driver_exit, !1, !"__exitcall_sis_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 402, i32 1}
!5 = !{ptr @__UNIQUE_ID_file290, !6, !"__UNIQUE_ID_file290", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 403, i32 1}
!7 = !{ptr @__UNIQUE_ID_license291, !6, !"__UNIQUE_ID_license291", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author292, !9, !"__UNIQUE_ID_author292", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 404, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 394, i32 11}
!12 = !{ptr @sis_ts_driver, !13, !"sis_ts_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 392, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 313, i32 7}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 317, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sis_ts_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sis_ts_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 323, i32 8}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 327, i32 4}
!28 = !{ptr @sis_ts_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sis_ts_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 336, i32 3}
!32 = !{ptr @sis_ts_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sis_ts_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 340, i32 16}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 353, i32 3}
!38 = !{ptr @sis_ts_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sis_ts_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 363, i32 3}
!42 = !{ptr @sis_ts_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sis_ts_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 369, i32 3}
!46 = !{ptr @sis_ts_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sis_ts_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 242, i32 4}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @sis_ts_handle_packet._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @sis_ts_handle_packet._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 120, i32 3}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @sis_read_packet._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @sis_read_packet._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 144, i32 5}
!60 = !{ptr @sis_read_packet._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @sis_read_packet._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 153, i32 4}
!64 = !{ptr @sis_read_packet._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @sis_read_packet._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 182, i32 3}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @sis_ts_report_contact._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @sis_ts_report_contact._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @sis_ts_dt_ids, !72, !"sis_ts_dt_ids", i1 false, i1 false}
!72 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 378, i32 34}
!73 = !{ptr @sis_ts_id, !74, !"sis_ts_id", i1 false, i1 false}
!74 = !{!"../drivers/input/touchscreen/sis_i2c.c", i32 385, i32 35}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
