; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-mt7621.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-mt7621.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mtk_i2c = type { ptr, ptr, %struct.i2c_adapter, i32, i32, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_mt7621__290_351_mtk_i2c_driver_init6 = internal global ptr @mtk_i2c_driver_init, section ".initcall6.init", align 4
@mtk_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_i2c_probe, ptr @mtk_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_mtk_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_i2c_driver_exit = internal global ptr @mtk_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [29 x i8] c"i2c_mt7621.author=Steven Liu\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [46 x i8] c"i2c_mt7621.description=MT7621 I2C host driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [46 x i8] c"i2c_mt7621.file=drivers/i2c/busses/i2c-mt7621\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [26 x i8] c"i2c_mt7621.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [37 x i8] c"i2c_mt7621.alias=platform:MT7621-I2C\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c-mt7621\00", [21 x i8] zeroinitializer }, align 32
@i2c_mtk_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7621-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mtk_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no clock defined\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_i2c_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/i2c/busses/i2c-mt7621.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_i2c_probe._entry_ptr = internal global ptr @mtk_i2c_probe._entry, section ".printk_index", align 4
@mtk_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@mtk_i2c_probe._entry_ptr.8 = internal global ptr @mtk_i2c_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@mtk_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 306, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"clock-frequency 0 not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtk_i2c_probe._entry_ptr.13 = internal global ptr @mtk_i2c_probe._entry.10, section ".printk_index", align 4
@mtk_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @mtk_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @mtk_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 327, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clock %u kHz\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtk_i2c_probe._entry_ptr.17 = internal global ptr @mtk_i2c_probe._entry.14, section ".printk_index", align 4
@mtk_i2c_wait_idle.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c_mt7621\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_i2c_wait_idle\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idle err(%d)\0A\00", [18 x i8] zeroinitializer }, align 32
@mtk_i2c_dump_reg.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 27, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_i2c_dump_reg\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"SM0CFG2 %08x, SM0CTL0 %08x, SM0CTL1 %08x, SM0D0 %08x, SM0D1 %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@mtk_i2c_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 89, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"I2C reset failed!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_i2c_reset\00", [18 x i8] zeroinitializer }, align 32
@mtk_i2c_reset._entry_ptr = internal global ptr @mtk_i2c_reset._entry, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"mtk_i2c_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 342, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 346, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"i2c_mtk_dt_ids\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 253, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 290, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 295, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 301, i32 46 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 306, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"mtk_i2c_algo\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 248, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 327, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 78, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 102, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [35 x i8] c"../drivers/i2c/busses/i2c-mt7621.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 89, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_mtk_i2c_driver_exit, ptr @__initcall__kmod_i2c_mt7621__290_351_mtk_i2c_driver_init6, ptr @mtk_i2c_driver_exit, ptr @mtk_i2c_probe._entry, ptr @mtk_i2c_probe._entry.10, ptr @mtk_i2c_probe._entry.14, ptr @mtk_i2c_probe._entry.6, ptr @mtk_i2c_probe._entry_ptr, ptr @mtk_i2c_probe._entry_ptr.13, ptr @mtk_i2c_probe._entry_ptr.17, ptr @mtk_i2c_probe._entry_ptr.8, ptr @mtk_i2c_reset._entry, ptr @mtk_i2c_reset._entry_ptr, ptr @mtk_i2c_driver, ptr @.str, ptr @i2c_mtk_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @mtk_i2c_algo, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mtk_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1384, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call) #8
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %clk, align 4
  %cmp.i105 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %call.i106 = tail call i32 @clk_prepare(ptr noundef %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool.not.i = icmp eq i32 %call.i106, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.do.end25_crit_edge

if.end18.do.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

if.end.i:                                         ; preds = %if.end18
  %call1.i = tail call i32 @clk_enable(ptr noundef %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end27, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call11) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then3.i, %if.end18.do.end25_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i106, %if.end18.do.end25_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end27:                                         ; preds = %if.end.i
  %dev29 = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev29 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev29, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %bus_freq = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 3
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.9, ptr noundef %bus_freq, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool32.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool32.not, label %if.end35, label %if.end35.thread

if.end35.thread:                                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %bus_freq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100000, ptr %bus_freq, align 8
  br label %if.end42

if.end35:                                         ; preds = %if.end27
  %10 = ptrtoint ptr %bus_freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %bus_freq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp = icmp eq i32 %.pr, 0
  br i1 %cmp, label %do.end40, label %if.end35.if.end42_crit_edge

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end42:                                         ; preds = %if.end35.if.end42_crit_edge, %if.end35.thread
  %adap43 = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %adap43 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %adap43, align 8
  %algo = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mtk_i2c_algo, ptr %algo, align 8
  %retries = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 2, i32 8
  %15 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %retries, align 8
  %parent = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 2, i32 9, i32 1
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 2, i32 9, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %of_node49 = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 2, i32 9, i32 27
  %20 = ptrtoint ptr %of_node49 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %of_node49, align 8
  %name = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 2, i32 12
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i107 = icmp eq ptr %22, null
  br i1 %tobool.not.i107, label %if.end.i108, label %if.end42.dev_name.exit_crit_edge

if.end42.dev_name.exit_crit_edge:                 ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i108:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i108, %if.end42.dev_name.exit_crit_edge
  %retval.0.i109 = phi ptr [ %24, %if.end.i108 ], [ %22, %if.end42.dev_name.exit_crit_edge ]
  %call52 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef %retval.0.i109, i32 noundef 48) #8
  %driver_data.i.i110 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i110 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i110, align 4
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  %call.i111 = tail call i32 @clk_get_rate(ptr noundef %27) #8
  %28 = ptrtoint ptr %bus_freq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bus_freq, align 8
  %div.i = udiv i32 %call.i111, %29
  %sub.i = add i32 %div.i, -1
  %30 = tail call i32 @llvm.umax.i32(i32 %sub.i, i32 99) #8
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 2047) #8
  %clk_div.i = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %clk_div.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %clk_div.i, align 4
  %33 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent, align 8
  %call.i.i.i = tail call i32 @__device_reset(ptr noundef %34, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %dev_name.exit.mtk_i2c_init.exit_crit_edge, label %do.end.i.i

dev_name.exit.mtk_i2c_init.exit_crit_edge:        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_i2c_init.exit

do.end.i.i:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.23) #11
  br label %mtk_i2c_init.exit

