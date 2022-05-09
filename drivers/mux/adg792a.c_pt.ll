; ModuleID = '/llk/IR_all_yes/drivers/mux/adg792a.c_pt.bc'
source_filename = "../drivers/mux/adg792a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.mux_control_ops = type { ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mux_chip = type { i32, ptr, %struct.device, i32, ptr }
%struct.mux_control = type { %struct.semaphore, ptr, i32, i32, i32, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }

@__initcall__kmod_mux_adg792a__288_149_adg792a_driver_init6 = internal global ptr @adg792a_driver_init, section ".initcall6.init", align 4
@adg792a_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @adg792a_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adg792a_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adg792a_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adg792a_driver_exit = internal global ptr @adg792a_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [71 x i8] c"mux_adg792a.description=Analog Devices ADG792A/G Triple 4:1 mux driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [49 x i8] c"mux_adg792a.author=Peter Rosin <peda@axentia.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"mux_adg792a.file=drivers/mux/mux-adg792a\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"mux_adg792a.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adg792a\00", [24 x i8] zeroinitializer }, align 32
@adg792a_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adg792a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adg792g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@adg792a_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adg792a\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adg792g\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"#mux-control-cells\00", [45 x i8] zeroinitializer }, align 32
@adg792a_ops = internal constant { %struct.mux_control_ops, [28 x i8] } { %struct.mux_control_ops { ptr @adg792a_set }, [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"idle-state\00", [21 x i8] zeroinitializer }, align 32
@adg792a_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 110, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid idle-state %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adg792a_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mux/adg792a.c\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adg792a_probe._entry_ptr = internal global ptr @adg792a_probe._entry, section ".printk_index", align 4
@adg792a_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 120, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"3x single pole quadruple throw muxes registered\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@adg792a_probe._entry_ptr.11 = internal global ptr @adg792a_probe._entry.8, section ".printk_index", align 4
@adg792a_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 122, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"triple pole quadruple throw mux registered\0A\00", [52 x i8] zeroinitializer }, align 32
@adg792a_probe._entry_ptr.14 = internal global ptr @adg792a_probe._entry.12, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 4294967294, i64 4294967295]
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"adg792a_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 141, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 143, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"adg792a_of_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 134, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"adg792a_id\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 127, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 73, i32 38 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"adg792a_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 57, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 89, i32 44 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 110, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 120, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [25 x i8] c"../drivers/mux/adg792a.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 122, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_adg792a_driver_exit, ptr @__initcall__kmod_mux_adg792a__288_149_adg792a_driver_init6, ptr @adg792a_driver_exit, ptr @adg792a_probe._entry, ptr @adg792a_probe._entry.12, ptr @adg792a_probe._entry.8, ptr @adg792a_probe._entry_ptr, ptr @adg792a_probe._entry_ptr.11, ptr @adg792a_probe._entry_ptr.14, ptr @adg792a_driver, ptr @.str, ptr @adg792a_of_match, ptr @adg792a_id, ptr @.str.1, ptr @adg792a_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adg792a_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adg792a_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adg792a_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adg792a_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adg792a_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adg792a_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adg792a_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adg792a_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adg792a_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adg792a_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @adg792a_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adg792a_probe(ptr noundef %i2c) #2 align 64 {
entry:
  %idle_state = alloca [3 x i32], align 4
  %cells = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %idle_state) #5
  %0 = ptrtoint ptr %idle_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %idle_state, align 4, !annotation !50
  %1 = getelementptr inbounds [3 x i32], ptr %idle_state, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !50
  %3 = getelementptr inbounds [3 x i32], ptr %idle_state, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cells) #5
  %5 = ptrtoint ptr %cells to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cells, align 4, !annotation !50
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 3
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %7) #5
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup46_crit_edge

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

if.end:                                           ; preds = %entry
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull %cells, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup46_crit_edge, label %if.end4

if.end.cleanup46_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

if.end4:                                          ; preds = %if.end
  %12 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp5 = icmp ugt i32 %13, 1
  br i1 %cmp5, label %if.end4.cleanup46_crit_edge, label %if.end7

