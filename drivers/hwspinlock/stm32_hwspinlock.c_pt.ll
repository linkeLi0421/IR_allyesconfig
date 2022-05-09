; ModuleID = '/llk/IR_all_yes/drivers/hwspinlock/stm32_hwspinlock.c_pt.bc'
source_filename = "../drivers/hwspinlock/stm32_hwspinlock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwspinlock_ops = type { ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.stm32_hwspinlock = type { ptr, %struct.hwspinlock_device }
%struct.hwspinlock_device = type { ptr, ptr, i32, i32, [0 x %struct.hwspinlock] }
%struct.hwspinlock = type { ptr, %struct.spinlock, ptr }

@__initcall__kmod_stm32_hwspinlock__171_167_stm32_hwspinlock_init2 = internal global ptr @stm32_hwspinlock_init, section ".initcall2.init", align 4
@stm32_hwspinlock_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_hwspinlock_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_hwpinlock_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_hwspinlock_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_hwspinlock_exit = internal global ptr @stm32_hwspinlock_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file172 = internal constant [58 x i8] c"stm32_hwspinlock.file=drivers/hwspinlock/stm32_hwspinlock\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [32 x i8] c"stm32_hwspinlock.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [69 x i8] c"stm32_hwspinlock.description=Hardware spinlock driver for STM32 SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_author175 = internal constant [69 x i8] c"stm32_hwspinlock.author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_hwspinlock\00", [47 x i8] zeroinitializer }, align 32
@stm32_hwpinlock_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-hwspinlock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_hwspinlock_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_hwspinlock_runtime_suspend, ptr @stm32_hwspinlock_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hsem\00", [27 x i8] zeroinitializer }, align 32
@stm32_hwspinlock_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 94, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to prepare_enable clock\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_hwspinlock_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/hwspinlock/stm32_hwspinlock.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_hwspinlock_probe._entry_ptr = internal global ptr @stm32_hwspinlock_probe._entry, section ".printk_index", align 4
@stm32_hwspinlock_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 107, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register action\0A\00", [37 x i8] zeroinitializer }, align 32
@stm32_hwspinlock_probe._entry_ptr.9 = internal global ptr @stm32_hwspinlock_probe._entry.7, section ".printk_index", align 4
@stm32_hwspinlock_ops = internal constant { %struct.hwspinlock_ops, [20 x i8] } { %struct.hwspinlock_ops { ptr @stm32_hwspinlock_trylock, ptr @stm32_hwspinlock_unlock, ptr @stm32_hwspinlock_relax }, [20 x i8] zeroinitializer }, align 32
@stm32_hwspinlock_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 118, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register hwspinlock\0A\00", [33 x i8] zeroinitializer }, align 32
@stm32_hwspinlock_probe._entry_ptr.12 = internal global ptr @stm32_hwspinlock_probe._entry.10, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"stm32_hwspinlock_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 153, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 156, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [20 x i8] c"stm32_hwpinlock_ids\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 147, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [24 x i8] c"stm32_hwspinlock_pm_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 141, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 88, i32 30 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 94, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 107, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"stm32_hwspinlock_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 51, i32 36 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [41 x i8] c"../drivers/hwspinlock/stm32_hwspinlock.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 118, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_stm32_hwspinlock_exit, ptr @__initcall__kmod_stm32_hwspinlock__171_167_stm32_hwspinlock_init2, ptr @stm32_hwspinlock_exit, ptr @stm32_hwspinlock_probe._entry, ptr @stm32_hwspinlock_probe._entry.10, ptr @stm32_hwspinlock_probe._entry.7, ptr @stm32_hwspinlock_probe._entry_ptr, ptr @stm32_hwspinlock_probe._entry_ptr.12, ptr @stm32_hwspinlock_probe._entry_ptr.9, ptr @stm32_hwspinlock_driver, ptr @.str, ptr @stm32_hwpinlock_ids, ptr @stm32_hwspinlock_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @stm32_hwspinlock_ops, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hwspinlock_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hwpinlock_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hwspinlock_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hwspinlock_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hwspinlock_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hwspinlock_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_hwspinlock_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hwspinlock_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_hwspinlock_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_hwspinlock_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_hwspinlock_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hwspinlock_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1684, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #5
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %call.i, align 4
  %cmp.i71 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call.i72 = tail call i32 @clk_prepare(ptr noundef %call7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.do.end_crit_edge

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.end13
  %call1.i = tail call i32 @clk_enable(ptr noundef %call7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end18, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call7) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end13.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i72, %if.end13.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end.i
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #5
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #5, !srcloc !48
  %call.i73 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #5
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %call.i74 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #5
  %call.i75 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @stm32_hwspinlock_disable_clk, ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i76, label %for.cond.preheader, label %do.end26

for.cond.preheader:                               ; preds = %if.end18
  %priv = getelementptr inbounds %struct.stm32_hwspinlock, ptr %call.i, i32 3, i32 1, i32 1
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %priv, align 4
  %add.ptr.1 = getelementptr i8, ptr %call, i32 4
  %priv.1 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 6
  %6 = ptrtoint ptr %priv.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.1, ptr %priv.1, align 4
  %add.ptr.2 = getelementptr i8, ptr %call, i32 8
  %priv.2 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 8, i32 1, i32 2
  %7 = ptrtoint ptr %priv.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.2, ptr %priv.2, align 4
  %add.ptr.3 = getelementptr i8, ptr %call, i32 12
  %priv.3 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 11, i32 1
  %8 = ptrtoint ptr %priv.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.3, ptr %priv.3, align 4
  %add.ptr.4 = getelementptr i8, ptr %call, i32 16
  %priv.4 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 13, i32 1, i32 3
  %9 = ptrtoint ptr %priv.4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.4, ptr %priv.4, align 4
  %add.ptr.5 = getelementptr i8, ptr %call, i32 20
  %priv.5 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 16, i32 1, i32 1
  %10 = ptrtoint ptr %priv.5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.5, ptr %priv.5, align 4
  %add.ptr.6 = getelementptr i8, ptr %call, i32 24
  %priv.6 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 19
  %11 = ptrtoint ptr %priv.6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.6, ptr %priv.6, align 4
  %add.ptr.7 = getelementptr i8, ptr %call, i32 28
  %priv.7 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 21, i32 1, i32 2
  %12 = ptrtoint ptr %priv.7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.7, ptr %priv.7, align 4
  %add.ptr.8 = getelementptr i8, ptr %call, i32 32
  %priv.8 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 24, i32 1
  %13 = ptrtoint ptr %priv.8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.8, ptr %priv.8, align 4
  %add.ptr.9 = getelementptr i8, ptr %call, i32 36
  %priv.9 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 26, i32 1, i32 3
  %14 = ptrtoint ptr %priv.9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.9, ptr %priv.9, align 4
  %add.ptr.10 = getelementptr i8, ptr %call, i32 40
  %priv.10 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 29, i32 1, i32 1
  %15 = ptrtoint ptr %priv.10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.10, ptr %priv.10, align 4
  %add.ptr.11 = getelementptr i8, ptr %call, i32 44
  %priv.11 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 32
  %16 = ptrtoint ptr %priv.11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.11, ptr %priv.11, align 4
  %add.ptr.12 = getelementptr i8, ptr %call, i32 48
  %priv.12 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 34, i32 1, i32 2
  %17 = ptrtoint ptr %priv.12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.12, ptr %priv.12, align 4
  %add.ptr.13 = getelementptr i8, ptr %call, i32 52
  %priv.13 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 37, i32 1
  %18 = ptrtoint ptr %priv.13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.13, ptr %priv.13, align 4
  %add.ptr.14 = getelementptr i8, ptr %call, i32 56
  %priv.14 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 39, i32 1, i32 3
  %19 = ptrtoint ptr %priv.14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.14, ptr %priv.14, align 4
  %add.ptr.15 = getelementptr i8, ptr %call, i32 60
  %priv.15 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 42, i32 1, i32 1
  %20 = ptrtoint ptr %priv.15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.15, ptr %priv.15, align 4
  %add.ptr.16 = getelementptr i8, ptr %call, i32 64
  %priv.16 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 45
  %21 = ptrtoint ptr %priv.16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.16, ptr %priv.16, align 4
  %add.ptr.17 = getelementptr i8, ptr %call, i32 68
  %priv.17 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 47, i32 1, i32 2
  %22 = ptrtoint ptr %priv.17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.17, ptr %priv.17, align 4
  %add.ptr.18 = getelementptr i8, ptr %call, i32 72
  %priv.18 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 50, i32 1
  %23 = ptrtoint ptr %priv.18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.18, ptr %priv.18, align 4
  %add.ptr.19 = getelementptr i8, ptr %call, i32 76
  %priv.19 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 52, i32 1, i32 3
  %24 = ptrtoint ptr %priv.19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.19, ptr %priv.19, align 4
  %add.ptr.20 = getelementptr i8, ptr %call, i32 80
  %priv.20 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 55, i32 1, i32 1
  %25 = ptrtoint ptr %priv.20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.20, ptr %priv.20, align 4
  %add.ptr.21 = getelementptr i8, ptr %call, i32 84
  %priv.21 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 58
  %26 = ptrtoint ptr %priv.21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.21, ptr %priv.21, align 4
  %add.ptr.22 = getelementptr i8, ptr %call, i32 88
  %priv.22 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 60, i32 1, i32 2
  %27 = ptrtoint ptr %priv.22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.22, ptr %priv.22, align 4
  %add.ptr.23 = getelementptr i8, ptr %call, i32 92
  %priv.23 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 63, i32 1
  %28 = ptrtoint ptr %priv.23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.23, ptr %priv.23, align 4
  %add.ptr.24 = getelementptr i8, ptr %call, i32 96
  %priv.24 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 65, i32 1, i32 3
  %29 = ptrtoint ptr %priv.24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.24, ptr %priv.24, align 4
  %add.ptr.25 = getelementptr i8, ptr %call, i32 100
  %priv.25 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 68, i32 1, i32 1
  %30 = ptrtoint ptr %priv.25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.25, ptr %priv.25, align 4
  %add.ptr.26 = getelementptr i8, ptr %call, i32 104
  %priv.26 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 71
  %31 = ptrtoint ptr %priv.26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.26, ptr %priv.26, align 4
  %add.ptr.27 = getelementptr i8, ptr %call, i32 108
  %priv.27 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 73, i32 1, i32 2
  %32 = ptrtoint ptr %priv.27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.27, ptr %priv.27, align 4
  %add.ptr.28 = getelementptr i8, ptr %call, i32 112
  %priv.28 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 76, i32 1
  %33 = ptrtoint ptr %priv.28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.28, ptr %priv.28, align 4
  %add.ptr.29 = getelementptr i8, ptr %call, i32 116
  %priv.29 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 78, i32 1, i32 3
  %34 = ptrtoint ptr %priv.29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.29, ptr %priv.29, align 4
  %add.ptr.30 = getelementptr i8, ptr %call, i32 120
  %priv.30 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 81, i32 1, i32 1
  %35 = ptrtoint ptr %priv.30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.30, ptr %priv.30, align 4
  %add.ptr.31 = getelementptr i8, ptr %call, i32 124
  %priv.31 = getelementptr %struct.stm32_hwspinlock, ptr %call.i, i32 84
  %36 = ptrtoint ptr %priv.31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.31, ptr %priv.31, align 4
  %bank28 = getelementptr inbounds %struct.stm32_hwspinlock, ptr %call.i, i32 0, i32 1
  %call29 = tail call i32 @devm_hwspin_lock_register(ptr noundef %dev1, ptr noundef %bank28, ptr noundef nonnull @stm32_hwspinlock_ops, i32 noundef 0, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %for.cond.preheader.cleanup_crit_edge, label %do.end34

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @stm32_hwspinlock_disable_clk(ptr noundef %pdev) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  br label %cleanup

do.end34:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %do.end26, %for.cond.preheader.cleanup_crit_edge, %do.end, %if.then10, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %2, %if.then10 ], [ %retval.0.i.ph, %do.end ], [ %call.i75, %do.end26 ], [ -12, %if.end.cleanup_crit_edge ], [ %call29, %do.end34 ], [ 0, %for.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_hwspinlock_disable_clk(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %data, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %data, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  %call.i8 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #5
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %data, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #5
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #5, !srcloc !50
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !51
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %4) #5
  tail call void @clk_unprepare(ptr noundef %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwspin_lock_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hwspinlock_trylock(ptr nocapture noundef readonly %lock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hwspinlock, ptr %lock, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 65664) #5, !srcloc !53
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 65664, i32 %2)
  %cmp = icmp eq i32 %2, 65664
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_hwspinlock_unlock(ptr nocapture noundef readonly %lock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hwspinlock, ptr %lock, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 65536) #5, !srcloc !53
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_hwspinlock_relax(ptr nocapture noundef readnone %lock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hwspinlock_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_hwspinlock_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_stm32_hwspinlock__171_167_stm32_hwspinlock_init2, !1, !"__initcall__kmod_stm32_hwspinlock__171_167_stm32_hwspinlock_init2", i1 false, i1 false}
!1 = !{!"../drivers/hwspinlock/stm32_hwspinlock.c", i32 167, i32 1}
!2 = !{ptr @__exitcall_stm32_hwspinlock_exit, !3, !"__exitcall_stm32_hwspinlock_exit", i1 false, i1 false}
!3 = !{!"../drivers/hwspinlock/stm32_hwspinlock.c", i32 173, i32 1}
!4 = !{ptr @__UNIQUE_ID_file172, !5, !"__UNIQUE_ID_file172", i1 false, i1 false}
!5 = !{!"../drivers/hwspinlock/stm32_hwspinlock.c", i32 175, i32 1}
!6 = !{ptr @__UNIQUE_ID_license173, !5, !"__UNIQUE_ID_license173", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description174, !8, !"__UNIQUE_ID_description174", i1 false, i1 false}
!8 = !{!"../drivers/hwspinlock/stm32_hwspinlock.c", i32 176, i32 1}
!9 = !{ptr @__UNIQUE_ID_author175, !10, !"__UNIQUE_ID_author175", i1 false, i1 false}
!10 = !{!"../drivers/hwspinlock/stm32_hwspinlock.c", i32 177, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hwspinlock/stm32_hwspinlock.c", i32 156, i32 11}
!13 = !{ptr @stm32_hwspinlock_driver, !14, !"stm32_hwspinlock_driver", i1 false, i1 false}
!14 = !{!"../drivers/hwspinlock/stm32_hwspinlock.c", i32 153, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/hwspinlock/stm32_hwspinlock.c", i32 88, i32 30}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwspinlock/stm32_hwspinlock.c", i32 94, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @stm32_hwspinlock_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @stm32_hwspinlock_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwspinlock/stm32_hwspinlock.c", i32 107, i32 3}
!27 = !{ptr @stm32_hwspinlock_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @stm32_hwspinlock_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwspinlock/stm32_hwspinlock.c", i32 118, i32 3}
!31 = !{ptr @stm32_hwspinlock_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @stm32_hwspinlock_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @stm32_hwspinlock_ops, !34, !"stm32_hwspinlock_ops", i1 false, i1 false}
!34 = !{!"../drivers/hwspinlock/stm32_hwspinlock.c", i32 51, i32 36}
!35 = !{ptr @stm32_hwpinlock_ids, !36, !"stm32_hwpinlock_ids", i1 false, i1 false}
!36 = !{!"../drivers/hwspinlock/stm32_hwspinlock.c", i32 147, i32 34}
!37 = !{ptr @stm32_hwspinlock_pm_ops, !38, !"stm32_hwspinlock_pm_ops", i1 false, i1 false}
!38 = !{!"../drivers/hwspinlock/stm32_hwspinlock.c", i32 141, i32 32}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2148242410, i64 2148242436, i64 2148242465, i64 2148242499, i64 2148242530, i64 2148242553}
!49 = !{i64 2148241829}
!50 = !{i64 726652, i64 726677, i64 726699, i64 726715, i64 726727, i64 726747, i64 726771, i64 726787, i64 726799}
!51 = !{i64 2148242017}
!52 = !{i64 2152540048}
!53 = !{i64 3090568}
!54 = !{i64 3090986}
!55 = !{i64 2152540834}
!56 = !{i64 2152541312}
