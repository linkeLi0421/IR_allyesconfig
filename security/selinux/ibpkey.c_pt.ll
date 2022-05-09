; ModuleID = '/llk/IR_all_yes/security/selinux/ibpkey.c_pt.bc'
source_filename = "../security/selinux/ibpkey.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sel_ib_pkey_bkt = type { i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.selinux_state = type { i8, i8, i8, i8, [7 x i8], ptr, %struct.mutex, ptr, ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pkey_security_struct = type { i64, i16, i32 }
%struct.sel_ib_pkey = type { %struct.pkey_security_struct, %struct.list_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@sel_ib_pkey_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sel_ib_pkey_hash = internal global { [256 x %struct.sel_ib_pkey_bkt], [768 x i8] } zeroinitializer, align 32
@__initcall__kmod_selinux__519_237_sel_ib_pkey_init4 = internal global ptr @sel_ib_pkey_init, section ".initcall4.init", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@sel_ib_pkey_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"security/selinux/ibpkey.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@selinux_state = external dso_local global %struct.selinux_state, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sel_ib_pkey_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sel_ib_pkey_lock\00", [47 x i8] zeroinitializer }, align 32
@selinux_enabled_boot = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"sel_ib_pkey_lock\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"sel_ib_pkey_hash\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 44, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 695, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 76, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 723, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 105, i32 10 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [29 x i8] c"../security/selinux/ibpkey.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 43, i32 8 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_selinux__519_237_sel_ib_pkey_init4, ptr @sel_ib_pkey_lock, ptr @sel_ib_pkey_hash, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_ib_pkey_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_ib_pkey_hash to i32), i32 3072, i32 3840, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sel_ib_pkey_sid(i64 noundef %subnet_prefix, i16 noundef zeroext %pkey_num, ptr noundef %sid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !31
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = and i16 %pkey_num, 255
  %and.i.i = zext i16 %4 to i32
  %call1.i7 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i9:                                 ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i9.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i9.do.end.i_crit_edge:              ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i9
  %.b40.i = load i1, ptr @sel_ib_pkey_find.__warned, align 1
  br i1 %.b40.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i10

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.then.i10:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @sel_ib_pkey_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 76, ptr noundef nonnull @.str.3) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i10, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i9.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %list.i = getelementptr [256 x %struct.sel_ib_pkey_bkt], ptr @sel_ib_pkey_hash, i32 0, i32 %and.i.i, i32 1
  %5 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn41.i = load volatile ptr, ptr %list.i, align 4
  %cmp.not43.i = icmp eq ptr %.pn41.i, %list.i
  br i1 %cmp.not43.i, label %do.end.i.if.end_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn44.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn41.i, %do.end.i.for.body.i_crit_edge ]
  %pkey13.i = getelementptr i8, ptr %.pn44.i, i32 -8
  %6 = ptrtoint ptr %pkey13.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pkey13.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %pkey_num)
  %cmp15.i = icmp eq i16 %7, %pkey_num
  br i1 %cmp15.i, label %land.lhs.true17.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true17.i:                                ; preds = %for.body.i
  %pkey.045.i = getelementptr i8, ptr %.pn44.i, i32 -16
  %8 = ptrtoint ptr %pkey.045.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pkey.045.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %subnet_prefix)
  %cmp20.i = icmp eq i64 %9, %subnet_prefix
  br i1 %cmp20.i, label %sel_ib_pkey_find.exit, label %land.lhs.true17.i.for.inc.i_crit_edge

land.lhs.true17.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true17.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %.pn44.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load volatile ptr, ptr %.pn44.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %list.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sel_ib_pkey_find.exit:                            ; preds = %land.lhs.true17.i
  %pkey.045.i.le = getelementptr i8, ptr %.pn44.i, i32 -16
  %tobool.not = icmp eq ptr %pkey.045.i.le, null
  br i1 %tobool.not, label %sel_ib_pkey_find.exit.if.end_crit_edge, label %if.then

sel_ib_pkey_find.exit.if.end_crit_edge:           ; preds = %sel_ib_pkey_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sel_ib_pkey_find.exit
  %sid1 = getelementptr i8, ptr %.pn44.i, i32 -4
  %11 = ptrtoint ptr %sid1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sid1, align 4
  %13 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sid, align 4
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i11, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %if.then
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !32
  %14 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i18 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %cleanup

if.end:                                           ; preds = %sel_ib_pkey_find.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %do.end.i.if.end_crit_edge
  %call.i21 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i21, label %if.end.rcu_read_unlock.exit32_crit_edge, label %land.lhs.true.i24

if.end.rcu_read_unlock.exit32_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit32

