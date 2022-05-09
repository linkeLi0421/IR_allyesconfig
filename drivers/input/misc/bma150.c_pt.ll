; ModuleID = '/llk/IR_all_yes/drivers/input/misc/bma150.c_pt.bc'
source_filename = "../drivers/input/misc/bma150.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bma150_cfg = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bma150_platform_data = type { %struct.bma150_cfg, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.bma150_data = type { ptr, ptr, i8 }

@__initcall__kmod_bma150__289_561_bma150_driver_init6 = internal global ptr @bma150_driver_init, section ".initcall6.init", align 4
@bma150_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr @bma150_probe, ptr @bma150_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bma150_pm, ptr null, ptr null }, ptr @bma150_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bma150_driver_exit = internal global ptr @bma150_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [58 x i8] c"bma150.author=Albert Zhang <xu.zhang@bosch-sensortec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [33 x i8] c"bma150.description=BMA150 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [38 x i8] c"bma150.file=drivers/input/misc/bma150\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [19 x i8] c"bma150.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bma150\00", [25 x i8] zeroinitializer }, align 32
@bma150_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bma150_suspend, ptr @bma150_resume, ptr @bma150_suspend, ptr @bma150_resume, ptr @bma150_suspend, ptr @bma150_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bma150_suspend, ptr @bma150_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@bma150_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bma150\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"smb380\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"bma023\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@bma150_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"i2c_check_functionality error\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bma150_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/input/misc/bma150.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bma150_probe._entry_ptr = internal global ptr @bma150_probe._entry, section ".printk_index", align 4
@bma150_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"BMA150 chip id error: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@bma150_probe._entry_ptr.8 = internal global ptr @bma150_probe._entry.6, section ".printk_index", align 4
@bma150_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 451, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IRQ GPIO conf. error %d, error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@bma150_probe._entry_ptr.11 = internal global ptr @bma150_probe._entry.9, section ".printk_index", align 4
@default_cfg = internal constant { %struct.bma150_cfg, [19 x i8] } { %struct.bma150_cfg { i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 -106, i8 -96, i8 0, i8 -106, i8 20, i8 0, i8 1 }, [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bma150/input0\00", [18 x i8] zeroinitializer }, align 32
@bma150_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 504, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"irq request failed %d, error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@bma150_probe._entry_ptr.15 = internal global ptr @bma150_probe._entry.13, section ".printk_index", align 4
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"bma150_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 550, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 552, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"bma150_pm\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 539, i32 8 }
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"bma150_id\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 541, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 429, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 435, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 449, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"default_cfg\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 134, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 472, i32 15 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [31 x i8] c"../drivers/input/misc/bma150.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 502, i32 4 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_bma150_driver_exit, ptr @__initcall__kmod_bma150__289_561_bma150_driver_init6, ptr @bma150_driver_exit, ptr @bma150_probe._entry, ptr @bma150_probe._entry.13, ptr @bma150_probe._entry.6, ptr @bma150_probe._entry.9, ptr @bma150_probe._entry_ptr, ptr @bma150_probe._entry_ptr.11, ptr @bma150_probe._entry_ptr.15, ptr @bma150_probe._entry_ptr.8, ptr @bma150_driver, ptr @.str, ptr @bma150_pm, ptr @bma150_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @default_cfg, ptr @.str.12, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma150_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma150_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma150_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma150_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma150_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma150_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_cfg to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bma150_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bma150_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bma150_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bma150_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @bma150_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bma150_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #5
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 2
  br i1 %cmp.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call3) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #5
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %call.i, align 4
  %tobool16.not = icmp eq ptr %1, null
  br i1 %tobool16.not, label %if.end14.if.end31_crit_edge, label %if.then17

if.end14.if.end31_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then17:                                        ; preds = %if.end14
  %irq_gpio_cfg = getelementptr inbounds %struct.bma150_platform_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %irq_gpio_cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_gpio_cfg, align 4
  %tobool18.not = icmp eq ptr %10, null
  br i1 %tobool18.not, label %if.then17.if.end31_crit_edge, label %if.then19

if.then17.if.end31_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then19:                                        ; preds = %if.then17
  %call21 = tail call i32 %10() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then19.if.end31_crit_edge, label %do.end26

if.then19.if.end31_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

do.end26:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %12, i32 noundef %call21) #8
  br label %cleanup

if.end31:                                         ; preds = %if.then19.if.end31_crit_edge, %if.then17.if.end31_crit_edge, %if.end14.if.end31_crit_edge
  %cfg.0 = phi ptr [ %1, %if.then19.if.end31_crit_edge ], [ %1, %if.then17.if.end31_crit_edge ], [ @default_cfg, %if.end14.if.end31_crit_edge ]
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %call.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end31.cleanup_crit_edge, label %if.end.i.i.i

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end31
  %15 = trunc i32 %call.i.i.i to i8
  %conv3.i.i.i = or i8 %15, 2
  %irq.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 6
  %16 = ptrtoint ptr %irq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.if.end.i.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.i.if.end.i.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %17) #5
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %if.end.i.i.i.if.end.i.i.i.i_crit_edge
  %call.i.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 10, i8 noundef zeroext %conv3.i.i.i) #5
  %18 = ptrtoint ptr %irq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.i.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end.i.i.i.i.bma150_set_reg_bits.exit.i.i_crit_edge, label %if.then4.i.i.i.i

if.end.i.i.i.i.bma150_set_reg_bits.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bma150_set_reg_bits.exit.i.i

if.then4.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %19) #5
  br label %bma150_set_reg_bits.exit.i.i

bma150_set_reg_bits.exit.i.i:                     ; preds = %if.then4.i.i.i.i, %if.end.i.i.i.i.bma150_set_reg_bits.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %bma150_set_reg_bits.exit.i.i.cleanup_crit_edge

bma150_set_reg_bits.exit.i.i.cleanup_crit_edge:   ; preds = %bma150_set_reg_bits.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %bma150_set_reg_bits.exit.i.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2100, i32 noundef 2) #5
  %bandwidth.i = getelementptr inbounds %struct.bma150_cfg, ptr %cfg.0, i32 0, i32 12
  %20 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bandwidth.i, align 1
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %call.i.i60.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60.i)
  %cmp.i.i61.i = icmp slt i32 %call.i.i60.i, 0
  br i1 %cmp.i.i61.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.i65.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i65.i:                                   ; preds = %if.end.i
  %24 = and i8 %21, 7
  %25 = trunc i32 %call.i.i60.i to i8
  %26 = and i8 %25, -8
  %conv3.i.i62.i = or i8 %26, %24
  %irq.i.i.i63.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 6
  %27 = ptrtoint ptr %irq.i.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq.i.i.i63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i64.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i64.i, label %if.end.i.i65.i.if.end.i.i.i69.i_crit_edge, label %if.then.i.i.i66.i

