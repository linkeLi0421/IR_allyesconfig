; ModuleID = '/llk/IR_all_yes/drivers/iio/position/iqs624-pos.c_pt.bc'
source_filename = "../drivers/iio/position/iqs624-pos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.iqs624_pos_private = type { ptr, ptr, %struct.notifier_block, %struct.mutex, i8, i16 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.iqs62x_core = type { ptr, ptr, ptr, %struct.blocking_notifier_head, %struct.list_head, %struct.completion, %struct.completion, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iqs62x_dev_desc = type { ptr, ptr, i32, i8, i8, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.iqs62x_event_data = type { i16, i8, i8, i8 }

@__initcall__kmod_iqs624_pos__170_280_iqs624_pos_platform_driver_init6 = internal global ptr @iqs624_pos_platform_driver_init, section ".initcall6.init", align 4
@iqs624_pos_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @iqs624_pos_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_iqs624_pos_platform_driver_exit = internal global ptr @iqs624_pos_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [50 x i8] c"iqs624_pos.author=Jeff LaBundy <jeff@labundy.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [66 x i8] c"iqs624_pos.description=Azoteq IQS624/625 Angular Position Sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [48 x i8] c"iqs624_pos.file=drivers/iio/position/iqs624-pos\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [23 x i8] c"iqs624_pos.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [37 x i8] c"iqs624_pos.alias=platform:iqs624-pos\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iqs624-pos\00", [21 x i8] zeroinitializer }, align 32
@iqs624_pos_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 12, i32 0, i32 0, i32 0, i32 0, %struct.anon.43 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @iqs624_pos_events, i32 1, ptr null, ptr null, ptr null, i8 0 }], [40 x i8] zeroinitializer }, align 32
@iqs624_pos_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @iqs624_pos_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iqs624_pos_read_event_config, ptr @iqs624_pos_write_event_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@iqs624_pos_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&iqs624_pos->lock\00", [46 x i8] zeroinitializer }, align 32
@iqs624_pos_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 261, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register notifier: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iqs624_pos_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/iio/position/iqs624-pos.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iqs624_pos_probe._entry_ptr = internal global ptr @iqs624_pos_probe._entry, section ".printk_index", align 4
@iqs624_pos_events = internal constant { [1 x %struct.iio_event_spec], [40 x i8] } { [1 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 5, i32 3, i32 1, i32 0, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@iqs624_pos_notifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 76, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to re-initialize device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iqs624_pos_notifier\00", [44 x i8] zeroinitializer }, align 32
@iqs624_pos_notifier._entry_ptr = internal global ptr @iqs624_pos_notifier._entry, section ".printk_index", align 4
@iqs624_pos_notifier_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 109, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to unregister notifier: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iqs624_pos_notifier_unregister\00", [33 x i8] zeroinitializer }, align 32
@iqs624_pos_notifier_unregister._entry_ptr = internal global ptr @iqs624_pos_notifier_unregister._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.11 = private unnamed_addr constant [27 x i8] c"iqs624_pos_platform_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 274, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 276, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"iqs624_pos_channels\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 224, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"iqs624_pos_info\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 210, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 255, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 261, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"iqs624_pos_events\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 216, i32 36 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 75, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [37 x i8] c"../drivers/iio/position/iqs624-pos.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 108, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_iqs624_pos_platform_driver_exit, ptr @__initcall__kmod_iqs624_pos__170_280_iqs624_pos_platform_driver_init6, ptr @iqs624_pos_notifier._entry, ptr @iqs624_pos_notifier._entry_ptr, ptr @iqs624_pos_notifier_unregister._entry, ptr @iqs624_pos_notifier_unregister._entry_ptr, ptr @iqs624_pos_platform_driver_exit, ptr @iqs624_pos_probe._entry, ptr @iqs624_pos_probe._entry_ptr, ptr @iqs624_pos_platform_driver, ptr @.str, ptr @iqs624_pos_channels, ptr @iqs624_pos_info, ptr @iqs624_pos_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @iqs624_pos_events, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs624_pos_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs624_pos_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs624_pos_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs624_pos_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs624_pos_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs624_pos_events to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs624_pos_notifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs624_pos_notifier_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs624_pos_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @iqs624_pos_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iqs624_pos_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @iqs624_pos_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs624_pos_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 116) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %5, align 4
  %indio_dev5 = getelementptr inbounds %struct.iqs624_pos_private, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %indio_dev5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %indio_dev5, align 4
  %8 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call2, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 13
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @iqs624_pos_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 14
  %10 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %num_channels, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 15
  %15 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call2, i32 0, i32 17
  %16 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @iqs624_pos_info, ptr %info, align 8
  %lock = getelementptr inbounds %struct.iqs624_pos_private, ptr %5, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @iqs624_pos_probe.__key) #6
  %notifier = getelementptr inbounds %struct.iqs624_pos_private, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @iqs624_pos_notifier, ptr %notifier, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %nh = getelementptr inbounds %struct.iqs62x_core, ptr %19, i32 0, i32 3
  %call8 = tail call i32 @blocking_notifier_chain_register(ptr noundef %nh, ptr noundef %notifier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call8) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @iqs624_pos_notifier_unregister, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end20, label %if.then.i

if.then.i:                                        ; preds = %if.end15
  %20 = ptrtoint ptr %indio_dev5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %indio_dev5, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %nh.i.i = getelementptr inbounds %struct.iqs62x_core, ptr %23, i32 0, i32 3
  %call.i.i = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %nh.i.i, ptr noundef %notifier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_crit_edge, label %do.end.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i.i = getelementptr inbounds %struct.iio_dev, ptr %21, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.9, i32 noundef %call.i.i) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call2, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end.i.i, %if.then.i.cleanup_crit_edge, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end13 ], [ %call22, %if.end20 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs624_pos_notifier(ptr noundef %notifier, i32 noundef %event_flags, ptr nocapture noundef readonly %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %context, align 2
  %add.ptr = getelementptr i8, ptr %notifier, i32 -8
  %indio_dev1 = getelementptr i8, ptr %notifier, i32 -4
  %2 = ptrtoint ptr %indio_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %indio_dev1, align 4
  %call = tail call i64 @iio_get_time_ns(ptr noundef %3) #6
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %prod_num = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %prod_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %prod_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %9)
  %cmp = icmp eq i8 %9, 78
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %interval = getelementptr inbounds %struct.iqs62x_event_data, ptr %context, i32 0, i32 3
  %10 = ptrtoint ptr %interval to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %interval, align 2
  %conv4 = zext i8 %11 to i16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %angle.0 = phi i16 [ %conv4, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %lock = getelementptr i8, ptr %notifier, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %and = and i32 %event_flags, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %angle_en12 = getelementptr i8, ptr %notifier, i32 104
  %12 = ptrtoint ptr %angle_en12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %angle_en12, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.else11, label %if.then5

if.then5:                                         ; preds = %if.end
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %prod_num.i = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %prod_num.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %prod_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %17)
  %cmp.i = icmp eq i8 %17, 78
  %spec.store.select.i = select i1 %cmp.i, i32 8, i32 16
  %regmap.i = getelementptr inbounds %struct.iqs62x_core, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %cond.i = select i1 %tobool13.not, i32 255, i32 0
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 112, i32 noundef %spec.store.select.i, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not, label %if.then5.if.end25_crit_edge, label %do.end

if.then5.if.end25_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.7, i32 noundef %call.i.i) #9
  br label %if.end25