mtk_i2c_init.exit:                                ; preds = %do.end.i.i, %dev_name.exit.mtk_i2c_init.exit_crit_edge
  %37 = ptrtoint ptr %clk_div.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clk_div.i, align 4
  %shl.i.i = shl i32 %38, 16
  %and.i.i = and i32 %shl.i.i, 134152192
  %or2.i.i = or i32 %and.i.i, 3
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %41 = tail call i32 @llvm.bswap.i32(i32 %or2.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %41) #8, !srcloc !68
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %43, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 0) #8, !srcloc !68
  %call53 = tail call i32 @i2c_add_adapter(ptr noundef %adap43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %mtk_i2c_init.exit.cleanup_crit_edge, label %do.end59

mtk_i2c_init.exit.cleanup_crit_edge:              ; preds = %mtk_i2c_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end59:                                         ; preds = %mtk_i2c_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %bus_freq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bus_freq, align 8
  %div = udiv i32 %45, 1000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %div) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %mtk_i2c_init.exit.cleanup_crit_edge, %do.end40, %do.end25, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %5, %do.end ], [ %retval.0.i.ph, %do.end25 ], [ -22, %do.end40 ], [ %call53, %do.end59 ], [ -12, %entry.cleanup_crit_edge ], [ %call53, %mtk_i2c_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.mtk_i2c, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %adap = getelementptr inbounds %struct.mtk_i2c, ptr %1, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adap) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_i2c_master_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  %data = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data)
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4
  %data.4.data.4.data.4..sroa_idx = getelementptr inbounds i8, ptr %data, i32 4
  %1 = ptrtoint ptr %data.4.data.4.data.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %data.4.data.4.data.4..sroa_idx, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp219 = icmp sgt i32 %num, 0
  br i1 %cmp219, label %entry.for.body_crit_edge, label %entry.for.end112_crit_edge

