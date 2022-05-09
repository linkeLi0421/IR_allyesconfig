; ModuleID = '/llk/IR_all_yes/security/selinux/netnode.c_pt.bc'
source_filename = "../security/selinux/netnode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sel_netnode_bkt = type { i32, %struct.list_head }
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
%struct.netnode_security_struct = type { %union.anon, i32, i16 }
%union.anon = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%struct.sel_netnode = type { %struct.netnode_security_struct, %struct.list_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@sel_netnode_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sel_netnode_hash = internal global { [256 x %struct.sel_netnode_bkt], [768 x i8] } zeroinitializer, align 32
@__initcall__kmod_selinux__519_304_sel_netnode_init6 = internal global ptr @sel_netnode_init, section ".initcall6.init", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@sel_netnode_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"security/selinux/netnode.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@selinux_state = external dso_local global %struct.selinux_state, align 4
@sel_netnode_sid_slow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014SELinux: failure in %s(), unable to determine network node label\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sel_netnode_sid_slow\00", [43 x i8] zeroinitializer }, align 32
@sel_netnode_sid_slow._entry_ptr = internal global ptr @sel_netnode_sid_slow._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sel_netnode_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sel_netnode_lock\00", [47 x i8] zeroinitializer }, align 32
@selinux_enabled_boot = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"sel_netnode_lock\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"sel_netnode_hash\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 58, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 695, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 120, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 723, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 230, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 166, i32 10 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [30 x i8] c"../security/selinux/netnode.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 57, i32 8 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__initcall__kmod_selinux__519_304_sel_netnode_init6, ptr @sel_netnode_sid_slow._entry, ptr @sel_netnode_sid_slow._entry_ptr, ptr @sel_netnode_lock, ptr @sel_netnode_hash, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_netnode_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_netnode_hash to i32), i32 3072, i32 3840, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sel_netnode_sid_slow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sel_netnode_sid(ptr noundef %addr, i16 noundef zeroext %family, ptr noundef %sid) local_unnamed_addr #0 align 64 {
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
  %call = tail call fastcc ptr @sel_netnode_find(ptr noundef %addr, i16 noundef zeroext %family)
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %rcu_read_lock.exit
  %sid1 = getelementptr inbounds %struct.netnode_security_struct, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %sid1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sid1, align 4
  %6 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %sid, align 4
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i7, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i10

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i10:                                ; preds = %if.then
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  %7 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i.i14 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i14 to ptr
  %preempt_count.i.i.i.i15 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i15, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i15, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i16, label %if.end.rcu_read_unlock.exit26_crit_edge, label %land.lhs.true.i19

if.end.rcu_read_unlock.exit26_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit26

land.lhs.true.i19:                                ; preds = %if.end
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit26

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit26

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_unlock.exit26

rcu_read_unlock.exit26:                           ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit26_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit26_crit_edge, %if.end.rcu_read_unlock.exit26_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  %11 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i.i23 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i25 = add i32 %14, -1
  store volatile i32 %sub.i.i.i25, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @sel_netnode_lock) #7
  %call.i27 = tail call fastcc ptr @sel_netnode_find(ptr noundef %addr, i16 noundef zeroext %family) #7
  %cmp.not.i = icmp eq ptr %call.i27, null
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i28

if.then.i28:                                      ; preds = %rcu_read_unlock.exit26
  call void @__sanitizer_cov_trace_pc() #9
  %sid1.i = getelementptr inbounds %struct.netnode_security_struct, ptr %call.i27, i32 0, i32 1
  %15 = ptrtoint ptr %sid1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sid1.i, align 4
  %17 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %sid, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @sel_netnode_lock) #7
  br label %cleanup