if.else11:                                        ; preds = %if.end
  br i1 %tobool13.not, label %if.else11.if.end25_crit_edge, label %land.lhs.true

if.else11.if.end25_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

land.lhs.true:                                    ; preds = %if.else11
  %angle16 = getelementptr i8, ptr %notifier, i32 106
  %22 = ptrtoint ptr %angle16 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %angle16, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %angle.0, i16 %23)
  %cmp18.not = icmp eq i16 %angle.0, %23
  br i1 %cmp18.not, label %land.lhs.true.if.end25_crit_edge, label %if.then20

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 @iio_push_event(ptr noundef %3, i64 noundef 361132446659379200, i64 noundef %call) #6
  %24 = ptrtoint ptr %angle16 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %angle.0, ptr %angle16, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %land.lhs.true.if.end25_crit_edge, %if.else11.if.end25_crit_edge, %do.end, %if.then5.if.end25_crit_edge
  %ret.0 = phi i32 [ 32770, %do.end ], [ 1, %if.then20 ], [ 1, %if.then5.if.end25_crit_edge ], [ 0, %land.lhs.true.if.end25_crit_edge ], [ 0, %if.else11.if.end25_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iqs624_pos_notifier_unregister(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %indio_dev1 = getelementptr inbounds %struct.iqs624_pos_private, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %indio_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %indio_dev1, align 4
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %nh = getelementptr inbounds %struct.iqs62x_core, ptr %3, i32 0, i32 3
  %notifier = getelementptr inbounds %struct.iqs624_pos_private, ptr %context, i32 0, i32 2
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %nh, ptr noundef %notifier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs624_pos_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %val_buf.i = alloca i16, align 2
  %scale = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scale) #6
  %4 = ptrtoint ptr %scale to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %scale, align 4
  %5 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val_buf.i) #6
  %6 = ptrtoint ptr %val_buf.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %val_buf.i, align 2, !annotation !53
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %prod_num.i = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %prod_num.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %prod_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %10)
  %cmp.i = icmp eq i8 %10, 78
  %regmap.i = getelementptr inbounds %struct.iqs62x_core, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  br i1 %cmp.i, label %iqs624_pos_angle_get.exit, label %if.end.i

