; ModuleID = '/llk/IR_all_yes/security/selinux/netport.c_pt.bc'
source_filename = "../security/selinux/netport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sel_netport_bkt = type { i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.selinux_state = type { i8, i8, i8, i8, [7 x i8], ptr, %struct.mutex, ptr, ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netport_security_struct = type { i32, i16, i8 }
%struct.sel_netport = type { %struct.netport_security_struct, %struct.list_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@sel_netport_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sel_netport_hash = internal global { [256 x %struct.sel_netport_bkt], [768 x i8] } zeroinitializer, align 32
@__initcall__kmod_selinux__519_238_sel_netport_init6 = internal global ptr @sel_netport_init, section ".initcall6.init", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@sel_netport_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"security/selinux/netport.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@selinux_state = external dso_local global %struct.selinux_state, align 4
@sel_netport_sid_slow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014SELinux: failure in %s(), unable to determine network port label\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sel_netport_sid_slow\00", [43 x i8] zeroinitializer }, align 32
@sel_netport_sid_slow._entry_ptr = internal global ptr @sel_netport_sid_slow._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sel_netport_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sel_netport_lock\00", [47 x i8] zeroinitializer }, align 32
@selinux_enabled_boot = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"sel_netport_lock\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"sel_netport_hash\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 57, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 695, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 89, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 723, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 165, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 114, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [30 x i8] c"../security/selinux/netport.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 56, i32 8 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__initcall__kmod_selinux__519_238_sel_netport_init6, ptr @sel_netport_sid_slow._entry, ptr @sel_netport_sid_slow._entry_ptr, ptr @sel_netport_lock, ptr @sel_netport_hash, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_netport_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_netport_hash to i32), i32 3072, i32 3840, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_netport_sid_slow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sel_netport_sid(i8 noundef zeroext %protocol, i16 noundef zeroext %pnum, ptr noundef %sid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = and i16 %pnum, 255
  %and.i.i = zext i16 %4 to i32
  %call1.i7 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i9:                                 ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i9.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i9.do.end.i_crit_edge:              ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i9
  %.b42.i = load i1, ptr @sel_netport_find.__warned, align 1
  br i1 %.b42.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i10

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i10:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @sel_netport_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 89, ptr noundef nonnull @.str.3) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i10, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i9.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %list.i = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i32 0, i32 %and.i.i, i32 1
  %5 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn45.i = load volatile ptr, ptr %list.i, align 4
  %cmp.not46.i = icmp eq ptr %.pn45.i, %list.i
  br i1 %cmp.not46.i, label %do.end.i.if.end_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn47.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn45.i, %do.end.i.for.body.i_crit_edge ]
  %port13.i = getelementptr i8, ptr %.pn47.i, i32 -4
  %6 = ptrtoint ptr %port13.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %port13.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %pnum)
  %cmp15.i = icmp eq i16 %7, %pnum
  br i1 %cmp15.i, label %land.lhs.true17.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true17.i:                                ; preds = %for.body.i
  %protocol19.i = getelementptr i8, ptr %.pn47.i, i32 -2
  %8 = ptrtoint ptr %protocol19.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %protocol19.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %protocol)
  %cmp22.i = icmp eq i8 %9, %protocol
  br i1 %cmp22.i, label %sel_netport_find.exit, label %land.lhs.true17.i.for.inc.i_crit_edge

land.lhs.true17.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true17.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %.pn47.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load volatile ptr, ptr %.pn47.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %list.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sel_netport_find.exit:                            ; preds = %land.lhs.true17.i
  %port.0.le.i = getelementptr i8, ptr %.pn47.i, i32 -8
  %cmp.not = icmp eq ptr %port.0.le.i, null
  br i1 %cmp.not, label %sel_netport_find.exit.if.end_crit_edge, label %if.then

sel_netport_find.exit.if.end_crit_edge:           ; preds = %sel_netport_find.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sel_netport_find.exit
  %11 = ptrtoint ptr %port.0.le.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.0.le.i, align 4
  %13 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sid, align 4
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i11, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %if.then
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  %14 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i.i18 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

