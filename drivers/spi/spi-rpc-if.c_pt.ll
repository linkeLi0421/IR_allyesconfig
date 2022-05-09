; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-rpc-if.c_pt.bc'
source_filename = "../drivers/spi/spi-rpc-if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_mem_op = type { %struct.anon.71, %struct.anon.72, %struct.anon.73, %struct.anon.74 }
%struct.anon.71 = type { i8, i8, i8, i16 }
%struct.anon.72 = type { i8, i8, i8, i64 }
%struct.anon.73 = type { i8, i8, i8 }
%struct.anon.74 = type { i8, i8, i32, i32, %union.anon.75 }
%union.anon.75 = type { ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_mem_dirmap_desc = type { ptr, %struct.spi_mem_dirmap_info, i32, ptr }
%struct.spi_mem_dirmap_info = type { %struct.spi_mem_op, i64, i64 }
%struct.rpcif = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpcif_op = type { %struct.anon.76, %struct.anon.76, %struct.anon.77, %struct.anon.78, %struct.anon.79, %struct.anon.80 }
%struct.anon.76 = type { i8, i8, i8 }
%struct.anon.77 = type { i8, i8, i8, i64 }
%struct.anon.78 = type { i8, i8 }
%struct.anon.79 = type { i8, i8, i8, i32 }
%struct.anon.80 = type { i8, i32, i32, i8, %union.anon.81 }
%union.anon.81 = type { ptr }

@__initcall__kmod_spi_rpc_if__231_209_rpcif_spi_driver_init6 = internal global ptr @rpcif_spi_driver_init, section ".initcall6.init", align 4
@rpcif_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rpcif_spi_probe, ptr @rpcif_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rpcif_spi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rpcif_spi_driver_exit = internal global ptr @rpcif_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description232 = internal constant [49 x i8] c"spi_rpc_if.description=Renesas RPC-IF SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [39 x i8] c"spi_rpc_if.file=drivers/spi/spi-rpc-if\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [26 x i8] c"spi_rpc_if.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rpc-if-spi\00", [21 x i8] zeroinitializer }, align 32
@rpcif_spi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rpcif_spi_suspend, ptr @rpcif_spi_resume, ptr @rpcif_spi_suspend, ptr @rpcif_spi_resume, ptr @rpcif_spi_suspend, ptr @rpcif_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rpcif_spi_mem_ops = internal constant { %struct.spi_controller_mem_ops, [60 x i8] } { %struct.spi_controller_mem_ops { ptr null, ptr @rpcif_spi_mem_supports_op, ptr @rpcif_spi_mem_exec_op, ptr null, ptr @rpcif_spi_mem_dirmap_create, ptr null, ptr @rpcif_spi_mem_dirmap_read, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rpcif_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 165, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"spi_register_controller failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rpcif_spi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/spi/spi-rpc-if.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpcif_spi_probe._entry_ptr = internal global ptr @rpcif_spi_probe._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"rpcif_spi_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 199, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 203, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"rpcif_spi_pm_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 197, i32 8 }
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"rpcif_spi_mem_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 123, i32 44 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [28 x i8] c"../drivers/spi/spi-rpc-if.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 165, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_rpcif_spi_driver_exit, ptr @__initcall__kmod_spi_rpc_if__231_209_rpcif_spi_driver_init6, ptr @rpcif_spi_driver_exit, ptr @rpcif_spi_probe._entry, ptr @rpcif_spi_probe._entry_ptr, ptr @rpcif_spi_driver, ptr @.str, ptr @rpcif_spi_pm_ops, ptr @rpcif_spi_mem_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcif_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcif_spi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcif_spi_mem_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpcif_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcif_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpcif_spi_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rpcif_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rpcif_spi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcif_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 8
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev, i32 noundef 72, i1 noundef zeroext false) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call4 = tail call i32 @rpcif_sw_init(ptr noundef %3, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %driver_data.i.i43 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i43 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i43, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %of_node9 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %7 = ptrtoint ptr %of_node9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %of_node9, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void @pm_runtime_enable(ptr noundef %9) #5
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %num_chipselect, align 2
  %mem_ops = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 53
  %11 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rpcif_spi_mem_ops, ptr %mem_ops, align 4
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 128, ptr %bits_per_word_mask, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2563, ptr %mode_bits, align 8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags, align 4
  %call10 = tail call i32 @rpcif_hw_init(ptr noundef %3, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %call14 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %do.end

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_disable(ptr noundef %16, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call10, %if.end7.cleanup_crit_edge ], [ %call14, %do.end ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcif_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i3, align 4
  tail call void @spi_unregister_controller(ptr noundef %1) #5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcif_sw_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcif_hw_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rpcif_spi_mem_supports_op(ptr noundef %mem, ptr noundef %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @spi_mem_default_supports_op(ptr noundef %mem, ptr noundef %op) #5
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp ugt i8 %1, 4
  br i1 %cmp, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %buswidth2 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %buswidth2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buswidth2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp4 = icmp ugt i8 %3, 4
  br i1 %cmp4, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false6

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %buswidth7 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %buswidth7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buswidth7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp9 = icmp ugt i8 %5, 4
  br i1 %cmp9, label %lor.lhs.false6.return_crit_edge, label %lor.lhs.false11

lor.lhs.false6.return_crit_edge:                  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false11:                                  ; preds = %lor.lhs.false6
  %buswidth12 = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %6 = ptrtoint ptr %buswidth12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buswidth12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp14 = icmp ugt i8 %7, 4
  br i1 %cmp14, label %lor.lhs.false11.return_crit_edge, label %lor.lhs.false16

lor.lhs.false11.return_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false16:                                  ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp19 = icmp ult i8 %9, 5
  br label %return

return:                                           ; preds = %lor.lhs.false16, %lor.lhs.false11.return_crit_edge, %lor.lhs.false6.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %lor.lhs.false11.return_crit_edge ], [ false, %lor.lhs.false6.return_crit_edge ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ %cmp19, %lor.lhs.false16 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcif_spi_mem_exec_op(ptr nocapture noundef readonly %mem, ptr nocapture noundef readonly %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %controller = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @rpcif_spi_mem_prepare(ptr noundef %1, ptr noundef %op, ptr noundef null, ptr noundef null)
  %call2 = tail call i32 @rpcif_manual_xfer(ptr noundef %5) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcif_spi_mem_dirmap_create(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %controller = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %offset = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset, align 8
  %length = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %length, align 8
  %add = add i64 %11, %9
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add)
  %cmp = icmp ugt i64 %add, 4294967295
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1
  %call.i = tail call zeroext i1 @spi_mem_default_supports_op(ptr noundef %1, ptr noundef %info) #5
  br i1 %call.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %data.i = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp.i = icmp ugt i8 %13, 4
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %addr.i = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 0, i32 1
  %buswidth2.i = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %buswidth2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buswidth2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %15)
  %cmp4.i = icmp ugt i8 %15, 4
  br i1 %cmp4.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false6.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %buswidth7.i = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %buswidth7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buswidth7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp9.i = icmp ugt i8 %17, 4
  br i1 %cmp9.i, label %lor.lhs.false6.i.cleanup_crit_edge, label %lor.lhs.false11.i

lor.lhs.false6.i.cleanup_crit_edge:               ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false11.i:                                ; preds = %lor.lhs.false6.i
  %buswidth12.i = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %buswidth12.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buswidth12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %19)
  %cmp14.i = icmp ugt i8 %19, 4
  br i1 %cmp14.i, label %lor.lhs.false11.i.cleanup_crit_edge, label %rpcif_spi_mem_supports_op.exit

lor.lhs.false11.i.cleanup_crit_edge:              ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

rpcif_spi_mem_supports_op.exit:                   ; preds = %lor.lhs.false11.i
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %21)
  %cmp19.i = icmp ult i8 %21, 5
  br i1 %cmp19.i, label %if.end6, label %rpcif_spi_mem_supports_op.exit.cleanup_crit_edge

rpcif_spi_mem_supports_op.exit.cleanup_crit_edge: ; preds = %rpcif_spi_mem_supports_op.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %rpcif_spi_mem_supports_op.exit
  %dirmap = getelementptr inbounds %struct.rpcif, ptr %7, i32 0, i32 2
  %22 = ptrtoint ptr %dirmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dirmap, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end6
  %dir = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp9 = icmp eq i32 %25, 1
  br i1 %cmp9, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %dir15 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %dir15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dir15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp16 = icmp eq i32 %27, 2
  %. = select i1 %cmp16, i32 -524, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %land.lhs.true.cleanup_crit_edge, %rpcif_spi_mem_supports_op.exit.cleanup_crit_edge, %lor.lhs.false11.i.cleanup_crit_edge, %lor.lhs.false6.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ -524, %rpcif_spi_mem_supports_op.exit.cleanup_crit_edge ], [ -524, %land.lhs.true.cleanup_crit_edge ], [ %., %if.end11 ], [ -524, %if.end.cleanup_crit_edge ], [ -524, %lor.lhs.false11.i.cleanup_crit_edge ], [ -524, %lor.lhs.false6.i.cleanup_crit_edge ], [ -524, %lor.lhs.false.i.cleanup_crit_edge ], [ -524, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcif_spi_mem_dirmap_read(ptr nocapture noundef readonly %desc, i64 noundef %offs, i32 noundef %len, ptr noundef %buf) #2 align 64 {
entry:
  %offs.addr = alloca i64, align 8
  %len.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offs.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %offs, ptr %offs.addr, align 8
  %1 = ptrtoint ptr %len.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %len, ptr %len.addr, align 4
  %offset = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %offs
  %add1 = add i64 %add, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add1)
  %cmp = icmp ugt i64 %add1, 4294967295
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %controller = getelementptr inbounds %struct.spi_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %controller, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %info = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %desc, i32 0, i32 1
  call fastcc void @rpcif_spi_mem_prepare(ptr noundef %7, ptr noundef %info, ptr noundef nonnull %offs.addr, ptr noundef nonnull %len.addr)
  %12 = ptrtoint ptr %offs.addr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offs.addr, align 8
  %14 = ptrtoint ptr %len.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.addr, align 4
  %call6 = call i32 @rpcif_dirmap_read(ptr noundef %11, i64 noundef %13, i32 noundef %15, ptr noundef %buf) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @spi_mem_default_supports_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rpcif_spi_mem_prepare(ptr nocapture noundef readonly %spi_dev, ptr nocapture noundef readonly %spi_op, ptr noundef %offs, ptr noundef %len) unnamed_addr #2 align 64 {
entry:
  %rpc_op = alloca %struct.rpcif_op, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.spi_device, ptr %spi_dev, i32 0, i32 1
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rpc_op) #5
  %4 = call ptr @memset(ptr %rpc_op, i32 0, i32 56)
  %opcode = getelementptr inbounds %struct.anon.71, ptr %spi_op, i32 0, i32 3
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %opcode, align 4
  %conv = trunc i16 %6 to i8
  %opcode2 = getelementptr inbounds %struct.anon.76, ptr %rpc_op, i32 0, i32 1
  %7 = ptrtoint ptr %opcode2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %opcode2, align 1
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %spi_op, i32 0, i32 1
  %8 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buswidth, align 1
  %10 = ptrtoint ptr %rpc_op to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %rpc_op, align 8
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %spi_op, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %buswidth7 = getelementptr inbounds %struct.spi_mem_op, ptr %spi_op, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %buswidth7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buswidth7, align 1
  %addr8 = getelementptr inbounds %struct.rpcif_op, ptr %rpc_op, i32 0, i32 2
  %buswidth9 = getelementptr inbounds %struct.rpcif_op, ptr %rpc_op, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %buswidth9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %buswidth9, align 1
  %16 = ptrtoint ptr %addr8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %12, ptr %addr8, align 8
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %spi_op, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %val, align 8
  %val16 = getelementptr inbounds %struct.rpcif_op, ptr %rpc_op, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %val16 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %val16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %spi_op, i32 0, i32 2
  %20 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dummy, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool18.not = icmp eq i8 %21, 0
  br i1 %tobool18.not, label %if.end.if.end32_crit_edge, label %if.then19

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %buswidth21 = getelementptr inbounds %struct.spi_mem_op, ptr %spi_op, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %buswidth21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buswidth21, align 1
  %dummy22 = getelementptr inbounds %struct.rpcif_op, ptr %rpc_op, i32 0, i32 3
  %buswidth23 = getelementptr inbounds %struct.rpcif_op, ptr %rpc_op, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %buswidth23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %buswidth23, align 1
  %conv26 = zext i8 %21 to i16
  %mul = shl nuw nsw i16 %conv26, 3
  %conv29 = zext i8 %23 to i16
  %div = udiv i16 %mul, %conv29
  %conv30 = trunc i16 %div to i8
  %25 = ptrtoint ptr %dummy22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv30, ptr %dummy22, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then19, %if.end.if.end32_crit_edge
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %spi_op, i32 0, i32 3
  %nbytes33 = getelementptr inbounds %struct.spi_mem_op, ptr %spi_op, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %nbytes33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nbytes33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool34.not = icmp eq i32 %27, 0
  br i1 %tobool34.not, label %lor.lhs.false, label %if.end32.if.then37_crit_edge