if.end.i:                                         ; preds = %sw.bb
  %call5.i = call i32 @regmap_raw_read(ptr noundef %12, i32 noundef 22, ptr noundef nonnull %val_buf.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %iqs624_pos_angle_get.exit.thread, label %iqs624_pos_angle_get.exit.thread22

iqs624_pos_angle_get.exit.thread22:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_buf.i) #6
  br label %cleanup

iqs624_pos_angle_get.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %val_buf.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %val_buf.i, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %14) #6
  %conv8.i = zext i16 %15 to i32
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv8.i, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_buf.i) #6
  br label %19

iqs624_pos_angle_get.exit:                        ; preds = %sw.bb
  %interval.i = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %8, i32 0, i32 18
  %17 = ptrtoint ptr %interval.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %interval.i, align 1
  %conv3.i = zext i8 %18 to i32
  %call.i = tail call i32 @regmap_read(ptr noundef %12, i32 noundef %conv3.i, ptr noundef %val) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %iqs624_pos_angle_get.exit._crit_edge, label %iqs624_pos_angle_get.exit.cleanup_crit_edge

iqs624_pos_angle_get.exit.cleanup_crit_edge:      ; preds = %iqs624_pos_angle_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

iqs624_pos_angle_get.exit._crit_edge:             ; preds = %iqs624_pos_angle_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %19

19:                                               ; preds = %iqs624_pos_angle_get.exit._crit_edge, %iqs624_pos_angle_get.exit.thread
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %prod_num = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %prod_num to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %prod_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %23)
  %cmp = icmp eq i8 %23, 78
  br i1 %cmp, label %if.then5, label %sw.bb3.if.end10_crit_edge

sw.bb3.if.end10_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then5:                                         ; preds = %sw.bb3
  %regmap = getelementptr inbounds %struct.iqs62x_core, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_read(ptr noundef %25, i32 noundef 125, ptr noundef nonnull %scale) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %sw.bb3.if.end10_crit_edge
  %26 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scale, align 4
  %mul = mul i32 %27, 1745
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul, ptr %val, align 4
  %29 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 100000, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then5.cleanup_crit_edge, %19, %iqs624_pos_angle_get.exit.cleanup_crit_edge, %iqs624_pos_angle_get.exit.thread22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %if.end10 ], [ %call6, %if.then5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 1, %19 ], [ %call.i, %iqs624_pos_angle_get.exit.cleanup_crit_edge ], [ %call5.i, %iqs624_pos_angle_get.exit.thread22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scale) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs624_pos_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.iqs624_pos_private, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %angle_en = getelementptr inbounds %struct.iqs624_pos_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %angle_en to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %angle_en, align 4, !range !52
  %4 = zext i8 %3 to i32
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs624_pos_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  %val_buf.i = alloca i16, align 2
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !53
  %lock = getelementptr inbounds %struct.iqs624_pos_private, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val_buf.i) #6
  %5 = ptrtoint ptr %val_buf.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %val_buf.i, align 2, !annotation !53
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prod_num.i = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %prod_num.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %prod_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %9)
  %cmp.i = icmp eq i8 %9, 78
  %regmap.i = getelementptr inbounds %struct.iqs62x_core, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  br i1 %cmp.i, label %iqs624_pos_angle_get.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call5.i = call i32 @regmap_raw_read(ptr noundef %11, i32 noundef 22, ptr noundef nonnull %val_buf.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %iqs624_pos_angle_get.exit.thread, label %iqs624_pos_angle_get.exit.thread23

iqs624_pos_angle_get.exit.thread23:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_buf.i) #6
  br label %err_mutex

iqs624_pos_angle_get.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %val_buf.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %val_buf.i, align 2
  %14 = call i16 @llvm.bswap.i16(i16 %13) #6
  %conv8.i = zext i16 %14 to i32
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv8.i, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_buf.i) #6
  br label %if.end

