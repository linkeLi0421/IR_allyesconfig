; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/lm8333.c_pt.bc'
source_filename = "../drivers/input/keyboard/lm8333.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.lm8333_platform_data = type { ptr, i32, i32 }
%struct.lm8333 = type { ptr, ptr, [128 x i16] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_lm8333__288_228_lm8333_driver_init6 = internal global ptr @lm8333_driver_init, section ".initcall6.init", align 4
@lm8333_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lm8333_probe, ptr @lm8333_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm8333_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm8333_driver_exit = internal global ptr @lm8333_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [51 x i8] c"lm8333.author=Wolfram Sang <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [42 x i8] c"lm8333.description=LM8333 keyboard driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [42 x i8] c"lm8333.file=drivers/input/keyboard/lm8333\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"lm8333.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lm8333\00", [25 x i8] zeroinitializer }, align 32
@lm8333_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm8333\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lm8333_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 142, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Active time not big enough!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lm8333_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/input/keyboard/lm8333.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm8333_probe._entry_ptr = internal global ptr @lm8333_probe._entry, section ".printk_index", align 4
@lm8333_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 172, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to set debounce time\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lm8333_probe._entry_ptr.9 = internal global ptr @lm8333_probe._entry.6, section ".printk_index", align 4
@lm8333_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 179, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to set active time\0A\00", [37 x i8] zeroinitializer }, align 32
@lm8333_probe._entry_ptr.12 = internal global ptr @lm8333_probe._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lm8333_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 119, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Got error %02x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lm8333_irq_thread\00", [46 x i8] zeroinitializer }, align 32
@lm8333_irq_thread._entry_ptr = internal global ptr @lm8333_irq_thread._entry, section ".printk_index", align 4
@lm8333_key_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 87, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error %d while reading FIFO\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lm8333_key_handler\00", [45 x i8] zeroinitializer }, align 32
@lm8333_key_handler._entry_ptr = internal global ptr @lm8333_key_handler._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"lm8333_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 220, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 222, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [10 x i8] c"lm8333_id\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 214, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 142, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 172, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 179, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 119, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [35 x i8] c"../drivers/input/keyboard/lm8333.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 86, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_lm8333_driver_exit, ptr @__initcall__kmod_lm8333__288_228_lm8333_driver_init6, ptr @lm8333_driver_exit, ptr @lm8333_irq_thread._entry, ptr @lm8333_irq_thread._entry_ptr, ptr @lm8333_key_handler._entry, ptr @lm8333_key_handler._entry_ptr, ptr @lm8333_probe._entry, ptr @lm8333_probe._entry.10, ptr @lm8333_probe._entry.6, ptr @lm8333_probe._entry_ptr, ptr @lm8333_probe._entry_ptr.12, ptr @lm8333_probe._entry_ptr.9, ptr @lm8333_driver, ptr @.str, ptr @lm8333_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8333_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8333_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8333_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8333_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8333_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8333_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm8333_key_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lm8333_read8(ptr nocapture noundef readonly %lm8333, i8 noundef zeroext %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lm8333 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lm8333, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body.1, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.1:                                        ; preds = %entry
  %2 = ptrtoint ptr %lm8333 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lm8333, align 4
  %call.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp.1 = icmp slt i32 %call.1, 0
  br i1 %cmp.1, label %do.body.2, label %do.body.1.do.end_crit_edge

do.body.1.do.end_crit_edge:                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.2:                                        ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %lm8333 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lm8333, align 4
  %call.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %cmd) #6
  br label %do.end

do.end:                                           ; preds = %do.body.2, %do.body.1.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call.1, %do.body.1.do.end_crit_edge ], [ %call.2, %do.body.2 ]
  ret i32 %call.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lm8333_write8(ptr nocapture noundef readonly %lm8333, i8 noundef zeroext %cmd, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lm8333 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lm8333, align 4
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %cmd, i8 noundef zeroext %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body.1, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.1:                                        ; preds = %entry
  %2 = ptrtoint ptr %lm8333 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lm8333, align 4
  %call.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %cmd, i8 noundef zeroext %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp.1 = icmp slt i32 %call.1, 0
  br i1 %cmp.1, label %do.body.2, label %do.body.1.do.end_crit_edge

do.body.1.do.end_crit_edge:                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.2:                                        ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %lm8333 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lm8333, align 4
  %call.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %cmd, i8 noundef zeroext %val) #6
  br label %do.end