entry.for.end112_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end112

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc111.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0220 = phi i32 [ %inc, %for.inc111.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0220
  %call1 = tail call fastcc i32 @mtk_i2c_wait_idle(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %for.body.err_timeout_crit_edge

for.body.err_timeout_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_timeout

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 285212672) #8, !srcloc !68
  %call.i = tail call fastcc i32 @mtk_i2c_wait_idle(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_timeout_crit_edge

if.end.err_timeout_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_timeout

if.end5:                                          ; preds = %if.end
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0220, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 4
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  %10 = lshr i16 %9, 7
  %and10 = and i16 %10, 6
  %11 = shl i16 %9, 8
  %or = or i16 %and10, %11
  %and20 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %spec.select.v = select i1 %tobool21.not, i16 240, i16 241
  %spec.select = or i16 %or, %spec.select.v
  %conv27 = zext i16 %spec.select to i32
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv27) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #8, !srcloc !68
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %add.ptr.i183 = getelementptr i8, ptr %16, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 553713664) #8, !srcloc !68
  %call.i184 = tail call fastcc i32 @mtk_i2c_wait_idle(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i184)
  %tobool29.not = icmp eq i32 %call.i184, 0
  br i1 %tobool29.not, label %if.then7.if.end41_crit_edge, label %if.then7.err_timeout_crit_edge

if.then7.err_timeout_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_timeout

if.then7.if.end41_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.else:                                          ; preds = %if.end5
  %conv.i = zext i16 %9 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %flags, align 2
  %19 = and i16 %18, 1
  %20 = zext i16 %19 to i32
  %shl.i.masked = and i32 %shl.i, 254
  %conv34 = or i32 %shl.i.masked, %20
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 8
  %add.ptr36 = getelementptr i8, ptr %22, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %23 = shl nuw i32 %conv34, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %23) #8, !srcloc !68
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 8
  %add.ptr.i185 = getelementptr i8, ptr %25, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 553648128) #8, !srcloc !68
  %call.i186 = tail call fastcc i32 @mtk_i2c_wait_idle(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %tobool38.not = icmp eq i32 %call.i186, 0
  br i1 %tobool38.not, label %if.else.if.end41_crit_edge, label %if.else.err_timeout_crit_edge

if.else.err_timeout_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_timeout

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.end41:                                         ; preds = %if.else.if.end41_crit_edge, %if.then7.if.end41_crit_edge
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags, align 2
  %28 = and i16 %27, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool45.not = icmp eq i16 %28, 0
  br i1 %tobool45.not, label %if.then46, label %if.end41.if.end51_crit_edge

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then46:                                        ; preds = %if.end41
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 8
  %add.ptr.i187 = getelementptr i8, ptr %30, i32 68
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #8, !srcloc !69
  %32 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.not = icmp eq i32 %32, 0
  br i1 %cmp.i.not, label %if.then46.err_ack_crit_edge, label %if.then46.if.end51_crit_edge

if.then46.if.end51_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then46.err_ack_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_ack

if.end51:                                         ; preds = %if.then46.if.end51_crit_edge, %if.end41.if.end51_crit_edge
  %len52 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0220, i32 2
  %33 = ptrtoint ptr %len52 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %len52, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp55215.not = icmp eq i16 %34, 0
  br i1 %cmp55215.not, label %if.end51.for.inc111_crit_edge, label %for.body57.lr.ph

if.end51.for.inc111_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc111

for.body57.lr.ph:                                 ; preds = %if.end51
  %conv53 = zext i16 %34 to i32
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0220, i32 3
  br label %for.body57

for.body57:                                       ; preds = %for.inc.for.body57_crit_edge, %for.body57.lr.ph
  %len.0218 = phi i32 [ %conv53, %for.body57.lr.ph ], [ %sub110, %for.inc.for.body57_crit_edge ]
  %j.0216 = phi i32 [ 0, %for.body57.lr.ph ], [ %add, %for.inc.for.body57_crit_edge ]
  %35 = tail call i32 @llvm.umin.i32(i32 %len.0218, i32 8)
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flags, align 2
  %38 = and i16 %37, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool63.not = icmp eq i16 %38, 0
  br i1 %tobool63.not, label %if.else68, label %if.then64

if.then64:                                        ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len.0218)
  %cmp65 = icmp ugt i32 %len.0218, 8
  %cond67 = select i1 %cmp65, i32 80, i32 64
  br label %if.end76

