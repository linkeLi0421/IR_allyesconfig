; ModuleID = '/llk/IR_all_yes/drivers/ptp/ptp_kvm_common.c_pt.bc'
source_filename = "../drivers/ptp/ptp_kvm_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kvm_ptp_clock = type { ptr, %struct.ptp_clock_info }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.system_counterval_t = type { i64, ptr }

@kvm_ptp_clock = internal global { %struct.kvm_ptp_clock, [48 x i8] } zeroinitializer, align 32
@__initcall__kmod_ptp_kvm__271_153_ptp_kvm_init6 = internal global ptr @ptp_kvm_init, section ".initcall6.init", align 4
@__exitcall_ptp_kvm_exit = internal global ptr @ptp_kvm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author272 = internal constant [53 x i8] c"ptp_kvm.author=Marcelo Tosatti <mtosatti@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description273 = internal constant [45 x i8] c"ptp_kvm.description=PTP clock using KVMCLOCK\00", section ".modinfo", align 1
@__UNIQUE_ID_file274 = internal constant [33 x i8] c"ptp_kvm.file=drivers/ptp/ptp_kvm\00", section ".modinfo", align 1
@__UNIQUE_ID_license275 = internal constant [20 x i8] c"ptp_kvm.license=GPL\00", section ".modinfo", align 1
@ptp_kvm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013fail to initialize ptp_kvm\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ptp_kvm_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/ptp/ptp_kvm_common.c\00", [35 x i8] zeroinitializer }, align 32
@ptp_kvm_init._entry_ptr = internal global ptr @ptp_kvm_init._entry, section ".printk_index", align 4
@ptp_kvm_caps = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] c"KVM virtual PTP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @ptp_kvm_adjfreq, ptr null, ptr @ptp_kvm_adjtime, ptr @ptp_kvm_gettime, ptr null, ptr @ptp_kvm_getcrosststamp, ptr @ptp_kvm_settime, ptr @ptp_kvm_enable, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@kvm_ptp_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kvm_ptp_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"kvm_ptp_clock\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 128, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 142, i32 4 }
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"ptp_kvm_caps\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 111, i32 36 }
@___asan_gen_.22 = private unnamed_addr constant [13 x i8] c"kvm_ptp_lock\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [32 x i8] c"../drivers/ptp/ptp_kvm_common.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 25, i32 8 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author272, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file274, ptr @__UNIQUE_ID_license275, ptr @__exitcall_ptp_kvm_exit, ptr @__initcall__kmod_ptp_kvm__271_153_ptp_kvm_init6, ptr @ptp_kvm_exit, ptr @ptp_kvm_init._entry, ptr @ptp_kvm_init._entry_ptr, ptr @kvm_ptp_clock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ptp_kvm_caps, ptr @kvm_ptp_lock, ptr @.str.3], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvm_ptp_clock to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_kvm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_kvm_caps to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kvm_ptp_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ptp_kvm_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @kvm_ptp_clock, align 4
  %call = tail call i32 @ptp_clock_unregister(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_kvm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kvm_arch_ptp_init() #7
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end [
    i32 0, label %if.end3
    i32 -95, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = call ptr @memcpy(ptr getelementptr inbounds (%struct.kvm_ptp_clock, ptr @kvm_ptp_clock, i32 0, i32 1), ptr @ptp_kvm_caps, i32 108)
  %call4 = tail call ptr @ptp_clock_register(ptr noundef getelementptr inbounds (%struct.kvm_ptp_clock, ptr @kvm_ptp_clock, i32 0, i32 1), ptr noundef null) #7
  store ptr %call4, ptr @kvm_ptp_clock, align 4
  %cmp.i.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  %2 = ptrtoint ptr %call4 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %2, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ %call, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kvm_arch_ptp_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ptp_kvm_adjfreq(ptr nocapture noundef readnone %ptp, i32 noundef %ppb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ptp_kvm_adjtime(ptr nocapture noundef readnone %ptp, i64 noundef %delta) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_kvm_gettime(ptr nocapture noundef readnone %ptp, ptr nocapture noundef writeonly %ts) #5 align 64 {
entry:
  %tspec = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tspec) #7
  %0 = call ptr @memset(ptr %tspec, i32 255, i32 16)
  tail call void @_raw_spin_lock(ptr noundef nonnull @kvm_ptp_lock) #7
  %call = call i32 @kvm_arch_ptp_get_clock(ptr noundef nonnull %tspec) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  call void @_raw_spin_unlock(ptr noundef nonnull @kvm_ptp_lock) #7
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = call ptr @memcpy(ptr %ts, ptr %tspec, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tspec) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_kvm_getcrosststamp(ptr nocapture noundef readnone %ptp, ptr noundef %xtstamp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_device_system_crosststamp(ptr noundef nonnull @ptp_kvm_get_time_fn, ptr noundef null, ptr noundef null, ptr noundef %xtstamp) #7
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ptp_kvm_settime(ptr nocapture noundef readnone %ptp, ptr nocapture noundef readnone %ts) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ptp_kvm_enable(ptr nocapture noundef readnone %ptp, ptr nocapture noundef readnone %rq, i32 noundef %on) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kvm_arch_ptp_get_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_device_system_crosststamp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptp_kvm_get_time_fn(ptr nocapture noundef writeonly %device_time, ptr nocapture noundef writeonly %system_counter, ptr nocapture noundef readnone %ctx) #5 align 64 {
entry:
  %cycle = alloca i64, align 8
  %tspec = alloca %struct.timespec64, align 8
  %cs = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cycle) #7
  %0 = ptrtoint ptr %cycle to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %cycle, align 8, !annotation !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tspec) #7
  %1 = call ptr @memset(ptr %tspec, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs) #7
  %2 = ptrtoint ptr %cs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %cs, align 4, !annotation !34
  tail call void @_raw_spin_lock(ptr noundef nonnull @kvm_ptp_lock) #7
  %3 = tail call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %6, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !35
  %call = call i32 @kvm_arch_ptp_get_crosststamp(ptr noundef nonnull %cycle, ptr noundef nonnull %tspec, ptr noundef nonnull %cs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef nonnull @kvm_ptp_lock) #7
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  %7 = call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i.i14 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i14 to ptr
  %preempt_count.i.i15 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i15, align 4
  %sub.i = add i32 %10, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i15, align 4
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  %11 = call i32 @llvm.read_register.i32(metadata !24) #7
  %and.i.i.i16 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i16 to ptr
  %preempt_count.i.i17 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i17, align 4
  %sub.i18 = add i32 %14, -1
  store volatile i32 %sub.i18, ptr %preempt_count.i.i17, align 4
  %15 = ptrtoint ptr %cycle to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %cycle, align 8
  %17 = ptrtoint ptr %system_counter to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %system_counter, align 8
  %18 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cs, align 4
  %cs7 = getelementptr inbounds %struct.system_counterval_t, ptr %system_counter, i32 0, i32 1
  %20 = ptrtoint ptr %cs7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %cs7, align 8
  %21 = ptrtoint ptr %tspec to i32
  call void @__asan_load8_noabort(i32 %21)
  %.fca.0.load = load i64, ptr %tspec, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %tspec, i32 0, i32 1
  %22 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %22)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.fca.0.load)
  %cmp.i.i = icmp sgt i64 %.fca.0.load, 9223372035
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %mul.i.i = mul i64 %.fca.0.load, 1000000000
  %add.i.i = add i64 %ts.sroa.2.8.extract.shift.i, %mul.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %add.i.i, !prof !38
  %23 = ptrtoint ptr %device_time to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %retval.0.i.i, ptr %device_time, align 8
  call void @_raw_spin_unlock(ptr noundef nonnull @kvm_ptp_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tspec) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cycle) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kvm_arch_ptp_get_crosststamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !18, !19, !21, !23}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_ptp_kvm__271_153_ptp_kvm_init6, !1, !"__initcall__kmod_ptp_kvm__271_153_ptp_kvm_init6", i1 false, i1 false}