if.end.i:                                         ; preds = %rcu_read_unlock.exit26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 2848, i32 noundef 40) #10
  %19 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i16 %family, label %do.body.i [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb8.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %call3.i = tail call i32 @security_node_sid(ptr noundef nonnull @selinux_state, i16 noundef zeroext 2, ptr noundef %addr, i32 noundef 4, ptr noundef %sid) #7
  %tobool.not.i29 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i29, label %sw.bb.i.if.end26.i_crit_edge, label %if.then4.i

sw.bb.i.if.end26.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then4.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr, align 4
  %22 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %call7.i.i.i, align 8
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end.i
  %call9.i = tail call i32 @security_node_sid(ptr noundef nonnull @selinux_state, i16 noundef zeroext 10, ptr noundef %addr, i32 noundef 16, ptr noundef %sid) #7
  %tobool10.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool10.not.i, label %sw.bb8.i.if.end26.i_crit_edge, label %if.then11.i

sw.bb8.i.if.end26.i_crit_edge:                    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then11.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = call ptr @memcpy(ptr %call7.i.i.i, ptr %addr, i32 16)
  br label %sw.epilog.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/selinux/netnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #7, !srcloc !38
  unreachable

sw.epilog.i:                                      ; preds = %if.then11.i, %if.then4.i
  %ret.0.i = phi i32 [ %call9.i, %if.then11.i ], [ %call3.i, %if.then4.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp18.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %cmp18.not.i, label %if.then21.i, label %sw.epilog.i.if.end26.i_crit_edge

sw.epilog.i.if.end26.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then21.i:                                      ; preds = %sw.epilog.i
  %family23.i = getelementptr inbounds %struct.netnode_security_struct, ptr %call7.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %family23.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %family, ptr %family23.i, align 4
  %25 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sid, align 4
  %sid25.i = getelementptr inbounds %struct.netnode_security_struct, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %sid25.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %sid25.i, align 8
  %28 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %family, label %do.body.i.i [
    i16 2, label %if.then21.i.sw.epilog.i.i_crit_edge
    i16 10, label %sw.bb2.i.i
  ]

if.then21.i.sw.epilog.i.i_crit_edge:              ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr %call7.i.i.i, i32 0, i32 3
  br label %sw.epilog.i.i

do.body.i.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/selinux/netnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #7, !srcloc !39
  unreachable

sw.epilog.i.i:                                    ; preds = %sw.bb2.i.i, %if.then21.i.sw.epilog.i.i_crit_edge
  %idx.0.in.in.i.i = phi ptr [ %arrayidx.i.i.i, %sw.bb2.i.i ], [ %call7.i.i.i, %if.then21.i.sw.epilog.i.i_crit_edge ]
  %29 = ptrtoint ptr %idx.0.in.in.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %idx.0.in.i.i = load i32, ptr %idx.0.in.in.i.i, align 4
  %idx.0.i.i = and i32 %idx.0.in.i.i, 255
  %list.i.i = getelementptr inbounds %struct.sel_netnode, ptr %call7.i.i.i, i32 0, i32 1
  %arrayidx.i.i = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i32 0, i32 %idx.0.i.i
  %list9.i.i = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i32 0, i32 %idx.0.i.i, i32 1
  %30 = ptrtoint ptr %list9.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %list9.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %list9.i.i, ptr noundef %31) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %sw.epilog.i.i.list_add_rcu.exit.i.i_crit_edge

sw.epilog.i.i.list_add_rcu.exit.i.i_crit_edge:    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_rcu.exit.i.i

if.end.i.i.i.i:                                   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %list.i.i, align 8
  %prev2.i.i.i.i = getelementptr inbounds %struct.sel_netnode, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list9.i.i, ptr %prev2.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !40
  %34 = ptrtoint ptr %list9.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %list.i.i, ptr %list9.i.i, align 4
  %prev37.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %35 = ptrtoint ptr %prev37.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list.i.i, ptr %prev37.i.i.i.i, align 4
  br label %list_add_rcu.exit.i.i

list_add_rcu.exit.i.i:                            ; preds = %if.end.i.i.i.i, %sw.epilog.i.i.list_add_rcu.exit.i.i_crit_edge
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %37)
  %cmp.i.i = icmp eq i32 %37, 16
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %list_add_rcu.exit.i.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @sel_netnode_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i.i.do.end20.i.i_crit_edge

if.then.i.i.do.end20.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %call14.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %land.lhs.true.i.i.do.end20.i.i_crit_edge, label %land.lhs.true16.i.i

land.lhs.true.i.i.do.end20.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20.i.i

land.lhs.true16.i.i:                              ; preds = %land.lhs.true.i.i
  %.b45.i.i = load i1, ptr @sel_netnode_insert.__warned, align 1
  br i1 %.b45.i.i, label %land.lhs.true16.i.i.do.end20.i.i_crit_edge, label %if.then18.i.i

land.lhs.true16.i.i.do.end20.i.i_crit_edge:       ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20.i.i

if.then18.i.i:                                    ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @sel_netnode_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 168, ptr noundef nonnull @.str.7) #7
  br label %do.end20.i.i