if.end:                                           ; preds = %sel_netport_find.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %do.end.i.if.end_crit_edge
  %call.i21 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i21, label %if.end.rcu_read_unlock.exit32_crit_edge, label %land.lhs.true.i24

if.end.rcu_read_unlock.exit32_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit32

land.lhs.true.i24:                                ; preds = %if.end
  %call1.i22 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i24.rcu_read_unlock.exit32_crit_edge, label %land.lhs.true2.i26

land.lhs.true.i24.rcu_read_unlock.exit32_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit32

land.lhs.true2.i26:                               ; preds = %land.lhs.true.i24
  %.b4.i25 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25, label %land.lhs.true2.i26.rcu_read_unlock.exit32_crit_edge, label %if.then.i27

land.lhs.true2.i26.rcu_read_unlock.exit32_crit_edge: ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit32

if.then.i27:                                      ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_unlock.exit32

rcu_read_unlock.exit32:                           ; preds = %if.then.i27, %land.lhs.true2.i26.rcu_read_unlock.exit32_crit_edge, %land.lhs.true.i24.rcu_read_unlock.exit32_crit_edge, %if.end.rcu_read_unlock.exit32_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  %18 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i.i28 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i29, align 4
  %sub.i.i.i30 = add i32 %21, -1
  store volatile i32 %sub.i.i.i30, ptr %preempt_count.i.i.i.i29, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @sel_netport_lock) #7
  %call1.i.i = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_unlock.exit32.do.end.i.i_crit_edge

rcu_read_unlock.exit32.do.end.i.i_crit_edge:      ; preds = %rcu_read_unlock.exit32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_unlock.exit32
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b42.i.i = load i1, ptr @sel_netport_find.__warned, align 1
  br i1 %.b42.i.i, label %land.lhs.true4.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @sel_netport_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 89, ptr noundef nonnull @.str.3) #7
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %rcu_read_unlock.exit32.do.end.i.i_crit_edge
  %22 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn45.i.i = load volatile ptr, ptr %list.i, align 4
  %cmp.not46.i.i = icmp eq ptr %.pn45.i.i, %list.i
  br i1 %cmp.not46.i.i, label %do.end.i.i.if.end.i_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.if.end.i_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %.pn47.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn45.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %port13.i.i = getelementptr i8, ptr %.pn47.i.i, i32 -4
  %23 = ptrtoint ptr %port13.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %port13.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %pnum)
  %cmp15.i.i = icmp eq i16 %24, %pnum
  br i1 %cmp15.i.i, label %land.lhs.true17.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true17.i.i:                              ; preds = %for.body.i.i
  %protocol19.i.i = getelementptr i8, ptr %.pn47.i.i, i32 -2
  %25 = ptrtoint ptr %protocol19.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %protocol19.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %protocol)
  %cmp22.i.i = icmp eq i8 %26, %protocol
  br i1 %cmp22.i.i, label %sel_netport_find.exit.i, label %land.lhs.true17.i.i.for.inc.i.i_crit_edge

land.lhs.true17.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true17.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %27 = ptrtoint ptr %.pn47.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i.i = load volatile ptr, ptr %.pn47.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %list.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

sel_netport_find.exit.i:                          ; preds = %land.lhs.true17.i.i
  %port.0.le.i.i = getelementptr i8, ptr %.pn47.i.i, i32 -8
  %cmp.not.i33 = icmp eq ptr %port.0.le.i.i, null
  br i1 %cmp.not.i33, label %sel_netport_find.exit.i.if.end.i_crit_edge, label %if.then.i34

sel_netport_find.exit.i.if.end.i_crit_edge:       ; preds = %sel_netport_find.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i34:                                      ; preds = %sel_netport_find.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %port.0.le.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port.0.le.i.i, align 4
  %30 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %sid, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @sel_netport_lock) #7
  br label %cleanup

