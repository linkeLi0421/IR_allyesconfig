; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/adp5520-keys.c_pt.bc'
source_filename = "../drivers/input/keyboard/adp5520-keys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.adp5520_keys_platform_data = type { i32, i32, ptr, i16, i8 }
%struct.adp5520_keys = type { ptr, %struct.notifier_block, ptr, [16 x i16] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_adp5520_keys__223_188_adp5520_keys_driver_init6 = internal global ptr @adp5520_keys_driver_init, section ".initcall6.init", align 4
@adp5520_keys_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @adp5520_keys_probe, ptr @adp5520_keys_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_adp5520_keys_driver_exit = internal global ptr @adp5520_keys_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [71 x i8] c"adp5520_keys.author=Michael Hennerich <hennerich@blackfin.uclinux.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [45 x i8] c"adp5520_keys.description=Keys ADP5520 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [54 x i8] c"adp5520_keys.file=drivers/input/keyboard/adp5520-keys\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [25 x i8] c"adp5520_keys.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias228 = internal constant [41 x i8] c"adp5520_keys.alias=platform:adp5520-keys\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adp5520-keys\00", [19 x i8] zeroinitializer }, align 32
@adp5520_keys_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 80, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"only ADP5520 supports Keypad\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adp5520_keys_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/input/keyboard/adp5520-keys.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adp5520_keys_probe._entry_ptr = internal global ptr @adp5520_keys_probe._entry, section ".printk_index", align 4
@adp5520_keys_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 85, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@adp5520_keys_probe._entry_ptr.8 = internal global ptr @adp5520_keys_probe._entry.6, section ".printk_index", align 4
@adp5520_keys_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 94, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to alloc memory\0A\00", [40 x i8] zeroinitializer }, align 32
@adp5520_keys_probe._entry_ptr.11 = internal global ptr @adp5520_keys_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adp5520-keys/input0\00", [44 x i8] zeroinitializer }, align 32
@adp5520_keys_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 133, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to register input device\0A\00", [63 x i8] zeroinitializer }, align 32
@adp5520_keys_probe._entry_ptr.15 = internal global ptr @adp5520_keys_probe._entry.13, section ".printk_index", align 4
@adp5520_keys_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 155, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed to write\0A\00", [47 x i8] zeroinitializer }, align 32
@adp5520_keys_probe._entry_ptr.18 = internal global ptr @adp5520_keys_probe._entry.16, section ".printk_index", align 4
@adp5520_keys_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 163, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register notifier\0A\00", [35 x i8] zeroinitializer }, align 32
@adp5520_keys_probe._entry_ptr.21 = internal global ptr @adp5520_keys_probe._entry.19, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"adp5520_keys_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 181, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 183, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 80, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 85, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 94, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 106, i32 16 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 133, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 155, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [41 x i8] c"../drivers/input/keyboard/adp5520-keys.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 163, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_adp5520_keys_driver_exit, ptr @__initcall__kmod_adp5520_keys__223_188_adp5520_keys_driver_init6, ptr @adp5520_keys_driver_exit, ptr @adp5520_keys_probe._entry, ptr @adp5520_keys_probe._entry.13, ptr @adp5520_keys_probe._entry.16, ptr @adp5520_keys_probe._entry.19, ptr @adp5520_keys_probe._entry.6, ptr @adp5520_keys_probe._entry.9, ptr @adp5520_keys_probe._entry_ptr, ptr @adp5520_keys_probe._entry_ptr.11, ptr @adp5520_keys_probe._entry_ptr.15, ptr @adp5520_keys_probe._entry_ptr.18, ptr @adp5520_keys_probe._entry_ptr.21, ptr @adp5520_keys_probe._entry_ptr.8, ptr @adp5520_keys_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_keys_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_keys_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_keys_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_keys_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_keys_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_keys_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5520_keys_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_keys_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @adp5520_keys_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adp5520_keys_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @adp5520_keys_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_keys_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5520, i32 %3)
  %cmp.not = icmp eq i32 %3, 5520
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %land.lhs.true

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end8
  %cols_en_mask = getelementptr inbounds %struct.adp5520_keys_platform_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %cols_en_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cols_en_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.end12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #5
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %call23 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %master = getelementptr inbounds %struct.adp5520_keys, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %master, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call23, ptr %call.i, align 4
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %14 = ptrtoint ptr %call23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %call23, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 1
  %15 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.12, ptr %phys, align 4
  %parent32 = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 40, i32 1
  %16 = ptrtoint ptr %parent32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %parent32, align 8
  %id33 = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 3
  %17 = ptrtoint ptr %id33 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 24, ptr %id33, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 21792, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %version, align 2
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 16
  %21 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %keycodesize, align 8
  %keymapsize = getelementptr inbounds %struct.adp5520_keys_platform_data, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %keymapsize to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %keymapsize, align 4
  %conv = zext i16 %23 to i32
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 15
  %24 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %keycodemax, align 4
  %keycode = getelementptr inbounds %struct.adp5520_keys, ptr %call.i, i32 0, i32 3
  %keycode37 = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 17
  %25 = ptrtoint ptr %keycode37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %keycode, ptr %keycode37, align 4
  %keymap = getelementptr inbounds %struct.adp5520_keys_platform_data, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %keymap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %keymap, align 4
  %28 = load i16, ptr %keymapsize, align 4
  %conv41 = zext i16 %28 to i32
  %mul = shl nuw nsw i32 %conv41, 1
  %29 = call ptr @memcpy(ptr %keycode, ptr %27, i32 %mul)
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 5
  %30 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %evbit, align 4
  %or.i = or i32 %31, 2
  store i32 %or.i, ptr %evbit, align 4
  %repeat = getelementptr inbounds %struct.adp5520_keys_platform_data, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %repeat to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %repeat, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool44.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool44.not, label %if.end26.if.end48_crit_edge, label %if.then45