do.end:                                           ; preds = %do.body.2, %do.body.1.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call.1, %do.body.1.do.end_crit_edge ], [ %call.2, %do.body.2 ]
  ret i32 %call.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lm8333_read_block(ptr nocapture noundef readonly %lm8333, i8 noundef zeroext %cmd, i8 noundef zeroext %len, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lm8333 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lm8333, align 4
  %call = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %1, i8 noundef zeroext %cmd, i8 noundef zeroext %len, ptr noundef %buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body.1, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.1:                                        ; preds = %entry
  %2 = ptrtoint ptr %lm8333 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lm8333, align 4
  %call.1 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %3, i8 noundef zeroext %cmd, i8 noundef zeroext %len, ptr noundef %buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp.1 = icmp slt i32 %call.1, 0
  br i1 %cmp.1, label %do.body.2, label %do.body.1.do.end_crit_edge

do.body.1.do.end_crit_edge:                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.2:                                        ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %lm8333 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lm8333, align 4
  %call.2 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %5, i8 noundef zeroext %cmd, i8 noundef zeroext %len, ptr noundef %buf) #6
  br label %do.end

do.end:                                           ; preds = %do.body.2, %do.body.1.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call.1, %do.body.1.do.end_crit_edge ], [ %call.2, %do.body.2 ]
  ret i32 %call.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm8333_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm8333_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm8333_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @lm8333_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm8333_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %active_time1 = getelementptr inbounds %struct.lm8333_platform_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %active_time1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active_time1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  %.op = sdiv i32 %3, 3
  %div = select i1 %tobool2.not, i32 166, i32 %.op
  %debounce_time = getelementptr inbounds %struct.lm8333_platform_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %debounce_time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debounce_time, align 4
  %div3 = udiv i32 %5, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div3)
  %cmp.not = icmp ugt i32 %div, %div3
  br i1 %cmp.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 264) #10
  %call8 = tail call ptr @input_allocate_device() #6
  %tobool9.not = icmp eq ptr %call7.i.i, null
  %tobool10.not = icmp eq ptr %call8, null
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %if.end6.free_mem_crit_edge, label %if.end12

if.end6.free_mem_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_mem

if.end12:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %call7.i.i, align 8
  %input14 = getelementptr inbounds %struct.lm8333, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %input14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %input14, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %9 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %name, ptr %call8, align 8
  %parent = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 40, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 8
  %id18 = getelementptr inbounds %struct.input_dev, ptr %call8, i32 0, i32 3
  %11 = ptrtoint ptr %id18 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 24, ptr %id18, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call8, i32 noundef 4, i32 noundef 4) #6
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %keycodes = getelementptr inbounds %struct.lm8333, ptr %call7.i.i, i32 0, i32 2
  %call20 = tail call i32 @matrix_keypad_build_keymap(ptr noundef %13, ptr noundef null, i32 noundef 8, i32 noundef 16, ptr noundef %keycodes, ptr noundef nonnull %call8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end12.free_mem_crit_edge

if.end12.free_mem_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_mem

if.end23:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %debounce_time to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debounce_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool25.not = icmp eq i32 %15, 0
  br i1 %tobool25.not, label %if.end23.if.end37_crit_edge, label %if.then26

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then26:                                        ; preds = %if.end23
  %div28 = udiv i32 %15, 3
  %conv = trunc i32 %div28 to i8
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i, align 8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 34, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i.1, label %if.then26.lm8333_write8.exit_crit_edge

if.then26.lm8333_write8.exit_crit_edge:           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm8333_write8.exit

do.body.i.1:                                      ; preds = %if.then26
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7.i.i, align 8
  %call.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 34, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp.i.1, label %do.body.i.2, label %do.body.i.1.lm8333_write8.exit_crit_edge

do.body.i.1.lm8333_write8.exit_crit_edge:         ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm8333_write8.exit

do.body.i.2:                                      ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 8
  %call.i.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 34, i8 noundef zeroext %conv) #6
  br label %lm8333_write8.exit

lm8333_write8.exit:                               ; preds = %do.body.i.2, %do.body.i.1.lm8333_write8.exit_crit_edge, %if.then26.lm8333_write8.exit_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %if.then26.lm8333_write8.exit_crit_edge ], [ %call.i.1, %do.body.i.1.lm8333_write8.exit_crit_edge ], [ %call.i.2, %do.body.i.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa)
  %tobool30.not = icmp eq i32 %call.i.lcssa, 0
  br i1 %tobool30.not, label %lm8333_write8.exit.if.end37_crit_edge, label %do.end34

lm8333_write8.exit.if.end37_crit_edge:            ; preds = %lm8333_write8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end34:                                         ; preds = %lm8333_write8.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %lm8333_write8.exit.if.end37_crit_edge, %if.end23.if.end37_crit_edge
  %22 = ptrtoint ptr %active_time1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %active_time1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool39.not = icmp eq i32 %23, 0
  br i1 %tobool39.not, label %if.end37.if.end52_crit_edge, label %if.then40

