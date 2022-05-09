; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-msm6242.c_pt.bc'
source_filename = "../drivers/rtc/rtc-msm6242.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.msm6242_priv = type { ptr, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_msm6242__227_223_msm6242_rtc_driver_init6 = internal global ptr @msm6242_rtc_driver_init, section ".initcall6.init", align 4
@msm6242_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_msm6242_rtc_driver_exit = internal global ptr @msm6242_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author228 = internal constant [61 x i8] c"rtc_msm6242.author=Geert Uytterhoeven <geert@linux-m68k.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [41 x i8] c"rtc_msm6242.file=drivers/rtc/rtc-msm6242\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [24 x i8] c"rtc_msm6242.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [47 x i8] c"rtc_msm6242.description=Oki MSM6242 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [39 x i8] c"rtc_msm6242.alias=platform:rtc-msm6242\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc-msm6242\00", [20 x i8] zeroinitializer }, align 32
@msm6242_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @msm6242_read_time, ptr @msm6242_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@msm6242_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014rtc_msm6242: timed out waiting for RTC (0x%x)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msm6242_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-msm6242.c\00", [38 x i8] zeroinitializer }, align 32
@msm6242_lock._entry_ptr = internal global ptr @msm6242_lock._entry, section ".printk_index", align 4
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"msm6242_rtc_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 217, i32 31 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 208, i32 45 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"msm6242_rtc_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 184, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [29 x i8] c"../drivers/rtc/rtc-msm6242.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 105, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_msm6242_rtc_driver_exit, ptr @__initcall__kmod_rtc_msm6242__227_223_msm6242_rtc_driver_init6, ptr @msm6242_lock._entry, ptr @msm6242_lock._entry_ptr, ptr @msm6242_rtc_driver_exit, ptr @msm6242_rtc_driver, ptr @.str, ptr @msm6242_rtc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm6242_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm6242_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm6242_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msm6242_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @msm6242_rtc_driver, ptr noundef nonnull @msm6242_rtc_probe, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @msm6242_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @msm6242_rtc_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msm6242_rtc_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #4
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %1
  %add.i = add i32 %sub.i, %3
  %call7 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %1, i32 noundef %add.i) #4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %call.i, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end4.cleanup_crit_edge, label %if.end11

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call13 = tail call ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @msm6242_rtc_ops, ptr noundef null) #4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %rtc18 = getelementptr inbounds %struct.msm6242_priv, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %rtc18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13, ptr %rtc18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then15, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then15 ], [ 0, %if.end17 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm6242_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx.i.i = getelementptr i32, ptr %3, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 5) #4, !srcloc !33
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx.i1116.i = getelementptr i32, ptr %5, i32 13
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i1116.i) #4, !srcloc !34
  %and17.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool.not18.i = icmp eq i32 %and17.i, 0
  br i1 %tobool.not18.i, label %entry.msm6242_lock.exit_crit_edge, label %while.body.i

entry.msm6242_lock.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %msm6242_lock.exit

while.body.i:                                     ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %arrayidx.i12.i = getelementptr i32, ptr %8, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i12.i, i32 4) #4, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 15032360) #4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %arrayidx.i13.i = getelementptr i32, ptr %11, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i13.i, i32 5) #4, !srcloc !33
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %arrayidx.i11.i = getelementptr i32, ptr %13, i32 13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i11.i) #4, !srcloc !34
  %and.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.msm6242_lock.exit_crit_edge, label %while.body.i.1

while.body.i.msm6242_lock.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %msm6242_lock.exit

while.body.i.1:                                   ; preds = %while.body.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %arrayidx.i12.i.1 = getelementptr i32, ptr %16, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i12.i.1, i32 4) #4, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 15032360) #4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %arrayidx.i13.i.1 = getelementptr i32, ptr %19, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i13.i.1, i32 5) #4, !srcloc !33
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %arrayidx.i11.i.1 = getelementptr i32, ptr %21, i32 13
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i11.i.1) #4, !srcloc !34
  %and.i.1 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.not.i.1, label %while.body.i.1.msm6242_lock.exit_crit_edge, label %while.body.i.2

while.body.i.1.msm6242_lock.exit_crit_edge:       ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %msm6242_lock.exit

