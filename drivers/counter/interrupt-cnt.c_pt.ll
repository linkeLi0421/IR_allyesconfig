; ModuleID = '/llk/IR_all_yes/drivers/counter/interrupt-cnt.c_pt.bc'
source_filename = "../drivers/counter/interrupt-cnt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.counter_comp = type { i32, ptr, ptr, %union.anon.71, %union.anon.72 }
%union.anon.71 = type { ptr }
%union.anon.72 = type { ptr }
%struct.counter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.interrupt_cnt_priv = type { %struct.atomic_t, ptr, i32, i8, %struct.counter_signal, %struct.counter_synapse, %struct.counter_count }
%struct.counter_signal = type { i32, ptr, ptr, i32 }
%struct.counter_synapse = type { ptr, i32, ptr }
%struct.counter_count = type { i32, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.counter_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.device, %struct.cdev, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.anon.73, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, %struct.mutex }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.anon.73 = type { %union.anon.74, [0 x %struct.counter_event] }
%union.anon.74 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.counter_event = type { i64, i64, %struct.counter_watch, i8 }
%struct.counter_watch = type { %struct.counter_component, i8, i8 }
%struct.counter_component = type { i8, i8, i8, i8 }

@__initcall__kmod_interrupt_cnt__232_236_interrupt_cnt_driver_init6 = internal global ptr @interrupt_cnt_driver_init, section ".initcall6.init", align 4
@interrupt_cnt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @interrupt_cnt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @interrupt_cnt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_interrupt_cnt_driver_exit = internal global ptr @interrupt_cnt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias233 = internal constant [47 x i8] c"interrupt_cnt.alias=platform:interrupt-counter\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [62 x i8] c"interrupt_cnt.author=Oleksij Rempel <o.rempel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [51 x i8] c"interrupt_cnt.description=Interrupt counter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [49 x i8] c"interrupt_cnt.file=drivers/counter/interrupt-cnt\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [29 x i8] c"interrupt_cnt.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"interrupt-cnt\00", [18 x i8] zeroinitializer }, align 32
@interrupt_cnt_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"interrupt-counter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to get GPIO\0A\00", [44 x i8] zeroinitializer }, align 32
@interrupt_cnt_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 170, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"IRQ and GPIO are not found. At least one source should be provided\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"interrupt_cnt_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/counter/interrupt-cnt.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@interrupt_cnt_probe._entry_ptr = internal global ptr @interrupt_cnt_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get IRQ from GPIO\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IRQ %d\00", [25 x i8] zeroinitializer }, align 32
@interrupt_cnt_synapse_actions = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel 0 Count\00", [16 x i8] zeroinitializer }, align 32
@interrupt_cnt_functions = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@interrupt_cnt_ext = internal global { [1 x %struct.counter_comp], [44 x i8] } { [1 x %struct.counter_comp] [%struct.counter_comp { i32 2, ptr @.str.12, ptr null, %union.anon.71 { ptr @interrupt_cnt_enable_read }, %union.anon.72 { ptr @interrupt_cnt_enable_write } }], [44 x i8] zeroinitializer }, align 32
@interrupt_cnt_ops = internal constant { %struct.counter_ops, [60 x i8] } { %struct.counter_ops { ptr @interrupt_cnt_signal_read, ptr @interrupt_cnt_read, ptr @interrupt_cnt_write, ptr @interrupt_cnt_function_read, ptr null, ptr @interrupt_cnt_action_read, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to add counter\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"interrupt_cnt_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 229, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 232, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [23 x i8] c"interrupt_cnt_of_match\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 223, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 163, i32 40 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 167, i32 50 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 170, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 178, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 183, i32 55 }
@___asan_gen_.52 = private unnamed_addr constant [30 x i8] c"interrupt_cnt_synapse_actions\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 70, i32 42 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 195, i32 20 }
@___asan_gen_.58 = private unnamed_addr constant [24 x i8] c"interrupt_cnt_functions\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 107, i32 36 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"interrupt_cnt_ext\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 65, i32 28 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"interrupt_cnt_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 139, i32 33 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 218, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [35 x i8] c"../drivers/counter/interrupt-cnt.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 66, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_interrupt_cnt_driver_exit, ptr @__initcall__kmod_interrupt_cnt__232_236_interrupt_cnt_driver_init6, ptr @interrupt_cnt_driver_exit, ptr @interrupt_cnt_probe._entry, ptr @interrupt_cnt_probe._entry_ptr, ptr @interrupt_cnt_driver, ptr @.str, ptr @interrupt_cnt_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @interrupt_cnt_synapse_actions, ptr @.str.10, ptr @interrupt_cnt_functions, ptr @interrupt_cnt_ext, ptr @interrupt_cnt_ops, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_cnt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_cnt_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_cnt_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_cnt_synapse_actions to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_cnt_functions to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_cnt_ext to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_cnt_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @interrupt_cnt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @interrupt_cnt_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @interrupt_cnt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @interrupt_cnt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interrupt_cnt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_counter_alloc(ptr noundef %dev1, i32 noundef 76) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup76_crit_edge, label %if.end

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @counter_priv(ptr noundef nonnull %call) #6
  %call3 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call2, i32 0, i32 2
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call3, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call3)
  %cmp = icmp eq i32 %call3, -6
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %irq, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp8 = icmp slt i32 %call3, 0
  br i1 %cmp8, label %if.then9, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call3, ptr noundef nonnull @.str.1) #6
  br label %cleanup76

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.then5
  %call14 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef null, i32 noundef 1) #6
  %gpio = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call14, ptr %gpio, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call14 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %3, ptr noundef nonnull @.str.2) #6
  br label %cleanup76

