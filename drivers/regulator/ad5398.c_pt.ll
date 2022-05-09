; ModuleID = '/llk/IR_all_yes/drivers/regulator/ad5398.c_pt.bc'
source_filename = "../drivers/regulator/ad5398.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ad5398_current_data_format = type { i32, i32, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.ad5398_chip_info = type { ptr, i32, i32, i32, i32, i32, ptr }

@__initcall__kmod_ad5398__290_268_ad5398_init4 = internal global ptr @ad5398_init, section ".initcall4.init", align 4
@ad5398_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ad5398_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ad5398_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ad5398_exit = internal global ptr @ad5398_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [62 x i8] c"ad5398.description=AD5398 and AD5821 current regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [26 x i8] c"ad5398.author=Sonic Zhang\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [37 x i8] c"ad5398.file=drivers/regulator/ad5398\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [19 x i8] c"ad5398.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad5398\00", [25 x i8] zeroinitializer }, align 32
@ad5398_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ad5398\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @df_10_4_120 to i32) }, %struct.i2c_device_id { [20 x i8] c"ad5821\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @df_10_4_120 to i32) }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ad5398_reg = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.7, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @ad5398_ops, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad5398_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to register %s %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad5398_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/regulator/ad5398.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad5398_probe._entry_ptr = internal global ptr @ad5398_probe._entry, section ".printk_index", align 4
@ad5398_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 63, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s regulator driver is registered.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"isink\00", [26 x i8] zeroinitializer }, align 32
@ad5398_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad5398_set_current_limit, ptr @ad5398_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad5398_enable, ptr @ad5398_disable, ptr @ad5398_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ad5398_set_current_limit.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ad5398_set_current_limit\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"changing current %duA\0A\00", [41 x i8] zeroinitializer }, align 32
@ad5398_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 45, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I2C read error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ad5398_read_reg\00", [16 x i8] zeroinitializer }, align 32
@ad5398_read_reg._entry_ptr = internal global ptr @ad5398_read_reg._entry, section ".printk_index", align 4
@ad5398_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 61, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I2C write error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ad5398_write_reg\00", [47 x i8] zeroinitializer }, align 32
@ad5398_write_reg._entry_ptr = internal global ptr @ad5398_write_reg._entry, section ".printk_index", align 4
@df_10_4_120 = internal constant { %struct.ad5398_current_data_format, [16 x i8] } { %struct.ad5398_current_data_format { i32 10, i32 4, i32 0, i32 120000 }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"ad5398_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 256, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 259, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"ad5398_id\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 208, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"ad5398_reg\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 191, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 246, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 252, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 192, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"ad5398_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 183, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 106, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 45, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 61, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"df_10_4_120\00", align 1
@___asan_gen_.78 = private constant [30 x i8] c"../drivers/regulator/ad5398.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 206, i32 48 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad5398_exit, ptr @__initcall__kmod_ad5398__290_268_ad5398_init4, ptr @ad5398_exit, ptr @ad5398_probe._entry, ptr @ad5398_probe._entry_ptr, ptr @ad5398_read_reg._entry, ptr @ad5398_read_reg._entry_ptr, ptr @ad5398_write_reg._entry, ptr @ad5398_write_reg._entry_ptr, ptr @ad5398_driver, ptr @.str, ptr @ad5398_id, ptr @ad5398_reg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ad5398_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @df_10_4_120], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5398_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5398_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5398_reg to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5398_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5398_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5398_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5398_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @df_10_4_120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5398_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ad5398_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5398_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ad5398_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5398_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %2 = getelementptr inbounds i8, ptr %config, i32 12
  %3 = call ptr @memset(ptr %2, i32 0, i32 12)
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %6 = inttoptr i32 %5 to ptr
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %config, align 4
  %init_data8 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 1
  %8 = ptrtoint ptr %init_data8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %init_data8, align 4
  %driver_data9 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %9 = ptrtoint ptr %driver_data9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data9, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %client, ptr %call.i, align 4
  %min_uA = getelementptr inbounds %struct.ad5398_current_data_format, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %min_uA to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %min_uA, align 4
  %min_uA11 = getelementptr inbounds %struct.ad5398_chip_info, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %min_uA11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %min_uA11, align 4
  %max_uA = getelementptr inbounds %struct.ad5398_current_data_format, ptr %6, i32 0, i32 3
  %14 = ptrtoint ptr %max_uA to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_uA, align 4
  %max_uA12 = getelementptr inbounds %struct.ad5398_chip_info, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %max_uA12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %max_uA12, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %6, align 4
  %shl = shl nuw i32 1, %18
  %current_level = getelementptr inbounds %struct.ad5398_chip_info, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %current_level to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl, ptr %current_level, align 4
  %current_offset = getelementptr inbounds %struct.ad5398_current_data_format, ptr %6, i32 0, i32 1
  %20 = ptrtoint ptr %current_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %current_offset, align 4
  %current_offset13 = getelementptr inbounds %struct.ad5398_chip_info, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %current_offset13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %current_offset13, align 4
  %sub = add i32 %shl, -1
  %shl16 = shl i32 %sub, %21
  %current_mask = getelementptr inbounds %struct.ad5398_chip_info, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %current_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl16, ptr %current_mask, align 4
  %call18 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef nonnull @ad5398_reg, ptr noundef nonnull %config) #6
  %rdev = getelementptr inbounds %struct.ad5398_chip_info, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call18, ptr %rdev, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %id, ptr noundef nonnull @.str.7) #9
  %25 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rdev, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad5398_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ad5398_probe, %cleanup)) #6
          to label %if.then32 [label %cleanup], !srcloc !59

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad5398_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %id) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end25, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %if.end25 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5398_set_current_limit(ptr noundef %rdev, i32 noundef %min_uA, i32 noundef %max_uA) #2 align 64 {
entry:
  %val.i80 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %max_uA2 = getelementptr inbounds %struct.ad5398_chip_info, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %max_uA2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_uA2, align 4
  %min_uA3 = getelementptr inbounds %struct.ad5398_chip_info, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %min_uA3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_uA3, align 4
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 %min_uA)
  %7 = tail call i32 @llvm.smin.i32(i32 %3, i32 %max_uA)
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp12 = icmp sgt i32 %6, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp14 = icmp slt i32 %7, %5
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp14
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end16

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %entry
  %sub = sub i32 %3, %5
  %sub18 = sub i32 %6, %5
  %current_level = getelementptr inbounds %struct.ad5398_chip_info, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %current_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_level, align 4
  %mul = mul i32 %9, %sub18
  %add = add i32 %sub, -1
  %sub19 = add i32 %add, %mul
  %div = udiv i32 %sub19, %sub
  %mul.i = mul i32 %div, %sub
  %div.i = udiv i32 %mul.i, %9
  %add.i = add i32 %div.i, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %7)
  %cmp21 = icmp sgt i32 %add.i, %7
  br i1 %cmp21, label %if.end16.cleanup_crit_edge, label %do.body

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad5398_set_current_limit.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ad5398_set_current_limit, %do.end)) #6
          to label %if.then28 [label %do.end], !srcloc !59

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %max_uA2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_uA2, align 4
  %12 = ptrtoint ptr %min_uA3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_uA3, align 4
  %sub.i75 = sub i32 %11, %13
  %mul.i76 = mul i32 %sub.i75, %div
  %14 = ptrtoint ptr %current_level to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %current_level, align 4
  %div.i78 = udiv i32 %mul.i76, %15
  %add.i79 = add i32 %div.i78, %13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad5398_set_current_limit.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %add.i79) #6
  br label %do.end