while.body.i.2:                                   ; preds = %while.body.i.1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %arrayidx.i12.i.2 = getelementptr i32, ptr %24, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i12.i.2, i32 4) #4, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 15032360) #4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %arrayidx.i13.i.2 = getelementptr i32, ptr %27, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i13.i.2, i32 5) #4, !srcloc !33
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %arrayidx.i11.i.2 = getelementptr i32, ptr %29, i32 13
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i11.i.2) #4, !srcloc !34
  %and.i.2 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool.not.i.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool.not.i.2, label %while.body.i.2.msm6242_lock.exit_crit_edge, label %while.body.i.3

while.body.i.2.msm6242_lock.exit_crit_edge:       ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %msm6242_lock.exit

while.body.i.3:                                   ; preds = %while.body.i.2
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %arrayidx.i12.i.3 = getelementptr i32, ptr %32, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i12.i.3, i32 4) #4, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 15032360) #4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %arrayidx.i13.i.3 = getelementptr i32, ptr %35, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i13.i.3, i32 5) #4, !srcloc !33
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %arrayidx.i11.i.3 = getelementptr i32, ptr %37, i32 13
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i11.i.3) #4, !srcloc !34
  %and.i.3 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool.not.i.3 = icmp eq i32 %and.i.3, 0
  br i1 %tobool.not.i.3, label %while.body.i.3.msm6242_lock.exit_crit_edge, label %while.body.i.4

while.body.i.3.msm6242_lock.exit_crit_edge:       ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %msm6242_lock.exit

while.body.i.4:                                   ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %arrayidx.i12.i.4 = getelementptr i32, ptr %40, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i12.i.4, i32 4) #4, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 15032360) #4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %arrayidx.i13.i.4 = getelementptr i32, ptr %43, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i13.i.4, i32 5) #4, !srcloc !33
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %arrayidx.i11.i.4 = getelementptr i32, ptr %45, i32 13
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i11.i.4) #4, !srcloc !34
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %arrayidx.i14.i = getelementptr i32, ptr %48, i32 13
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i14.i) #4, !srcloc !34
  %and.i15.i = and i32 %49, 15
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %and.i15.i) #7
  br label %msm6242_lock.exit

msm6242_lock.exit:                                ; preds = %while.body.i.4, %while.body.i.3.msm6242_lock.exit_crit_edge, %while.body.i.2.msm6242_lock.exit_crit_edge, %while.body.i.1.msm6242_lock.exit_crit_edge, %while.body.i.msm6242_lock.exit_crit_edge, %entry.msm6242_lock.exit_crit_edge
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr i32, ptr %51, i32 1
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #4, !srcloc !34
  %and.i76 = and i32 %52, 15
  %mul = mul nuw nsw i32 %and.i76, 10
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #4, !srcloc !34
  %and.i77 = and i32 %55, 15
  %add = add nuw nsw i32 %and.i77, %mul
  %56 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add, ptr %tm, align 4
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %arrayidx.i78 = getelementptr i32, ptr %58, i32 3
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i78) #4, !srcloc !34
  %and.i79 = and i32 %59, 15
  %mul4 = mul nuw nsw i32 %and.i79, 10
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %arrayidx.i80 = getelementptr i32, ptr %61, i32 2
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i80) #4, !srcloc !34
  %and.i81 = and i32 %62, 15
  %add6 = add nuw nsw i32 %and.i81, %mul4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %63 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %add6, ptr %tm_min, align 4
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %arrayidx.i82 = getelementptr i32, ptr %65, i32 5
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i82) #4, !srcloc !34
  %and = and i32 %66, 3
  %mul8 = mul nuw nsw i32 %and, 10
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %arrayidx.i84 = getelementptr i32, ptr %68, i32 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i84) #4, !srcloc !34
  %and.i85 = and i32 %69, 15
  %add10 = add nuw nsw i32 %and.i85, %mul8
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %70 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add10, ptr %tm_hour, align 4
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %arrayidx.i86 = getelementptr i32, ptr %72, i32 7
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i86) #4, !srcloc !34
  %and.i87 = and i32 %73, 15
  %mul12 = mul nuw nsw i32 %and.i87, 10
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %arrayidx.i88 = getelementptr i32, ptr %75, i32 6
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i88) #4, !srcloc !34
  %and.i89 = and i32 %76, 15
  %add14 = add nuw nsw i32 %and.i89, %mul12
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %77 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add14, ptr %tm_mday, align 4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %arrayidx.i90 = getelementptr i32, ptr %79, i32 12
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i90) #4, !srcloc !34
  %and.i91 = and i32 %80, 15
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %81 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and.i91, ptr %tm_wday, align 4
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %arrayidx.i92 = getelementptr i32, ptr %83, i32 9
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i92) #4, !srcloc !34
  %and.i93 = and i32 %84, 15
  %mul17 = mul nuw nsw i32 %and.i93, 10
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %arrayidx.i94 = getelementptr i32, ptr %86, i32 8
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i94) #4, !srcloc !34
  %and.i95 = and i32 %87, 15
  %add19 = add nsw i32 %mul17, -1
  %sub = add nsw i32 %add19, %and.i95
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %88 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sub, ptr %tm_mon, align 4
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %arrayidx.i96 = getelementptr i32, ptr %90, i32 11
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i96) #4, !srcloc !34
  %and.i97 = and i32 %91, 15
  %mul21 = mul nuw nsw i32 %and.i97, 10
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %arrayidx.i98 = getelementptr i32, ptr %93, i32 10
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i98) #4, !srcloc !34
  %and.i99 = and i32 %94, 15
  %add23 = add nuw nsw i32 %and.i99, %mul21
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %add23)
  %cmp = icmp ult i32 %add23, 70
  %add26 = add nuw nsw i32 %add23, 100
  %spec.select = select i1 %cmp, i32 %add26, i32 %add23
  %95 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %spec.select, ptr %tm_year, align 4
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  %arrayidx.i100 = getelementptr i32, ptr %97, i32 15
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i100) #4, !srcloc !34
  %and28 = and i32 %98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool.not = icmp eq i32 %and28, 0
  br i1 %tobool.not, label %if.then29, label %msm6242_lock.exit.if.end46_crit_edge