if.end21:                                         ; preds = %if.end13
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool23.not = icmp eq i32 %5, 0
  br i1 %tobool23.not, label %land.lhs.true, label %if.end21.if.end39_crit_edge

if.end21.if.end39_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end21
  %tobool25.not = icmp eq ptr %call14, null
  br i1 %tobool25.not, label %do.end, label %if.then30

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #9
  br label %cleanup76

if.then30:                                        ; preds = %land.lhs.true
  %call33 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %call14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call33, ptr noundef nonnull @.str.8) #6
  br label %cleanup76

cleanup:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call33, ptr %irq, align 4
  br label %if.end39

if.end39:                                         ; preds = %cleanup, %if.end21.if.end39_crit_edge
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call41 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.9, i32 noundef %8) #6
  %name = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call2, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call41, ptr %name, align 4
  %tobool44.not = icmp eq ptr %call41, null
  br i1 %tobool44.not, label %if.end39.cleanup76_crit_edge, label %if.end46

if.end39.cleanup76_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

if.end46:                                         ; preds = %if.end39
  %signals = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call2, i32 0, i32 4
  %signals48 = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %signals48 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %signals, ptr %signals48, align 4
  %num_signals = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 4
  %11 = ptrtoint ptr %num_signals to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %num_signals, align 8
  %synapses = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call2, i32 0, i32 5
  %12 = ptrtoint ptr %synapses to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @interrupt_cnt_synapse_actions, ptr %synapses, align 4
  %num_actions = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call2, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %num_actions to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %num_actions, align 4
  %signal = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call2, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %signals, ptr %signal, align 4
  %cnts = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call2, i32 0, i32 6
  %name52 = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call2, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %name52 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.10, ptr %name52, align 4
  %functions_list = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call2, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %functions_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @interrupt_cnt_functions, ptr %functions_list, align 4
  %num_functions = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call2, i32 0, i32 6, i32 3
  %17 = ptrtoint ptr %num_functions to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %num_functions, align 4
  %synapses57 = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call2, i32 0, i32 6, i32 4
  %18 = ptrtoint ptr %synapses57 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %synapses, ptr %synapses57, align 4
  %num_synapses = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call2, i32 0, i32 6, i32 5
  %19 = ptrtoint ptr %num_synapses to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %num_synapses, align 4
  %ext = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call2, i32 0, i32 6, i32 6
  %20 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @interrupt_cnt_ext, ptr %ext, align 4
  %num_ext = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call2, i32 0, i32 6, i32 7
  %21 = ptrtoint ptr %num_ext to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %num_ext, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end46.dev_name.exit_crit_edge