if.end37.if.end52_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then40:                                        ; preds = %if.end37
  %div42 = udiv i32 %23, 3
  %conv43 = trunc i32 %div42 to i8
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i.i, align 8
  %call.i107 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext -28, i8 noundef zeroext %conv43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %cmp.i108 = icmp slt i32 %call.i107, 0
  br i1 %cmp.i108, label %do.body.i112.1, label %if.then40.lm8333_write8.exit113_crit_edge

if.then40.lm8333_write8.exit113_crit_edge:        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm8333_write8.exit113

do.body.i112.1:                                   ; preds = %if.then40
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call7.i.i, align 8
  %call.i107.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext -28, i8 noundef zeroext %conv43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107.1)
  %cmp.i108.1 = icmp slt i32 %call.i107.1, 0
  br i1 %cmp.i108.1, label %do.body.i112.2, label %do.body.i112.1.lm8333_write8.exit113_crit_edge

do.body.i112.1.lm8333_write8.exit113_crit_edge:   ; preds = %do.body.i112.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm8333_write8.exit113

do.body.i112.2:                                   ; preds = %do.body.i112.1
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call7.i.i, align 8
  %call.i107.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext -28, i8 noundef zeroext %conv43) #6
  br label %lm8333_write8.exit113

lm8333_write8.exit113:                            ; preds = %do.body.i112.2, %do.body.i112.1.lm8333_write8.exit113_crit_edge, %if.then40.lm8333_write8.exit113_crit_edge
  %call.i107.lcssa = phi i32 [ %call.i107, %if.then40.lm8333_write8.exit113_crit_edge ], [ %call.i107.1, %do.body.i112.1.lm8333_write8.exit113_crit_edge ], [ %call.i107.2, %do.body.i112.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107.lcssa)
  %tobool45.not = icmp eq i32 %call.i107.lcssa, 0
  br i1 %tobool45.not, label %lm8333_write8.exit113.if.end52_crit_edge, label %do.end49

lm8333_write8.exit113.if.end52_crit_edge:         ; preds = %lm8333_write8.exit113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end49:                                         ; preds = %lm8333_write8.exit113
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %if.end52

if.end52:                                         ; preds = %do.end49, %lm8333_write8.exit113.if.end52_crit_edge, %if.end37.if.end52_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  %call53 = tail call i32 @request_threaded_irq(i32 noundef %31, ptr noundef null, ptr noundef nonnull @lm8333_irq_thread, i32 noundef 8194, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.free_mem_crit_edge

if.end52.free_mem_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_mem

if.end56:                                         ; preds = %if.end52
  %call57 = tail call i32 @input_register_device(ptr noundef nonnull %call8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %free_irq

if.end60:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

free_irq:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  %call62 = tail call ptr @free_irq(i32 noundef %34, ptr noundef nonnull %call7.i.i) #6
  br label %free_mem

free_mem:                                         ; preds = %free_irq, %if.end52.free_mem_crit_edge, %if.end12.free_mem_crit_edge, %if.end6.free_mem_crit_edge
  %err.0 = phi i32 [ %call20, %if.end12.free_mem_crit_edge ], [ %call53, %if.end52.free_mem_crit_edge ], [ %call57, %free_irq ], [ -12, %if.end6.free_mem_crit_edge ]
  tail call void @input_free_device(ptr noundef %call8) #6
  tail call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %free_mem, %if.end60, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.0, %free_mem ], [ 0, %if.end60 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm8333_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #6
  %input = getelementptr inbounds %struct.lm8333, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %5) #6
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm8333_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %keys.i = alloca [16 x i8], align 1
  %dummy = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext -48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i.1, label %entry.lm8333_read8.exit_crit_edge

entry.lm8333_read8.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm8333_read8.exit

do.body.i.1:                                      ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp.i.1, label %do.body.i.2, label %do.body.i.1.lm8333_read8.exit_crit_edge

do.body.i.1.lm8333_read8.exit_crit_edge:          ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm8333_read8.exit

do.body.i.2:                                      ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext -48) #6
  br label %lm8333_read8.exit

lm8333_read8.exit:                                ; preds = %do.body.i.2, %do.body.i.1.lm8333_read8.exit_crit_edge, %entry.lm8333_read8.exit_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.lm8333_read8.exit_crit_edge ], [ %call.i.1, %do.body.i.1.lm8333_read8.exit_crit_edge ], [ %call.i.2, %do.body.i.2 ]
  %conv = trunc i32 %call.i.lcssa to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  br i1 %tobool.not, label %lm8333_read8.exit.cleanup_crit_edge, label %if.end