if.end.i:                                         ; preds = %sel_netport_find.exit.i.if.end.i_crit_edge, %for.inc.i.i.if.end.i_crit_edge, %do.end.i.i.if.end.i_crit_edge
  %call2.i35 = tail call i32 @security_port_sid(ptr noundef nonnull @selinux_state, i8 noundef zeroext %protocol, i16 noundef zeroext %pnum, ptr noundef %sid) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i35)
  %cmp3.not.i = icmp eq i32 %call2.i35, 0
  br i1 %cmp3.not.i, label %if.end5.i, label %do.end.critedge.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 2848, i32 noundef 24) #10
  %tobool.not.i36 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i36, label %if.end20.critedge.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i
  %port9.i = getelementptr inbounds %struct.netport_security_struct, ptr %call7.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %port9.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %pnum, ptr %port9.i, align 4
  %protocol11.i = getelementptr inbounds %struct.netport_security_struct, ptr %call7.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %protocol11.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %protocol, ptr %protocol11.i, align 2
  %34 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sid, align 4
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %call7.i.i.i, align 8
  %list.i38.i = getelementptr inbounds %struct.sel_netport, ptr %call7.i.i.i, i32 0, i32 1
  %arrayidx.i.i = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i32 0, i32 %and.i.i
  %37 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %list.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i38.i, ptr noundef %list.i, ptr noundef %38) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then7.i.list_add_rcu.exit.i.i_crit_edge

if.then7.i.list_add_rcu.exit.i.i_crit_edge:       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_rcu.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %list.i38.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %list.i38.i, align 8
  %prev2.i.i.i.i = getelementptr inbounds %struct.sel_netport, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %list.i, ptr %prev2.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !38
  %41 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %list.i38.i, ptr %list.i, align 4
  %prev37.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %42 = ptrtoint ptr %prev37.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %list.i38.i, ptr %prev37.i.i.i.i, align 4
  br label %list_add_rcu.exit.i.i

list_add_rcu.exit.i.i:                            ; preds = %if.end.i.i.i.i, %if.then7.i.list_add_rcu.exit.i.i_crit_edge
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %44)
  %cmp.i.i = icmp eq i32 %44, 16
  br i1 %cmp.i.i, label %if.then.i40.i, label %if.else.i.i

if.then.i40.i:                                    ; preds = %list_add_rcu.exit.i.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @sel_netport_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i39.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i39.i, label %land.lhs.true.i41.i, label %if.then.i40.i.do.end.i42.i_crit_edge

if.then.i40.i.do.end.i42.i_crit_edge:             ; preds = %if.then.i40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i42.i

land.lhs.true.i41.i:                              ; preds = %if.then.i40.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i41.i.do.end.i42.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i41.i.do.end.i42.i_crit_edge:       ; preds = %land.lhs.true.i41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i42.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i41.i
  %.b32.i.i = load i1, ptr @sel_netport_insert.__warned, align 1
  br i1 %.b32.i.i, label %land.lhs.true7.i.i.do.end.i42.i_crit_edge, label %if.then9.i.i

land.lhs.true7.i.i.do.end.i42.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i42.i

if.then9.i.i:                                     ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @sel_netport_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 117, ptr noundef nonnull @.str.7) #7
  br label %do.end.i42.i

do.end.i42.i:                                     ; preds = %if.then9.i.i, %land.lhs.true7.i.i.do.end.i42.i_crit_edge, %land.lhs.true.i41.i.do.end.i42.i_crit_edge, %if.then.i40.i.do.end.i42.i_crit_edge
  %prev.i.i = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i32 0, i32 %and.i.i, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 -8
  %call.i.i33.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %46) #7
  br i1 %call.i.i33.i.i, label %if.end.i.i34.i.i, label %do.end.i42.i.list_del_rcu.exit.i.i_crit_edge

do.end.i42.i.list_del_rcu.exit.i.i_crit_edge:     ; preds = %do.end.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit.i.i

if.end.i.i34.i.i:                                 ; preds = %do.end.i42.i
  call void @__sanitizer_cov_trace_pc() #9
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
  br i1 %tobool15.not.i.i, label %list_del_rcu.exit.i.i.sel_netport_insert.exit.i_crit_edge, label %do.end19.i.i

