; ModuleID = '/llk/IR_all_yes/sound/pcmcia/pdaudiocf/pdaudiocf_core.c_pt.bc'
source_filename = "../sound/pcmcia/pdaudiocf/pdaudiocf_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_pdacf = type { ptr, i32, i32, i32, %struct.mutex, [8 x i16], i16, %struct.spinlock, ptr, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ak4117 = type { ptr, ptr, ptr, ptr, i8, %struct.spinlock, [5 x i8], [13 x ptr], ptr, [4 x i32], i8, i8, i8, %struct.timer_list, ptr, ptr }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.68, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.68 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@snd_pdacf_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_pdacf_create.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&chip->ak4117_lock\00", [45 x i8] zeroinitializer }, align 32
@snd_pdacf_ak4117_create.pgm = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\18B\8B\FF\F8", [27 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pdaudiocf\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PDAudioCF\0A\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FPGA revision      : 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sound/pcmcia/pdaudiocf/pdaudiocf_core.c\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013AK4117 ready timeout (read)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013AK4117 read timeout (read2)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013AK4117 ready timeout (write)\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 149, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 150, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [4 x i8] c"pgm\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 182, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 138, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 130, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 132, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 31, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 41, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [43 x i8] c"../sound/pcmcia/pdaudiocf/pdaudiocf_core.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 62, i32 4 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @snd_pdacf_create.__key, ptr @.str, ptr @snd_pdacf_create.__key.1, ptr @.str.2, ptr @snd_pdacf_ak4117_create.pgm, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pdacf_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pdacf_create.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_pdacf_ak4117_create.pgm to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pdacf_reinit(ptr nocapture noundef %chip, i32 noundef %resume) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pdacf_reset(ptr noundef %chip, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resume)
  %tobool.not = icmp eq i32 %resume, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %suspend_reg_scr = getelementptr inbounds %struct.snd_pdacf, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %suspend_reg_scr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %suspend_reg_scr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %arrayidx.i = getelementptr %struct.snd_pdacf, ptr %chip, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %arrayidx.i, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %1) #4
  %port.i = getelementptr inbounds %struct.snd_pdacf, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i, align 4
  %add.i = add i32 %5, 8
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 %3) #4, !srcloc !31
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ak4117 = getelementptr inbounds %struct.snd_pdacf, ptr %chip, i32 0, i32 8
  %7 = ptrtoint ptr %ak4117 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ak4117, align 4
  tail call void @snd_ak4117_reinit(ptr noundef %8) #4
  %arrayidx = getelementptr %struct.snd_pdacf, ptr %chip, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayidx, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %10) #4
  %port.i11 = getelementptr inbounds %struct.snd_pdacf, ptr %chip, i32 0, i32 2
  %13 = ptrtoint ptr %port.i11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i11, align 4
  %add.i12 = add i32 %14, 6
  %and.i13 = and i32 %add.i12, 1048575
  %add2.i14 = or i32 %and.i13, -18874368
  %15 = inttoptr i32 %add2.i14 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 %12) #4, !srcloc !31
  %arrayidx2 = getelementptr %struct.snd_pdacf, ptr %chip, i32 0, i32 5, i32 6
  %16 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %arrayidx2, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %17) #4
  %20 = ptrtoint ptr %port.i11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i11, align 4
  %add.i17 = add i32 %21, 12
  %and.i18 = and i32 %add.i17, 1048575
  %add2.i19 = or i32 %and.i18, -18874368
  %22 = inttoptr i32 %add2.i19 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 %19) #4, !srcloc !31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdacf_reset(ptr nocapture noundef %chip, i32 noundef %powerdown) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port.i = getelementptr inbounds %struct.snd_pdacf, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #4, !srcloc !32
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %5 = and i16 %4, -73
  %6 = or i16 %5, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %arrayidx.i = getelementptr %struct.snd_pdacf, ptr %chip, i32 0, i32 5, i32 4
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %arrayidx.i, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %6) #4
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add.i2 = add i32 %10, 8
  %and.i3 = and i32 %add.i2, 1048575
  %add2.i = or i32 %and.i3, -18874368
  %11 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 %8) #4, !srcloc !31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 1073740) #4
  %13 = or i16 %5, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayidx.i, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %13) #4
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i, align 4
  %add.i6 = add i32 %17, 8
  %and.i7 = and i32 %add.i6, 1048575
  %add2.i8 = or i32 %and.i7, -18874368
  %18 = inttoptr i32 %add2.i8 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 %15) #4, !srcloc !31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 42949600) #4
  %20 = and i16 %13, -69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %arrayidx.i, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %20) #4
  %23 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port.i, align 4
  %add.i11 = add i32 %24, 8
  %and.i12 = and i32 %add.i11, 1048575
  %add2.i13 = or i32 %and.i12, -18874368
  %25 = inttoptr i32 %add2.i13 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %25, i16 %22) #4, !srcloc !31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 1073740) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %powerdown)
  %tobool.not = icmp eq i32 %powerdown, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %27 = and i16 %4, -77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %arrayidx.i, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %27) #4
  %30 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port.i, align 4
  %add.i16 = add i32 %31, 8
  %and.i17 = and i32 %add.i16, 1048575
  %add2.i18 = or i32 %and.i17, -18874368
  %32 = inttoptr i32 %add2.i18 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %32, i16 %29) #4, !srcloc !31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 42949600) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ak4117_reinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_pdacf_create(ptr noundef %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 240) #7
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %card, ptr %call7.i.i, align 8
  %reg_lock = getelementptr inbounds %struct.snd_pdacf, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %reg_lock, ptr noundef nonnull @.str, ptr noundef nonnull @snd_pdacf_create.__key) #4
  %ak4117_lock = getelementptr inbounds %struct.snd_pdacf, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %ak4117_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_pdacf_create.__key.1, i16 noundef signext 3) #4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %private_data, align 8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call7.i.i, align 8
  %call.i.i = tail call i32 @snd_card_rw_proc_new(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @pdacf_proc_read, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pdacf_ak4117_create(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pdacf_reset(ptr noundef %chip, i32 noundef 0)
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %ak4117 = getelementptr inbounds %struct.snd_pdacf, ptr %chip, i32 0, i32 8
  %call1 = tail call i32 @snd_ak4117_create(ptr noundef %1, ptr noundef nonnull @pdacf_ak4117_read, ptr noundef nonnull @pdacf_ak4117_write, ptr noundef nonnull @snd_pdacf_ak4117_create.pgm, ptr noundef %chip, ptr noundef %ak4117) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %port.i = getelementptr inbounds %struct.snd_pdacf, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 4
  %add.i = add i32 %3, 6
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %6 = and i16 %5, -769
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %arrayidx.i = getelementptr %struct.snd_pdacf, ptr %chip, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %arrayidx.i, align 2
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add.i60 = add i32 %10, 6
  %and.i61 = and i32 %add.i60, 1048575
  %add2.i = or i32 %and.i61, -18874368
  %11 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 %6) #4, !srcloc !31
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add.i63 = add i32 %13, 8
  %and.i64 = and i32 %add.i63, 1048575
  %add1.i65 = or i32 %and.i64, -18874368
  %14 = inttoptr i32 %add1.i65 to ptr
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %14) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %16 = and i16 %15, -12304
  %17 = or i16 %16, 12
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %arrayidx.i66 = getelementptr %struct.snd_pdacf, ptr %chip, i32 0, i32 5, i32 4
  %19 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %arrayidx.i66, align 2
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i, align 4
  %add.i68 = add i32 %21, 8
  %and.i69 = and i32 %add.i68, 1048575
  %add2.i70 = or i32 %and.i69, -18874368
  %22 = inttoptr i32 %add2.i70 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 %17) #4, !srcloc !31
  %23 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port.i, align 4
  %add.i72 = add i32 %24, 12
  %and.i73 = and i32 %add.i72, 1048575
  %add1.i74 = or i32 %and.i73, -18874368
  %25 = inttoptr i32 %add1.i74 to ptr
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %25) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %27 = and i16 %26, -3984
  %28 = or i16 %27, 3202
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %arrayidx.i75 = getelementptr %struct.snd_pdacf, ptr %chip, i32 0, i32 5, i32 6
  %30 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %arrayidx.i75, align 2
  %31 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port.i, align 4
  %add.i77 = add i32 %32, 12
  %and.i78 = and i32 %add.i77, 1048575
  %add2.i79 = or i32 %and.i78, -18874368
  %33 = inttoptr i32 %add2.i79 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 %28) #4, !srcloc !31
  %34 = ptrtoint ptr %ak4117 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ak4117, align 4
  %change_callback_private = getelementptr inbounds %struct.ak4117, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %change_callback_private to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %chip, ptr %change_callback_private, align 4
  %37 = load ptr, ptr %ak4117, align 4
  %change_callback = getelementptr inbounds %struct.ak4117, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %change_callback to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @snd_pdacf_ak4117_change, ptr %change_callback, align 4
  %39 = load ptr, ptr %ak4117, align 4
  %change_callback_private.i = getelementptr inbounds %struct.ak4117, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %change_callback_private.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %change_callback_private.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.snd_pdacf, ptr %41, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #4
  %arrayidx.i80 = getelementptr %struct.snd_pdacf, ptr %41, i32 0, i32 5, i32 4
  %42 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.i80, align 4
  %rcs0.i = getelementptr inbounds %struct.ak4117, ptr %39, i32 0, i32 10
  %44 = ptrtoint ptr %rcs0.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rcs0.i, align 4
  %46 = and i16 %43, -513
  %47 = and i8 %45, -128
  %48 = zext i8 %47 to i16
  %49 = shl nuw nsw i16 %48, 2
  %val.0.i = or i16 %49, %46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %50 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %val.0.i, ptr %arrayidx.i80, align 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %val.0.i) #4
  %port.i.i = getelementptr inbounds %struct.snd_pdacf, ptr %41, i32 0, i32 2
  %52 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %53, 8
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %54 = inttoptr i32 %add2.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %54, i16 %51) #4, !srcloc !31
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ak4117_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @pdacf_ak4117_read(ptr noundef %private_data, i8 noundef zeroext %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ak4117_lock = getelementptr inbounds %struct.snd_pdacf, ptr %private_data, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ak4117_lock) #4
  %port.i = getelementptr inbounds %struct.snd_pdacf, ptr %private_data, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %timeout.0 = phi i32 [ 1000, %entry ], [ %dec, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %4 = and i16 %3, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 1073740) #4
  %dec = add nsw i32 %timeout.0, -1
  %cmp7 = icmp eq i32 %dec, 0
  br i1 %cmp7, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ak4117_lock, i32 noundef %call2) #4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 31, ptr noundef nonnull @.str.7) #4
  br label %cleanup