lm8333_read8.exit.cleanup_crit_edge:              ; preds = %lm8333_read8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lm8333_read8.exit
  %and = and i32 %call.i.lcssa, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end13_crit_edge, label %do.body.i33

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.body.i33:                                      ; preds = %if.end
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call.i28 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext -16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %cmp.i29 = icmp slt i32 %call.i28, 0
  br i1 %cmp.i29, label %do.body.i33.1, label %do.body.i33.lm8333_read8.exit34_crit_edge

do.body.i33.lm8333_read8.exit34_crit_edge:        ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm8333_read8.exit34

do.body.i33.1:                                    ; preds = %do.body.i33
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %call.i28.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext -16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.1)
  %cmp.i29.1 = icmp slt i32 %call.i28.1, 0
  br i1 %cmp.i29.1, label %do.body.i33.2, label %do.body.i33.1.lm8333_read8.exit34_crit_edge

do.body.i33.1.lm8333_read8.exit34_crit_edge:      ; preds = %do.body.i33.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm8333_read8.exit34

do.body.i33.2:                                    ; preds = %do.body.i33.1
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %call.i28.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext -16) #6
  br label %lm8333_read8.exit34

lm8333_read8.exit34:                              ; preds = %do.body.i33.2, %do.body.i33.1.lm8333_read8.exit34_crit_edge, %do.body.i33.lm8333_read8.exit34_crit_edge
  %call.i28.lcssa = phi i32 [ %call.i28, %do.body.i33.lm8333_read8.exit34_crit_edge ], [ %call.i28.1, %do.body.i33.1.lm8333_read8.exit34_crit_edge ], [ %call.i28.2, %do.body.i33.2 ]
  %conv6 = and i32 %call.i28.lcssa, 255
  %and7 = and i32 %call.i28.lcssa, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %lm8333_read8.exit34.do.end_crit_edge, label %if.then9

lm8333_read8.exit34.do.end_crit_edge:             ; preds = %lm8333_read8.exit34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then9:                                         ; preds = %lm8333_read8.exit34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dummy) #6
  %12 = call ptr @memset(ptr %dummy, i32 255, i32 16)
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %call.i36 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %14, i8 noundef zeroext 32, i8 noundef zeroext 16, ptr noundef nonnull %dummy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %cmp.i37 = icmp slt i32 %call.i36, 0
  br i1 %cmp.i37, label %do.body.i41.1, label %if.then9.lm8333_read_block.exit_crit_edge

if.then9.lm8333_read_block.exit_crit_edge:        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm8333_read_block.exit

do.body.i41.1:                                    ; preds = %if.then9
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %call.i36.1 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %16, i8 noundef zeroext 32, i8 noundef zeroext 16, ptr noundef nonnull %dummy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.1)
  %cmp.i37.1 = icmp slt i32 %call.i36.1, 0
  br i1 %cmp.i37.1, label %do.body.i41.2, label %do.body.i41.1.lm8333_read_block.exit_crit_edge

do.body.i41.1.lm8333_read_block.exit_crit_edge:   ; preds = %do.body.i41.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm8333_read_block.exit

do.body.i41.2:                                    ; preds = %do.body.i41.1
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %call.i36.2 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %18, i8 noundef zeroext 32, i8 noundef zeroext 16, ptr noundef nonnull %dummy) #6
  br label %lm8333_read_block.exit

lm8333_read_block.exit:                           ; preds = %do.body.i41.2, %do.body.i41.1.lm8333_read_block.exit_crit_edge, %if.then9.lm8333_read_block.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dummy) #6
  br label %do.end

do.end:                                           ; preds = %lm8333_read_block.exit, %lm8333_read8.exit34.do.end_crit_edge
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %conv6) #9
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end.if.end13_crit_edge
  %and15 = and i32 %call.i.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.then17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %if.end13
  %input1.i = getelementptr inbounds %struct.lm8333, ptr %data, i32 0, i32 1
  %21 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %input1.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys.i) #6
  %23 = call ptr @memset(ptr %keys.i, i32 255, i32 16)
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %call.i.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %25, i8 noundef zeroext 32, i8 noundef zeroext 16, ptr noundef nonnull %keys.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i.1, label %if.then17.lm8333_read_block.exit.i_crit_edge

if.then17.lm8333_read_block.exit.i_crit_edge:     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm8333_read_block.exit.i