if.end.i.i65.i.if.end.i.i.i69.i_crit_edge:        ; preds = %if.end.i.i65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i69.i

if.then.i.i.i66.i:                                ; preds = %if.end.i.i65.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %28) #5
  br label %if.end.i.i.i69.i

if.end.i.i.i69.i:                                 ; preds = %if.then.i.i.i66.i, %if.end.i.i65.i.if.end.i.i.i69.i_crit_edge
  %call.i.i.i67.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 20, i8 noundef zeroext %conv3.i.i62.i) #5
  %29 = ptrtoint ptr %irq.i.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq.i.i.i63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool3.not.i.i.i68.i = icmp eq i32 %30, 0
  br i1 %tobool3.not.i.i.i68.i, label %if.end.i.i.i69.i.bma150_set_bandwidth.exit.i_crit_edge, label %if.then4.i.i.i70.i

if.end.i.i.i69.i.bma150_set_bandwidth.exit.i_crit_edge: ; preds = %if.end.i.i.i69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bma150_set_bandwidth.exit.i

if.then4.i.i.i70.i:                               ; preds = %if.end.i.i.i69.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %30) #5
  br label %bma150_set_bandwidth.exit.i

bma150_set_bandwidth.exit.i:                      ; preds = %if.then4.i.i.i70.i, %if.end.i.i.i69.i.bma150_set_bandwidth.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i67.i)
  %tobool2.not.i = icmp eq i32 %call.i.i.i67.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %bma150_set_bandwidth.exit.i.cleanup_crit_edge

bma150_set_bandwidth.exit.i.cleanup_crit_edge:    ; preds = %bma150_set_bandwidth.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4.i:                                        ; preds = %bma150_set_bandwidth.exit.i
  %range.i = getelementptr inbounds %struct.bma150_cfg, ptr %cfg.0, i32 0, i32 11
  %31 = ptrtoint ptr %range.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %range.i, align 1
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %call.i.i72.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %34, i8 noundef zeroext 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72.i)
  %cmp.i.i73.i = icmp slt i32 %call.i.i72.i, 0
  br i1 %cmp.i.i73.i, label %if.end4.i.cleanup_crit_edge, label %if.end.i.i77.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i77.i:                                   ; preds = %if.end4.i
  %conv.i.i = zext i8 %32 to i32
  %and.i.i.i = and i32 %call.i.i72.i, 231
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i, 3
  %and2.i.i.i = and i32 %shl.i.i.i, 24
  %or.i.i.i = or i32 %and.i.i.i, %and2.i.i.i
  %conv3.i.i74.i = trunc i32 %or.i.i.i to i8
  %irq.i.i.i75.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %irq.i.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq.i.i.i75.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i.i76.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i.i76.i, label %if.end.i.i77.i.if.end.i.i.i81.i_crit_edge, label %if.then.i.i.i78.i

if.end.i.i77.i.if.end.i.i.i81.i_crit_edge:        ; preds = %if.end.i.i77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i81.i

if.then.i.i.i78.i:                                ; preds = %if.end.i.i77.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %36) #5
  br label %if.end.i.i.i81.i

if.end.i.i.i81.i:                                 ; preds = %if.then.i.i.i78.i, %if.end.i.i77.i.if.end.i.i.i81.i_crit_edge
  %call.i.i.i79.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 20, i8 noundef zeroext %conv3.i.i74.i) #5
  %37 = ptrtoint ptr %irq.i.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq.i.i.i75.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool3.not.i.i.i80.i = icmp eq i32 %38, 0
  br i1 %tobool3.not.i.i.i80.i, label %if.end.i.i.i81.i.bma150_set_range.exit.i_crit_edge, label %if.then4.i.i.i82.i

if.end.i.i.i81.i.bma150_set_range.exit.i_crit_edge: ; preds = %if.end.i.i.i81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bma150_set_range.exit.i

if.then4.i.i.i82.i:                               ; preds = %if.end.i.i.i81.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %38) #5
  br label %bma150_set_range.exit.i

bma150_set_range.exit.i:                          ; preds = %if.then4.i.i.i82.i, %if.end.i.i.i81.i.bma150_set_range.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i79.i)
  %tobool6.not.i = icmp eq i32 %call.i.i.i79.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %bma150_set_range.exit.i.cleanup_crit_edge

bma150_set_range.exit.i.cleanup_crit_edge:        ; preds = %bma150_set_range.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.i:                                        ; preds = %bma150_set_range.exit.i
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool9.not.i = icmp eq i32 %42, 0
  br i1 %tobool9.not.i, label %if.end8.i.bma150_initialize.exit_crit_edge, label %if.then10.i

if.end8.i.bma150_initialize.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bma150_initialize.exit

if.then10.i:                                      ; preds = %if.end8.i
  %43 = ptrtoint ptr %cfg.0 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cfg.0, align 1, !range !51
  %any_motion_dur.i = getelementptr inbounds %struct.bma150_cfg, ptr %cfg.0, i32 0, i32 3
  %45 = ptrtoint ptr %any_motion_dur.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %any_motion_dur.i, align 1
  %any_motion_thres.i = getelementptr inbounds %struct.bma150_cfg, ptr %cfg.0, i32 0, i32 4
  %47 = ptrtoint ptr %any_motion_thres.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %any_motion_thres.i, align 1
  %call.i.i85.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85.i)
  %cmp.i.i86.i = icmp slt i32 %call.i.i85.i, 0
  br i1 %cmp.i.i86.i, label %if.then10.i.cleanup_crit_edge, label %if.end.i.i94.i

if.then10.i.cleanup_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i94.i:                                   ; preds = %if.then10.i
  %conv.i87.i = zext i8 %46 to i32
  %and.i.i88.i = and i32 %call.i.i85.i, 63
  %shl.i.i89.i = shl nuw nsw i32 %conv.i87.i, 6
  %or.i.i90.i = or i32 %and.i.i88.i, %shl.i.i89.i
  %conv3.i.i91.i = trunc i32 %or.i.i90.i to i8
  %49 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i.i93.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i.i93.i, label %if.end.i.i94.i.if.end.i.i.i98.i_crit_edge, label %if.then.i.i.i95.i