land.lhs.true.i24:                                ; preds = %if.end
  %call1.i22 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i24.rcu_read_unlock.exit32_crit_edge, label %land.lhs.true2.i26

land.lhs.true.i24.rcu_read_unlock.exit32_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit32

land.lhs.true2.i26:                               ; preds = %land.lhs.true.i24
  %.b4.i25 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25, label %land.lhs.true2.i26.rcu_read_unlock.exit32_crit_edge, label %if.then.i27

land.lhs.true2.i26.rcu_read_unlock.exit32_crit_edge: ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit32

if.then.i27:                                      ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #6
  br label %rcu_read_unlock.exit32

rcu_read_unlock.exit32:                           ; preds = %if.then.i27, %land.lhs.true2.i26.rcu_read_unlock.exit32_crit_edge, %land.lhs.true.i24.rcu_read_unlock.exit32_crit_edge, %if.end.rcu_read_unlock.exit32_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !32
  %18 = tail call i32 @llvm.read_register.i32(metadata !21) #6
  %and.i.i.i.i.i28 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i29, align 4
  %sub.i.i.i30 = add i32 %21, -1
  store volatile i32 %sub.i.i.i30, ptr %preempt_count.i.i.i.i29, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %call2.i33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sel_ib_pkey_lock) #6
  %call1.i.i = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_unlock.exit32.do.end.i.i_crit_edge

rcu_read_unlock.exit32.do.end.i.i_crit_edge:      ; preds = %rcu_read_unlock.exit32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_unlock.exit32
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b40.i.i = load i1, ptr @sel_ib_pkey_find.__warned, align 1
  br i1 %.b40.i.i, label %land.lhs.true4.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @sel_ib_pkey_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 76, ptr noundef nonnull @.str.3) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %rcu_read_unlock.exit32.do.end.i.i_crit_edge
  %22 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn41.i.i = load volatile ptr, ptr %list.i, align 4
  %cmp.not43.i.i = icmp eq ptr %.pn41.i.i, %list.i
  br i1 %cmp.not43.i.i, label %do.end.i.i.if.end.i_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.if.end.i_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %.pn44.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn41.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %pkey13.i.i = getelementptr i8, ptr %.pn44.i.i, i32 -8
  %23 = ptrtoint ptr %pkey13.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %pkey13.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %pkey_num)
  %cmp15.i.i = icmp eq i16 %24, %pkey_num
  br i1 %cmp15.i.i, label %land.lhs.true17.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

land.lhs.true17.i.i:                              ; preds = %for.body.i.i
  %pkey.045.i.i = getelementptr i8, ptr %.pn44.i.i, i32 -16
  %25 = ptrtoint ptr %pkey.045.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pkey.045.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %subnet_prefix)
  %cmp20.i.i = icmp eq i64 %26, %subnet_prefix
  br i1 %cmp20.i.i, label %sel_ib_pkey_find.exit.i, label %land.lhs.true17.i.i.for.inc.i.i_crit_edge

land.lhs.true17.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true17.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %27 = ptrtoint ptr %.pn44.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i.i = load volatile ptr, ptr %.pn44.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %list.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

sel_ib_pkey_find.exit.i:                          ; preds = %land.lhs.true17.i.i
  %pkey.045.i.i.le = getelementptr i8, ptr %.pn44.i.i, i32 -16
  %tobool.not.i34 = icmp eq ptr %pkey.045.i.i.le, null
  br i1 %tobool.not.i34, label %sel_ib_pkey_find.exit.i.if.end.i_crit_edge, label %if.then.i35

sel_ib_pkey_find.exit.i.if.end.i_crit_edge:       ; preds = %sel_ib_pkey_find.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i35:                                      ; preds = %sel_ib_pkey_find.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %sid6.i = getelementptr i8, ptr %.pn44.i.i, i32 -4
  %28 = ptrtoint ptr %sid6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sid6.i, align 4
  %30 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %sid, align 4
  br label %sel_ib_pkey_sid_slow.exit

if.end.i:                                         ; preds = %sel_ib_pkey_find.exit.i.if.end.i_crit_edge, %for.inc.i.i.if.end.i_crit_edge, %do.end.i.i.if.end.i_crit_edge
  %call7.i = tail call i32 @security_ib_pkey_sid(ptr noundef nonnull @selinux_state, i64 noundef %subnet_prefix, i16 noundef zeroext %pkey_num, ptr noundef %sid) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i.sel_ib_pkey_sid_slow.exit_crit_edge

if.end.i.sel_ib_pkey_sid_slow.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sel_ib_pkey_sid_slow.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 2848, i32 noundef 32) #9
  %tobool12.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool12.not.i, label %if.end10.i.sel_ib_pkey_sid_slow.exit_crit_edge, label %if.end14.i