if.end32.if.then37_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

lor.lhs.false:                                    ; preds = %if.end32
  %tobool35.not = icmp eq ptr %offs, null
  %tobool36.not = icmp eq ptr %len, null
  %or.cond = or i1 %tobool35.not, %tobool36.not
  br i1 %or.cond, label %if.else, label %lor.lhs.false.if.then37_crit_edge

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false.if.then37_crit_edge, %if.end32.if.then37_crit_edge
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %data, align 4
  %data40 = getelementptr inbounds %struct.rpcif_op, ptr %rpc_op, i32 0, i32 5
  %30 = ptrtoint ptr %data40 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %data40, align 4
  %nbytes45 = getelementptr inbounds %struct.rpcif_op, ptr %rpc_op, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %nbytes45 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %27, ptr %nbytes45, align 8
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %spi_op, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dir, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %33, label %if.then37.if.end64_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb52
    i32 0, label %sw.bb59
  ]

if.then37.if.end64_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

sw.bb:                                            ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %dir48 = getelementptr inbounds %struct.rpcif_op, ptr %rpc_op, i32 0, i32 5, i32 2
  %35 = ptrtoint ptr %dir48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %dir48, align 4
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %spi_op, i32 0, i32 3, i32 4
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf, align 4
  %buf51 = getelementptr inbounds %struct.rpcif_op, ptr %rpc_op, i32 0, i32 5, i32 4
  %38 = ptrtoint ptr %buf51 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %buf51, align 4
  br label %if.end64