while.end:                                        ; preds = %while.cond
  %conv11 = zext i8 %reg to i16
  %shl = shl nuw i16 %conv11, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %arrayidx.i = getelementptr %struct.snd_pdacf, ptr %private_data, i32 0, i32 5, i32 7
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %shl, ptr %arrayidx.i, align 2
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i, align 4
  %add.i43 = add i32 %8, 14
  %and.i44 = and i32 %add.i43, 1048575
  %add2.i = or i32 %and.i44, -18874368
  %9 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %conv11) #4, !srcloc !31
  br label %while.cond13

while.cond13:                                     ; preds = %while.body18.while.cond13_crit_edge, %while.end
  %timeout.1 = phi i32 [ 1000, %while.end ], [ %dec19, %while.body18.while.cond13_crit_edge ]
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 4
  %add.i46 = add i32 %11, 8
  %and.i47 = and i32 %add.i46, 1048575
  %add1.i48 = or i32 %and.i47, -18874368
  %12 = inttoptr i32 %add1.i48 to ptr
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %12) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %14 = and i16 %13, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool17.not = icmp eq i16 %14, 0
  br i1 %tobool17.not, label %while.end25, label %while.body18

while.body18:                                     ; preds = %while.cond13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 1073740) #4
  %dec19 = add nsw i32 %timeout.1, -1
  %cmp20 = icmp eq i32 %dec19, 0
  br i1 %cmp20, label %if.then22, label %while.body18.while.cond13_crit_edge