msm6242_lock.exit.if.end46_crit_edge:             ; preds = %msm6242_lock.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.then29:                                        ; preds = %msm6242_lock.exit
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  %arrayidx.i102 = getelementptr i32, ptr %100, i32 5
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i102) #4, !srcloc !34
  %and31 = and i32 %101, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %102 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tm_hour, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %103)
  %cmp34 = icmp eq i32 %103, 12
  br i1 %tobool32.not, label %land.lhs.true, label %land.lhs.true38.critedge

land.lhs.true:                                    ; preds = %if.then29
  br i1 %cmp34, label %land.lhs.true.if.end46.sink.split_crit_edge, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

land.lhs.true.if.end46.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46.sink.split

land.lhs.true38.critedge:                         ; preds = %if.then29
  br i1 %cmp34, label %land.lhs.true38.critedge.if.end46_crit_edge, label %if.then41

land.lhs.true38.critedge.if.end46_crit_edge:      ; preds = %land.lhs.true38.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.then41:                                        ; preds = %land.lhs.true38.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %add43 = add i32 %103, 12
  br label %if.end46.sink.split

if.end46.sink.split:                              ; preds = %if.then41, %land.lhs.true.if.end46.sink.split_crit_edge
  %.sink = phi i32 [ %add43, %if.then41 ], [ 0, %land.lhs.true.if.end46.sink.split_crit_edge ]
  %104 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %.sink, ptr %tm_hour, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end46.sink.split, %land.lhs.true38.critedge.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %msm6242_lock.exit.if.end46_crit_edge
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %arrayidx.i.i104 = getelementptr i32, ptr %106, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i104, i32 4) #4, !srcloc !33
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm6242_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx.i.i = getelementptr i32, ptr %3, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 5) #4, !srcloc !33
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx.i1116.i = getelementptr i32, ptr %5, i32 13
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i1116.i) #4, !srcloc !34
  %and17.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool.not18.i = icmp eq i32 %and17.i, 0
  br i1 %tobool.not18.i, label %entry.msm6242_lock.exit_crit_edge, label %while.body.i

entry.msm6242_lock.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %msm6242_lock.exit

while.body.i:                                     ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %arrayidx.i12.i = getelementptr i32, ptr %8, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i12.i, i32 4) #4, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 15032360) #4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %arrayidx.i13.i = getelementptr i32, ptr %11, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i13.i, i32 5) #4, !srcloc !33
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %arrayidx.i11.i = getelementptr i32, ptr %13, i32 13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i11.i) #4, !srcloc !34
  %and.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.msm6242_lock.exit_crit_edge, label %while.body.i.1

while.body.i.msm6242_lock.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %msm6242_lock.exit