if.end.i.i94.i.if.end.i.i.i98.i_crit_edge:        ; preds = %if.end.i.i94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i98.i

if.then.i.i.i95.i:                                ; preds = %if.end.i.i94.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %50) #5
  br label %if.end.i.i.i98.i

if.end.i.i.i98.i:                                 ; preds = %if.then.i.i.i95.i, %if.end.i.i94.i.if.end.i.i.i98.i_crit_edge
  %call.i.i.i96.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext 17, i8 noundef zeroext %conv3.i.i91.i) #5
  %51 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool3.not.i.i.i97.i = icmp eq i32 %52, 0
  br i1 %tobool3.not.i.i.i97.i, label %if.end.i.i.i98.i.bma150_set_reg_bits.exit.i101.i_crit_edge, label %if.then4.i.i.i99.i

if.end.i.i.i98.i.bma150_set_reg_bits.exit.i101.i_crit_edge: ; preds = %if.end.i.i.i98.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bma150_set_reg_bits.exit.i101.i

if.then4.i.i.i99.i:                               ; preds = %if.end.i.i.i98.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %52) #5
  br label %bma150_set_reg_bits.exit.i101.i

bma150_set_reg_bits.exit.i101.i:                  ; preds = %if.then4.i.i.i99.i, %if.end.i.i.i98.i.bma150_set_reg_bits.exit.i101.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i96.i)
  %tobool.not.i100.i = icmp eq i32 %call.i.i.i96.i, 0
  br i1 %tobool.not.i100.i, label %if.end.i102.i, label %bma150_set_reg_bits.exit.i101.i.cleanup_crit_edge

bma150_set_reg_bits.exit.i101.i.cleanup_crit_edge: ; preds = %bma150_set_reg_bits.exit.i101.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i102.i:                                    ; preds = %bma150_set_reg_bits.exit.i101.i
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %irq.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i.i, label %if.end.i102.i.if.end.i30.i.i_crit_edge, label %if.then.i.i.i

if.end.i102.i.if.end.i30.i.i_crit_edge:           ; preds = %if.end.i102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i30.i.i

if.then.i.i.i:                                    ; preds = %if.end.i102.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %56) #5
  br label %if.end.i30.i.i

if.end.i30.i.i:                                   ; preds = %if.then.i.i.i, %if.end.i102.i.if.end.i30.i.i_crit_edge
  %call.i29.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext 16, i8 noundef zeroext %48) #5
  %57 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool3.not.i.i.i = icmp eq i32 %58, 0
  br i1 %tobool3.not.i.i.i, label %if.end.i30.i.i.bma150_write_byte.exit.i.i_crit_edge, label %if.then4.i.i.i

if.end.i30.i.i.bma150_write_byte.exit.i.i_crit_edge: ; preds = %if.end.i30.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bma150_write_byte.exit.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i30.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %58) #5
  br label %bma150_write_byte.exit.i.i

bma150_write_byte.exit.i.i:                       ; preds = %if.then4.i.i.i, %if.end.i30.i.i.bma150_write_byte.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i29.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %bma150_write_byte.exit.i.i.cleanup_crit_edge

bma150_write_byte.exit.i.i.cleanup_crit_edge:     ; preds = %bma150_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i.i:                                      ; preds = %bma150_write_byte.exit.i.i
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  %call.i31.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %60, i8 noundef zeroext 21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i.i)
  %cmp.i32.i.i = icmp slt i32 %call.i31.i.i, 0
  br i1 %cmp.i32.i.i, label %if.end5.i.i.cleanup_crit_edge, label %if.end.i40.i.i

if.end5.i.i.cleanup_crit_edge:                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i40.i.i:                                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool7.not.i.i = icmp eq i8 %44, 0
  %and.i33.i.i = and i32 %call.i31.i.i, 191
  %shl.i34.i.i = select i1 %tobool7.not.i.i, i32 0, i32 64
  %or.i36.i.i = or i32 %and.i33.i.i, %shl.i34.i.i
  %conv3.i37.i.i = trunc i32 %or.i36.i.i to i8
  %irq.i.i38.i.i = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %irq.i.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq.i.i38.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i.i39.i.i = icmp eq i32 %62, 0
  br i1 %tobool.not.i.i39.i.i, label %if.end.i40.i.i.if.end.i.i44.i.i_crit_edge, label %if.then.i.i41.i.i

if.end.i40.i.i.if.end.i.i44.i.i_crit_edge:        ; preds = %if.end.i40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i44.i.i

if.then.i.i41.i.i:                                ; preds = %if.end.i40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %62) #5
  br label %if.end.i.i44.i.i

if.end.i.i44.i.i:                                 ; preds = %if.then.i.i41.i.i, %if.end.i40.i.i.if.end.i.i44.i.i_crit_edge
  %call.i.i42.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %60, i8 noundef zeroext 21, i8 noundef zeroext %conv3.i37.i.i) #5
  %63 = ptrtoint ptr %irq.i.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq.i.i38.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool3.not.i.i43.i.i = icmp eq i32 %64, 0
  br i1 %tobool3.not.i.i43.i.i, label %if.end.i.i44.i.i.bma150_set_reg_bits.exit47.i.i_crit_edge, label %if.then4.i.i45.i.i

if.end.i.i44.i.i.bma150_set_reg_bits.exit47.i.i_crit_edge: ; preds = %if.end.i.i44.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bma150_set_reg_bits.exit47.i.i

if.then4.i.i45.i.i:                               ; preds = %if.end.i.i44.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %64) #5
  br label %bma150_set_reg_bits.exit47.i.i

bma150_set_reg_bits.exit47.i.i:                   ; preds = %if.then4.i.i45.i.i, %if.end.i.i44.i.i.bma150_set_reg_bits.exit47.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42.i.i)
  %tobool10.not.i.i = icmp eq i32 %call.i.i42.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %bma150_set_reg_bits.exit47.i.i.cleanup_crit_edge