do.end:                                           ; preds = %if.then28, %do.body
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %val.i, align 2, !annotation !60
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %val.i, i32 noundef 2, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %ad5398_read_reg.exit.thread, label %if.end34

ad5398_read_reg.exit.thread:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  br label %cleanup

if.end34:                                         ; preds = %do.end
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %val.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  %current_offset = getelementptr inbounds %struct.ad5398_chip_info, ptr %call, i32 0, i32 5
  %19 = ptrtoint ptr %current_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %current_offset, align 4
  %shl = shl i32 %div, %20
  %current_mask = getelementptr inbounds %struct.ad5398_chip_info, ptr %call, i32 0, i32 4
  %21 = ptrtoint ptr %current_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %current_mask, align 4
  %and = and i32 %shl, %22
  %23 = and i16 %18, -32768
  %24 = trunc i32 %and to i16
  %conv38 = or i16 %23, %24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i80) #6
  %25 = ptrtoint ptr %val.i80 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv38, ptr %val.i80, align 2
  %call.i.i81 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %val.i80, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i81)
  %cmp.not.i = icmp eq i32 %call.i.i81, 2
  br i1 %cmp.not.i, label %if.end34.ad5398_write_reg.exit_crit_edge, label %do.end.i83

if.end34.ad5398_write_reg.exit_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5398_write_reg.exit

