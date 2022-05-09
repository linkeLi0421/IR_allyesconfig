; ModuleID = '/llk/IR_all_yes/drivers/input/misc/mma8450.c_pt.bc'
source_filename = "../drivers/input/misc/mma8450.c"
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_mma8450__288_210_mma8450_driver_init6 = internal global ptr @mma8450_driver_init, section ".initcall6.init", align 4
@mma8450_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mma8450_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mma8450_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mma8450_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mma8450_driver_exit = internal global ptr @mma8450_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [45 x i8] c"mma8450.author=Freescale Semiconductor, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [56 x i8] c"mma8450.description=MMA8450 3-Axis Accelerometer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [40 x i8] c"mma8450.file=drivers/input/misc/mma8450\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"mma8450.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mma8450\00", [24 x i8] zeroinitializer }, align 32
@mma8450_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mma8450\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mma8450_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mma8450\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mma8450_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 173, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set up polling\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mma8450_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/misc/mma8450.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mma8450_probe._entry_ptr = internal global ptr @mma8450_probe._entry, section ".printk_index", align 4
@mma8450_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@mma8450_probe._entry_ptr.8 = internal global ptr @mma8450_probe._entry.6, section ".printk_index", align 4
@mma8450_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 63, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to write to register 0x%02x, error %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mma8450_write\00", [18 x i8] zeroinitializer }, align 32
@mma8450_write._entry_ptr = internal global ptr @mma8450_write._entry, section ".printk_index", align 4
@mma8450_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 50, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to read register 0x%02x, error %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mma8450_read\00", [19 x i8] zeroinitializer }, align 32
@mma8450_read._entry_ptr = internal global ptr @mma8450_read._entry, section ".printk_index", align 4
@mma8450_read_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 79, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to read block data at 0x%02x, error %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mma8450_read_block\00", [45 x i8] zeroinitializer }, align 32
@mma8450_read_block._entry_ptr = internal global ptr @mma8450_read_block._entry, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"mma8450_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 201, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 203, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"mma8450_dt_ids\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 195, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"mma8450_id\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 189, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 173, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 182, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 61, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 48, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [32 x i8] c"../drivers/input/misc/mma8450.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 77, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mma8450_driver_exit, ptr @__initcall__kmod_mma8450__288_210_mma8450_driver_init6, ptr @mma8450_driver_exit, ptr @mma8450_probe._entry, ptr @mma8450_probe._entry.6, ptr @mma8450_probe._entry_ptr, ptr @mma8450_probe._entry_ptr.8, ptr @mma8450_read._entry, ptr @mma8450_read._entry_ptr, ptr @mma8450_read_block._entry, ptr @mma8450_read_block._entry_ptr, ptr @mma8450_write._entry, ptr @mma8450_write._entry_ptr, ptr @mma8450_driver, ptr @.str, ptr @mma8450_dt_ids, ptr @mma8450_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8450_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8450_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8450_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8450_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8450_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8450_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8450_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mma8450_read_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8450_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mma8450_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mma8450_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @mma8450_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8450_probe(ptr noundef %c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4
  %call = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %c, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str, ptr %call, align 8
  %id1 = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %id1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 24, ptr %id1, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 31
  %3 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mma8450_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call, i32 0, i32 32
  %4 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mma8450_close, ptr %close, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 0, i32 noundef -2048, i32 noundef 2047, i32 noundef 32, i32 noundef 32) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 1, i32 noundef -2048, i32 noundef 2047, i32 noundef 32, i32 noundef 32) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call, i32 noundef 2, i32 noundef -2048, i32 noundef 2047, i32 noundef 32, i32 noundef 32) #5
  %call2 = tail call i32 @input_setup_polling(ptr noundef nonnull %call, ptr noundef nonnull @mma8450_poll) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  tail call void @input_set_poll_interval(ptr noundef nonnull %call, i32 noundef 100) #5
  tail call void @input_set_max_poll_interval(ptr noundef nonnull %call, i32 noundef 500) #5
  %call7 = tail call i32 @input_register_device(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end6.cleanup.sink.split_crit_edge

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end6.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str.1, %if.end.cleanup.sink.split_crit_edge ], [ @.str.7, %if.end6.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call2, %if.end.cleanup.sink.split_crit_edge ], [ %call7, %if.end6.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.7.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mma8450_open(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 22, i8 noundef zeroext 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %mma8450_write.exit, label %if.end

mma8450_write.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef 22, i32 noundef %call.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i11 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 56, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %cmp.i12 = icmp slt i32 %call.i11, 0
  br i1 %cmp.i12, label %mma8450_write.exit16, label %if.end5

mma8450_write.exit16:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i13 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i13, ptr noundef nonnull @.str.9, i32 noundef 56, i32 noundef %call.i11) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 100) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %mma8450_write.exit16, %mma8450_write.exit
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call.i, %mma8450_write.exit ], [ %call.i11, %mma8450_write.exit16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mma8450_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 56, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.mma8450_write.exit_crit_edge

entry.mma8450_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mma8450_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef 56, i32 noundef %call.i) #8
  br label %mma8450_write.exit