if.end10.i.sel_ib_pkey_sid_slow.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sel_ib_pkey_sid_slow.exit

if.end14.i:                                       ; preds = %if.end10.i
  %32 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %subnet_prefix, ptr %call7.i.i.i, align 8
  %pkey18.i = getelementptr inbounds %struct.pkey_security_struct, ptr %call7.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %pkey18.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %pkey_num, ptr %pkey18.i, align 8
  %34 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sid, align 4
  %sid20.i = getelementptr inbounds %struct.pkey_security_struct, ptr %call7.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %sid20.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %sid20.i, align 4
  %list.i38.i = getelementptr inbounds %struct.sel_ib_pkey, ptr %call7.i.i.i, i32 0, i32 1
  %arrayidx.i.i = getelementptr [256 x %struct.sel_ib_pkey_bkt], ptr @sel_ib_pkey_hash, i32 0, i32 %and.i.i
  %37 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %list.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i38.i, ptr noundef %list.i, ptr noundef %38) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end14.i.list_add_rcu.exit.i.i_crit_edge

if.end14.i.list_add_rcu.exit.i.i_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_rcu.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %list.i38.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %list.i38.i, align 8
  %prev2.i.i.i.i = getelementptr inbounds %struct.sel_ib_pkey, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %list.i, ptr %prev2.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  %41 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %list.i38.i, ptr %list.i, align 4
  %prev37.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %42 = ptrtoint ptr %prev37.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %list.i38.i, ptr %prev37.i.i.i.i, align 4
  br label %list_add_rcu.exit.i.i

list_add_rcu.exit.i.i:                            ; preds = %if.end.i.i.i.i, %if.end14.i.list_add_rcu.exit.i.i_crit_edge
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %44)
  %cmp.i.i = icmp eq i32 %44, 16
  br i1 %cmp.i.i, label %if.then.i40.i, label %if.else.i.i

if.then.i40.i:                                    ; preds = %list_add_rcu.exit.i.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @sel_ib_pkey_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i39.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i39.i, label %land.lhs.true.i41.i, label %if.then.i40.i.do.end.i42.i_crit_edge

if.then.i40.i.do.end.i42.i_crit_edge:             ; preds = %if.then.i40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i42.i

land.lhs.true.i41.i:                              ; preds = %if.then.i40.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i41.i.do.end.i42.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i41.i.do.end.i42.i_crit_edge:       ; preds = %land.lhs.true.i41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i42.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i41.i
  %.b32.i.i = load i1, ptr @sel_ib_pkey_insert.__warned, align 1
  br i1 %.b32.i.i, label %land.lhs.true7.i.i.do.end.i42.i_crit_edge, label %if.then9.i.i

land.lhs.true7.i.i.do.end.i42.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i42.i

if.then9.i.i:                                     ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @sel_ib_pkey_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 108, ptr noundef nonnull @.str.5) #6
  br label %do.end.i42.i

do.end.i42.i:                                     ; preds = %if.then9.i.i, %land.lhs.true7.i.i.do.end.i42.i_crit_edge, %land.lhs.true.i41.i.do.end.i42.i_crit_edge, %if.then.i40.i.do.end.i42.i_crit_edge
  %prev.i.i = getelementptr [256 x %struct.sel_ib_pkey_bkt], ptr @sel_ib_pkey_hash, i32 0, i32 %and.i.i, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 -16
  %call.i.i33.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %46) #6
  br i1 %call.i.i33.i.i, label %if.end.i.i34.i.i, label %do.end.i42.i.list_del_rcu.exit.i.i_crit_edge

do.end.i42.i.list_del_rcu.exit.i.i_crit_edge:     ; preds = %do.end.i42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_rcu.exit.i.i

if.end.i.i34.i.i:                                 ; preds = %do.end.i42.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i.i, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %46, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del_rcu.exit.i.i

list_del_rcu.exit.i.i:                            ; preds = %if.end.i.i34.i.i, %do.end.i42.i.list_del_rcu.exit.i.i_crit_edge
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool15.not.i.i, label %list_del_rcu.exit.i.i.sel_ib_pkey_sid_slow.exit_crit_edge, label %do.end19.i.i

list_del_rcu.exit.i.i.sel_ib_pkey_sid_slow.exit_crit_edge: ; preds = %list_del_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sel_ib_pkey_sid_slow.exit

do.end19.i.i:                                     ; preds = %list_del_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rcu.i.i = getelementptr i8, ptr %46, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 24 to ptr)) #6
  br label %sel_ib_pkey_sid_slow.exit

if.else.i.i:                                      ; preds = %list_add_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i = add i32 %44, 1
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %inc.i.i, ptr %arrayidx.i.i, align 4
  br label %sel_ib_pkey_sid_slow.exit