if.end46.dev_name.exit_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end46.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %25, %if.end.i ], [ %23, %if.end46.dev_name.exit_crit_edge ]
  %26 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i, ptr %call, align 8
  %parent = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 1
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev1, ptr %parent, align 4
  %ops = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 2
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @interrupt_cnt_ops, ptr %ops, align 8
  %counts = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 5
  %29 = ptrtoint ptr %counts to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %cnts, ptr %counts, align 4
  %num_counts = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 6
  %30 = ptrtoint ptr %num_counts to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %num_counts, align 8
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  tail call void @irq_modify_status(i32 noundef %32, i32 noundef 0, i32 noundef 4096) #6
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  %35 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i140 = icmp eq ptr %36, null
  br i1 %tobool.not.i140, label %if.end.i141, label %dev_name.exit.dev_name.exit143_crit_edge

dev_name.exit.dev_name.exit143_crit_edge:         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit143

if.end.i141:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit143

dev_name.exit143:                                 ; preds = %if.end.i141, %dev_name.exit.dev_name.exit143_crit_edge
  %retval.0.i142 = phi ptr [ %38, %if.end.i141 ], [ %36, %dev_name.exit.dev_name.exit143_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %34, ptr noundef nonnull @interrupt_cnt_isr, ptr noundef null, i32 noundef 65537, ptr noundef %retval.0.i142, ptr noundef %call2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool68.not = icmp eq i32 %call.i, 0
  br i1 %tobool68.not, label %if.end70, label %dev_name.exit143.cleanup76_crit_edge

dev_name.exit143.cleanup76_crit_edge:             ; preds = %dev_name.exit143
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

if.end70:                                         ; preds = %dev_name.exit143
  %call71 = tail call i32 @devm_counter_add(ptr noundef %dev1, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then73, label %if.end70.cleanup76_crit_edge

if.end70.cleanup76_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %call74 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call71, ptr noundef nonnull @.str.11) #6
  br label %cleanup76

cleanup76:                                        ; preds = %if.then73, %if.end70.cleanup76_crit_edge, %dev_name.exit143.cleanup76_crit_edge, %if.end39.cleanup76_crit_edge, %cleanup.thread, %do.end, %if.then17, %if.then9, %entry.cleanup76_crit_edge
  %retval.1 = phi i32 [ %call20, %if.then17 ], [ %call74, %if.then73 ], [ -19, %do.end ], [ %call11, %if.then9 ], [ -12, %entry.cleanup76_crit_edge ], [ -12, %if.end39.cleanup76_crit_edge ], [ %call.i, %dev_name.exit143.cleanup76_crit_edge ], [ 0, %if.end70.cleanup76_crit_edge ], [ %call36, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_counter_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @counter_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interrupt_cnt_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dev_id, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %dev_id, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dev_id, ptr %dev_id, i32 1, ptr elementtype(i32) %dev_id) #6, !srcloc !57
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_counter_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interrupt_cnt_enable_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #6
  %enabled = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !58
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %enable, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interrupt_cnt_enable_write(ptr noundef %counter, ptr nocapture noundef readnone %count, i8 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #6
  %enabled = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !58
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %enable)
  %cmp = icmp eq i8 %1, %enable
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool3.not = icmp eq i8 %enable, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %enabled, align 4
  %irq = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %4) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq6 = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %irq6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq6, align 4
  tail call void @disable_irq(i32 noundef %6) #6
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interrupt_cnt_signal_read(ptr noundef %counter, ptr nocapture noundef readnone %signal, ptr nocapture noundef writeonly %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #6
  %gpio = getelementptr inbounds %struct.interrupt_cnt_priv, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @gpiod_get_value(ptr noundef nonnull %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool5.not = icmp ne i32 %call2, 0
  %cond = zext i1 %tobool5.not to i32
  %2 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %level, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interrupt_cnt_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %call, i32 noundef 4) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %call, align 4
  %conv = sext i32 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interrupt_cnt_write(ptr noundef %counter, ptr nocapture noundef readnone %count, i64 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #6
  %conv = trunc i64 %val to i32
  %conv1 = sext i32 %conv to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv1, i64 %val)
  %cmp.not = icmp eq i64 %conv1, %val
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call, i32 noundef 4) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %conv, ptr %call, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @interrupt_cnt_function_read(ptr nocapture noundef readnone %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %function) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %function, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @interrupt_cnt_action_read(ptr nocapture noundef readnone %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef readnone %synapse, ptr nocapture noundef writeonly %action) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %action, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_interrupt_cnt__232_236_interrupt_cnt_driver_init6, !1, !"__initcall__kmod_interrupt_cnt__232_236_interrupt_cnt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/counter/interrupt-cnt.c", i32 236, i32 1}
!2 = !{ptr @__exitcall_interrupt_cnt_driver_exit, !1, !"__exitcall_interrupt_cnt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias233, !4, !"__UNIQUE_ID_alias233", i1 false, i1 false}
!4 = !{!"../drivers/counter/interrupt-cnt.c", i32 238, i32 1}
!5 = !{ptr @__UNIQUE_ID_author234, !6, !"__UNIQUE_ID_author234", i1 false, i1 false}
!6 = !{!"../drivers/counter/interrupt-cnt.c", i32 239, i32 1}
!7 = !{ptr @__UNIQUE_ID_description235, !8, !"__UNIQUE_ID_description235", i1 false, i1 false}
!8 = !{!"../drivers/counter/interrupt-cnt.c", i32 240, i32 1}
!9 = !{ptr @__UNIQUE_ID_file236, !10, !"__UNIQUE_ID_file236", i1 false, i1 false}
!10 = !{!"../drivers/counter/interrupt-cnt.c", i32 241, i32 1}
!11 = !{ptr @__UNIQUE_ID_license237, !10, !"__UNIQUE_ID_license237", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/counter/interrupt-cnt.c", i32 232, i32 11}
!14 = !{ptr @interrupt_cnt_driver, !15, !"interrupt_cnt_driver", i1 false, i1 false}
!15 = !{!"../drivers/counter/interrupt-cnt.c", i32 229, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/counter/interrupt-cnt.c", i32 163, i32 40}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/counter/interrupt-cnt.c", i32 167, i32 50}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/counter/interrupt-cnt.c", i32 170, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @interrupt_cnt_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @interrupt_cnt_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/counter/interrupt-cnt.c", i32 178, i32 35}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/counter/interrupt-cnt.c", i32 183, i32 55}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/counter/interrupt-cnt.c", i32 195, i32 20}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/counter/interrupt-cnt.c", i32 218, i32 34}
!36 = !{ptr @interrupt_cnt_synapse_actions, !37, !"interrupt_cnt_synapse_actions", i1 false, i1 false}
!37 = !{!"../drivers/counter/interrupt-cnt.c", i32 70, i32 42}
!38 = !{ptr @interrupt_cnt_functions, !39, !"interrupt_cnt_functions", i1 false, i1 false}
!39 = !{!"../drivers/counter/interrupt-cnt.c", i32 107, i32 36}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/counter/interrupt-cnt.c", i32 66, i32 2}
!42 = !{ptr @interrupt_cnt_ext, !43, !"interrupt_cnt_ext", i1 false, i1 false}
!43 = !{!"../drivers/counter/interrupt-cnt.c", i32 65, i32 28}
!44 = !{ptr @interrupt_cnt_ops, !45, !"interrupt_cnt_ops", i1 false, i1 false}
!45 = !{!"../drivers/counter/interrupt-cnt.c", i32 139, i32 33}
!46 = !{ptr @interrupt_cnt_of_match, !47, !"interrupt_cnt_of_match", i1 false, i1 false}
!47 = !{!"../drivers/counter/interrupt-cnt.c", i32 223, i32 34}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2148522767, i64 2148522793, i64 2148522822, i64 2148522856, i64 2148522887, i64 2148522910}
!58 = !{i8 0, i8 2}