while.body18.while.cond13_crit_edge:              ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond13

if.then22:                                        ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ak4117_lock, i32 noundef %call2) #4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 41, ptr noundef nonnull @.str.8) #4
  br label %cleanup

while.end25:                                      ; preds = %while.cond13
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i, align 4
  %add.i50 = add i32 %17, 14
  %and.i51 = and i32 %add.i50, 1048575
  %add1.i52 = or i32 %and.i51, -18874368
  %18 = inttoptr i32 %add1.i52 to ptr
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %18) #4, !srcloc !32
  %20 = lshr i16 %19, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %conv27 = trunc i16 %20 to i8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ak4117_lock, i32 noundef %call2) #4
  br label %cleanup

cleanup:                                          ; preds = %while.end25, %if.then22, %if.then
  %retval.0 = phi i8 [ 0, %if.then ], [ 0, %if.then22 ], [ %conv27, %while.end25 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdacf_ak4117_write(ptr noundef %private_data, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ak4117_lock = getelementptr inbounds %struct.snd_pdacf, ptr %private_data, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ak4117_lock) #4
  %port = getelementptr inbounds %struct.snd_pdacf, ptr %private_data, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %timeout.0 = phi i32 [ 1000, %entry ], [ %dec, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 8
  %and = and i32 %add, 1048575
  %add5 = or i32 %and, -18874368
  %2 = inttoptr i32 %add5 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %4 = and i16 %3, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %do.body14, label %while.body

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 1073740) #4
  %dec = add nsw i32 %timeout.0, -1
  %cmp11 = icmp eq i32 %dec, 0
  br i1 %cmp11, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ak4117_lock, i32 noundef %call2) #4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.6, i32 noundef 62, ptr noundef nonnull @.str.9) #4
  br label %cleanup