if.else68:                                        ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf, align 4
  %arrayidx69 = getelementptr i8, ptr %40, i32 %j.0216
  %41 = call ptr @memcpy(ptr %data, ptr %arrayidx69, i32 %35)
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %data.0.data.0.data.0. = load i32, ptr %data, align 4
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 8
  %add.ptr72 = getelementptr i8, ptr %44, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %45 = tail call i32 @llvm.bswap.i32(i32 %data.0.data.0.data.0.) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %45) #8, !srcloc !68
  %46 = ptrtoint ptr %data.4.data.4.data.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %46)
  %data.4.data.4.data.4. = load i32, ptr %data.4.data.4.data.4..sroa_idx, align 4
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 8
  %add.ptr75 = getelementptr i8, ptr %48, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %49 = tail call i32 @llvm.bswap.i32(i32 %data.4.data.4.data.4.) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %49) #8, !srcloc !68
  br label %if.end76

if.end76:                                         ; preds = %if.else68, %if.then64
  %cmd.0 = phi i32 [ %cond67, %if.then64 ], [ 32, %if.else68 ]
  %sub.i = shl nuw nsw i32 %35, 8
  %shl.i188 = add nuw nsw i32 %sub.i, 1792
  %and.i = and i32 %shl.i188, 1792
  %or.i189 = or i32 %and.i, %cmd.0
  %or1.i = or i32 %or.i189, 1
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 8
  %add.ptr.i190 = getelementptr i8, ptr %51, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %52 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 %52) #8, !srcloc !68
  %call.i191 = tail call fastcc i32 @mtk_i2c_wait_idle(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool78.not = icmp eq i32 %call.i191, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.err_timeout_crit_edge

if.end76.err_timeout_crit_edge:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_timeout

if.end80:                                         ; preds = %if.end76
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %flags, align 2
  %conv82 = zext i16 %54 to i32
  %and83 = and i32 %conv82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.else97, label %if.then85

if.then85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 8
  %add.ptr87 = getelementptr i8, ptr %56, i32 80
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #8, !srcloc !69
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %59 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %data, align 4
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 8
  %add.ptr91 = getelementptr i8, ptr %61, i32 84
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #8, !srcloc !69
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %64 = ptrtoint ptr %data.4.data.4.data.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %data.4.data.4.data.4..sroa_idx, align 4
  %65 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buf, align 4
  %arrayidx95 = getelementptr i8, ptr %66, i32 %j.0216
  %67 = call ptr @memcpy(ptr %arrayidx95, ptr %data, i32 %35)
  br label %for.inc

if.else97:                                        ; preds = %if.end80
  %and100 = and i32 %conv82, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.then102, label %if.else97.for.inc_crit_edge

if.else97.for.inc_crit_edge:                      ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then102:                                       ; preds = %if.else97
  %notmask = shl nsw i32 -1, %35
  %sub = xor i32 %notmask, -1
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %3, align 8
  %add.ptr.i192 = getelementptr i8, ptr %69, i32 68
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i192) #8, !srcloc !69
  %71 = shl i32 %70, 8
  %shl.i193 = shl nuw nsw i32 %sub, 16
  %and.i194 = and i32 %shl.i193, 16711680
  %and1.i195 = and i32 %71, %and.i194
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i195, i32 %and.i194)
  %cmp.i196 = icmp eq i32 %and1.i195, %and.i194
  br i1 %cmp.i196, label %if.then102.for.inc_crit_edge, label %if.then102.err_ack_crit_edge

if.then102.err_ack_crit_edge:                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_ack

if.then102.for.inc_crit_edge:                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.then102.for.inc_crit_edge, %if.else97.for.inc_crit_edge, %if.then85
  %sub110 = add nsw i32 %len.0218, -8
  %add = add nuw nsw i32 %j.0216, 8
  %cmp55 = icmp sgt i32 %len.0218, 8
  br i1 %cmp55, label %for.inc.for.body57_crit_edge, label %for.inc.for.inc111_crit_edge

for.inc.for.inc111_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc111

for.inc.for.body57_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body57

for.inc111:                                       ; preds = %for.inc.for.inc111_crit_edge, %if.end51.for.inc111_crit_edge
  %inc = add nuw nsw i32 %i.0220, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc111.for.end112_crit_edge, label %for.inc111.for.body_crit_edge

for.inc111.for.body_crit_edge:                    ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc111.for.end112_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end112

