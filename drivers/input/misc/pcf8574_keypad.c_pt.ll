; ModuleID = '/llk/IR_all_yes/drivers/input/misc/pcf8574_keypad.c_pt.bc'
source_filename = "../drivers/input/misc/pcf8574_keypad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.kp_data = type { [17 x i16], ptr, ptr, [64 x i8], [32 x i8], i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_pcf8574_keypad__288_219_pcf8574_kp_driver_init6 = internal global ptr @pcf8574_kp_driver_init, section ".initcall6.init", align 4
@pcf8574_kp_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pcf8574_kp_probe, ptr @pcf8574_kp_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcf8574_kp_pm_ops, ptr null, ptr null }, ptr @pcf8574_kp_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pcf8574_kp_driver_exit = internal global ptr @pcf8574_kp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [40 x i8] c"pcf8574_keypad.author=Michael Hennerich\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [80 x i8] c"pcf8574_keypad.description=Keypad input driver for 16 keys connected to PCF8574\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [54 x i8] c"pcf8574_keypad.file=drivers/input/misc/pcf8574_keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"pcf8574_keypad.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcf8574_keypad\00", [17 x i8] zeroinitializer }, align 32
@pcf8574_kp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pcf8574_kp_suspend, ptr @pcf8574_kp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pcf8574_kp_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pcf8574_keypad\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pcf8574_kp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 90, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"probe: write fail\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcf8574_kp_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/misc/pcf8574_keypad.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcf8574_kp_probe._entry_ptr = internal global ptr @pcf8574_kp_probe._entry, section ".printk_index", align 4
@pcf8574_kp_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 100, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't allocate input device\0A\00", [35 x i8] zeroinitializer }, align 32
@pcf8574_kp_probe._entry_ptr.8 = internal global ptr @pcf8574_kp_probe._entry.6, section ".printk_index", align 4
@pcf8574_kp_btncode = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\00\1C+\0B\1B.\0A\09\080\07\06\05\1E\04\03\02", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kp_data/input0\00", [17 x i8] zeroinitializer }, align 32
@pcf8574_kp_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IRQ %d is not free\0A\00", [44 x i8] zeroinitializer }, align 32
@pcf8574_kp_probe._entry_ptr.12 = internal global ptr @pcf8574_kp_probe._entry.10, section ".printk_index", align 4
@pcf8574_kp_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 143, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"input_register_device() failed\0A\00", [32 x i8] zeroinitializer }, align 32
@pcf8574_kp_probe._entry_ptr.15 = internal global ptr @pcf8574_kp_probe._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"pcf8574_kp_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 207, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 209, i32 12 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"pcf8574_kp_pm_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 191, i32 32 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"pcf8574_kp_id\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 201, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 90, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 100, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"pcf8574_kp_btncode\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 17, i32 28 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 122, i32 20 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 137, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [39 x i8] c"../drivers/input/misc/pcf8574_keypad.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 143, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pcf8574_kp_driver_exit, ptr @__initcall__kmod_pcf8574_keypad__288_219_pcf8574_kp_driver_init6, ptr @pcf8574_kp_driver_exit, ptr @pcf8574_kp_probe._entry, ptr @pcf8574_kp_probe._entry.10, ptr @pcf8574_kp_probe._entry.13, ptr @pcf8574_kp_probe._entry.6, ptr @pcf8574_kp_probe._entry_ptr, ptr @pcf8574_kp_probe._entry_ptr.12, ptr @pcf8574_kp_probe._entry_ptr.15, ptr @pcf8574_kp_probe._entry_ptr.8, ptr @pcf8574_kp_driver, ptr @.str, ptr @pcf8574_kp_pm_ops, ptr @pcf8574_kp_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @pcf8574_kp_btncode, ptr @.str.9, ptr @.str.11, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8574_kp_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8574_kp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8574_kp_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8574_kp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8574_kp_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8574_kp_btncode to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8574_kp_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8574_kp_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8574_kp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pcf8574_kp_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcf8574_kp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @pcf8574_kp_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8574_kp_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext -16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 144) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @input_allocate_device() #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.7) #8
  br label %fail_allocate