do.end.i83:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i82 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i82, ptr noundef nonnull @.str.12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81)
  %cmp1.i = icmp slt i32 %call.i.i81, 0
  %spec.select.i = select i1 %cmp1.i, i32 %call.i.i81, i32 -5
  br label %ad5398_write_reg.exit

ad5398_write_reg.exit:                            ; preds = %do.end.i83, %if.end34.ad5398_write_reg.exit_crit_edge
  %retval.0.i84 = phi i32 [ %spec.select.i, %do.end.i83 ], [ 0, %if.end34.ad5398_write_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i80) #6
  br label %cleanup

cleanup:                                          ; preds = %ad5398_write_reg.exit, %ad5398_read_reg.exit.thread, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i84, %ad5398_write_reg.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ %call.i.i, %ad5398_read_reg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5398_get_current_limit(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val.i, align 2, !annotation !60
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %val.i, i32 noundef 2, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %ad5398_read_reg.exit.thread, label %if.end

ad5398_read_reg.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %val.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  %conv = zext i16 %4 to i32
  %current_mask = getelementptr inbounds %struct.ad5398_chip_info, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %current_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_mask, align 4
  %and = and i32 %6, %conv
  %current_offset = getelementptr inbounds %struct.ad5398_chip_info, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %current_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_offset, align 4
  %shr = lshr i32 %and, %8
  %max_uA.i = getelementptr inbounds %struct.ad5398_chip_info, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %max_uA.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_uA.i, align 4
  %min_uA.i = getelementptr inbounds %struct.ad5398_chip_info, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %min_uA.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %min_uA.i, align 4
  %sub.i = sub i32 %10, %12
  %mul.i = mul i32 %sub.i, %shr
  %current_level.i = getelementptr inbounds %struct.ad5398_chip_info, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %current_level.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %current_level.i, align 4
  %div.i = udiv i32 %mul.i, %14
  %add.i = add i32 %div.i, %12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ad5398_read_reg.exit.thread
  %retval.0 = phi i32 [ %add.i, %if.end ], [ %call.i.i, %ad5398_read_reg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5398_enable(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i14 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val.i, align 2, !annotation !60
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %val.i, i32 noundef 2, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %ad5398_read_reg.exit.thread, label %if.end

ad5398_read_reg.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %val.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %tobool.not = icmp sgt i16 %4, -1
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %or = or i16 %4, -32768
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i14) #6
  %5 = ptrtoint ptr %val.i14 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %or, ptr %val.i14, align 2
  %call.i.i15 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %val.i14, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i15)
  %cmp.not.i = icmp eq i32 %call.i.i15, 2
  br i1 %cmp.not.i, label %if.end4.ad5398_write_reg.exit_crit_edge, label %do.end.i17

if.end4.ad5398_write_reg.exit_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5398_write_reg.exit

do.end.i17:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i16 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i16, ptr noundef nonnull @.str.12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15)
  %cmp1.i = icmp slt i32 %call.i.i15, 0
  %spec.select.i = select i1 %cmp1.i, i32 %call.i.i15, i32 -5
  br label %ad5398_write_reg.exit

ad5398_write_reg.exit:                            ; preds = %do.end.i17, %if.end4.ad5398_write_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %do.end.i17 ], [ 0, %if.end4.ad5398_write_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i14) #6
  br label %cleanup

cleanup:                                          ; preds = %ad5398_write_reg.exit, %if.end.cleanup_crit_edge, %ad5398_read_reg.exit.thread
  %retval.0 = phi i32 [ %retval.0.i, %ad5398_write_reg.exit ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i.i, %ad5398_read_reg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5398_disable(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i15 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val.i, align 2, !annotation !60
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %val.i, i32 noundef 2, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %ad5398_read_reg.exit.thread, label %if.end

ad5398_read_reg.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %val.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %tobool.not = icmp sgt i16 %4, -1
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and6 = and i16 %4, 32767
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i15) #6
  %5 = ptrtoint ptr %val.i15 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %and6, ptr %val.i15, align 2
  %call.i.i16 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %val.i15, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i16)
  %cmp.not.i = icmp eq i32 %call.i.i16, 2
  br i1 %cmp.not.i, label %if.end4.ad5398_write_reg.exit_crit_edge, label %do.end.i18