if.end4.cleanup46_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  %cond = select i1 %tobool8.not, i32 1, i32 3
  %call9 = call ptr @devm_mux_chip_alloc(ptr noundef %dev1, i32 noundef %cond, i32 noundef 0) #5
  %cmp.i79 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call9 to i32
  br label %cleanup46

if.end13:                                         ; preds = %if.end7
  %ops = getelementptr inbounds %struct.mux_chip, ptr %call9, i32 0, i32 4
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @adg792a_ops, ptr %ops, align 4
  %call.i80 = call i32 @i2c_smbus_write_byte_data(ptr noundef %i2c, i8 noundef zeroext 95, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %cmp15 = icmp slt i32 %call.i80, 0
  br i1 %cmp15, label %if.end13.cleanup46_crit_edge, label %if.end17

if.end13.cleanup46_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

if.end17:                                         ; preds = %if.end13
  %16 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call9, align 8
  %call18 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull %idle_state, i32 noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end17.if.end23_crit_edge

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %idle_state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %idle_state, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %1, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %3, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end17.if.end23_crit_edge
  %21 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp2581.not = icmp eq i32 %22, 0
  br i1 %cmp2581.not, label %if.end23.for.end_crit_edge, label %for.body.lr.ph

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end23
  %mux26 = getelementptr inbounds %struct.mux_chip, ptr %call9, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %sw.bb29.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sw.bb29.for.body_crit_edge ]
  %23 = ptrtoint ptr %mux26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mux26, align 4
  %states = getelementptr %struct.mux_control, ptr %24, i32 %i.082, i32 3
  %25 = ptrtoint ptr %states to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %states, align 8
  %arrayidx28 = getelementptr [3 x i32], ptr %idle_state, i32 0, i32 %i.082
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx28, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %do.end [
    i32 -2, label %for.body.sw.bb29_crit_edge
    i32 -1, label %for.body.sw.bb29_crit_edge88
    i32 0, label %for.body.sw.bb29_crit_edge89
    i32 1, label %for.body.sw.bb29_crit_edge90
    i32 2, label %for.body.sw.bb29_crit_edge91
    i32 3, label %for.body.sw.bb29_crit_edge92
    i32 4, label %for.body.sw.bb29_crit_edge93
  ]

for.body.sw.bb29_crit_edge93:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb29

for.body.sw.bb29_crit_edge92:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb29

for.body.sw.bb29_crit_edge91:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb29

for.body.sw.bb29_crit_edge90:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb29

for.body.sw.bb29_crit_edge89:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb29

for.body.sw.bb29_crit_edge88:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb29

for.body.sw.bb29_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb29

sw.bb29:                                          ; preds = %for.body.sw.bb29_crit_edge, %for.body.sw.bb29_crit_edge88, %for.body.sw.bb29_crit_edge89, %for.body.sw.bb29_crit_edge90, %for.body.sw.bb29_crit_edge91, %for.body.sw.bb29_crit_edge92, %for.body.sw.bb29_crit_edge93
  %idle_state31 = getelementptr %struct.mux_control, ptr %24, i32 %i.082, i32 4
  %29 = ptrtoint ptr %idle_state31 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %idle_state31, align 4
  %inc = add nuw i32 %i.082, 1
  %30 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call9, align 8
  %cmp25 = icmp ult i32 %inc, %31
  br i1 %cmp25, label %sw.bb29.for.body_crit_edge, label %sw.bb29.for.end_crit_edge

sw.bb29.for.end_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

sw.bb29.for.body_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %27) #8
  br label %cleanup46

