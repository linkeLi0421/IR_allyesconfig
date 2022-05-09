; ModuleID = '/llk/IR_all_yes/drivers/input/misc/pcap_keys.c_pt.bc'
source_filename = "../drivers/input/misc/pcap_keys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pcap_keys = type { ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_pcap_keys__227_122_pcap_keys_device_driver_init6 = internal global ptr @pcap_keys_device_driver_init, section ".initcall6.init", align 4
@pcap_keys_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pcap_keys_probe, ptr @pcap_keys_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pcap_keys_device_driver_exit = internal global ptr @pcap_keys_device_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [57 x i8] c"pcap_keys.description=Motorola PCAP2 input events driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [54 x i8] c"pcap_keys.author=Ilya Petrov <ilya.muromec@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [44 x i8] c"pcap_keys.file=drivers/input/misc/pcap_keys\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [22 x i8] c"pcap_keys.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [35 x i8] c"pcap_keys.alias=platform:pcap_keys\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcap-keys\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcap-keys/input0\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Power key\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone button\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 11]
@___asan_gen_.4 = private unnamed_addr constant [24 x i8] c"pcap_keys_device_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 115, i32 31 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 119, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 66, i32 20 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 79, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [34 x i8] c"../drivers/input/misc/pcap_keys.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 84, i32 26 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_pcap_keys_device_driver_exit, ptr @__initcall__kmod_pcap_keys__227_122_pcap_keys_device_driver_init6, ptr @pcap_keys_device_driver_exit, ptr @pcap_keys_device_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcap_keys_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcap_keys_device_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pcap_keys_device_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcap_keys_device_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pcap_keys_device_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcap_keys_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %call7.i, align 8
  %call2 = tail call ptr @input_allocate_device() #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.fail_crit_edge, label %if.end5

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end5:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %input = getelementptr inbounds %struct.pcap_keys, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %input, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %10 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %call2, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 1
  %11 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.1, ptr %phys, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 25, ptr %id, align 4
  %parent9 = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 40, i32 1
  %13 = ptrtoint ptr %parent9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %parent9, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 5
  %14 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %evbit, align 4
  %or.i = or i32 %15, 2
  store i32 %or.i, ptr %evbit, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call2, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 4
  %or.i62 = or i32 %17, 1048576
  store i32 %or.i62, ptr %add.ptr.i, align 4
  %add.ptr.i63 = getelementptr %struct.input_dev, ptr %call2, i32 0, i32 6, i32 6
  %18 = ptrtoint ptr %add.ptr.i63 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i63, align 4
  %or.i64 = or i32 %19, 524288
  store i32 %or.i64, ptr %add.ptr.i63, align 4
  %call13 = tail call i32 @input_register_device(ptr noundef nonnull %call2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %fail_allocate

if.end16:                                         ; preds = %if.end5
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i, align 8
  %call18 = tail call i32 @pcap_to_irq(ptr noundef %21, i32 noundef 7) #5
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call18, ptr noundef nonnull @pcap_keys_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %if.end22, label %if.end16.fail_register_crit_edge

if.end16.fail_register_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_register

if.end22:                                         ; preds = %if.end16
  %22 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i, align 8
  %call24 = tail call i32 @pcap_to_irq(ptr noundef %23, i32 noundef 11) #5
  %call.i65 = tail call i32 @request_threaded_irq(i32 noundef %call24, ptr noundef nonnull @pcap_keys_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %call7.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool26.not = icmp eq i32 %call.i65, 0
  br i1 %tobool26.not, label %if.end22.cleanup_crit_edge, label %fail_pwrkey

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

fail_pwrkey:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i, align 8
  %call30 = tail call i32 @pcap_to_irq(ptr noundef %25, i32 noundef 7) #5
  %call31 = tail call ptr @free_irq(i32 noundef %call30, ptr noundef nonnull %call7.i) #5
  br label %fail_register

fail_register:                                    ; preds = %fail_pwrkey, %if.end16.fail_register_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end16.fail_register_crit_edge ], [ %call.i65, %fail_pwrkey ]
  tail call void @input_unregister_device(ptr noundef nonnull %call2) #5
  br label %fail

fail_allocate:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @input_free_device(ptr noundef nonnull %call2) #5
  br label %fail

fail:                                             ; preds = %fail_allocate, %fail_register, %if.end.fail_crit_edge
  %err.1 = phi i32 [ %call13, %fail_allocate ], [ %err.0, %fail_register ], [ -12, %if.end.fail_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcap_keys_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @pcap_to_irq(ptr noundef %3, i32 noundef 7) #5
  %call2 = tail call ptr @free_irq(i32 noundef %call1, ptr noundef %1) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call4 = tail call i32 @pcap_to_irq(ptr noundef %5, i32 noundef 11) #5
  %call5 = tail call ptr @free_irq(i32 noundef %call4, ptr noundef %1) #5
  %input = getelementptr inbounds %struct.pcap_keys, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %7) #5
  tail call void @kfree(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcap_to_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcap_keys_handler(i32 noundef %irq, ptr nocapture noundef readonly %_pcap_keys) #2 align 64 {
entry:
  %pstat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_pcap_keys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_pcap_keys, align 4
  %call = tail call i32 @irq_to_pcap(ptr noundef %1, i32 noundef %irq) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pstat) #5
  %2 = ptrtoint ptr %pstat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pstat, align 4, !annotation !31
  %3 = ptrtoint ptr %_pcap_keys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_pcap_keys, align 4
  %call2 = call i32 @ezx_pcap_read(ptr noundef %4, i8 noundef zeroext 2, ptr noundef nonnull %pstat) #5
  %shl = shl nuw i32 1, %call
  %5 = ptrtoint ptr %pstat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pstat, align 4
  %and = and i32 %6, %shl
  store i32 %and, ptr %pstat, align 4
  %7 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.sw.epilog_crit_edge [
    i32 7, label %entry.sw.epilog.sink.split_crit_edge
    i32 11, label %sw.bb3
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %entry.sw.epilog.sink.split_crit_edge
  %.sink15 = phi i32 [ 211, %sw.bb3 ], [ 116, %entry.sw.epilog.sink.split_crit_edge ]
  %input4 = getelementptr inbounds %struct.pcap_keys, ptr %_pcap_keys, i32 0, i32 1
  %8 = ptrtoint ptr %input4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %lnot.ext.i14 = zext i1 %tobool5.not to i32
  call void @input_event(ptr noundef %9, i32 noundef 1, i32 noundef %.sink15, i32 noundef %lnot.ext.i14) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %input8 = getelementptr inbounds %struct.pcap_keys, ptr %_pcap_keys, i32 0, i32 1
  %10 = ptrtoint ptr %input8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input8, align 4
  call void @input_event(ptr noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pstat) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_to_pcap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ezx_pcap_read(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_pcap_keys__227_122_pcap_keys_device_driver_init6, !1, !"__initcall__kmod_pcap_keys__227_122_pcap_keys_device_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/pcap_keys.c", i32 122, i32 1}
!2 = !{ptr @__exitcall_pcap_keys_device_driver_exit, !1, !"__exitcall_pcap_keys_device_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description228, !4, !"__UNIQUE_ID_description228", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/pcap_keys.c", i32 124, i32 1}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/pcap_keys.c", i32 125, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/pcap_keys.c", i32 126, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/pcap_keys.c", i32 127, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/pcap_keys.c", i32 119, i32 11}
!14 = !{ptr @pcap_keys_device_driver, !15, !"pcap_keys_device_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/pcap_keys.c", i32 115, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/pcap_keys.c", i32 66, i32 20}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/misc/pcap_keys.c", i32 79, i32 26}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/misc/pcap_keys.c", i32 84, i32 26}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