bma150_set_reg_bits.exit47.i.i.cleanup_crit_edge: ; preds = %bma150_set_reg_bits.exit47.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12.i.i:                                     ; preds = %bma150_set_reg_bits.exit47.i.i
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  %call.i48.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %66, i8 noundef zeroext 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i.i)
  %cmp.i49.i.i = icmp slt i32 %call.i48.i.i, 0
  br i1 %cmp.i49.i.i, label %if.end12.i.i.cleanup_crit_edge, label %if.end.i57.i.i

if.end12.i.i.cleanup_crit_edge:                   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i57.i.i:                                   ; preds = %if.end12.i.i
  %and.i50.i.i = and i32 %call.i48.i.i, 191
  %or.i53.i.i = or i32 %and.i50.i.i, %shl.i34.i.i
  %conv3.i54.i.i = trunc i32 %or.i53.i.i to i8
  %irq.i.i55.i.i = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 6
  %67 = ptrtoint ptr %irq.i.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq.i.i55.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i.i56.i.i = icmp eq i32 %68, 0
  br i1 %tobool.not.i.i56.i.i, label %if.end.i57.i.i.if.end.i.i61.i.i_crit_edge, label %if.then.i.i58.i.i

if.end.i57.i.i.if.end.i.i61.i.i_crit_edge:        ; preds = %if.end.i57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i61.i.i

if.then.i.i58.i.i:                                ; preds = %if.end.i57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %68) #5
  br label %if.end.i.i61.i.i

if.end.i.i61.i.i:                                 ; preds = %if.then.i.i58.i.i, %if.end.i57.i.i.if.end.i.i61.i.i_crit_edge
  %call.i.i59.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %66, i8 noundef zeroext 11, i8 noundef zeroext %conv3.i54.i.i) #5
  %69 = ptrtoint ptr %irq.i.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq.i.i55.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool3.not.i.i60.i.i = icmp eq i32 %70, 0
  br i1 %tobool3.not.i.i60.i.i, label %if.end.i.i61.i.i.bma150_set_any_motion_interrupt.exit.i_crit_edge, label %if.then4.i.i62.i.i

if.end.i.i61.i.i.bma150_set_any_motion_interrupt.exit.i_crit_edge: ; preds = %if.end.i.i61.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bma150_set_any_motion_interrupt.exit.i

if.then4.i.i62.i.i:                               ; preds = %if.end.i.i61.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %70) #5
  br label %bma150_set_any_motion_interrupt.exit.i

bma150_set_any_motion_interrupt.exit.i:           ; preds = %if.then4.i.i62.i.i, %if.end.i.i61.i.i.bma150_set_any_motion_interrupt.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59.i.i)
  %tobool13.not.i = icmp eq i32 %call.i.i59.i.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %bma150_set_any_motion_interrupt.exit.i.cleanup_crit_edge