for.end112:                                       ; preds = %for.inc111.for.end112_crit_edge, %entry.for.end112_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end112_crit_edge ], [ %num, %for.inc111.for.end112_crit_edge ]
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %3, align 8
  %add.ptr.i198 = getelementptr i8, ptr %73, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 822083584) #8, !srcloc !68
  %call.i199 = tail call fastcc i32 @mtk_i2c_wait_idle(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool114.not = icmp eq i32 %call.i199, 0
  br i1 %tobool114.not, label %for.end112.cleanup_crit_edge, label %for.end112.err_timeout_crit_edge

for.end112.err_timeout_crit_edge:                 ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_timeout

for.end112.cleanup_crit_edge:                     ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_ack:                                          ; preds = %if.then102.err_ack_crit_edge, %if.then46.err_ack_crit_edge
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %3, align 8
  %add.ptr.i200 = getelementptr i8, ptr %75, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200, i32 822083584) #8, !srcloc !68
  %call.i201 = tail call fastcc i32 @mtk_i2c_wait_idle(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %tobool118.not = icmp eq i32 %call.i201, 0
  br i1 %tobool118.not, label %err_ack.cleanup_crit_edge, label %err_ack.err_timeout_crit_edge

err_ack.err_timeout_crit_edge:                    ; preds = %err_ack
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_timeout

err_ack.cleanup_crit_edge:                        ; preds = %err_ack
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_timeout:                                      ; preds = %err_ack.err_timeout_crit_edge, %for.end112.err_timeout_crit_edge, %if.end76.err_timeout_crit_edge, %if.else.err_timeout_crit_edge, %if.then7.err_timeout_crit_edge, %if.end.err_timeout_crit_edge, %for.body.err_timeout_crit_edge
  %ret.0 = phi i32 [ %call.i201, %err_ack.err_timeout_crit_edge ], [ %call.i199, %for.end112.err_timeout_crit_edge ], [ %call.i191, %if.end76.err_timeout_crit_edge ], [ %call.i186, %if.else.err_timeout_crit_edge ], [ %call.i184, %if.then7.err_timeout_crit_edge ], [ %call.i, %if.end.err_timeout_crit_edge ], [ %call1, %for.body.err_timeout_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_i2c_dump_reg.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtk_i2c_master_xfer, %mtk_i2c_dump_reg.exit)) #8
          to label %if.then.i [label %mtk_i2c_dump_reg.exit], !srcloc !71

if.then.i:                                        ; preds = %err_timeout
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.mtk_i2c, ptr %3, i32 0, i32 1
  %76 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i, align 4
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %3, align 8
  %add.ptr.i202 = getelementptr i8, ptr %79, i32 40
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i202) #8, !srcloc !69
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %82 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %3, align 8
  %add.ptr6.i = getelementptr i8, ptr %83, i32 64
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !69
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %3, align 8
  %add.ptr9.i = getelementptr i8, ptr %87, i32 68
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #8, !srcloc !69
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %3, align 8
  %add.ptr12.i = getelementptr i8, ptr %91, i32 80
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #8, !srcloc !69
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %3, align 8
  %add.ptr15.i = getelementptr i8, ptr %95, i32 84
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #8, !srcloc !69
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_i2c_dump_reg.__UNIQUE_ID_ddebug289, ptr noundef %77, ptr noundef nonnull @.str.22, i32 noundef %81, i32 noundef %85, i32 noundef %89, i32 noundef %93, i32 noundef %97) #8
  br label %mtk_i2c_dump_reg.exit

mtk_i2c_dump_reg.exit:                            ; preds = %if.then.i, %err_timeout
  %parent.i = getelementptr inbounds %struct.mtk_i2c, ptr %3, i32 0, i32 2, i32 9, i32 1
  %98 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %parent.i, align 8
  %call.i.i = tail call i32 @__device_reset(ptr noundef %99, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %mtk_i2c_dump_reg.exit.mtk_i2c_reset.exit_crit_edge, label %do.end.i

mtk_i2c_dump_reg.exit.mtk_i2c_reset.exit_crit_edge: ; preds = %mtk_i2c_dump_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_i2c_reset.exit

do.end.i:                                         ; preds = %mtk_i2c_dump_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i = getelementptr inbounds %struct.mtk_i2c, ptr %3, i32 0, i32 1
  %100 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.23) #11
  br label %mtk_i2c_reset.exit

mtk_i2c_reset.exit:                               ; preds = %do.end.i, %mtk_i2c_dump_reg.exit.mtk_i2c_reset.exit_crit_edge
  %clk_div.i = getelementptr inbounds %struct.mtk_i2c, ptr %3, i32 0, i32 4
  %102 = ptrtoint ptr %clk_div.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %clk_div.i, align 4
  %shl.i203 = shl i32 %103, 16
  %and.i204 = and i32 %shl.i203, 134152192
  %or2.i = or i32 %and.i204, 3
  %104 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %3, align 8
  %add.ptr.i205 = getelementptr i8, ptr %105, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %106 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205, i32 %106) #8, !srcloc !68
  %107 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %3, align 8
  %add.ptr4.i = getelementptr i8, ptr %108, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #8, !srcloc !68
  br label %cleanup