while.body.i.1:                                   ; preds = %while.body.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %arrayidx.i12.i.1 = getelementptr i32, ptr %16, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i12.i.1, i32 4) #4, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 15032360) #4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %arrayidx.i13.i.1 = getelementptr i32, ptr %19, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i13.i.1, i32 5) #4, !srcloc !33
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %arrayidx.i11.i.1 = getelementptr i32, ptr %21, i32 13
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i11.i.1) #4, !srcloc !34
  %and.i.1 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.not.i.1, label %while.body.i.1.msm6242_lock.exit_crit_edge, label %while.body.i.2

while.body.i.1.msm6242_lock.exit_crit_edge:       ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %msm6242_lock.exit

while.body.i.2:                                   ; preds = %while.body.i.1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %arrayidx.i12.i.2 = getelementptr i32, ptr %24, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i12.i.2, i32 4) #4, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 15032360) #4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %arrayidx.i13.i.2 = getelementptr i32, ptr %27, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i13.i.2, i32 5) #4, !srcloc !33
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %arrayidx.i11.i.2 = getelementptr i32, ptr %29, i32 13
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i11.i.2) #4, !srcloc !34
  %and.i.2 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool.not.i.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool.not.i.2, label %while.body.i.2.msm6242_lock.exit_crit_edge, label %while.body.i.3

while.body.i.2.msm6242_lock.exit_crit_edge:       ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %msm6242_lock.exit

while.body.i.3:                                   ; preds = %while.body.i.2
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %arrayidx.i12.i.3 = getelementptr i32, ptr %32, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i12.i.3, i32 4) #4, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 15032360) #4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %arrayidx.i13.i.3 = getelementptr i32, ptr %35, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i13.i.3, i32 5) #4, !srcloc !33
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %arrayidx.i11.i.3 = getelementptr i32, ptr %37, i32 13
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i11.i.3) #4, !srcloc !34
  %and.i.3 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool.not.i.3 = icmp eq i32 %and.i.3, 0
  br i1 %tobool.not.i.3, label %while.body.i.3.msm6242_lock.exit_crit_edge, label %while.body.i.4

while.body.i.3.msm6242_lock.exit_crit_edge:       ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %msm6242_lock.exit

while.body.i.4:                                   ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %arrayidx.i12.i.4 = getelementptr i32, ptr %40, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i12.i.4, i32 4) #4, !srcloc !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 15032360) #4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %arrayidx.i13.i.4 = getelementptr i32, ptr %43, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i13.i.4, i32 5) #4, !srcloc !33
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %arrayidx.i11.i.4 = getelementptr i32, ptr %45, i32 13
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i11.i.4) #4, !srcloc !34
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %arrayidx.i14.i = getelementptr i32, ptr %48, i32 13
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i14.i) #4, !srcloc !34
  %and.i15.i = and i32 %49, 15
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %and.i15.i) #7
  br label %msm6242_lock.exit

msm6242_lock.exit:                                ; preds = %while.body.i.4, %while.body.i.3.msm6242_lock.exit_crit_edge, %while.body.i.2.msm6242_lock.exit_crit_edge, %while.body.i.1.msm6242_lock.exit_crit_edge, %while.body.i.msm6242_lock.exit_crit_edge, %entry.msm6242_lock.exit_crit_edge
  %50 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tm, align 4
  %div = sdiv i32 %51, 10
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr i32, ptr %53, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %div) #4, !srcloc !33
  %54 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tm, align 4
  %rem = srem i32 %55, 10
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %rem) #4, !srcloc !33
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %58 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tm_min, align 4
  %div2 = sdiv i32 %59, 10
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %arrayidx.i75 = getelementptr i32, ptr %61, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i75, i32 %div2) #4, !srcloc !33
  %62 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tm_min, align 4
  %rem4 = srem i32 %63, 10
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %arrayidx.i76 = getelementptr i32, ptr %65, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i76, i32 %rem4) #4, !srcloc !33
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %arrayidx.i77 = getelementptr i32, ptr %67, i32 15
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i77) #4, !srcloc !34
  %and = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tm_hour7 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %69 = ptrtoint ptr %tm_hour7 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tm_hour7, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %msm6242_lock.exit
  call void @__sanitizer_cov_trace_pc() #6
  %div6 = sdiv i32 %70, 10
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %arrayidx.i79 = getelementptr i32, ptr %72, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i79, i32 %div6) #4, !srcloc !33
  br label %if.end14