bma150_set_any_motion_interrupt.exit.i.cleanup_crit_edge: ; preds = %bma150_set_any_motion_interrupt.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.i:                                       ; preds = %bma150_set_any_motion_interrupt.exit.i
  %hg_int.i = getelementptr inbounds %struct.bma150_cfg, ptr %cfg.0, i32 0, i32 1
  %71 = ptrtoint ptr %hg_int.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %hg_int.i, align 1, !range !51
  %hg_hyst.i = getelementptr inbounds %struct.bma150_cfg, ptr %cfg.0, i32 0, i32 5
  %73 = ptrtoint ptr %hg_hyst.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %hg_hyst.i, align 1
  %hg_dur.i = getelementptr inbounds %struct.bma150_cfg, ptr %cfg.0, i32 0, i32 6
  %75 = ptrtoint ptr %hg_dur.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %hg_dur.i, align 1
  %hg_thres.i = getelementptr inbounds %struct.bma150_cfg, ptr %cfg.0, i32 0, i32 7
  %77 = ptrtoint ptr %hg_thres.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %hg_thres.i, align 1
  %call18.i = tail call fastcc i32 @bma150_set_high_g_interrupt(ptr noundef nonnull %call.i, i8 noundef zeroext %72, i8 noundef zeroext %74, i8 noundef zeroext %76, i8 noundef zeroext %78) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end15.i.cleanup_crit_edge

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21.i:                                       ; preds = %if.end15.i
  %lg_int.i = getelementptr inbounds %struct.bma150_cfg, ptr %cfg.0, i32 0, i32 2
  %79 = ptrtoint ptr %lg_int.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %lg_int.i, align 1, !range !51
  %lg_hyst.i = getelementptr inbounds %struct.bma150_cfg, ptr %cfg.0, i32 0, i32 8
  %81 = ptrtoint ptr %lg_hyst.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %lg_hyst.i, align 1
  %lg_dur.i = getelementptr inbounds %struct.bma150_cfg, ptr %cfg.0, i32 0, i32 9
  %83 = ptrtoint ptr %lg_dur.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %lg_dur.i, align 1
  %lg_thres.i = getelementptr inbounds %struct.bma150_cfg, ptr %cfg.0, i32 0, i32 10
  %85 = ptrtoint ptr %lg_thres.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %lg_thres.i, align 1
  %call24.i = tail call fastcc i32 @bma150_set_low_g_interrupt(ptr noundef nonnull %call.i, i8 noundef zeroext %80, i8 noundef zeroext %82, i8 noundef zeroext %84, i8 noundef zeroext %86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end21.i.bma150_initialize.exit_crit_edge, label %if.end21.i.cleanup_crit_edge

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21.i.bma150_initialize.exit_crit_edge:      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bma150_initialize.exit

bma150_initialize.exit:                           ; preds = %if.end21.i.bma150_initialize.exit_crit_edge, %if.end8.i.bma150_initialize.exit_crit_edge
  %call29.i = tail call fastcc i32 @bma150_set_mode(ptr noundef nonnull %call.i, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool33.not = icmp eq i32 %call29.i, 0
  br i1 %tobool33.not, label %if.end35, label %bma150_initialize.exit.cleanup_crit_edge

bma150_initialize.exit.cleanup_crit_edge:         ; preds = %bma150_initialize.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end35:                                         ; preds = %bma150_initialize.exit
  %87 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call.i, align 4
  %dev37 = getelementptr inbounds %struct.i2c_client, ptr %88, i32 0, i32 4
  %call38 = tail call ptr @devm_input_allocate_device(ptr noundef %dev37) #5
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end35.cleanup_crit_edge, label %if.end41

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call38, i32 0, i32 40, i32 8
  %89 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.bma150_data, ptr %call.i, i32 0, i32 1
  %90 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call38, ptr %input, align 4
  %91 = ptrtoint ptr %call38 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @.str, ptr %call38, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call38, i32 0, i32 1
  %92 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.12, ptr %phys, align 4
  %id42 = getelementptr inbounds %struct.input_dev, ptr %call38, i32 0, i32 3
  %93 = ptrtoint ptr %id42 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 24, ptr %id42, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call38, i32 0, i32 31
  %94 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @bma150_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call38, i32 0, i32 32
  %95 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @bma150_close, ptr %close, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call38, i32 noundef 0, i32 noundef -511, i32 noundef 511, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call38, i32 noundef 1, i32 noundef -511, i32 noundef 511, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call38, i32 noundef 2, i32 noundef -511, i32 noundef 511, i32 noundef 0, i32 noundef 0) #5
  %irq43 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %96 = ptrtoint ptr %irq43 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %irq43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp44 = icmp slt i32 %97, 1
  br i1 %cmp44, label %if.then45, label %if.end41.if.end50_crit_edge

if.end41.if.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then45:                                        ; preds = %if.end41
  %call46 = tail call i32 @input_setup_polling(ptr noundef nonnull %call38, ptr noundef nonnull @bma150_poll) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.then45.cleanup_crit_edge

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end49:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @input_set_poll_interval(ptr noundef nonnull %call38, i32 noundef 10) #5
  tail call void @input_set_min_poll_interval(ptr noundef nonnull %call38, i32 noundef 0) #5
  tail call void @input_set_max_poll_interval(ptr noundef nonnull %call38, i32 noundef 200) #5
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end41.if.end50_crit_edge
  %call51 = tail call i32 @input_register_device(ptr noundef nonnull %call38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end54:                                         ; preds = %if.end50
  %98 = ptrtoint ptr %irq43 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %irq43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp56 = icmp sgt i32 %99, 0
  br i1 %cmp56, label %if.then57, label %if.end54.if.end69_crit_edge

if.end54.if.end69_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then57:                                        ; preds = %if.end54
  %call60 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %99, ptr noundef null, ptr noundef nonnull @bma150_irq_thread, i32 noundef 8193, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then57.if.end69_crit_edge, label %do.end65

if.then57.if.end69_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

do.end65:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %irq43 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %irq43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %101, i32 noundef %call60) #8
  br label %cleanup

if.end69:                                         ; preds = %if.then57.if.end69_crit_edge, %if.end54.if.end69_crit_edge
  %driver_data.i.i130 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %102 = ptrtoint ptr %driver_data.i.i130 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call.i, ptr %driver_data.i.i130, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %do.end65, %if.end50.cleanup_crit_edge, %if.then45.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %bma150_initialize.exit.cleanup_crit_edge, %if.end21.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %bma150_set_any_motion_interrupt.exit.i.cleanup_crit_edge, %if.end12.i.i.cleanup_crit_edge, %bma150_set_reg_bits.exit47.i.i.cleanup_crit_edge, %if.end5.i.i.cleanup_crit_edge, %bma150_write_byte.exit.i.i.cleanup_crit_edge, %bma150_set_reg_bits.exit.i101.i.cleanup_crit_edge, %if.then10.i.cleanup_crit_edge, %bma150_set_range.exit.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %bma150_set_bandwidth.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %bma150_set_reg_bits.exit.i.i.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.end26, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end7 ], [ %call21, %do.end26 ], [ %call60, %do.end65 ], [ 0, %if.end69 ], [ -5, %do.end ], [ -12, %if.end9.cleanup_crit_edge ], [ %call29.i, %bma150_initialize.exit.cleanup_crit_edge ], [ -12, %if.end35.cleanup_crit_edge ], [ %call46, %if.then45.cleanup_crit_edge ], [ %call51, %if.end50.cleanup_crit_edge ], [ %call.i.i.i96.i, %bma150_set_reg_bits.exit.i101.i.cleanup_crit_edge ], [ %call.i29.i.i, %bma150_write_byte.exit.i.i.cleanup_crit_edge ], [ %call.i.i42.i.i, %bma150_set_reg_bits.exit47.i.i.cleanup_crit_edge ], [ %call.i48.i.i, %if.end12.i.i.cleanup_crit_edge ], [ %call.i.i85.i, %if.then10.i.cleanup_crit_edge ], [ %call.i31.i.i, %if.end5.i.i.cleanup_crit_edge ], [ %call.i.i72.i, %if.end4.i.cleanup_crit_edge ], [ %call.i.i60.i, %if.end.i.cleanup_crit_edge ], [ %call.i.i.i.i, %bma150_set_reg_bits.exit.i.i.cleanup_crit_edge ], [ %call.i.i.i, %if.end31.cleanup_crit_edge ], [ %call24.i, %if.end21.i.cleanup_crit_edge ], [ %call18.i, %if.end15.i.cleanup_crit_edge ], [ %call.i.i59.i.i, %bma150_set_any_motion_interrupt.exit.i.cleanup_crit_edge ], [ %call.i.i.i79.i, %bma150_set_range.exit.i.cleanup_crit_edge ], [ %call.i.i.i67.i, %bma150_set_bandwidth.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bma150_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bma150_open(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call.i)
  %cmp2.not = icmp eq i32 %call.i, -38
  %or.cond = or i1 %cmp, %cmp2.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.bma150_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp3.not = icmp eq i8 %5, 0
  br i1 %cmp3.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then5:                                         ; preds = %if.end
  %call6 = tail call fastcc i32 @bma150_set_mode(ptr noundef %1, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then5.if.end9_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end9:                                          ; preds = %if.then5.if.end9_crit_edge, %if.end.if.end9_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call6, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bma150_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #5
  %mode = getelementptr inbounds %struct.bma150_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.not = icmp eq i8 %5, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call fastcc i32 @bma150_set_mode(ptr noundef %1, i8 noundef zeroext 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_setup_polling(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bma150_poll(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @bma150_report_xyz(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_poll_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_min_poll_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_max_poll_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bma150_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @bma150_report_xyz(ptr noundef %dev)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bma150_set_high_g_interrupt(ptr nocapture noundef readonly %bma150, i8 noundef zeroext %enable, i8 noundef zeroext %hyst, i8 noundef zeroext %dur, i8 noundef zeroext %thres) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bma150 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bma150, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv = zext i8 %hyst to i32
  %and.i = and i32 %call.i, 199
  %shl.i = shl nuw nsw i32 %conv, 3
  %and2.i = and i32 %shl.i, 56
  %or.i = or i32 %and.i, %and2.i
  %conv3.i = trunc i32 %or.i to i8
  %irq.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %3) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 17, i8 noundef zeroext %conv3.i) #5
  %4 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.bma150_set_reg_bits.exit_crit_edge, label %if.then4.i.i

if.end.i.i.bma150_set_reg_bits.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bma150_set_reg_bits.exit

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %5) #5
  br label %bma150_set_reg_bits.exit

bma150_set_reg_bits.exit:                         ; preds = %if.then4.i.i, %if.end.i.i.bma150_set_reg_bits.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %bma150_set_reg_bits.exit.cleanup_crit_edge

bma150_set_reg_bits.exit.cleanup_crit_edge:       ; preds = %bma150_set_reg_bits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %bma150_set_reg_bits.exit
  %6 = ptrtoint ptr %bma150 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bma150, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.if.end.i24_crit_edge, label %if.then.i

if.end.if.end.i24_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i24

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %9) #5
  br label %if.end.i24

if.end.i24:                                       ; preds = %if.then.i, %if.end.if.end.i24_crit_edge
  %call.i23 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 15, i8 noundef zeroext %dur) #5
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not.i = icmp eq i32 %11, 0
  br i1 %tobool3.not.i, label %if.end.i24.bma150_write_byte.exit_crit_edge, label %if.then4.i

if.end.i24.bma150_write_byte.exit_crit_edge:      ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %bma150_write_byte.exit

if.then4.i:                                       ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %11) #5
  br label %bma150_write_byte.exit