cleanup:                                          ; preds = %mtk_i2c_reset.exit, %err_ack.cleanup_crit_edge, %for.end112.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %mtk_i2c_reset.exit ], [ %i.0.lcssa, %for.end112.cleanup_crit_edge ], [ -6, %err_ack.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data)
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_i2c_func(ptr nocapture noundef readnone %a) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592717
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_i2c_wait_idle(ptr nocapture noundef readonly %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 76) #8
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %add.ptr55 = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #8, !srcloc !69
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not57 = icmp eq i32 %3, 0
  br i1 %tobool.not57, label %entry.if.end42_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.lhs.true:                                    ; preds = %if.then23.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then23

if.then23:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 68
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !69
  %7 = and i32 %6, 16777216
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then23.if.end42_crit_edge, label %if.then23.land.lhs.true_crit_edge

if.then23.land.lhs.true_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then23.if.end42_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

for.end:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c, align 8
  %add.ptr18 = getelementptr i8, ptr %9, i32 68
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #8, !srcloc !69
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool27.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool27.not, i32 0, i32 -110
  br i1 %tobool27.not, label %for.end.if.end42_crit_edge, label %do.body30

for.end.if.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.body30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_i2c_wait_idle.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtk_i2c_wait_idle, %if.end42)) #8
          to label %if.then38 [label %if.end42], !srcloc !71

if.then38:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_i2c_wait_idle.__UNIQUE_ID_ddebug288, ptr noundef %13, ptr noundef nonnull @.str.20, i32 noundef %cond) #8
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %do.body30, %for.end.if.end42_crit_edge, %if.then23.if.end42_crit_edge, %entry.if.end42_crit_edge
  %cond61 = phi i32 [ -110, %do.body30 ], [ -110, %if.then38 ], [ 0, %for.end.if.end42_crit_edge ], [ 0, %entry.if.end42_crit_edge ], [ 0, %if.then23.if.end42_crit_edge ]
  ret i32 %cond61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__device_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_i2c_mt7621__290_351_mtk_i2c_driver_init6, !1, !"__initcall__kmod_i2c_mt7621__290_351_mtk_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-mt7621.c", i32 351, i32 1}
!2 = !{ptr @__exitcall_mtk_i2c_driver_exit, !1, !"__exitcall_mtk_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-mt7621.c", i32 353, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-mt7621.c", i32 354, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-mt7621.c", i32 355, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias295, !11, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-mt7621.c", i32 356, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-mt7621.c", i32 346, i32 11}
!14 = !{ptr @mtk_i2c_driver, !15, !"mtk_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-mt7621.c", i32 342, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-mt7621.c", i32 290, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mtk_i2c_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mtk_i2c_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-mt7621.c", i32 295, i32 3}
!26 = !{ptr @mtk_i2c_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mtk_i2c_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-mt7621.c", i32 301, i32 46}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-mt7621.c", i32 306, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mtk_i2c_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @mtk_i2c_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-mt7621.c", i32 327, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mtk_i2c_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @mtk_i2c_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @mtk_i2c_algo, !41, !"mtk_i2c_algo", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-mt7621.c", i32 248, i32 35}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/i2c/busses/i2c-mt7621.c", i32 78, i32 3}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mtk_i2c_wait_idle.__UNIQUE_ID_ddebug288, !43, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/i2c/busses/i2c-mt7621.c", i32 102, i32 2}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mtk_i2c_dump_reg.__UNIQUE_ID_ddebug289, !48, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-mt7621.c", i32 89, i32 3}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mtk_i2c_reset._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @mtk_i2c_reset._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @i2c_mtk_dt_ids, !57, !"i2c_mtk_dt_ids", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-mt7621.c", i32 253, i32 34}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2154403715}
!68 = !{i64 6869083}
!69 = !{i64 6869501}
!70 = !{i64 2154402360}
!71 = !{i64 2148728501, i64 2148728506, i64 2148728519, i64 2148728563, i64 2148728597, i64 2148728618}