if.end11:                                         ; preds = %if.end3
  %idev12 = getelementptr inbounds %struct.kp_data, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %idev12 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %idev12, align 4
  %client13 = getelementptr inbounds %struct.kp_data, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %client13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %client13, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 5
  %3 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %evbit, align 8
  %keycode = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 17
  %4 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %keycode, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 16
  %5 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %keycodesize, align 8
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 15
  %6 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 17, ptr %keycodemax, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11
  %i.0116 = phi i32 [ 0, %if.end11 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx16 = getelementptr [17 x i16], ptr %call7.i.i, i32 0, i32 %i.0116
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %8)
  %cmp17 = icmp ult i16 %8, 768
  br i1 %cmp17, label %if.then19, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx20 = getelementptr [17 x i8], ptr @pcf8574_kp_btncode, i32 0, i32 %i.0116
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %10 to i16
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv21, ptr %arrayidx16, align 2
  %conv26 = zext i8 %10 to i32
  %rem.i = and i32 %conv26, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv26, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %13
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0116, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %14 = ptrtoint ptr %keybit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %keybit, align 4
  %and.i = and i32 %15, -2
  store i32 %and.i, ptr %keybit, align 4
  %name = getelementptr inbounds %struct.kp_data, ptr %call7.i.i, i32 0, i32 3
  %16 = call ptr @memcpy(ptr %name, ptr @.str, i32 15)
  %phys = getelementptr inbounds %struct.kp_data, ptr %call7.i.i, i32 0, i32 4
  %17 = call ptr @memcpy(ptr %phys, ptr @.str.9, i32 15)
  %18 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %name, ptr %call4, align 8
  %phys40 = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 1
  %19 = ptrtoint ptr %phys40 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %phys, ptr %phys40, align 4
  %id41 = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 3
  %20 = ptrtoint ptr %id41 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 24, ptr %id41, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 256, ptr %version, align 2
  %call45 = tail call fastcc signext i16 @read_state(ptr noundef nonnull %call7.i.i)
  %conv46 = trunc i16 %call45 to i8
  %laststate = getelementptr inbounds %struct.kp_data, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %laststate to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv46, ptr %laststate, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  %call47 = tail call i32 @request_threaded_irq(i32 noundef %26, ptr noundef null, ptr noundef nonnull @pcf8574_kp_irq_handler, i32 noundef 8200, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end55, label %do.end52

do.end52:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev53 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.11, i32 noundef %28) #8
  br label %fail_free_device

if.end55:                                         ; preds = %for.end
  %call56 = tail call i32 @input_register_device(ptr noundef nonnull %call4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end63, label %do.end61

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %dev62 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev62, ptr noundef nonnull @.str.14) #8
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %call65 = tail call ptr @free_irq(i32 noundef %30, ptr noundef nonnull %call7.i.i) #5
  br label %fail_free_device

if.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

fail_free_device:                                 ; preds = %do.end61, %do.end52
  %ret.0 = phi i32 [ %call47, %do.end52 ], [ %call56, %do.end61 ]
  tail call void @input_free_device(ptr noundef nonnull %call4) #5
  br label %fail_allocate