sel_ib_pkey_sid_slow.exit:                        ; preds = %if.else.i.i, %do.end19.i.i, %list_del_rcu.exit.i.i.sel_ib_pkey_sid_slow.exit_crit_edge, %if.end10.i.sel_ib_pkey_sid_slow.exit_crit_edge, %if.end.i.sel_ib_pkey_sid_slow.exit_crit_edge, %if.then.i35
  %retval.0.i36 = phi i32 [ 0, %if.then.i35 ], [ %call7.i, %if.end.i.sel_ib_pkey_sid_slow.exit_crit_edge ], [ -12, %if.end10.i.sel_ib_pkey_sid_slow.exit_crit_edge ], [ 0, %list_del_rcu.exit.i.i.sel_ib_pkey_sid_slow.exit_crit_edge ], [ 0, %do.end19.i.i ], [ 0, %if.else.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sel_ib_pkey_lock, i32 noundef %call2.i33) #6
  br label %cleanup

cleanup:                                          ; preds = %sel_ib_pkey_sid_slow.exit, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ %retval.0.i36, %sel_ib_pkey_sid_slow.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sel_ib_pkey_flush() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sel_ib_pkey_lock) #6
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %idx.050 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.sel_ib_pkey_bkt], ptr @sel_ib_pkey_hash, i32 0, i32 %idx.050
  %list = getelementptr [256 x %struct.sel_ib_pkey_bkt], ptr @sel_ib_pkey_hash, i32 0, i32 %idx.050, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp17.not46 = icmp eq ptr %1, %list
  br i1 %cmp17.not46, label %for.body.for.end_crit_edge, label %for.body.for.body19_crit_edge

for.body.for.body19_crit_edge:                    ; preds = %for.body
  br label %for.body19

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body19:                                       ; preds = %if.end.for.body19_crit_edge, %for.body.for.body19_crit_edge
  %.pn.in47 = phi ptr [ %.pn49, %if.end.for.body19_crit_edge ], [ %1, %for.body.for.body19_crit_edge ]
  %2 = ptrtoint ptr %.pn.in47 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn49 = load ptr, ptr %.pn.in47, align 8
  %pkey.0 = getelementptr i8, ptr %.pn.in47, i32 -16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in47) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body19.list_del_rcu.exit_crit_edge

for.body19.list_del_rcu.exit_crit_edge:           ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in47, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in47 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in47, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %for.body19.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in47, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool.not = icmp eq ptr %pkey.0, null
  br i1 %tobool.not, label %list_del_rcu.exit.if.end_crit_edge, label %do.end24

list_del_rcu.exit.if.end_crit_edge:               ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end24:                                         ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #8
  %rcu = getelementptr i8, ptr %.pn.in47, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 24 to ptr)) #6
  br label %if.end

if.end:                                           ; preds = %do.end24, %list_del_rcu.exit.if.end_crit_edge
  %cmp17.not = icmp eq ptr %.pn49, %list
  br i1 %cmp17.not, label %if.end.for.end_crit_edge, label %if.end.for.body19_crit_edge

if.end.for.body19_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body19

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %idx.050, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end34, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sel_ib_pkey_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_ib_pkey_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_enabled_boot to i32))
  %0 = load i32, ptr @selinux_enabled_boot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %iter.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.sel_ib_pkey_bkt], ptr @sel_ib_pkey_hash, i32 0, i32 %iter.05
  %list = getelementptr [256 x %struct.sel_ib_pkey_bkt], ptr @sel_ib_pkey_hash, i32 0, i32 %iter.05, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr [256 x %struct.sel_ib_pkey_bkt], ptr @sel_ib_pkey_hash, i32 0, i32 %iter.05, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev.i, align 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %iter.05, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_ib_pkey_sid(ptr noundef, i64 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nofree norecurse nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !20}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__initcall__kmod_selinux__519_237_sel_ib_pkey_init4, !1, !"__initcall__kmod_selinux__519_237_sel_ib_pkey_init4", i1 false, i1 false}
!1 = !{!"../security/selinux/ibpkey.c", i32 237, i32 1}
!2 = !{ptr @sel_ib_pkey_hash, !3, !"sel_ib_pkey_hash", i1 false, i1 false}
!3 = !{!"../security/selinux/ibpkey.c", i32 44, i32 31}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../security/selinux/ibpkey.c", i32 76, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../security/selinux/ibpkey.c", i32 105, i32 10}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/selinux/ibpkey.c", i32 43, i32 8}
!20 = !{ptr @sel_ib_pkey_lock, !19, !"sel_ib_pkey_lock", i1 false, i1 false}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2149138305}
!32 = !{i64 2149138571}
!33 = !{i64 2149372041}