if.end26.if.end48_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then45:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %or.i184 = or i32 %31, 1048578
  %33 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i184, ptr %evbit, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end26.if.end48_crit_edge
  %34 = ptrtoint ptr %keycodemax to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %keycodemax, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp50186.not = icmp eq i32 %35, 0
  br i1 %cmp50186.not, label %if.end48.for.end_crit_edge, label %for.body.lr.ph

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end48
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0187 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adp5520_keys, ptr %call.i, i32 0, i32 3, i32 %i.0187
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx, align 2
  %conv53 = zext i16 %37 to i32
  %rem.i = and i32 %conv53, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv53, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i, align 4
  %or.i185 = or i32 %shl.i, %39
  store i32 %or.i185, ptr %add.ptr.i, align 4
  %inc = add nuw i32 %i.0187, 1
  %40 = ptrtoint ptr %keycodemax to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %keycodemax, align 4
  %cmp50 = icmp ult i32 %inc, %41
  br i1 %cmp50, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end48.for.end_crit_edge
  %keybit55 = getelementptr inbounds %struct.input_dev, ptr %call23, i32 0, i32 6
  %42 = ptrtoint ptr %keybit55 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %keybit55, align 4
  %and.i = and i32 %43, -2
  store i32 %and.i, ptr %keybit55, align 4
  %call57 = tail call i32 @input_register_device(ptr noundef nonnull %call23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end64:                                         ; preds = %for.end
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 4
  %46 = ptrtoint ptr %cols_en_mask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cols_en_mask, align 4
  %or = or i32 %47, %45
  %conv67 = trunc i32 %or to i8
  %48 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %master, align 4
  %call69 = tail call i32 @adp5520_set_bits(ptr noundef %49, i32 noundef 23, i8 noundef zeroext %conv67) #5
  %50 = lshr i8 %conv67, 3
  %51 = and i8 %50, 16
  %52 = shl i8 %conv67, 2
  %53 = and i8 %52, 32
  %54 = or i8 %53, %51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool85.not = icmp eq i8 %54, 0
  br i1 %tobool85.not, label %if.end64.if.end90_crit_edge, label %if.then86

if.end64.if.end90_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.then86:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %master, align 4
  %call88 = tail call i32 @adp5520_set_bits(ptr noundef %56, i32 noundef 17, i8 noundef zeroext %54) #5
  %or89 = or i32 %call88, %call69
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %if.end64.if.end90_crit_edge
  %ret.0 = phi i32 [ %or89, %if.then86 ], [ %call69, %if.end64.if.end90_crit_edge ]
  %57 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %master, align 4
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %1, align 4
  %conv93 = trunc i32 %60 to i8
  %call94 = tail call i32 @adp5520_set_bits(ptr noundef %58, i32 noundef 31, i8 noundef zeroext %conv93) #5
  %or95 = or i32 %call94, %ret.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or95)
  %tobool96.not = icmp eq i32 %or95, 0
  br i1 %tobool96.not, label %if.end102, label %do.end100