do.body.i.i.1:                                    ; preds = %if.then17
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %call.i.i.1 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %27, i8 noundef zeroext 32, i8 noundef zeroext 16, ptr noundef nonnull %keys.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp.i.i.1 = icmp slt i32 %call.i.i.1, 0
  br i1 %cmp.i.i.1, label %do.body.i.i.2, label %do.body.i.i.1.lm8333_read_block.exit.i_crit_edge

do.body.i.i.1.lm8333_read_block.exit.i_crit_edge: ; preds = %do.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %lm8333_read_block.exit.i

do.body.i.i.2:                                    ; preds = %do.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %call.i.i.2 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %29, i8 noundef zeroext 32, i8 noundef zeroext 16, ptr noundef nonnull %keys.i) #6
  br label %lm8333_read_block.exit.i

lm8333_read_block.exit.i:                         ; preds = %do.body.i.i.2, %do.body.i.i.1.lm8333_read_block.exit.i_crit_edge, %if.then17.lm8333_read_block.exit.i_crit_edge
  %call.i.i.lcssa = phi i32 [ %call.i.i, %if.then17.lm8333_read_block.exit.i_crit_edge ], [ %call.i.i.1, %do.body.i.i.1.lm8333_read_block.exit.i_crit_edge ], [ %call.i.i.2, %do.body.i.i.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i.i.lcssa)
  %cmp.not.i = icmp eq i32 %call.i.i.lcssa, 16
  br i1 %cmp.not.i, label %lm8333_read_block.exit.i.land.rhs.i_crit_edge, label %do.end.i

lm8333_read_block.exit.i.land.rhs.i_crit_edge:    ; preds = %lm8333_read_block.exit.i
  br label %land.rhs.i

do.end.i:                                         ; preds = %lm8333_read_block.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef %call.i.i.lcssa) #9
  br label %lm8333_key_handler.exit

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %lm8333_read_block.exit.i.land.rhs.i_crit_edge
  %i.030.i = phi i32 [ %inc.i42, %for.body.i.land.rhs.i_crit_edge ], [ 0, %lm8333_read_block.exit.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x i8], ptr %keys.i, i32 0, i32 %i.030.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %land.rhs.i.for.end.i_crit_edge, label %for.body.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %land.rhs.i
  %34 = and i8 %33, 127
  %conv10.i = zext i8 %34 to i32
  call void @input_event(ptr noundef %22, i32 noundef 4, i32 noundef 4, i32 noundef %conv10.i) #6
  %arrayidx11.i = getelementptr %struct.lm8333, ptr %data, i32 0, i32 2, i32 %conv10.i
  %35 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx11.i, align 2
  %conv12.i = zext i16 %36 to i32
  %.lobit.i = lshr i8 %33, 7
  %37 = zext i8 %.lobit.i to i32
  call void @input_event(ptr noundef %22, i32 noundef 1, i32 noundef %conv12.i, i32 noundef %37) #6
  %inc.i42 = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i42, 16
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge
  call void @input_event(ptr noundef %22, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %lm8333_key_handler.exit

lm8333_key_handler.exit:                          ; preds = %for.end.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys.i) #6
  br label %cleanup

cleanup:                                          ; preds = %lm8333_key_handler.exit, %if.end13.cleanup_crit_edge, %lm8333_read8.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lm8333_read8.exit.cleanup_crit_edge ], [ 1, %lm8333_key_handler.exit ], [ 1, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_lm8333__288_228_lm8333_driver_init6, !1, !"__initcall__kmod_lm8333__288_228_lm8333_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/lm8333.c", i32 228, i32 1}
!2 = !{ptr @__exitcall_lm8333_driver_exit, !1, !"__exitcall_lm8333_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/lm8333.c", i32 230, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/lm8333.c", i32 231, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/lm8333.c", i32 232, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/lm8333.c", i32 222, i32 12}
!12 = !{ptr @lm8333_driver, !13, !"lm8333_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/lm8333.c", i32 220, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/lm8333.c", i32 142, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lm8333_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @lm8333_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/lm8333.c", i32 172, i32 4}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @lm8333_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @lm8333_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/keyboard/lm8333.c", i32 179, i32 4}
!29 = !{ptr @lm8333_probe._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @lm8333_probe._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/keyboard/lm8333.c", i32 119, i32 3}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @lm8333_irq_thread._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @lm8333_irq_thread._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/keyboard/lm8333.c", i32 86, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @lm8333_key_handler._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @lm8333_key_handler._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @lm8333_id, !42, !"lm8333_id", i1 false, i1 false}
!42 = !{!"../drivers/input/keyboard/lm8333.c", i32 214, i32 35}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