bma150_write_byte.exit:                           ; preds = %if.then4.i, %if.end.i24.bma150_write_byte.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool3.not = icmp eq i32 %call.i23, 0
  br i1 %tobool3.not, label %if.end5, label %bma150_write_byte.exit.cleanup_crit_edge

bma150_write_byte.exit.cleanup_crit_edge:         ; preds = %bma150_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %bma150_write_byte.exit
  %12 = ptrtoint ptr %bma150 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bma150, align 4
  %irq.i25 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %irq.i25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i26 = icmp eq i32 %15, 0
  br i1 %tobool.not.i26, label %if.end5.if.end.i30_crit_edge, label %if.then.i27

if.end5.if.end.i30_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i30

if.then.i27:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %15) #5
  br label %if.end.i30

if.end.i30:                                       ; preds = %if.then.i27, %if.end5.if.end.i30_crit_edge
  %call.i28 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 14, i8 noundef zeroext %thres) #5
  %16 = ptrtoint ptr %irq.i25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i29 = icmp eq i32 %17, 0
  br i1 %tobool3.not.i29, label %if.end.i30.bma150_write_byte.exit32_crit_edge, label %if.then4.i31

if.end.i30.bma150_write_byte.exit32_crit_edge:    ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %bma150_write_byte.exit32

if.then4.i31:                                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %17) #5
  br label %bma150_write_byte.exit32

bma150_write_byte.exit32:                         ; preds = %if.then4.i31, %if.end.i30.bma150_write_byte.exit32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool8.not = icmp eq i32 %call.i28, 0
  br i1 %tobool8.not, label %if.end10, label %bma150_write_byte.exit32.cleanup_crit_edge

bma150_write_byte.exit32.cleanup_crit_edge:       ; preds = %bma150_write_byte.exit32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %bma150_write_byte.exit32
  %18 = ptrtoint ptr %bma150 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bma150, align 4
  %call.i33 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp.i34 = icmp slt i32 %call.i33, 0
  br i1 %cmp.i34, label %if.end10.cleanup_crit_edge, label %if.end.i42

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i42:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool12.not = icmp eq i8 %enable, 0
  %and.i35 = and i32 %call.i33, 253
  %shl.i36 = select i1 %tobool12.not, i32 0, i32 2
  %or.i38 = or i32 %and.i35, %shl.i36
  %conv3.i39 = trunc i32 %or.i38 to i8
  %irq.i.i40 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %irq.i.i40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq.i.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i41 = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i41, label %if.end.i42.if.end.i.i46_crit_edge, label %if.then.i.i43

if.end.i42.if.end.i.i46_crit_edge:                ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i46

if.then.i.i43:                                    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %21) #5
  br label %if.end.i.i46

if.end.i.i46:                                     ; preds = %if.then.i.i43, %if.end.i42.if.end.i.i46_crit_edge
  %call.i.i44 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 11, i8 noundef zeroext %conv3.i39) #5
  %22 = ptrtoint ptr %irq.i.i40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq.i.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.i.i45 = icmp eq i32 %23, 0
  br i1 %tobool3.not.i.i45, label %if.end.i.i46.cleanup_crit_edge, label %if.then4.i.i47

if.end.i.i46.cleanup_crit_edge:                   ; preds = %if.end.i.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4.i.i47:                                   ; preds = %if.end.i.i46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %23) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i.i47, %if.end.i.i46.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %bma150_write_byte.exit32.cleanup_crit_edge, %bma150_write_byte.exit.cleanup_crit_edge, %bma150_set_reg_bits.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %bma150_set_reg_bits.exit.cleanup_crit_edge ], [ %call.i23, %bma150_write_byte.exit.cleanup_crit_edge ], [ %call.i28, %bma150_write_byte.exit32.cleanup_crit_edge ], [ %call.i33, %if.end10.cleanup_crit_edge ], [ %call.i.i44, %if.end.i.i46.cleanup_crit_edge ], [ %call.i.i44, %if.then4.i.i47 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bma150_set_low_g_interrupt(ptr nocapture noundef readonly %bma150, i8 noundef zeroext %enable, i8 noundef zeroext %hyst, i8 noundef zeroext %dur, i8 noundef zeroext %thres) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bma150 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bma150, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = and i8 %hyst, 7
  %3 = trunc i32 %call.i to i8
  %4 = and i8 %3, -8
  %conv3.i = or i8 %4, %2
  %irq.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %6) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 17, i8 noundef zeroext %conv3.i) #5
  %7 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.bma150_set_reg_bits.exit_crit_edge, label %if.then4.i.i

if.end.i.i.bma150_set_reg_bits.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bma150_set_reg_bits.exit

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %8) #5
  br label %bma150_set_reg_bits.exit