sw.bb52:                                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %dir54 = getelementptr inbounds %struct.rpcif_op, ptr %rpc_op, i32 0, i32 5, i32 2
  %39 = ptrtoint ptr %dir54 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %dir54, align 4
  %buf56 = getelementptr inbounds %struct.spi_mem_op, ptr %spi_op, i32 0, i32 3, i32 4
  %40 = ptrtoint ptr %buf56 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf56, align 4
  %buf58 = getelementptr inbounds %struct.rpcif_op, ptr %rpc_op, i32 0, i32 5, i32 4
  %42 = ptrtoint ptr %buf58 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %buf58, align 4
  br label %if.end64

sw.bb59:                                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %dir61 = getelementptr inbounds %struct.rpcif_op, ptr %rpc_op, i32 0, i32 5, i32 2
  %43 = ptrtoint ptr %dir61 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %dir61, align 4
  br label %if.end64

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %dir63 = getelementptr inbounds %struct.rpcif_op, ptr %rpc_op, i32 0, i32 5, i32 2
  %44 = ptrtoint ptr %dir63 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %dir63, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else, %sw.bb59, %sw.bb52, %sw.bb, %if.then37.if.end64_crit_edge
  call void @rpcif_prepare(ptr noundef %3, ptr noundef nonnull %rpc_op, ptr noundef %offs, ptr noundef %len) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rpc_op) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcif_manual_xfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcif_prepare(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcif_dirmap_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcif_spi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @spi_controller_suspend(ptr noundef %1) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpcif_spi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @spi_controller_resume(ptr noundef %1) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_spi_rpc_if__231_209_rpcif_spi_driver_init6, !1, !"__initcall__kmod_spi_rpc_if__231_209_rpcif_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-rpc-if.c", i32 209, i32 1}
!2 = !{ptr @__exitcall_rpcif_spi_driver_exit, !1, !"__exitcall_rpcif_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description232, !4, !"__UNIQUE_ID_description232", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-rpc-if.c", i32 211, i32 1}
!5 = !{ptr @__UNIQUE_ID_file233, !6, !"__UNIQUE_ID_file233", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-rpc-if.c", i32 212, i32 1}
!7 = !{ptr @__UNIQUE_ID_license234, !6, !"__UNIQUE_ID_license234", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-rpc-if.c", i32 203, i32 11}
!10 = !{ptr @rpcif_spi_driver, !11, !"rpcif_spi_driver", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-rpc-if.c", i32 199, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-rpc-if.c", i32 165, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rpcif_spi_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @rpcif_spi_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @rpcif_spi_mem_ops, !21, !"rpcif_spi_mem_ops", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-rpc-if.c", i32 123, i32 44}
!22 = !{ptr @rpcif_spi_pm_ops, !23, !"rpcif_spi_pm_ops", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-rpc-if.c", i32 197, i32 8}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