if.end4.ad5398_write_reg.exit_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %ad5398_write_reg.exit

do.end.i18:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i17 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i17, ptr noundef nonnull @.str.12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i16)
  %cmp1.i = icmp slt i32 %call.i.i16, 0
  %spec.select.i = select i1 %cmp1.i, i32 %call.i.i16, i32 -5
  br label %ad5398_write_reg.exit

ad5398_write_reg.exit:                            ; preds = %do.end.i18, %if.end4.ad5398_write_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %do.end.i18 ], [ 0, %if.end4.ad5398_write_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i15) #6
  br label %cleanup

cleanup:                                          ; preds = %ad5398_write_reg.exit, %if.end.cleanup_crit_edge, %ad5398_read_reg.exit.thread
  %retval.0 = phi i32 [ %retval.0.i, %ad5398_write_reg.exit ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i.i, %ad5398_read_reg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5398_is_enabled(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val.i, align 2, !annotation !60
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %val.i, i32 noundef 2, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %ad5398_read_reg.exit.thread, label %if.end

ad5398_read_reg.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %val.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  %.lobit = lshr i16 %4, 15
  %5 = zext i16 %.lobit to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ad5398_read_reg.exit.thread
  %retval.0 = phi i32 [ %5, %if.end ], [ %call.i.i, %ad5398_read_reg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !30, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_ad5398__290_268_ad5398_init4, !1, !"__initcall__kmod_ad5398__290_268_ad5398_init4", i1 false, i1 false}
!1 = !{!"../drivers/regulator/ad5398.c", i32 268, i32 1}
!2 = !{ptr @__exitcall_ad5398_exit, !3, !"__exitcall_ad5398_exit", i1 false, i1 false}
!3 = !{!"../drivers/regulator/ad5398.c", i32 274, i32 1}
!4 = !{ptr @__UNIQUE_ID_description291, !5, !"__UNIQUE_ID_description291", i1 false, i1 false}
!5 = !{!"../drivers/regulator/ad5398.c", i32 276, i32 1}
!6 = !{ptr @__UNIQUE_ID_author292, !7, !"__UNIQUE_ID_author292", i1 false, i1 false}
!7 = !{!"../drivers/regulator/ad5398.c", i32 277, i32 1}
!8 = !{ptr @__UNIQUE_ID_file293, !9, !"__UNIQUE_ID_file293", i1 false, i1 false}
!9 = !{!"../drivers/regulator/ad5398.c", i32 278, i32 1}
!10 = !{ptr @__UNIQUE_ID_license294, !9, !"__UNIQUE_ID_license294", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/regulator/ad5398.c", i32 259, i32 11}
!13 = !{ptr @ad5398_driver, !14, !"ad5398_driver", i1 false, i1 false}
!14 = !{!"../drivers/regulator/ad5398.c", i32 256, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/regulator/ad5398.c", i32 246, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ad5398_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @ad5398_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/regulator/ad5398.c", i32 252, i32 2}
!25 = !{ptr @ad5398_probe.__UNIQUE_ID_ddebug289, !24, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/regulator/ad5398.c", i32 192, i32 10}
!28 = !{ptr @ad5398_reg, !29, !"ad5398_reg", i1 false, i1 false}
!29 = !{!"../drivers/regulator/ad5398.c", i32 191, i32 36}
!30 = !{ptr @ad5398_ops, !31, !"ad5398_ops", i1 false, i1 false}
!31 = !{!"../drivers/regulator/ad5398.c", i32 183, i32 35}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/ad5398.c", i32 106, i32 2}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ad5398_set_current_limit.__UNIQUE_ID_ddebug288, !33, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/regulator/ad5398.c", i32 45, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ad5398_read_reg._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ad5398_read_reg._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/ad5398.c", i32 61, i32 3}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ad5398_write_reg._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ad5398_write_reg._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @ad5398_id, !47, !"ad5398_id", i1 false, i1 false}
!47 = !{!"../drivers/regulator/ad5398.c", i32 208, i32 35}
!48 = !{ptr @df_10_4_120, !49, !"df_10_4_120", i1 false, i1 false}
!49 = !{!"../drivers/regulator/ad5398.c", i32 206, i32 48}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148957887, i64 2148957892, i64 2148957905, i64 2148957949, i64 2148957983, i64 2148958004}
!60 = !{!"auto-init"}