do.end20.i.i:                                     ; preds = %if.then18.i.i, %land.lhs.true16.i.i.do.end20.i.i_crit_edge, %land.lhs.true.i.i.do.end20.i.i_crit_edge, %if.then.i.i.do.end20.i.i_crit_edge
  %prev.i.i = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i32 0, i32 %idx.0.i.i, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 -24
  %call.i.i47.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %39) #7
  br i1 %call.i.i47.i.i, label %if.end.i.i48.i.i, label %do.end20.i.i.list_del_rcu.exit.i.i_crit_edge

do.end20.i.i.list_del_rcu.exit.i.i_crit_edge:     ; preds = %do.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit.i.i

if.end.i.i48.i.i:                                 ; preds = %do.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i.i, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del_rcu.exit.i.i

list_del_rcu.exit.i.i:                            ; preds = %if.end.i.i48.i.i, %do.end20.i.i.list_del_rcu.exit.i.i_crit_edge
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %tobool26.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool26.not.i.i, label %list_del_rcu.exit.i.i.if.end26.thread.i_crit_edge, label %do.end30.i.i

list_del_rcu.exit.i.i.if.end26.thread.i_crit_edge: ; preds = %list_del_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.thread.i

do.end30.i.i:                                     ; preds = %list_del_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %rcu.i.i = getelementptr i8, ptr %39, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 32 to ptr)) #7
  br label %if.end26.thread.i

if.else.i.i:                                      ; preds = %list_add_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i.i = add i32 %37, 1
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %inc.i.i, ptr %arrayidx.i.i, align 4
  br label %if.end26.thread.i

if.end26.thread.i:                                ; preds = %if.else.i.i, %do.end30.i.i, %list_del_rcu.exit.i.i.if.end26.thread.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @sel_netnode_lock) #7
  br label %cleanup

if.end26.i:                                       ; preds = %sw.epilog.i.if.end26.i_crit_edge, %sw.bb8.i.if.end26.i_crit_edge, %sw.bb.i.if.end26.i_crit_edge
  %ret.063.i = phi i32 [ %ret.0.i, %sw.epilog.i.if.end26.i_crit_edge ], [ %call3.i, %sw.bb.i.if.end26.i_crit_edge ], [ %call9.i, %sw.bb8.i.if.end26.i_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i.i) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @sel_netnode_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.063.i)
  %tobool27.not.i = icmp eq i32 %ret.063.i, 0
  br i1 %tobool27.not.i, label %if.end26.i.cleanup_crit_edge, label %do.end33.i, !prof !41

if.end26.i.cleanup_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end33.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end33.i, %if.end26.i.cleanup_crit_edge, %if.end26.thread.i, %if.then.i28, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ 0, %if.then.i28 ], [ %ret.063.i, %do.end33.i ], [ 0, %if.end26.i.cleanup_crit_edge ], [ 0, %if.end26.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sel_netnode_find(ptr nocapture noundef readonly %addr, i16 noundef zeroext %family) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %family, label %do.body [
    i16 2, label %entry.do.body6_crit_edge
    i16 10, label %sw.bb1
  ]

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  br label %do.body6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/selinux/netnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #7, !srcloc !42
  unreachable

do.body6:                                         ; preds = %sw.bb1, %entry.do.body6_crit_edge
  %idx.0.in.in = phi ptr [ %arrayidx.i, %sw.bb1 ], [ %addr, %entry.do.body6_crit_edge ]
  %1 = ptrtoint ptr %idx.0.in.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %idx.0.in = load i32, ptr %idx.0.in.in, align 4
  %idx.0 = and i32 %idx.0.in, 255
  %call7 = tail call i32 @rcu_read_lock_any_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body6.do.end13_crit_edge

do.body6.do.end13_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

land.lhs.true:                                    ; preds = %do.body6
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true10

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b66 = load i1, ptr @sel_netnode_find.__warned, align 1
  br i1 %.b66, label %land.lhs.true10.do.end13_crit_edge, label %if.then

land.lhs.true10.do.end13_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

if.then:                                          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @sel_netnode_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 120, ptr noundef nonnull @.str.3) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then, %land.lhs.true10.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %do.body6.do.end13_crit_edge
  %list = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i32 0, i32 %idx.0, i32 1
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn68 = load volatile ptr, ptr %list, align 4
  %cmp.not70 = icmp eq ptr %.pn68, %list
  br i1 %cmp.not70, label %do.end13.cleanup_crit_edge, label %for.body.lr.ph

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end13
  %arrayidx6.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 1
  %arrayidx11.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 2
  %arrayidx17.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn71 = phi ptr [ %.pn68, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %node.072 = getelementptr i8, ptr %.pn71, i32 -24
  %family22 = getelementptr i8, ptr %.pn71, i32 -4
  %3 = ptrtoint ptr %family22 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %family22, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %family)
  %cmp25 = icmp eq i16 %4, %family
  br i1 %cmp25, label %if.then27, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then27:                                        ; preds = %for.body
  %5 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %family, label %if.then27.for.inc_crit_edge [
    i16 2, label %sw.bb29
    i16 10, label %sw.bb36
  ]