bma150_set_reg_bits.exit:                         ; preds = %if.then4.i.i, %if.end.i.i.bma150_set_reg_bits.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %bma150_set_reg_bits.exit.cleanup_crit_edge

bma150_set_reg_bits.exit.cleanup_crit_edge:       ; preds = %bma150_set_reg_bits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %bma150_set_reg_bits.exit
  %9 = ptrtoint ptr %bma150 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bma150, align 4
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end.if.end.i24_crit_edge, label %if.then.i

if.end.if.end.i24_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i24

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %12) #5
  br label %if.end.i24

if.end.i24:                                       ; preds = %if.then.i, %if.end.if.end.i24_crit_edge
  %call.i23 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 13, i8 noundef zeroext %dur) #5
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not.i = icmp eq i32 %14, 0
  br i1 %tobool3.not.i, label %if.end.i24.bma150_write_byte.exit_crit_edge, label %if.then4.i

if.end.i24.bma150_write_byte.exit_crit_edge:      ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %bma150_write_byte.exit

if.then4.i:                                       ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %14) #5
  br label %bma150_write_byte.exit

bma150_write_byte.exit:                           ; preds = %if.then4.i, %if.end.i24.bma150_write_byte.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool3.not = icmp eq i32 %call.i23, 0
  br i1 %tobool3.not, label %if.end5, label %bma150_write_byte.exit.cleanup_crit_edge

bma150_write_byte.exit.cleanup_crit_edge:         ; preds = %bma150_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %bma150_write_byte.exit
  %15 = ptrtoint ptr %bma150 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bma150, align 4
  %irq.i25 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %irq.i25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i26 = icmp eq i32 %18, 0
  br i1 %tobool.not.i26, label %if.end5.if.end.i30_crit_edge, label %if.then.i27

if.end5.if.end.i30_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i30

if.then.i27:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %18) #5
  br label %if.end.i30

if.end.i30:                                       ; preds = %if.then.i27, %if.end5.if.end.i30_crit_edge
  %call.i28 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 12, i8 noundef zeroext %thres) #5
  %19 = ptrtoint ptr %irq.i25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool3.not.i29 = icmp eq i32 %20, 0
  br i1 %tobool3.not.i29, label %if.end.i30.bma150_write_byte.exit32_crit_edge, label %if.then4.i31

if.end.i30.bma150_write_byte.exit32_crit_edge:    ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %bma150_write_byte.exit32

if.then4.i31:                                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %20) #5
  br label %bma150_write_byte.exit32

bma150_write_byte.exit32:                         ; preds = %if.then4.i31, %if.end.i30.bma150_write_byte.exit32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool8.not = icmp eq i32 %call.i28, 0
  br i1 %tobool8.not, label %if.end10, label %bma150_write_byte.exit32.cleanup_crit_edge

bma150_write_byte.exit32.cleanup_crit_edge:       ; preds = %bma150_write_byte.exit32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %bma150_write_byte.exit32
  %21 = ptrtoint ptr %bma150 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bma150, align 4
  %call.i33 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %22, i8 noundef zeroext 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp.i34 = icmp slt i32 %call.i33, 0
  br i1 %cmp.i34, label %if.end10.cleanup_crit_edge, label %if.end.i41

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i41:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool12 = icmp ne i8 %enable, 0
  %lnot.ext = zext i1 %tobool12 to i32
  %and.i35 = and i32 %call.i33, 254
  %or.i37 = or i32 %and.i35, %lnot.ext
  %conv3.i38 = trunc i32 %or.i37 to i8
  %irq.i.i39 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %irq.i.i39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq.i.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i40 = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i40, label %if.end.i41.if.end.i.i45_crit_edge, label %if.then.i.i42

if.end.i41.if.end.i.i45_crit_edge:                ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i45

if.then.i.i42:                                    ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %24) #5
  br label %if.end.i.i45

if.end.i.i45:                                     ; preds = %if.then.i.i42, %if.end.i41.if.end.i.i45_crit_edge
  %call.i.i43 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 11, i8 noundef zeroext %conv3.i38) #5
  %25 = ptrtoint ptr %irq.i.i39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq.i.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool3.not.i.i44 = icmp eq i32 %26, 0
  br i1 %tobool3.not.i.i44, label %if.end.i.i45.cleanup_crit_edge, label %if.then4.i.i46

if.end.i.i45.cleanup_crit_edge:                   ; preds = %if.end.i.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4.i.i46:                                   ; preds = %if.end.i.i45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %26) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i.i46, %if.end.i.i45.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %bma150_write_byte.exit32.cleanup_crit_edge, %bma150_write_byte.exit.cleanup_crit_edge, %bma150_set_reg_bits.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %bma150_set_reg_bits.exit.cleanup_crit_edge ], [ %call.i23, %bma150_write_byte.exit.cleanup_crit_edge ], [ %call.i28, %bma150_write_byte.exit32.cleanup_crit_edge ], [ %call.i33, %if.end10.cleanup_crit_edge ], [ %call.i.i43, %if.end.i.i45.cleanup_crit_edge ], [ %call.i.i43, %if.then4.i.i46 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bma150_set_mode(ptr nocapture noundef %bma150, i8 noundef zeroext %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bma150 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bma150, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = and i8 %mode, 1
  %3 = trunc i32 %call.i to i8
  %4 = and i8 %3, -2
  %conv3.i = or i8 %4, %2
  %irq.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %6) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 21, i8 noundef zeroext %conv3.i) #5
  %7 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.bma150_set_reg_bits.exit_crit_edge, label %if.then4.i.i

if.end.i.i.bma150_set_reg_bits.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bma150_set_reg_bits.exit

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %8) #5
  br label %bma150_set_reg_bits.exit

bma150_set_reg_bits.exit:                         ; preds = %if.then4.i.i, %if.end.i.i.bma150_set_reg_bits.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %bma150_set_reg_bits.exit.cleanup_crit_edge

bma150_set_reg_bits.exit.cleanup_crit_edge:       ; preds = %bma150_set_reg_bits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %bma150_set_reg_bits.exit
  %9 = ptrtoint ptr %bma150 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bma150, align 4
  %call.i20 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp.i21 = icmp slt i32 %call.i20, 0
  br i1 %cmp.i21, label %if.end.cleanup_crit_edge, label %if.end.i28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i28:                                       ; preds = %if.end
  %11 = trunc i32 %call.i20 to i8
  %12 = and i8 %11, -2
  %conv3.i25 = or i8 %12, %2
  %irq.i.i26 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 6
  %13 = ptrtoint ptr %irq.i.i26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i27 = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i27, label %if.end.i28.if.end.i.i32_crit_edge, label %if.then.i.i29