for.end:                                          ; preds = %sw.bb29.for.end_crit_edge, %if.end23.for.end_crit_edge
  %call33 = call i32 @devm_mux_chip_register(ptr noundef %dev1, ptr noundef %call9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %for.end.cleanup46_crit_edge, label %if.end36

for.end.cleanup46_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup46

if.end36:                                         ; preds = %for.end
  %32 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool37.not = icmp eq i32 %33, 0
  br i1 %tobool37.not, label %do.end44, label %do.end41

do.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  br label %cleanup46

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  br label %cleanup46

cleanup46:                                        ; preds = %do.end44, %do.end41, %for.end.cleanup46_crit_edge, %do.end, %if.end13.cleanup46_crit_edge, %if.then11, %if.end4.cleanup46_crit_edge, %if.end.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %retval.2 = phi i32 [ %14, %if.then11 ], [ -22, %do.end ], [ -19, %entry.cleanup46_crit_edge ], [ %call.i, %if.end.cleanup46_crit_edge ], [ -22, %if.end4.cleanup46_crit_edge ], [ %call.i80, %if.end13.cleanup46_crit_edge ], [ %call33, %for.end.cleanup46_crit_edge ], [ 0, %do.end44 ], [ 0, %do.end41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cells) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %idle_state) #5
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mux_chip_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mux_chip_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adg792a_set(ptr noundef %mux, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.mux_control, ptr %mux, i32 0, i32 1
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %parent = getelementptr inbounds %struct.mux_chip, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %state)
  %cmp2 = icmp eq i32 %state, -2
  br i1 %cmp2, label %if.then.if.end15_crit_edge, label %if.else

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %6 = trunc i32 %state to i8
  %conv = or i8 %6, -64
  br label %if.end15

if.else4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mux1.i = getelementptr inbounds %struct.mux_chip, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %mux1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mux1.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %mux to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %state)
  %cmp5 = icmp eq i32 %state, -2
  %9 = trunc i32 %sub.ptr.div.i to i8
  %conv9 = or i8 %9, 80
  %add = shl nsw i32 %sub.ptr.div.i, 2
  %shl = add nsw i32 %add, 4
  %or11 = or i32 %shl, %state
  %10 = trunc i32 %or11 to i8
  %conv13 = or i8 %10, -64
  %cmd.0 = select i1 %cmp5, i8 %conv9, i8 %conv13
  br label %if.end15

if.end15:                                         ; preds = %if.else4, %if.else, %if.then.if.end15_crit_edge
  %cmd.1 = phi i8 [ %conv, %if.else ], [ %cmd.0, %if.else4 ], [ 95, %if.then.if.end15_crit_edge ]
  %add.ptr = getelementptr i8, ptr %3, i32 -32
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %cmd.1, i8 noundef zeroext 3) #5
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_mux_adg792a__288_149_adg792a_driver_init6, !1, !"__initcall__kmod_mux_adg792a__288_149_adg792a_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mux/adg792a.c", i32 149, i32 1}
!2 = !{ptr @__exitcall_adg792a_driver_exit, !1, !"__exitcall_adg792a_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/mux/adg792a.c", i32 151, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/mux/adg792a.c", i32 152, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/mux/adg792a.c", i32 153, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mux/adg792a.c", i32 143, i32 12}
!12 = !{ptr @adg792a_driver, !13, !"adg792a_driver", i1 false, i1 false}
!13 = !{!"../drivers/mux/adg792a.c", i32 141, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mux/adg792a.c", i32 73, i32 38}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mux/adg792a.c", i32 89, i32 44}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mux/adg792a.c", i32 110, i32 4}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @adg792a_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @adg792a_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mux/adg792a.c", i32 120, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @adg792a_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @adg792a_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mux/adg792a.c", i32 122, i32 3}
!33 = !{ptr @adg792a_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @adg792a_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @adg792a_ops, !36, !"adg792a_ops", i1 false, i1 false}
!36 = !{!"../drivers/mux/adg792a.c", i32 57, i32 37}
!37 = !{ptr @adg792a_of_match, !38, !"adg792a_of_match", i1 false, i1 false}
!38 = !{!"../drivers/mux/adg792a.c", i32 134, i32 34}
!39 = !{ptr @adg792a_id, !40, !"adg792a_id", i1 false, i1 false}
!40 = !{!"../drivers/mux/adg792a.c", i32 127, i32 35}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
