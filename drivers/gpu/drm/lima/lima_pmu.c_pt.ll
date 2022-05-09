; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/lima/lima_pmu.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_pmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lima_ip = type { ptr, i32, i8, ptr, i32, %union.anon }
%union.anon = type { %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lima_device = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [26 x %struct.lima_ip], [2 x %struct.lima_sched_pipe], ptr, i64, i64, ptr, i32, %struct.lima_devfreq, %struct.lima_dump_head, %struct.list_head, %struct.mutex }
%struct.lima_sched_pipe = type { %struct.drm_gpu_scheduler, i64, i32, %struct.spinlock, ptr, ptr, ptr, [8 x ptr], i32, [2 x ptr], i32, [8 x ptr], i32, ptr, ptr, i32, i8, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lima_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.lima_dump_head = type { i32, i16, i16, i32, i32, [4 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/lima/lima_pmu.c\00", [32 x i8] zeroinitializer }, align 32
@lima_pmu_wait_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 24, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"timeout wait pmu cmd\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lima_pmu_wait_cmd\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lima_pmu_wait_cmd._entry_ptr = internal global ptr @lima_pmu_wait_cmd._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 20, i32 8 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [35 x i8] c"../drivers/gpu/drm/lima/lima_pmu.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 24, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @lima_pmu_wait_cmd._entry, ptr @lima_pmu_wait_cmd._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lima_pmu_wait_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_pmu_resume(ptr nocapture noundef readonly %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lima_pmu_hw_init(ptr noundef %ip)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lima_pmu_hw_init(ptr nocapture noundef readonly %ip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 3
  %0 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 -65536) #4, !srcloc !19
  %4 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %do.body9

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body9:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %7 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iomem, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !19
  %call14 = tail call fastcc i32 @lima_pmu_wait_cmd(ptr noundef %ip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body9.if.end17_crit_edge, label %do.body9.cleanup_crit_edge

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body9.if.end17_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.end17:                                         ; preds = %do.body9.if.end17_crit_edge, %entry.if.end17_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.body9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call14, %do.body9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_pmu_suspend(ptr nocapture noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lima_pmu_hw_fini(ptr noundef %ip)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lima_pmu_hw_fini(ptr nocapture noundef %ip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ip, align 4
  %id.i = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %present.i = getelementptr %struct.lima_device, ptr %3, i32 0, i32 11, i32 11, i32 2
  %6 = ptrtoint ptr %present.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %present.i, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %cmp.i, label %for.body.preheader.i, label %if.else.i

for.body.preheader.i:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %ret.1.i = select i1 %tobool.not.i, i32 3, i32 7
  %present.1.i = getelementptr %struct.lima_device, ptr %3, i32 0, i32 11, i32 12, i32 2
  %8 = ptrtoint ptr %present.1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %present.1.i, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.1.i = icmp eq i8 %9, 0
  %or7.1.i = select i1 %tobool.not.1.i, i32 0, i32 8
  %ret.1.1.i = or i32 %or7.1.i, %ret.1.i
  %present.2.i = getelementptr %struct.lima_device, ptr %3, i32 0, i32 11, i32 13, i32 2
  %10 = ptrtoint ptr %present.2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %present.2.i, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.2.i = icmp eq i8 %11, 0
  %or7.2.i = select i1 %tobool.not.2.i, i32 0, i32 16
  %ret.1.2.i = or i32 %ret.1.1.i, %or7.2.i
  %present.3.i = getelementptr %struct.lima_device, ptr %3, i32 0, i32 11, i32 14, i32 2
  %12 = ptrtoint ptr %present.3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %present.3.i, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.3.i = icmp eq i8 %13, 0
  %or7.3.i = select i1 %tobool.not.3.i, i32 0, i32 32
  %ret.1.3.i = or i32 %ret.1.2.i, %or7.3.i
  br label %lima_pmu_get_ip_mask.exit

if.else.i:                                        ; preds = %if.then
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 3
  %present20.i = getelementptr %struct.lima_device, ptr %3, i32 0, i32 11, i32 12, i32 2
  %14 = ptrtoint ptr %present20.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %present20.i, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool21.not.i = icmp eq i8 %15, 0
  br i1 %tobool21.not.i, label %for.cond15.i, label %if.else.i.if.then22.i_crit_edge

if.else.i.if.then22.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

for.cond15.i:                                     ; preds = %if.else.i
  %present20.1.i = getelementptr %struct.lima_device, ptr %3, i32 0, i32 11, i32 13, i32 2
  %16 = ptrtoint ptr %present20.1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %present20.1.i, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool21.not.1.i = icmp eq i8 %17, 0
  br i1 %tobool21.not.1.i, label %for.cond15.1.i, label %for.cond15.i.if.then22.i_crit_edge

for.cond15.i.if.then22.i_crit_edge:               ; preds = %for.cond15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

for.cond15.1.i:                                   ; preds = %for.cond15.i
  %present20.2.i = getelementptr %struct.lima_device, ptr %3, i32 0, i32 11, i32 14, i32 2
  %18 = ptrtoint ptr %present20.2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %present20.2.i, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool21.not.2.i = icmp eq i8 %19, 0
  br i1 %tobool21.not.2.i, label %for.cond15.1.i.for.end27.i_crit_edge, label %for.cond15.1.i.if.then22.i_crit_edge

for.cond15.1.i.if.then22.i_crit_edge:             ; preds = %for.cond15.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

for.cond15.1.i.for.end27.i_crit_edge:             ; preds = %for.cond15.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end27.i

if.then22.i:                                      ; preds = %for.cond15.1.i.if.then22.i_crit_edge, %for.cond15.i.if.then22.i_crit_edge, %if.else.i.if.then22.i_crit_edge
  %or23.i = or i32 %spec.select.i, 4
  br label %for.end27.i

for.end27.i:                                      ; preds = %if.then22.i, %for.cond15.1.i.for.end27.i_crit_edge
  %ret.3.i = phi i32 [ %or23.i, %if.then22.i ], [ %spec.select.i, %for.cond15.1.i.for.end27.i_crit_edge ]
  %present33.i = getelementptr %struct.lima_device, ptr %3, i32 0, i32 11, i32 15, i32 2
  %20 = ptrtoint ptr %present33.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %present33.i, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool34.not.i = icmp eq i8 %21, 0
  br i1 %tobool34.not.i, label %for.cond28.i, label %for.end27.i.if.then35.i_crit_edge

for.end27.i.if.then35.i_crit_edge:                ; preds = %for.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then35.i

for.cond28.i:                                     ; preds = %for.end27.i
  %present33.1.i = getelementptr %struct.lima_device, ptr %3, i32 0, i32 11, i32 16, i32 2
  %22 = ptrtoint ptr %present33.1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %present33.1.i, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool34.not.1.i = icmp eq i8 %23, 0
  br i1 %tobool34.not.1.i, label %for.cond28.1.i, label %for.cond28.i.if.then35.i_crit_edge

for.cond28.i.if.then35.i_crit_edge:               ; preds = %for.cond28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then35.i

for.cond28.1.i:                                   ; preds = %for.cond28.i
  %present33.2.i = getelementptr %struct.lima_device, ptr %3, i32 0, i32 11, i32 17, i32 2
  %24 = ptrtoint ptr %present33.2.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %present33.2.i, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool34.not.2.i = icmp eq i8 %25, 0
  br i1 %tobool34.not.2.i, label %for.cond28.2.i, label %for.cond28.1.i.if.then35.i_crit_edge

for.cond28.1.i.if.then35.i_crit_edge:             ; preds = %for.cond28.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then35.i

for.cond28.2.i:                                   ; preds = %for.cond28.1.i
  %present33.3.i = getelementptr %struct.lima_device, ptr %3, i32 0, i32 11, i32 18, i32 2
  %26 = ptrtoint ptr %present33.3.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %present33.3.i, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool34.not.3.i = icmp eq i8 %27, 0
  br i1 %tobool34.not.3.i, label %for.cond28.2.i.lima_pmu_get_ip_mask.exit_crit_edge, label %for.cond28.2.i.if.then35.i_crit_edge

for.cond28.2.i.if.then35.i_crit_edge:             ; preds = %for.cond28.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then35.i

for.cond28.2.i.lima_pmu_get_ip_mask.exit_crit_edge: ; preds = %for.cond28.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lima_pmu_get_ip_mask.exit

if.then35.i:                                      ; preds = %for.cond28.2.i.if.then35.i_crit_edge, %for.cond28.1.i.if.then35.i_crit_edge, %for.cond28.i.if.then35.i_crit_edge, %for.end27.i.if.then35.i_crit_edge
  %or36.i = or i32 %ret.3.i, 8
  br label %lima_pmu_get_ip_mask.exit

lima_pmu_get_ip_mask.exit:                        ; preds = %if.then35.i, %for.cond28.2.i.lima_pmu_get_ip_mask.exit_crit_edge, %for.body.preheader.i
  %ret.4.i = phi i32 [ %or36.i, %if.then35.i ], [ %ret.1.3.i, %for.body.preheader.i ], [ %ret.3.i, %for.cond28.2.i.lima_pmu_get_ip_mask.exit_crit_edge ]
  %28 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ret.4.i, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %lima_pmu_get_ip_mask.exit, %entry.if.end_crit_edge
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 3
  %29 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  %32 = xor i32 %31, -1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data, align 4
  %and = and i32 %35, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end17_crit_edge, label %do.body

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %36 = tail call i32 @llvm.bswap.i32(i32 %and)
  %37 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iomem, align 4
  %add.ptr8 = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %36) #4, !srcloc !19
  %39 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ip, align 4
  %id = getelementptr inbounds %struct.lima_device, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp = icmp eq i32 %42, 0
  br i1 %cmp, label %do.body10, label %if.else

do.body10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %43 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iomem, align 4
  %add.ptr14 = getelementptr i8, ptr %44, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 16777216) #4, !srcloc !19
  br label %if.end17

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call fastcc i32 @lima_pmu_wait_cmd(ptr noundef %ip)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %do.body10, %if.end.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lima_pmu_init(ptr nocapture noundef readonly %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lima_pmu_hw_init(ptr noundef %ip)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lima_pmu_fini(ptr nocapture noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lima_pmu_hw_fini(ptr noundef %ip)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lima_pmu_wait_cmd(ptr nocapture noundef readonly %ip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %call = tail call i64 @ktime_get() #4
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 22) #4
  %iomem = getelementptr inbounds %struct.lima_ip, ptr %ip, i32 0, i32 3
  %2 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomem, align 4
  %add.ptr59 = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #4, !srcloc !21
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  %and60 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool.not61 = icmp eq i32 %and60, 0
  br i1 %tobool.not61, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then27.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call14 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %if.then17, label %if.then27

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem, align 4
  %add.ptr21 = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #4, !srcloc !21
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  br label %for.end

if.then27:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #4
  %10 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomem, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !21
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  %and = and i32 %13, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then27.land.lhs.true_crit_edge, label %if.then27.for.end_crit_edge

if.then27.for.end_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.then27.land.lhs.true_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.end:                                          ; preds = %if.then27.for.end_crit_edge, %if.then17, %entry.for.end_crit_edge
  %v.0 = phi i32 [ %9, %if.then17 ], [ %5, %entry.for.end_crit_edge ], [ %13, %if.then27.for.end_crit_edge ]
  %and30 = and i32 %v.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.end36, label %do.body39

do.end36:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.1) #7
  br label %cleanup

do.body39:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %iomem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomem, align 4
  %add.ptr43 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 16777216) #4, !srcloc !19
  br label %cleanup

cleanup:                                          ; preds = %do.body39, %do.end36
  %retval.0 = phi i32 [ -110, %do.end36 ], [ 0, %do.body39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/lima/lima_pmu.c", i32 20, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/lima/lima_pmu.c", i32 24, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @lima_pmu_wait_cmd._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @lima_pmu_wait_cmd._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 2152994515}
!19 = !{i64 2984393}
!20 = !{i64 2152994946}
!21 = !{i64 2984811}
!22 = !{i64 2152995644}
!23 = !{i64 2152995903}
!24 = !{i8 0, i8 2}
!25 = !{i64 2152996595}
!26 = !{i64 2152996854}
!27 = !{i64 2152997418}
!28 = !{i64 2152991065}
!29 = !{i64 2152991547}
!30 = !{i64 2152993514}