if.end.i28.if.end.i.i32_crit_edge:                ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i32

if.then.i.i29:                                    ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %14) #5
  br label %if.end.i.i32

if.end.i.i32:                                     ; preds = %if.then.i.i29, %if.end.i28.if.end.i.i32_crit_edge
  %call.i.i30 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 10, i8 noundef zeroext %conv3.i25) #5
  %15 = ptrtoint ptr %irq.i.i26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not.i.i31 = icmp eq i32 %16, 0
  br i1 %tobool3.not.i.i31, label %if.end.i.i32.bma150_set_reg_bits.exit35_crit_edge, label %if.then4.i.i33

if.end.i.i32.bma150_set_reg_bits.exit35_crit_edge: ; preds = %if.end.i.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %bma150_set_reg_bits.exit35

if.then4.i.i33:                                   ; preds = %if.end.i.i32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @enable_irq(i32 noundef %16) #5
  br label %bma150_set_reg_bits.exit35

bma150_set_reg_bits.exit35:                       ; preds = %if.then4.i.i33, %if.end.i.i32.bma150_set_reg_bits.exit35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %tobool4.not = icmp eq i32 %call.i.i30, 0
  br i1 %tobool4.not, label %if.end6, label %bma150_set_reg_bits.exit35.cleanup_crit_edge

bma150_set_reg_bits.exit35.cleanup_crit_edge:     ; preds = %bma150_set_reg_bits.exit35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %bma150_set_reg_bits.exit35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode)
  %cmp = icmp eq i8 %mode, 0
  br i1 %cmp, label %if.then9, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2100, i32 noundef 2) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  %mode11 = getelementptr inbounds %struct.bma150_data, ptr %bma150, i32 0, i32 2
  %17 = ptrtoint ptr %mode11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %mode, ptr %mode11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %bma150_set_reg_bits.exit35.cleanup_crit_edge, %if.end.cleanup_crit_edge, %bma150_set_reg_bits.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call.i.i, %bma150_set_reg_bits.exit.cleanup_crit_edge ], [ %call.i.i30, %bma150_set_reg_bits.exit35.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i20, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bma150_report_xyz(ptr nocapture noundef readonly %bma150) unnamed_addr #2 align 64 {
entry:
  %data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data) #5
  %0 = call ptr @memset(ptr %data, i32 255, i32 6)
  %1 = ptrtoint ptr %bma150 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bma150, align 4
  %call = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %2, i8 noundef zeroext 2, i8 noundef zeroext 6, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call)
  %cmp.not = icmp eq i32 %call, 6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 5
  %4 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 4
  %5 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 3
  %6 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 2
  %7 = getelementptr inbounds [6 x i8], ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 1
  %10 = lshr i8 %9, 6
  %11 = zext i8 %10 to i32
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %7, align 1
  %conv2 = zext i8 %13 to i32
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %6, align 1
  %16 = lshr i8 %15, 6
  %17 = zext i8 %16 to i32
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %5, align 1
  %conv9 = zext i8 %19 to i32
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %4, align 1
  %22 = lshr i8 %21, 6
  %23 = zext i8 %22 to i32
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %3, align 1
  %conv18 = zext i8 %25 to i32
  %26 = shl nuw i32 %conv2, 24
  %27 = shl nuw nsw i32 %11, 22
  %shl.i = or i32 %26, %27
  %28 = shl nuw i32 %conv9, 24
  %29 = shl nuw nsw i32 %17, 22
  %shl.i50 = or i32 %28, %29
  %30 = shl nuw i32 %conv18, 24
  %31 = shl nuw nsw i32 %23, 22
  %shl.i52 = or i32 %30, %31
  %input = getelementptr inbounds %struct.bma150_data, ptr %bma150, i32 0, i32 1
  %32 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input, align 4
  %conv31 = ashr exact i32 %shl.i, 22
  call void @input_event(ptr noundef %33, i32 noundef 3, i32 noundef 0, i32 noundef %conv31) #5
  %34 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %input, align 4
  %conv33 = ashr exact i32 %shl.i50, 22
  call void @input_event(ptr noundef %35, i32 noundef 3, i32 noundef 1, i32 noundef %conv33) #5
  %36 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %input, align 4
  %conv35 = ashr exact i32 %shl.i52, 22
  call void @input_event(ptr noundef %37, i32 noundef 3, i32 noundef 2, i32 noundef %conv35) #5
  %38 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %input, align 4
  call void @input_event(ptr noundef %39, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bma150_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @bma150_set_mode(ptr noundef %1, i8 noundef zeroext 2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bma150_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @bma150_set_mode(ptr noundef %1, i8 noundef zeroext 0)
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_bma150__289_561_bma150_driver_init6, !1, !"__initcall__kmod_bma150__289_561_bma150_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/bma150.c", i32 561, i32 1}
!2 = !{ptr @__exitcall_bma150_driver_exit, !1, !"__exitcall_bma150_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/bma150.c", i32 563, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/bma150.c", i32 564, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/bma150.c", i32 565, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/bma150.c", i32 552, i32 11}
!12 = !{ptr @bma150_driver, !13, !"bma150_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/bma150.c", i32 550, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/bma150.c", i32 429, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bma150_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bma150_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/misc/bma150.c", i32 435, i32 3}
!24 = !{ptr @bma150_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @bma150_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/misc/bma150.c", i32 449, i32 5}
!28 = !{ptr @bma150_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @bma150_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/misc/bma150.c", i32 472, i32 15}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/misc/bma150.c", i32 502, i32 4}
!34 = !{ptr @bma150_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bma150_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @default_cfg, !37, !"default_cfg", i1 false, i1 false}
!37 = !{!"../drivers/input/misc/bma150.c", i32 134, i32 32}
!38 = !{ptr @bma150_pm, !39, !"bma150_pm", i1 false, i1 false}
!39 = !{!"../drivers/input/misc/bma150.c", i32 539, i32 8}
!40 = !{ptr @bma150_id, !41, !"bma150_id", i1 false, i1 false}
!41 = !{!"../drivers/input/misc/bma150.c", i32 541, i32 35}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i8 0, i8 2}
