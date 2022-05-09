; ModuleID = '/llk/IR_all_yes/drivers/hwspinlock/u8500_hsem.c_pt.bc'
source_filename = "../drivers/hwspinlock/u8500_hsem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hwspinlock_device = type { ptr, ptr, i32, i32, [0 x %struct.hwspinlock] }
%struct.hwspinlock = type { ptr, %struct.spinlock, ptr }

@__initcall__kmod_u8500_hsem__183_147_u8500_hsem_init2 = internal global ptr @u8500_hsem_init, section ".initcall2.init", align 4
@u8500_hsem_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @u8500_hsem_probe, ptr @u8500_hsem_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_u8500_hsem_exit = internal global ptr @u8500_hsem_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file184 = internal constant [46 x i8] c"u8500_hsem.file=drivers/hwspinlock/u8500_hsem\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [26 x i8] c"u8500_hsem.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [58 x i8] c"u8500_hsem.description=Hardware Spinlock driver for u8500\00", section ".modinfo", align 1
@__UNIQUE_ID_author187 = internal constant [63 x i8] c"u8500_hsem.author=Mathieu Poirier <mathieu.poirier@linaro.org>\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"u8500_hsem\00", [21 x i8] zeroinitializer }, align 32
@u8500_hwspinlock_ops = internal constant { %struct.hwspinlock_ops, [20 x i8] } { %struct.hwspinlock_ops { ptr @u8500_hsem_trylock, ptr @u8500_hsem_unlock, ptr @u8500_hsem_relax }, [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"u8500_hsem_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 134, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 138, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"u8500_hwspinlock_ops\00", align 1
@___asan_gen_.8 = private constant [35 x i8] c"../drivers/hwspinlock/u8500_hsem.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 79, i32 36 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__exitcall_u8500_hsem_exit, ptr @__initcall__kmod_u8500_hsem__183_147_u8500_hsem_init2, ptr @u8500_hsem_exit, ptr @u8500_hsem_driver, ptr @.str, ptr @u8500_hwspinlock_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u8500_hsem_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u8500_hwspinlock_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @u8500_hsem_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @u8500_hsem_driver, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @u8500_hsem_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @u8500_hsem_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u8500_hsem_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call) #3, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %4 = and i32 %3, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call, i32 %4) #3, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  %add.ptr11 = getelementptr i8, ptr %call, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 -65536) #3, !srcloc !29
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1680, i32 noundef 3520) #3
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end4.cleanup_crit_edge, label %if.end17

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end17:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %add.ptr18 = getelementptr i8, ptr %call, i32 8
  %priv = getelementptr inbounds %struct.hwspinlock_device, ptr %call.i, i32 4
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr18, ptr %priv, align 4
  %add.ptr19.1 = getelementptr i8, ptr %call, i32 12
  %priv.1 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 7, i32 1
  %7 = ptrtoint ptr %priv.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr19.1, ptr %priv.1, align 4
  %add.ptr19.2 = getelementptr i8, ptr %call, i32 16
  %priv.2 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 10, i32 2
  %8 = ptrtoint ptr %priv.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr19.2, ptr %priv.2, align 4
  %add.ptr19.3 = getelementptr i8, ptr %call, i32 20
  %priv.3 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 13, i32 3
  %9 = ptrtoint ptr %priv.3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr19.3, ptr %priv.3, align 4
  %add.ptr19.4 = getelementptr i8, ptr %call, i32 24
  %priv.4 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 17
  %10 = ptrtoint ptr %priv.4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr19.4, ptr %priv.4, align 4
  %add.ptr19.5 = getelementptr i8, ptr %call, i32 28
  %priv.5 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 20, i32 1
  %11 = ptrtoint ptr %priv.5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr19.5, ptr %priv.5, align 4
  %add.ptr19.6 = getelementptr i8, ptr %call, i32 32
  %priv.6 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 23, i32 2
  %12 = ptrtoint ptr %priv.6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr19.6, ptr %priv.6, align 4
  %add.ptr19.7 = getelementptr i8, ptr %call, i32 36
  %priv.7 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 26, i32 3
  %13 = ptrtoint ptr %priv.7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr19.7, ptr %priv.7, align 4
  %add.ptr19.8 = getelementptr i8, ptr %call, i32 40
  %priv.8 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 30
  %14 = ptrtoint ptr %priv.8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr19.8, ptr %priv.8, align 4
  %add.ptr19.9 = getelementptr i8, ptr %call, i32 44
  %priv.9 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 33, i32 1
  %15 = ptrtoint ptr %priv.9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr19.9, ptr %priv.9, align 4
  %add.ptr19.10 = getelementptr i8, ptr %call, i32 48
  %priv.10 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 36, i32 2
  %16 = ptrtoint ptr %priv.10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr19.10, ptr %priv.10, align 4
  %add.ptr19.11 = getelementptr i8, ptr %call, i32 52
  %priv.11 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 39, i32 3
  %17 = ptrtoint ptr %priv.11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr19.11, ptr %priv.11, align 4
  %add.ptr19.12 = getelementptr i8, ptr %call, i32 56
  %priv.12 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 43
  %18 = ptrtoint ptr %priv.12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr19.12, ptr %priv.12, align 4
  %add.ptr19.13 = getelementptr i8, ptr %call, i32 60
  %priv.13 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 46, i32 1
  %19 = ptrtoint ptr %priv.13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr19.13, ptr %priv.13, align 4
  %add.ptr19.14 = getelementptr i8, ptr %call, i32 64
  %priv.14 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 49, i32 2
  %20 = ptrtoint ptr %priv.14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr19.14, ptr %priv.14, align 4
  %add.ptr19.15 = getelementptr i8, ptr %call, i32 68
  %priv.15 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 52, i32 3
  %21 = ptrtoint ptr %priv.15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr19.15, ptr %priv.15, align 4
  %add.ptr19.16 = getelementptr i8, ptr %call, i32 72
  %priv.16 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 56
  %22 = ptrtoint ptr %priv.16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr19.16, ptr %priv.16, align 4
  %add.ptr19.17 = getelementptr i8, ptr %call, i32 76
  %priv.17 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 59, i32 1
  %23 = ptrtoint ptr %priv.17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr19.17, ptr %priv.17, align 4
  %add.ptr19.18 = getelementptr i8, ptr %call, i32 80
  %priv.18 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 62, i32 2
  %24 = ptrtoint ptr %priv.18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr19.18, ptr %priv.18, align 4
  %add.ptr19.19 = getelementptr i8, ptr %call, i32 84
  %priv.19 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 65, i32 3
  %25 = ptrtoint ptr %priv.19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr19.19, ptr %priv.19, align 4
  %add.ptr19.20 = getelementptr i8, ptr %call, i32 88
  %priv.20 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 69
  %26 = ptrtoint ptr %priv.20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr19.20, ptr %priv.20, align 4
  %add.ptr19.21 = getelementptr i8, ptr %call, i32 92
  %priv.21 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 72, i32 1
  %27 = ptrtoint ptr %priv.21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr19.21, ptr %priv.21, align 4
  %add.ptr19.22 = getelementptr i8, ptr %call, i32 96
  %priv.22 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 75, i32 2
  %28 = ptrtoint ptr %priv.22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr19.22, ptr %priv.22, align 4
  %add.ptr19.23 = getelementptr i8, ptr %call, i32 100
  %priv.23 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 78, i32 3
  %29 = ptrtoint ptr %priv.23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr19.23, ptr %priv.23, align 4
  %add.ptr19.24 = getelementptr i8, ptr %call, i32 104
  %priv.24 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 82
  %30 = ptrtoint ptr %priv.24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr19.24, ptr %priv.24, align 4
  %add.ptr19.25 = getelementptr i8, ptr %call, i32 108
  %priv.25 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 85, i32 1
  %31 = ptrtoint ptr %priv.25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr19.25, ptr %priv.25, align 4
  %add.ptr19.26 = getelementptr i8, ptr %call, i32 112
  %priv.26 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 88, i32 2
  %32 = ptrtoint ptr %priv.26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr19.26, ptr %priv.26, align 4
  %add.ptr19.27 = getelementptr i8, ptr %call, i32 116
  %priv.27 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 91, i32 3
  %33 = ptrtoint ptr %priv.27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr19.27, ptr %priv.27, align 4
  %add.ptr19.28 = getelementptr i8, ptr %call, i32 120
  %priv.28 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 95
  %34 = ptrtoint ptr %priv.28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr19.28, ptr %priv.28, align 4
  %add.ptr19.29 = getelementptr i8, ptr %call, i32 124
  %priv.29 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 98, i32 1
  %35 = ptrtoint ptr %priv.29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr19.29, ptr %priv.29, align 4
  %add.ptr19.30 = getelementptr i8, ptr %call, i32 128
  %priv.30 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 101, i32 2
  %36 = ptrtoint ptr %priv.30 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr19.30, ptr %priv.30, align 4
  %add.ptr19.31 = getelementptr i8, ptr %call, i32 132
  %priv.31 = getelementptr %struct.hwspinlock_device, ptr %call.i, i32 104, i32 3
  %37 = ptrtoint ptr %priv.31 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr19.31, ptr %priv.31, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 4
  %call21 = tail call i32 @devm_hwspin_lock_register(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull @u8500_hwspinlock_ops, i32 noundef %39, i32 noundef 32) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end4.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then2 ], [ %call21, %if.end17 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u8500_hsem_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.hwspinlock_device, ptr %1, i32 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  %add.ptr1 = getelementptr i8, ptr %3, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -65536) #3, !srcloc !29
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwspin_lock_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u8500_hsem_trylock(ptr nocapture noundef readonly %lock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hwspinlock, ptr %lock, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #3, !srcloc !29
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #3, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %3 = and i32 %2, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %cmp = icmp eq i32 %3, 16777216
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u8500_hsem_unlock(ptr nocapture noundef readonly %lock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hwspinlock, ptr %lock, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #3, !srcloc !29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u8500_hsem_relax(ptr nocapture noundef readnone %lock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__initcall__kmod_u8500_hsem__183_147_u8500_hsem_init2, !1, !"__initcall__kmod_u8500_hsem__183_147_u8500_hsem_init2", i1 false, i1 false}
!1 = !{!"../drivers/hwspinlock/u8500_hsem.c", i32 147, i32 1}
!2 = !{ptr @__exitcall_u8500_hsem_exit, !3, !"__exitcall_u8500_hsem_exit", i1 false, i1 false}
!3 = !{!"../drivers/hwspinlock/u8500_hsem.c", i32 153, i32 1}
!4 = !{ptr @__UNIQUE_ID_file184, !5, !"__UNIQUE_ID_file184", i1 false, i1 false}
!5 = !{!"../drivers/hwspinlock/u8500_hsem.c", i32 155, i32 1}
!6 = !{ptr @__UNIQUE_ID_license185, !5, !"__UNIQUE_ID_license185", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description186, !8, !"__UNIQUE_ID_description186", i1 false, i1 false}
!8 = !{!"../drivers/hwspinlock/u8500_hsem.c", i32 156, i32 1}
!9 = !{ptr @__UNIQUE_ID_author187, !10, !"__UNIQUE_ID_author187", i1 false, i1 false}
!10 = !{!"../drivers/hwspinlock/u8500_hsem.c", i32 157, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hwspinlock/u8500_hsem.c", i32 138, i32 11}
!13 = !{ptr @u8500_hsem_driver, !14, !"u8500_hsem_driver", i1 false, i1 false}
!14 = !{!"../drivers/hwspinlock/u8500_hsem.c", i32 134, i32 31}
!15 = !{ptr @u8500_hwspinlock_ops, !16, !"u8500_hwspinlock_ops", i1 false, i1 false}
!16 = !{!"../drivers/hwspinlock/u8500_hsem.c", i32 79, i32 36}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 4538214}
!27 = !{i64 2152766938}
!28 = !{i64 2152767171}
!29 = !{i64 4537796}
!30 = !{i64 2152767598}
!31 = !{i64 2152768642}
!32 = !{i64 2152765434}
!33 = !{i64 2152766063}
!34 = !{i64 2152766273}
