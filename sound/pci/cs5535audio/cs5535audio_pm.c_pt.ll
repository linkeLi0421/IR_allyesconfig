; ModuleID = '/llk/IR_all_yes/sound/pci/cs5535audio/cs5535audio_pm.c_pt.bc'
source_filename = "../sound/pci/cs5535audio/cs5535audio_pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.cs5535audio = type { ptr, ptr, ptr, i32, ptr, i32, %struct.spinlock, ptr, ptr, [2 x %struct.cs5535audio_dma] }
%struct.cs5535audio_dma = type { ptr, %struct.snd_dma_buffer, ptr, i32, i32, i32, i32, i32, i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.cs5535audio_dma_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@snd_cs5535audio_pm = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_cs5535audio_suspend, ptr @snd_cs5535audio_resume, ptr @snd_cs5535audio_suspend, ptr @snd_cs5535audio_resume, ptr @snd_cs5535audio_suspend, ptr @snd_cs5535audio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_cs5535audio_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 82, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failure getting AC Link ready\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_cs5535audio_resume\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sound/pci/cs5535audio/cs5535audio_pm.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_cs5535audio_resume._entry_ptr = internal global ptr @snd_cs5535audio_resume._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"snd_cs5535audio_pm\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 100, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [42 x i8] c"../sound/pci/cs5535audio/cs5535audio_pm.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 82, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @snd_cs5535audio_resume._entry, ptr @snd_cs5535audio_resume._entry_ptr, ptr @snd_cs5535audio_pm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs5535audio_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #3
  %ac97 = getelementptr inbounds %struct.cs5535audio, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_suspend(ptr noundef %6) #3
  %arrayidx = getelementptr %struct.cs5535audio, ptr %3, i32 0, i32 9, i32 0
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %substream = getelementptr %struct.cs5535audio, ptr %3, i32 0, i32 9, i32 0, i32 2
  %7 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %substream, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %read_prd = getelementptr inbounds %struct.cs5535audio_dma_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %read_prd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_prd, align 4
  %call2 = tail call i32 %12(ptr noundef %3) #3
  %saved_prd = getelementptr %struct.cs5535audio, ptr %3, i32 0, i32 9, i32 0, i32 7
  %13 = ptrtoint ptr %saved_prd to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2, ptr %saved_prd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx.1 = getelementptr %struct.cs5535audio, ptr %3, i32 0, i32 9, i32 1
  %tobool.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %land.lhs.true.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.1

land.lhs.true.1:                                  ; preds = %if.end
  %substream.1 = getelementptr %struct.cs5535audio, ptr %3, i32 0, i32 9, i32 1, i32 2
  %14 = ptrtoint ptr %substream.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %substream.1, align 4
  %tobool1.not.1 = icmp eq ptr %15, null
  br i1 %tobool1.not.1, label %land.lhs.true.1.if.end.1_crit_edge, label %if.then.1

land.lhs.true.1.if.end.1_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.1

if.then.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %read_prd.1 = getelementptr inbounds %struct.cs5535audio_dma_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %read_prd.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_prd.1, align 4
  %call2.1 = tail call i32 %19(ptr noundef %3) #3
  %saved_prd.1 = getelementptr %struct.cs5535audio, ptr %3, i32 0, i32 9, i32 1, i32 7
  %20 = ptrtoint ptr %saved_prd.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call2.1, ptr %saved_prd.1, align 4
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %land.lhs.true.1.if.end.1_crit_edge, %if.end.if.end.1_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  %port.i = getelementptr inbounds %struct.cs5535audio, ptr %3, i32 0, i32 5
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port.i, align 4
  %add.i = add i32 %22, 12
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %23 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %23, i32 1024) #3, !srcloc !20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs5535audio_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %port = getelementptr inbounds %struct.cs5535audio, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %add = add i32 %5, 12
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 512) #3, !srcloc !20
  br label %do.body3

do.body3:                                         ; preds = %if.end.do.body3_crit_edge, %entry
  %timeout.0 = phi i32 [ 50, %entry ], [ %dec, %if.end.do.body3_crit_edge ]
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add5 = add i32 %8, 8
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %9 = inttoptr i32 %add7 to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #3, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  %11 = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %do.body3.if.end22_crit_edge