!1 = !{!"../drivers/ptp/ptp_kvm_common.c", i32 153, i32 1}
!2 = !{ptr @__exitcall_ptp_kvm_exit, !3, !"__exitcall_ptp_kvm_exit", i1 false, i1 false}
!3 = !{!"../drivers/ptp/ptp_kvm_common.c", i32 154, i32 1}
!4 = !{ptr @__UNIQUE_ID_author272, !5, !"__UNIQUE_ID_author272", i1 false, i1 false}
!5 = !{!"../drivers/ptp/ptp_kvm_common.c", i32 156, i32 1}
!6 = !{ptr @__UNIQUE_ID_description273, !7, !"__UNIQUE_ID_description273", i1 false, i1 false}
!7 = !{!"../drivers/ptp/ptp_kvm_common.c", i32 157, i32 1}
!8 = !{ptr @__UNIQUE_ID_file274, !9, !"__UNIQUE_ID_file274", i1 false, i1 false}
!9 = !{!"../drivers/ptp/ptp_kvm_common.c", i32 158, i32 1}
!10 = !{ptr @__UNIQUE_ID_license275, !9, !"__UNIQUE_ID_license275", i1 false, i1 false}
!11 = !{ptr @kvm_ptp_clock, !12, !"kvm_ptp_clock", i1 false, i1 false}
!12 = !{!"../drivers/ptp/ptp_kvm_common.c", i32 128, i32 29}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/ptp/ptp_kvm_common.c", i32 142, i32 4}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ptp_kvm_init._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @ptp_kvm_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @ptp_kvm_caps, !20, !"ptp_kvm_caps", i1 false, i1 false}
!20 = !{!"../drivers/ptp/ptp_kvm_common.c", i32 111, i32 36}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/ptp/ptp_kvm_common.c", i32 25, i32 8}
!23 = !{ptr @kvm_ptp_lock, !22, !"kvm_ptp_lock", i1 false, i1 false}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"auto-init"}
!35 = !{i64 2154669645}
!36 = !{i64 2154669744}
!37 = !{i64 2154669866}
!38 = !{!"branch_weights", i32 1, i32 2000}