mma8450_write.exit:                               ; preds = %do.end.i, %entry.mma8450_write.exit_crit_edge
  %call.i4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 57, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %cmp.i5 = icmp slt i32 %call.i4, 0
  br i1 %cmp.i5, label %do.end.i7, label %mma8450_write.exit.mma8450_write.exit9_crit_edge

mma8450_write.exit.mma8450_write.exit9_crit_edge: ; preds = %mma8450_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mma8450_write.exit9

do.end.i7:                                        ; preds = %mma8450_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i6 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i6, ptr noundef nonnull @.str.9, i32 noundef 57, i32 noundef %call.i4) #8
  br label %mma8450_write.exit9

mma8450_write.exit9:                              ; preds = %do.end.i7, %mma8450_write.exit.mma8450_write.exit9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_setup_polling(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mma8450_poll(ptr noundef %input) #2 align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #5
  %2 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 5
  %7 = call ptr @memset(ptr %buf, i32 255, i32 6)
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %mma8450_read.exit.thread, label %mma8450_read.exit

mma8450_read.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef %call.i) #8
  br label %cleanup

mma8450_read.exit:                                ; preds = %entry
  %8 = and i32 %call.i, -2147483640
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %.not = icmp eq i32 %8, 8
  br i1 %.not, label %if.end3, label %mma8450_read.exit.cleanup_crit_edge

mma8450_read.exit.cleanup_crit_edge:              ; preds = %mma8450_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %mma8450_read.exit
  %call.i37 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext 6, ptr noundef nonnull %buf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %cmp.i38 = icmp slt i32 %call.i37, 0
  br i1 %cmp.i38, label %mma8450_read_block.exit.thread, label %if.end7

mma8450_read_block.exit.thread:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i39 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i39, ptr noundef nonnull @.str.13, i32 noundef 5, i32 noundef %call.i37) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %2, align 1
  %conv = sext i8 %10 to i32
  %shl = shl nsw i32 %conv, 4
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf, align 1
  %13 = and i8 %12, 15
  %and10 = zext i8 %13 to i32
  %or = or i32 %shl, %and10
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %4, align 1
  %conv12 = sext i8 %15 to i32
  %shl13 = shl nsw i32 %conv12, 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %3, align 1
  %18 = and i8 %17, 15
  %and16 = zext i8 %18 to i32
  %or17 = or i32 %shl13, %and16
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %6, align 1
  %conv19 = sext i8 %20 to i32
  %shl20 = shl nsw i32 %conv19, 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %5, align 1
  %23 = and i8 %22, 15
  %and23 = zext i8 %23 to i32
  %or24 = or i32 %shl20, %and23
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 0, i32 noundef %or) #5
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 1, i32 noundef %or17) #5
  call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 2, i32 noundef %or24) #5
  call void @input_event(ptr noundef %input, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %mma8450_read_block.exit.thread, %mma8450_read.exit.cleanup_crit_edge, %mma8450_read.exit.thread
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_poll_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_max_poll_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_mma8450__288_210_mma8450_driver_init6, !1, !"__initcall__kmod_mma8450__288_210_mma8450_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/mma8450.c", i32 210, i32 1}
!2 = !{ptr @__exitcall_mma8450_driver_exit, !1, !"__exitcall_mma8450_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/mma8450.c", i32 212, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/mma8450.c", i32 213, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/mma8450.c", i32 214, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/mma8450.c", i32 203, i32 11}
!12 = !{ptr @mma8450_driver, !13, !"mma8450_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/mma8450.c", i32 201, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/mma8450.c", i32 173, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mma8450_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mma8450_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/misc/mma8450.c", i32 182, i32 3}
!24 = !{ptr @mma8450_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mma8450_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/misc/mma8450.c", i32 61, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mma8450_write._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @mma8450_write._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/misc/mma8450.c", i32 48, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mma8450_read._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @mma8450_read._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/misc/mma8450.c", i32 77, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mma8450_read_block._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @mma8450_read_block._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @mma8450_dt_ids, !42, !"mma8450_dt_ids", i1 false, i1 false}
!42 = !{!"../drivers/input/misc/mma8450.c", i32 195, i32 34}
!43 = !{ptr @mma8450_id, !44, !"mma8450_id", i1 false, i1 false}
!44 = !{!"../drivers/input/misc/mma8450.c", i32 189, i32 35}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