fail_allocate:                                    ; preds = %fail_free_device, %do.end9
  %ret.1 = phi i32 [ %ret.0, %fail_free_device ], [ -12, %do.end9 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %fail_allocate, %if.end63, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %ret.1, %fail_allocate ], [ 0, %if.end63 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8574_kp_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #5
  %idev = getelementptr inbounds %struct.kp_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idev, align 4
  tail call void @input_unregister_device(ptr noundef %5) #5
  tail call void @kfree(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc signext i16 @read_state(ptr nocapture noundef readonly %lp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.kp_data, ptr %lp, i32 0, i32 2
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %call = tail call i32 @i2c_smbus_write_byte(ptr noundef %1, i8 noundef zeroext -16) #5
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %call2 = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #5
  %4 = trunc i32 %call2 to i8
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %call4 = tail call i32 @i2c_smbus_write_byte(ptr noundef %6, i8 noundef zeroext 15) #5
  %7 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client, align 4
  %call6 = tail call i32 @i2c_smbus_read_byte(ptr noundef %8) #5
  %9 = and i32 %call6, 15
  %conv9 = xor i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %4)
  %cmp.not36 = icmp ugt i8 %4, -17
  br i1 %cmp.not36, label %entry.for.cond15.preheader_crit_edge, label %for.body.preheader

entry.for.cond15.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond15.preheader

for.body.preheader:                               ; preds = %entry
  %10 = xor i8 %4, -1
  %conv = lshr i8 %10, 4
  br label %for.body

for.cond15.preheader:                             ; preds = %for.body.for.cond15.preheader_crit_edge, %entry.for.cond15.preheader_crit_edge
  %a.0.lcssa = phi i8 [ 0, %entry.for.cond15.preheader_crit_edge ], [ %inc, %for.body.for.cond15.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9)
  %cmp17.not39 = icmp eq i32 %conv9, 0
  br i1 %cmp17.not39, label %for.cond15.preheader.for.end25_crit_edge, label %for.cond15.preheader.for.body19_crit_edge

for.cond15.preheader.for.body19_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body19

for.cond15.preheader.for.end25_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end25

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %a.038 = phi i8 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %x.037 = phi i8 [ %11, %for.body.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %11 = lshr i8 %x.037, 1
  %inc = add nuw nsw i8 %a.038, 1
  %cmp.not = icmp ult i8 %x.037, 2
  br i1 %cmp.not, label %for.body.for.cond15.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.cond15.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond15.preheader

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.cond15.preheader.for.body19_crit_edge
  %conv1641 = phi i32 [ %conv16, %for.body19.for.body19_crit_edge ], [ %conv9, %for.cond15.preheader.for.body19_crit_edge ]
  %b.040 = phi i8 [ %inc24, %for.body19.for.body19_crit_edge ], [ 0, %for.cond15.preheader.for.body19_crit_edge ]
  %12 = lshr i32 %conv1641, 1
  %inc24 = add i8 %b.040, 1
  %conv16 = and i32 %12, 255
  %cmp17.not = icmp eq i32 %conv16, 0
  br i1 %cmp17.not, label %for.body19.for.end25_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body19

for.body19.for.end25_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end25

for.end25:                                        ; preds = %for.body19.for.end25_crit_edge, %for.cond15.preheader.for.end25_crit_edge
  %b.0.lcssa = phi i8 [ 0, %for.cond15.preheader.for.end25_crit_edge ], [ %inc24, %for.body19.for.end25_crit_edge ]
  %conv26 = zext i8 %a.0.lcssa to i16
  %sub = shl nuw nsw i16 %conv26, 2
  %mul = add nsw i16 %sub, -4
  %conv27 = zext i8 %b.0.lcssa to i16
  %add = add nsw i16 %mul, %conv27
  ret i16 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8574_kp_irq_handler(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc signext i16 @read_state(ptr noundef %dev_id)
  %laststate = getelementptr inbounds %struct.kp_data, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %laststate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %laststate, align 4
  %conv1 = zext i8 %1 to i32
  %conv.mask = and i16 %call, 255
  %conv2 = zext i16 %conv.mask to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1, i32 %conv2)
  %cmp.not = icmp eq i32 %conv1, %conv2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i16 %call to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %conv.mask)
  %cmp5 = icmp ult i16 %conv.mask, 17
  %conv2.conv1 = select i1 %cmp5, i32 %conv2, i32 %conv1
  %cond.in.in = getelementptr [17 x i16], ptr %dev_id, i32 0, i32 %conv2.conv1
  %2 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %2)
  %cond.in28 = load i16, ptr %cond.in.in, align 2
  %idev = getelementptr inbounds %struct.kp_data, ptr %dev_id, i32 0, i32 1
  %3 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %idev, align 4
  %conv14 = zext i16 %cond.in28 to i32
  %lnot.ext.i = zext i1 %cmp5 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef %conv14, i32 noundef %lnot.ext.i) #5
  %5 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %idev, align 4
  tail call void @input_event(ptr noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %7 = ptrtoint ptr %laststate to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %laststate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8574_kp_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8574_kp_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_pcf8574_keypad__288_219_pcf8574_kp_driver_init6, !1, !"__initcall__kmod_pcf8574_keypad__288_219_pcf8574_kp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/pcf8574_keypad.c", i32 219, i32 1}
!2 = !{ptr @__exitcall_pcf8574_kp_driver_exit, !1, !"__exitcall_pcf8574_kp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/pcf8574_keypad.c", i32 221, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/pcf8574_keypad.c", i32 222, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/pcf8574_keypad.c", i32 223, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/pcf8574_keypad.c", i32 209, i32 12}
!12 = !{ptr @pcf8574_kp_driver, !13, !"pcf8574_kp_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/pcf8574_keypad.c", i32 207, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/pcf8574_keypad.c", i32 90, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pcf8574_kp_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pcf8574_kp_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/misc/pcf8574_keypad.c", i32 100, i32 3}
!24 = !{ptr @pcf8574_kp_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @pcf8574_kp_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/misc/pcf8574_keypad.c", i32 122, i32 20}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/misc/pcf8574_keypad.c", i32 137, i32 3}
!30 = !{ptr @pcf8574_kp_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @pcf8574_kp_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/misc/pcf8574_keypad.c", i32 143, i32 3}
!34 = !{ptr @pcf8574_kp_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @pcf8574_kp_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @pcf8574_kp_btncode, !37, !"pcf8574_kp_btncode", i1 false, i1 false}
!37 = !{!"../drivers/input/misc/pcf8574_keypad.c", i32 17, i32 28}
!38 = !{ptr @pcf8574_kp_pm_ops, !39, !"pcf8574_kp_pm_ops", i1 false, i1 false}
!39 = !{!"../drivers/input/misc/pcf8574_keypad.c", i32 191, i32 32}
!40 = !{ptr @pcf8574_kp_id, !41, !"pcf8574_kp_id", i1 false, i1 false}
!41 = !{!"../drivers/input/misc/pcf8574_keypad.c", i32 201, i32 35}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