list_del_rcu.exit.i.i.sel_netport_insert.exit.i_crit_edge: ; preds = %list_del_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sel_netport_insert.exit.i

do.end19.i.i:                                     ; preds = %list_del_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rcu.i.i = getelementptr i8, ptr %46, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 16 to ptr)) #7
  br label %sel_netport_insert.exit.i

if.else.i.i:                                      ; preds = %list_add_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i.i = add i32 %44, 1
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %inc.i.i, ptr %arrayidx.i.i, align 4
  br label %sel_netport_insert.exit.i

sel_netport_insert.exit.i:                        ; preds = %if.else.i.i, %do.end19.i.i, %list_del_rcu.exit.i.i.sel_netport_insert.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @sel_netport_lock) #7
  br label %cleanup

do.end.critedge.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @sel_netport_lock) #7
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end20.critedge.i:                              ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @sel_netport_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20.critedge.i, %do.end.critedge.i, %sel_netport_insert.exit.i, %if.then.i34, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ 0, %if.then.i34 ], [ 0, %sel_netport_insert.exit.i ], [ 0, %if.end20.critedge.i ], [ %call2.i35, %do.end.critedge.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sel_netport_flush() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @sel_netport_lock) #7
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %idx.039 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i32 0, i32 %idx.039
  %list = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i32 0, i32 %idx.039, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp10.not35 = icmp eq ptr %1, %list
  br i1 %cmp10.not35, label %for.body.for.end_crit_edge, label %for.body.for.body11_crit_edge

for.body.for.body11_crit_edge:                    ; preds = %for.body
  br label %for.body11

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body11:                                       ; preds = %if.end.for.body11_crit_edge, %for.body.for.body11_crit_edge
  %.pn.in36 = phi ptr [ %.pn38, %if.end.for.body11_crit_edge ], [ %1, %for.body.for.body11_crit_edge ]
  %2 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn38 = load ptr, ptr %.pn.in36, align 4
  %port.0 = getelementptr i8, ptr %.pn.in36, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in36) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body11.list_del_rcu.exit_crit_edge

for.body11.list_del_rcu.exit_crit_edge:           ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in36, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in36, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %for.body11.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in36, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool.not = icmp eq ptr %port.0, null
  br i1 %tobool.not, label %list_del_rcu.exit.if.end_crit_edge, label %do.end

list_del_rcu.exit.if.end_crit_edge:               ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rcu = getelementptr i8, ptr %.pn.in36, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 16 to ptr)) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %list_del_rcu.exit.if.end_crit_edge
  %cmp10.not = icmp eq ptr %.pn38, %list
  br i1 %cmp10.not, label %if.end.for.end_crit_edge, label %if.end.for.body11_crit_edge

if.end.for.body11_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %idx.039, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end23, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @sel_netport_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_netport_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @selinux_enabled_boot to i32))
  %0 = load i32, ptr @selinux_enabled_boot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %iter.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i32 0, i32 %iter.05
  %list = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i32 0, i32 %iter.05, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i32 0, i32 %iter.05, i32 1, i32 1
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_port_sid(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nofree norecurse nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !19, !20, !22, !23, !25}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__initcall__kmod_selinux__519_238_sel_netport_init6, !1, !"__initcall__kmod_selinux__519_238_sel_netport_init6", i1 false, i1 false}
!1 = !{!"../security/selinux/netport.c", i32 238, i32 1}
!2 = !{ptr @sel_netport_hash, !3, !"sel_netport_hash", i1 false, i1 false}
!3 = !{!"../security/selinux/netport.c", i32 57, i32 31}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../security/selinux/netport.c", i32 89, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../security/selinux/netport.c", i32 165, i32 3}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sel_netport_sid_slow._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @sel_netport_sid_slow._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../security/selinux/netport.c", i32 114, i32 10}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../security/selinux/netport.c", i32 56, i32 8}
!25 = !{ptr @sel_netport_lock, !24, !"sel_netport_lock", i1 false, i1 false}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2149138572}
!37 = !{i64 2149138838}
!38 = !{i64 2151427967}