if.else:                                          ; preds = %msm6242_lock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %70)
  %cmp = icmp sgt i32 %70, 11
  br i1 %cmp, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %sub = add nsw i32 %70, -12
  %div1091 = udiv i32 %sub, 10
  %add = add nuw nsw i32 %div1091, 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %arrayidx.i80 = getelementptr i32, ptr %74, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i80, i32 %add) #4, !srcloc !33
  br label %if.end14

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %div13 = sdiv i32 %70, 10
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %arrayidx.i81 = getelementptr i32, ptr %76, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i81, i32 %div13) #4, !srcloc !33
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.then8, %if.then
  %tm_hour15 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %77 = ptrtoint ptr %tm_hour15 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tm_hour15, align 4
  %rem16 = srem i32 %78, 10
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %arrayidx.i82 = getelementptr i32, ptr %80, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i82, i32 %rem16) #4, !srcloc !33
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %81 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tm_mday, align 4
  %div17 = sdiv i32 %82, 10
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %arrayidx.i83 = getelementptr i32, ptr %84, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i83, i32 %div17) #4, !srcloc !33
  %85 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tm_mday, align 4
  %rem19 = srem i32 %86, 10
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %arrayidx.i84 = getelementptr i32, ptr %88, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i84, i32 %rem19) #4, !srcloc !33
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %89 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tm_wday, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %cmp20.not = icmp eq i32 %90, -1
  br i1 %cmp20.not, label %if.end14.if.end23_crit_edge, label %if.then21

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  %arrayidx.i85 = getelementptr i32, ptr %92, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i85, i32 %90) #4, !srcloc !33
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end14.if.end23_crit_edge
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %93 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tm_mon, align 4
  %add24 = add i32 %94, 1
  %div25 = sdiv i32 %add24, 10
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %arrayidx.i86 = getelementptr i32, ptr %96, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i86, i32 %div25) #4, !srcloc !33
  %97 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tm_mon, align 4
  %add27 = add i32 %98, 1
  %rem28 = srem i32 %add27, 10
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  %arrayidx.i87 = getelementptr i32, ptr %100, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i87, i32 %rem28) #4, !srcloc !33
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %101 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tm_year, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %102)
  %cmp29 = icmp sgt i32 %102, 99
  br i1 %cmp29, label %if.then30, label %if.end23.if.end33_crit_edge

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %sub32 = add nsw i32 %102, -100
  %103 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %sub32, ptr %tm_year, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end23.if.end33_crit_edge
  %104 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tm_year, align 4
  %div35 = sdiv i32 %105, 10
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 4
  %arrayidx.i88 = getelementptr i32, ptr %107, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i88, i32 %div35) #4, !srcloc !33
  %108 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tm_year, align 4
  %rem37 = srem i32 %109, 10
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  %arrayidx.i89 = getelementptr i32, ptr %111, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i89, i32 %rem37) #4, !srcloc !33
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %arrayidx.i.i90 = getelementptr i32, ptr %113, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i90, i32 4) #4, !srcloc !33
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_rtc_msm6242__227_223_msm6242_rtc_driver_init6, !1, !"__initcall__kmod_rtc_msm6242__227_223_msm6242_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-msm6242.c", i32 223, i32 1}
!2 = !{ptr @__exitcall_msm6242_rtc_driver_exit, !1, !"__exitcall_msm6242_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author228, !4, !"__UNIQUE_ID_author228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-msm6242.c", i32 225, i32 1}
!5 = !{ptr @__UNIQUE_ID_file229, !6, !"__UNIQUE_ID_file229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-msm6242.c", i32 226, i32 1}
!7 = !{ptr @__UNIQUE_ID_license230, !6, !"__UNIQUE_ID_license230", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description231, !9, !"__UNIQUE_ID_description231", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-msm6242.c", i32 227, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias232, !11, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-msm6242.c", i32 228, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-msm6242.c", i32 208, i32 45}
!14 = !{ptr @msm6242_rtc_ops, !15, !"msm6242_rtc_ops", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-msm6242.c", i32 184, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-msm6242.c", i32 105, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @msm6242_lock._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @msm6242_lock._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @msm6242_rtc_driver, !23, !"msm6242_rtc_driver", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-msm6242.c", i32 217, i32 31}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2980775}
!34 = !{i64 2981193}