iqs624_pos_angle_get.exit:                        ; preds = %entry
  %interval.i = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %7, i32 0, i32 18
  %16 = ptrtoint ptr %interval.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %interval.i, align 1
  %conv3.i = zext i8 %17 to i32
  %call.i = call i32 @regmap_read(ptr noundef %11, i32 noundef %conv3.i, ptr noundef nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val_buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %iqs624_pos_angle_get.exit.if.end_crit_edge, label %iqs624_pos_angle_get.exit.err_mutex_crit_edge

iqs624_pos_angle_get.exit.err_mutex_crit_edge:    ; preds = %iqs624_pos_angle_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

iqs624_pos_angle_get.exit.if.end_crit_edge:       ; preds = %iqs624_pos_angle_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %iqs624_pos_angle_get.exit.if.end_crit_edge, %iqs624_pos_angle_get.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool3 = icmp ne i32 %state, 0
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %prod_num.i18 = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %prod_num.i18 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %prod_num.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 78, i8 %21)
  %cmp.i19 = icmp eq i8 %21, 78
  %spec.store.select.i = select i1 %cmp.i19, i32 8, i32 16
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %cond.i = select i1 %tobool3, i32 0, i32 255
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 112, i32 noundef %spec.store.select.i, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.err_mutex_crit_edge

if.end.err_mutex_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %conv = trunc i32 %25 to i16
  %angle = getelementptr inbounds %struct.iqs624_pos_private, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %angle to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv, ptr %angle, align 2
  %angle_en = getelementptr inbounds %struct.iqs624_pos_private, ptr %1, i32 0, i32 4
  %frombool = zext i1 %tobool3 to i8
  %27 = ptrtoint ptr %angle_en to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool, ptr %angle_en, align 4
  br label %err_mutex

err_mutex:                                        ; preds = %if.end7, %if.end.err_mutex_crit_edge, %iqs624_pos_angle_get.exit.err_mutex_crit_edge, %iqs624_pos_angle_get.exit.thread23
  %ret.0 = phi i32 [ %call.i, %iqs624_pos_angle_get.exit.err_mutex_crit_edge ], [ %call.i.i, %if.end.err_mutex_crit_edge ], [ 0, %if.end7 ], [ %call5.i, %iqs624_pos_angle_get.exit.thread23 ]
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_iqs624_pos__170_280_iqs624_pos_platform_driver_init6, !1, !"__initcall__kmod_iqs624_pos__170_280_iqs624_pos_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/position/iqs624-pos.c", i32 280, i32 1}
!2 = !{ptr @__exitcall_iqs624_pos_platform_driver_exit, !1, !"__exitcall_iqs624_pos_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/iio/position/iqs624-pos.c", i32 282, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/iio/position/iqs624-pos.c", i32 283, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/iio/position/iqs624-pos.c", i32 284, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias175, !11, !"__UNIQUE_ID_alias175", i1 false, i1 false}
!11 = !{!"../drivers/iio/position/iqs624-pos.c", i32 285, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/position/iqs624-pos.c", i32 276, i32 11}
!14 = !{ptr @iqs624_pos_platform_driver, !15, !"iqs624_pos_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/position/iqs624-pos.c", i32 274, i32 31}
!16 = !{ptr @iqs624_pos_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/position/iqs624-pos.c", i32 255, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/position/iqs624-pos.c", i32 261, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @iqs624_pos_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @iqs624_pos_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @iqs624_pos_channels, !28, !"iqs624_pos_channels", i1 false, i1 false}
!28 = !{!"../drivers/iio/position/iqs624-pos.c", i32 224, i32 35}
!29 = !{ptr @iqs624_pos_events, !30, !"iqs624_pos_events", i1 false, i1 false}
!30 = !{!"../drivers/iio/position/iqs624-pos.c", i32 216, i32 36}
!31 = !{ptr @iqs624_pos_info, !32, !"iqs624_pos_info", i1 false, i1 false}
!32 = !{!"../drivers/iio/position/iqs624-pos.c", i32 210, i32 30}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/position/iqs624-pos.c", i32 75, i32 4}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @iqs624_pos_notifier._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @iqs624_pos_notifier._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/position/iqs624-pos.c", i32 108, i32 3}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @iqs624_pos_notifier_unregister._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @iqs624_pos_notifier_unregister._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i8 0, i8 2}
!53 = !{!"auto-init"}