do.end100:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end102:                                        ; preds = %if.end90
  %notifier = getelementptr inbounds %struct.adp5520_keys, ptr %call.i, i32 0, i32 1
  %61 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @adp5520_keys_notifier, ptr %notifier, align 4
  %62 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %master, align 4
  %call105 = tail call i32 @adp5520_register_notifier(ptr noundef %63, ptr noundef %notifier, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end112, label %do.end110

do.end110:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #8
  br label %cleanup

if.end112:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %64 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %do.end110, %do.end100, %do.end62, %if.end21.cleanup_crit_edge, %do.end19, %land.lhs.true.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call57, %do.end62 ], [ -5, %do.end100 ], [ %call105, %do.end110 ], [ 0, %if.end112 ], [ -12, %do.end19 ], [ -22, %do.end6 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -12, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_keys_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %master = getelementptr inbounds %struct.adp5520_keys, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %notifier = getelementptr inbounds %struct.adp5520_keys, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @adp5520_unregister_notifier(ptr noundef %3, ptr noundef %notifier, i32 noundef 3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adp5520_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5520_keys_notifier(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  %reg_val_lo = alloca i8, align 1
  %reg_val_hi = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val_lo) #5
  %0 = ptrtoint ptr %reg_val_lo to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reg_val_lo, align 1, !annotation !55
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_val_hi) #5
  %1 = ptrtoint ptr %reg_val_hi to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %reg_val_hi, align 1, !annotation !55
  %add.ptr = getelementptr i8, ptr %nb, i32 -4
  %and = and i32 %event, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %master = getelementptr i8, ptr %nb, i32 12
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %call = call i32 @adp5520_read(ptr noundef %3, i32 noundef 32, ptr noundef nonnull %reg_val_lo) #5
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %call2 = call i32 @adp5520_read(ptr noundef %5, i32 noundef 33, ptr noundef nonnull %reg_val_hi) #5
  %6 = ptrtoint ptr %reg_val_hi to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_val_hi, align 1
  %conv = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %8 = ptrtoint ptr %reg_val_lo to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_val_lo, align 1
  %conv3 = zext i8 %9 to i32
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  %call6 = call i32 @adp5520_read(ptr noundef %11, i32 noundef 32, ptr noundef nonnull %reg_val_lo) #5
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  %call8 = call i32 @adp5520_read(ptr noundef %13, i32 noundef 33, ptr noundef nonnull %reg_val_hi) #5
  %14 = ptrtoint ptr %reg_val_hi to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_val_hi, align 1
  %conv9 = zext i8 %15 to i32
  %shl10 = shl nuw nsw i32 %conv9, 8
  %16 = ptrtoint ptr %reg_val_lo to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg_val_lo, align 1
  %conv11 = zext i8 %17 to i32
  %or12 = or i32 %shl, %conv3
  %or = or i32 %or12, %conv11
  %or14 = or i32 %or, %shl10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %i.08.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %i.08.i
  %and.i = and i32 %shl.i, %or14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %arrayidx.i = getelementptr %struct.adp5520_keys, ptr %add.ptr, i32 0, i32 3, i32 %i.08.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i, align 2
  %conv1.i = zext i16 %21 to i32
  call void @input_event(ptr noundef %19, i32 noundef 1, i32 noundef %conv1.i, i32 noundef 1) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %adp5520_keys_report_event.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

adp5520_keys_report_event.exit:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  call void @input_event(ptr noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %adp5520_keys_report_event.exit, %entry.if.end_crit_edge
  %and16 = and i32 %event, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end.if.end39_crit_edge, label %if.then18

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then18:                                        ; preds = %if.end
  %master19 = getelementptr i8, ptr %nb, i32 12
  %24 = ptrtoint ptr %master19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %master19, align 4
  %call20 = call i32 @adp5520_read(ptr noundef %25, i32 noundef 34, ptr noundef nonnull %reg_val_lo) #5
  %26 = ptrtoint ptr %master19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master19, align 4
  %call22 = call i32 @adp5520_read(ptr noundef %27, i32 noundef 35, ptr noundef nonnull %reg_val_hi) #5
  %28 = ptrtoint ptr %reg_val_hi to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reg_val_hi, align 1
  %conv23 = zext i8 %29 to i32
  %shl24 = shl nuw nsw i32 %conv23, 8
  %30 = ptrtoint ptr %reg_val_lo to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %reg_val_lo, align 1
  %conv25 = zext i8 %31 to i32
  %32 = ptrtoint ptr %master19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %master19, align 4
  %call29 = call i32 @adp5520_read(ptr noundef %33, i32 noundef 34, ptr noundef nonnull %reg_val_lo) #5
  %34 = ptrtoint ptr %master19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %master19, align 4
  %call31 = call i32 @adp5520_read(ptr noundef %35, i32 noundef 35, ptr noundef nonnull %reg_val_hi) #5
  %36 = ptrtoint ptr %reg_val_hi to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reg_val_hi, align 1
  %conv32 = zext i8 %37 to i32
  %shl33 = shl nuw nsw i32 %conv32, 8
  %38 = ptrtoint ptr %reg_val_lo to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %reg_val_lo, align 1
  %conv34 = zext i8 %39 to i32
  %or35 = or i32 %shl24, %conv25
  %or26 = or i32 %or35, %conv34
  %or37 = or i32 %or26, %shl33
  br label %for.body.i58

for.body.i58:                                     ; preds = %for.inc.i64.for.body.i58_crit_edge, %if.then18
  %i.08.i54 = phi i32 [ 0, %if.then18 ], [ %inc.i62, %for.inc.i64.for.body.i58_crit_edge ]
  %shl.i55 = shl nuw nsw i32 1, %i.08.i54
  %and.i56 = and i32 %shl.i55, %or37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool.not.i57 = icmp eq i32 %and.i56, 0
  br i1 %tobool.not.i57, label %for.body.i58.for.inc.i64_crit_edge, label %if.then.i61

for.body.i58.for.inc.i64_crit_edge:               ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i64

if.then.i61:                                      ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 4
  %arrayidx.i59 = getelementptr %struct.adp5520_keys, ptr %add.ptr, i32 0, i32 3, i32 %i.08.i54
  %42 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.i59, align 2
  %conv1.i60 = zext i16 %43 to i32
  call void @input_event(ptr noundef %41, i32 noundef 1, i32 noundef %conv1.i60, i32 noundef 0) #5
  br label %for.inc.i64

for.inc.i64:                                      ; preds = %if.then.i61, %for.body.i58.for.inc.i64_crit_edge
  %inc.i62 = add nuw nsw i32 %i.08.i54, 1
  %exitcond.not.i63 = icmp eq i32 %inc.i62, 16
  br i1 %exitcond.not.i63, label %adp5520_keys_report_event.exit65, label %for.inc.i64.for.body.i58_crit_edge

for.inc.i64.for.body.i58_crit_edge:               ; preds = %for.inc.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i58

adp5520_keys_report_event.exit65:                 ; preds = %for.inc.i64
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 4
  call void @input_event(ptr noundef %45, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %if.end39

if.end39:                                         ; preds = %adp5520_keys_report_event.exit65, %if.end.if.end39_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val_hi) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_val_lo) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adp5520_register_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adp5520_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adp5520_unregister_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_adp5520_keys__223_188_adp5520_keys_driver_init6, !1, !"__initcall__kmod_adp5520_keys__223_188_adp5520_keys_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/adp5520-keys.c", i32 188, i32 1}
!2 = !{ptr @__exitcall_adp5520_keys_driver_exit, !1, !"__exitcall_adp5520_keys_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/adp5520-keys.c", i32 190, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/adp5520-keys.c", i32 191, i32 1}
!7 = !{ptr @__UNIQUE_ID_file226, !8, !"__UNIQUE_ID_file226", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/adp5520-keys.c", i32 192, i32 1}
!9 = !{ptr @__UNIQUE_ID_license227, !8, !"__UNIQUE_ID_license227", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias228, !11, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/adp5520-keys.c", i32 193, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/adp5520-keys.c", i32 183, i32 11}
!14 = !{ptr @adp5520_keys_driver, !15, !"adp5520_keys_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/adp5520-keys.c", i32 181, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/adp5520-keys.c", i32 80, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @adp5520_keys_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @adp5520_keys_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/adp5520-keys.c", i32 85, i32 3}
!26 = !{ptr @adp5520_keys_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @adp5520_keys_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/keyboard/adp5520-keys.c", i32 94, i32 3}
!30 = !{ptr @adp5520_keys_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @adp5520_keys_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/keyboard/adp5520-keys.c", i32 106, i32 16}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/adp5520-keys.c", i32 133, i32 3}
!36 = !{ptr @adp5520_keys_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @adp5520_keys_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/keyboard/adp5520-keys.c", i32 155, i32 3}
!40 = !{ptr @adp5520_keys_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @adp5520_keys_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/keyboard/adp5520-keys.c", i32 163, i32 3}
!44 = !{ptr @adp5520_keys_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @adp5520_keys_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"auto-init"}