if.then27.for.inc_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb29:                                          ; preds = %if.then27
  %6 = ptrtoint ptr %node.072 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node.072, align 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp32 = icmp eq i32 %7, %9
  br i1 %cmp32, label %sw.bb29.cleanup_crit_edge, label %sw.bb29.for.inc_crit_edge

sw.bb29.for.inc_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb36:                                          ; preds = %if.then27
  %10 = ptrtoint ptr %node.072 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %node.072, align 4
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %13, %11
  %arrayidx4.i = getelementptr i8, ptr %.pn71, i32 -20
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %17, %15
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr i8, ptr %.pn71, i32 -16
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9.i, align 4
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %21, %19
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr i8, ptr %.pn71, i32 -12
  %22 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15.i, align 4
  %24 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %25, %23
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %sw.bb36.cleanup_crit_edge, label %sw.bb36.for.inc_crit_edge

sw.bb36.for.inc_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %sw.bb36.for.inc_crit_edge, %sw.bb29.for.inc_crit_edge, %if.then27.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %26 = ptrtoint ptr %.pn71 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load volatile ptr, ptr %.pn71, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.bb36.cleanup_crit_edge, %sw.bb29.cleanup_crit_edge, %do.end13.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end13.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %node.072, %sw.bb36.cleanup_crit_edge ], [ %node.072, %sw.bb29.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sel_netnode_flush() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @sel_netnode_lock) #7
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %idx.039 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i32 0, i32 %idx.039
  %list = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i32 0, i32 %idx.039, i32 1
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
  %node.0 = getelementptr i8, ptr %.pn.in36, i32 -24
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
  %tobool.not = icmp eq ptr %node.0, null
  br i1 %tobool.not, label %list_del_rcu.exit.if.end_crit_edge, label %do.end

list_del_rcu.exit.if.end_crit_edge:               ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rcu = getelementptr i8, ptr %.pn.in36, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 32 to ptr)) #7
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
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @sel_netnode_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sel_netnode_init() #2 section ".init.text" align 64 {
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
  %arrayidx = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i32 0, i32 %iter.05
  %list = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i32 0, i32 %iter.05, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i32 0, i32 %iter.05, i32 1, i32 1
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
declare dso_local i32 @security_node_sid(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

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

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

!0 = !{ptr @__initcall__kmod_selinux__519_304_sel_netnode_init6, !1, !"__initcall__kmod_selinux__519_304_sel_netnode_init6", i1 false, i1 false}
!1 = !{!"../security/selinux/netnode.c", i32 304, i32 1}
!2 = !{ptr @sel_netnode_hash, !3, !"sel_netnode_hash", i1 false, i1 false}
!3 = !{!"../security/selinux/netnode.c", i32 58, i32 31}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../security/selinux/netnode.c", i32 120, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../security/selinux/netnode.c", i32 230, i32 3}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sel_netnode_sid_slow._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @sel_netnode_sid_slow._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../security/selinux/netnode.c", i32 166, i32 10}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../security/selinux/netnode.c", i32 57, i32 8}
!25 = !{ptr @sel_netnode_lock, !24, !"sel_netnode_lock", i1 false, i1 false}
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
!36 = !{i64 2149140264}
!37 = !{i64 2149140530}
!38 = !{i64 2158275927, i64 2158276418, i64 2158275964, i64 2158276020, i64 2158276054, i64 2158276078, i64 2158276119, i64 2158276140, i64 2158276168, i64 2158276202}
!39 = !{i64 2158263713, i64 2158264204, i64 2158263750, i64 2158263806, i64 2158263840, i64 2158263864, i64 2158263905, i64 2158263926, i64 2158263954, i64 2158263988}
!40 = !{i64 2151429659}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2158224486, i64 2158224977, i64 2158224523, i64 2158224579, i64 2158224613, i64 2158224637, i64 2158224678, i64 2158224699, i64 2158224727, i64 2158224761}