do.body14:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %conv18 = zext i8 %reg to i16
  %shl = shl nuw i16 %conv18, 8
  %conv19 = zext i8 %val to i16
  %or = or i16 %shl, %conv19
  %or20 = or i16 %or, 8192
  %6 = tail call i16 @llvm.bswap.i16(i16 %or20)
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add23 = add i32 %8, 14
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %9 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %6) #4, !srcloc !31
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ak4117_lock, i32 noundef %call2) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body14, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_pdacf_ak4117_change(ptr nocapture noundef readonly %ak4117, i8 noundef zeroext %c0, i8 noundef zeroext %c1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %c0)
  %tobool.not = icmp sgt i8 %c0, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %change_callback_private = getelementptr inbounds %struct.ak4117, ptr %ak4117, i32 0, i32 14
  %0 = ptrtoint ptr %change_callback_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %change_callback_private, align 4
  %reg_lock = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #4
  %arrayidx = getelementptr %struct.snd_pdacf, ptr %1, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  %rcs0 = getelementptr inbounds %struct.ak4117, ptr %ak4117, i32 0, i32 10
  %4 = ptrtoint ptr %rcs0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rcs0, align 4
  %6 = and i16 %3, -513
  %7 = and i8 %5, -128
  %8 = zext i8 %7 to i16
  %9 = shl nuw nsw i16 %8, 2
  %val.0 = or i16 %9, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %val.0, ptr %arrayidx, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %val.0) #4
  %port.i = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add.i = add i32 %13, 8
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %14, i16 %11) #4, !srcloc !31
  tail call void @mutex_unlock(ptr noundef %reg_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_pdacf_powerdown(ptr nocapture noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port.i = getelementptr inbounds %struct.snd_pdacf, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #4, !srcloc !32
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %suspend_reg_scr = getelementptr inbounds %struct.snd_pdacf, ptr %chip, i32 0, i32 6
  %5 = ptrtoint ptr %suspend_reg_scr to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %suspend_reg_scr, align 4
  %6 = or i16 %4, 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %arrayidx.i = getelementptr %struct.snd_pdacf, ptr %chip, i32 0, i32 5, i32 4
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %arrayidx.i, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %6) #4
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add.i24 = add i32 %10, 8
  %and.i25 = and i32 %add.i24, 1048575
  %add2.i = or i32 %and.i25, -18874368
  %11 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 %8) #4, !srcloc !31
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add = add i32 %13, 12
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %14 = inttoptr i32 %add2 to ptr
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %14) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %16 = and i16 %15, -3841
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port.i, align 4
  %add9 = add i32 %18, 12
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %19 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %19, i16 %16) #4, !srcloc !31
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i, align 4
  %add.i.i = add i32 %21, 8
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %22 = inttoptr i32 %add1.i.i to ptr
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %22) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %24 = and i16 %23, -18433
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %26 = or i16 %25, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %arrayidx.i, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %26) #4
  %29 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port.i, align 4
  %add.i2.i = add i32 %30, 8
  %and.i3.i = and i32 %add.i2.i, 1048575
  %add2.i.i = or i32 %and.i3.i, -18874368
  %31 = inttoptr i32 %add2.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %31, i16 %28) #4, !srcloc !31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 1073740) #4
  %33 = or i16 %25, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %arrayidx.i, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %33) #4
  %36 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port.i, align 4
  %add.i6.i = add i32 %37, 8
  %and.i7.i = and i32 %add.i6.i, 1048575
  %add2.i8.i = or i32 %and.i7.i, -18874368
  %38 = inttoptr i32 %add2.i8.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %38, i16 %35) #4, !srcloc !31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 42949600) #4
  %40 = and i16 %33, -69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %arrayidx.i, align 2
  %42 = tail call i16 @llvm.bswap.i16(i16 %40) #4
  %43 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port.i, align 4
  %add.i11.i = add i32 %44, 8
  %and.i12.i = and i32 %add.i11.i, 1048575
  %add2.i13.i = or i32 %and.i12.i, -18874368
  %45 = inttoptr i32 %add2.i13.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 %42) #4, !srcloc !31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 1073740) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pdacf_suspend(ptr nocapture noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  %port = getelementptr inbounds %struct.snd_pdacf, ptr %chip, i32 0, i32 2
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add = add i32 %4, 12
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  %7 = and i16 %6, -3841
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add6 = add i32 %9, 12
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %10 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 %7) #4, !srcloc !31
  %chip_status = getelementptr inbounds %struct.snd_pdacf, ptr %chip, i32 0, i32 9
  %11 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chip_status, align 4
  %or = or i32 %12, 4
  store i32 %or, ptr %chip_status, align 4
  tail call void @snd_pdacf_powerdown(ptr noundef %chip)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_pdacf_resume(ptr nocapture noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pdacf_reset(ptr noundef %chip, i32 noundef 0) #4
  %suspend_reg_scr.i = getelementptr inbounds %struct.snd_pdacf, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %suspend_reg_scr.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %suspend_reg_scr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %arrayidx.i.i = getelementptr %struct.snd_pdacf, ptr %chip, i32 0, i32 5, i32 4
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %arrayidx.i.i, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %1) #4
  %port.i.i = getelementptr inbounds %struct.snd_pdacf, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %5, 8
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add2.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 %3) #4, !srcloc !31
  %ak4117.i = getelementptr inbounds %struct.snd_pdacf, ptr %chip, i32 0, i32 8
  %7 = ptrtoint ptr %ak4117.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ak4117.i, align 4
  tail call void @snd_ak4117_reinit(ptr noundef %8) #4
  %arrayidx.i = getelementptr %struct.snd_pdacf, ptr %chip, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayidx.i, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %10) #4
  %13 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i.i, align 4
  %add.i12.i = add i32 %14, 6
  %and.i13.i = and i32 %add.i12.i, 1048575
  %add2.i14.i = or i32 %and.i13.i, -18874368
  %15 = inttoptr i32 %add2.i14.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 %12) #4, !srcloc !31
  %arrayidx2.i = getelementptr %struct.snd_pdacf, ptr %chip, i32 0, i32 5, i32 6
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %arrayidx2.i, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %17) #4
  %20 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i.i, align 4
  %add.i17.i = add i32 %21, 12
  %and.i18.i = and i32 %add.i17.i, 1048575
  %add2.i19.i = or i32 %and.i18.i, -18874368
  %22 = inttoptr i32 %add2.i19.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 %19) #4, !srcloc !31
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry
  %dec8 = phi i32 [ 39, %entry ], [ %dec, %while.body.land.rhs_crit_edge ]
  %23 = ptrtoint ptr %ak4117.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ak4117.i, align 4
  %call = tail call i32 @snd_ak4117_external_rate(ptr noundef %24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %land.rhs.while.body_crit_edge, label %lor.rhs

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

lor.rhs:                                          ; preds = %land.rhs
  %25 = ptrtoint ptr %ak4117.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ak4117.i, align 4
  %rcs0.i = getelementptr inbounds %struct.ak4117, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %rcs0.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rcs0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp slt i8 %28, 0
  br i1 %tobool.not, label %lor.rhs.while.body_crit_edge, label %lor.rhs.while.end_crit_edge

lor.rhs.while.end_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %land.rhs.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #4
  %dec = add nsw i32 %dec8, -1
  %cmp.not = icmp eq i32 %dec8, 0
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %lor.rhs.while.end_crit_edge
  %chip_status = getelementptr inbounds %struct.snd_pdacf, ptr %chip, i32 0, i32 9
  %30 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chip_status, align 4
  %and = and i32 %31, -5
  store i32 %and, ptr %chip_status, align 4
  %32 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip, align 4
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 38
  %34 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ak4117_external_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdacf_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.4) #4
  %port.i = getelementptr inbounds %struct.snd_pdacf, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i, align 4
  %add.i = add i32 %5, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #4, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %10 = lshr i16 %7, 4
  %11 = and i16 %10, 15
  %12 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.5, i32 noundef %12) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @snd_pdacf_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/pcmcia/pdaudiocf/pdaudiocf_core.c", i32 149, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @snd_pdacf_create.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../sound/pcmcia/pdaudiocf/pdaudiocf_core.c", i32 150, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @snd_pdacf_ak4117_create.pgm, !7, !"pgm", i1 false, i1 false}
!7 = !{!"../sound/pcmcia/pdaudiocf/pdaudiocf_core.c", i32 182, i32 29}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pcmcia/pdaudiocf/pdaudiocf_core.c", i32 138, i32 35}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pcmcia/pdaudiocf/pdaudiocf_core.c", i32 130, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pcmcia/pdaudiocf/pdaudiocf_core.c", i32 132, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pcmcia/pdaudiocf/pdaudiocf_core.c", i32 31, i32 4}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pcmcia/pdaudiocf/pdaudiocf_core.c", i32 41, i32 4}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pcmcia/pdaudiocf/pdaudiocf_core.c", i32 62, i32 4}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 2154700227}
!31 = !{i64 6466134}
!32 = !{i64 6466334}
!33 = !{i64 2154701336}
!34 = !{i64 2154706674}
!35 = !{i64 2154707667}
!36 = !{i64 2154712112}
!37 = !{i64 2154712399}
!38 = !{i64 2154713338}
!39 = !{i64 2154713625}