do.body3.if.end22_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

if.end:                                           ; preds = %do.body3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #3
  %dec = add nsw i32 %timeout.0, -1
  %tobool13.not = icmp eq i32 %dec, 0
  br i1 %tobool13.not, label %do.end19, label %if.end.do.body3_crit_edge

if.end.do.body3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body3

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %dev21 = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str) #6
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %do.body3.if.end22_crit_edge
  %arrayidx = getelementptr %struct.cs5535audio, ptr %3, i32 0, i32 9, i32 0
  %tobool23.not = icmp eq ptr %arrayidx, null
  br i1 %tobool23.not, label %if.end22.if.end30_crit_edge, label %land.lhs.true

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end22
  %substream = getelementptr %struct.cs5535audio, ptr %3, i32 0, i32 9, i32 0, i32 2
  %17 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %substream, align 4
  %tobool24.not = icmp eq ptr %18, null
  br i1 %tobool24.not, label %land.lhs.true.if.end30_crit_edge, label %if.then25

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %ops = getelementptr inbounds %struct.snd_pcm_substream, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %prepare = getelementptr inbounds %struct.snd_pcm_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prepare, align 4
  %call28 = tail call i32 %22(ptr noundef nonnull %18) #3
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %setup_prd = getelementptr inbounds %struct.cs5535audio_dma_ops, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %setup_prd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %setup_prd, align 4
  %saved_prd = getelementptr %struct.cs5535audio, ptr %3, i32 0, i32 9, i32 0, i32 7
  %27 = ptrtoint ptr %saved_prd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %saved_prd, align 4
  tail call void %26(ptr noundef %3, i32 noundef %28) #3
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %land.lhs.true.if.end30_crit_edge, %if.end22.if.end30_crit_edge
  %arrayidx.1 = getelementptr %struct.cs5535audio, ptr %3, i32 0, i32 9, i32 1
  %tobool23.not.1 = icmp eq ptr %arrayidx.1, null
  br i1 %tobool23.not.1, label %if.end30.if.end30.1_crit_edge, label %land.lhs.true.1

if.end30.if.end30.1_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30.1

land.lhs.true.1:                                  ; preds = %if.end30
  %substream.1 = getelementptr %struct.cs5535audio, ptr %3, i32 0, i32 9, i32 1, i32 2
  %29 = ptrtoint ptr %substream.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %substream.1, align 4
  %tobool24.not.1 = icmp eq ptr %30, null
  br i1 %tobool24.not.1, label %land.lhs.true.1.if.end30.1_crit_edge, label %if.then25.1

land.lhs.true.1.if.end30.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30.1

if.then25.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #5
  %ops.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %ops.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.1, align 4
  %prepare.1 = getelementptr inbounds %struct.snd_pcm_ops, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %prepare.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prepare.1, align 4
  %call28.1 = tail call i32 %34(ptr noundef nonnull %30) #3
  %35 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.1, align 4
  %setup_prd.1 = getelementptr inbounds %struct.cs5535audio_dma_ops, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %setup_prd.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %setup_prd.1, align 4
  %saved_prd.1 = getelementptr %struct.cs5535audio, ptr %3, i32 0, i32 9, i32 1, i32 7
  %39 = ptrtoint ptr %saved_prd.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %saved_prd.1, align 4
  tail call void %38(ptr noundef %3, i32 noundef %40) #3
  br label %if.end30.1

if.end30.1:                                       ; preds = %if.then25.1, %land.lhs.true.1.if.end30.1_crit_edge, %if.end30.if.end30.1_crit_edge
  %ac97 = getelementptr inbounds %struct.cs5535audio, ptr %3, i32 0, i32 1
  %41 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_resume(ptr noundef %42) #3
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %43 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @snd_cs5535audio_pm, !1, !"snd_cs5535audio_pm", i1 false, i1 false}
!1 = !{!"../sound/pci/cs5535audio/cs5535audio_pm.c", i32 100, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/cs5535audio/cs5535audio_pm.c", i32 82, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @snd_cs5535audio_resume._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @snd_cs5535audio_resume._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2154719998}
!20 = !{i64 4980731}
!21 = !{i64 2154720676}
!22 = !{i64 4981149}
!23 = !{i64 2154721676}
