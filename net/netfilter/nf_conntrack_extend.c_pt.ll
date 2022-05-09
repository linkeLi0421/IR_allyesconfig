; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_extend.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_extend.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+nf_ct_ext_add\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_ext_add\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_ext_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_ext_add:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_ext_add\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_ext_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_ct_extend_register\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_extend_register\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_extend_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_extend_register:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_extend_register\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_extend_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_ct_extend_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_ct_extend_unregister\09\09\09\09"
module asm "\09.long\09__crc_nf_ct_extend_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_ct_extend_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_ct_extend_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_nf_ct_extend_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.134, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.9 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.9 = type { %union.nf_inet_addr, %union.anon.10, i8, i8 }
%union.anon.10 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.134 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.nf_ct_ext = type { [10 x i8], i8, [0 x i8] }
%struct.nf_ct_ext_type = type { ptr, i32, i8, i8 }

@nf_ct_ext_types = internal global { [10 x ptr], [56 x i8] } zeroinitializer, align 32
@nf_ct_ext_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"net/netfilter/nf_conntrack_extend.c\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nf_ct_ext_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_nf_ct_ext_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_ext_add = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_ext_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_ext_add to i32), ptr @__kstrtab_nf_ct_ext_add, ptr @__kstrtabns_nf_ct_ext_add }, section "___ksymtab+nf_ct_ext_add", align 4
@nf_ct_ext_type_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nf_ct_ext_type_mutex, i64 52), ptr getelementptr (i8, ptr @nf_ct_ext_type_mutex, i64 52) }, ptr @nf_ct_ext_type_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_nf_ct_extend_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_extend_register = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_extend_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_extend_register to i32), ptr @__kstrtab_nf_ct_extend_register, ptr @__kstrtabns_nf_ct_extend_register }, section "___ksymtab_gpl+nf_ct_extend_register", align 4
@__kstrtab_nf_ct_extend_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_ct_extend_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_ct_extend_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_ct_extend_unregister to i32), ptr @__kstrtab_nf_ct_extend_unregister, ptr @__kstrtabns_nf_ct_extend_unregister }, section "___ksymtab_gpl+nf_ct_extend_unregister", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nf_ct_ext_type_mutex.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nf_ct_ext_type_mutex\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"nf_ct_ext_types\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 16, i32 37 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 27, i32 7 }
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"nf_ct_ext_type_mutex\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 695, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 723, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [39 x i8] c"../net/netfilter/nf_conntrack_extend.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 17, i32 8 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_nf_ct_ext_add, ptr @__ksymtab_nf_ct_extend_register, ptr @__ksymtab_nf_ct_extend_unregister, ptr @nf_ct_ext_types, ptr @.str, ptr @.str.1, ptr @nf_ct_ext_type_mutex, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ct_ext_types to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ct_ext_type_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_ct_ext_destroy(ptr noundef %ct) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %rcu_read_unlock.exit.for.body_crit_edge, %entry
  %i.031 = phi i32 [ 0, %entry ], [ %inc, %rcu_read_unlock.exit.for.body_crit_edge ]
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !35
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr [10 x ptr], ptr @nf_ct_ext_types, i32 0, i32 %i.031
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b21 = load i1, ptr @nf_ct_ext_destroy.__warned, align 1
  br i1 %.b21, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nf_ct_ext_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 27, ptr noundef nonnull @.str.1) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.if.end14_crit_edge, label %land.lhs.true10

do.end7.if.end14_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.lhs.true10:                                  ; preds = %do.end7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %land.lhs.true10.if.end14_crit_edge, label %if.then12

land.lhs.true10.if.end14_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(ptr noundef %ct) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true10.if.end14_crit_edge, %do.end7.if.end14_crit_edge
  %call.i22 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i22, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i25

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i25:                                ; preds = %if.end14
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i27

land.lhs.true.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i27:                               ; preds = %land.lhs.true.i25
  %.b4.i26 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26, label %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, label %if.then.i28

land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i28:                                      ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i28, %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !36
  %8 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i.i.i29 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i29 to ptr
  %preempt_count.i.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i30, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i30, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %rcu_read_unlock.exit.for.body_crit_edge

rcu_read_unlock.exit.for.body_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ext = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %12 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ext, align 8
  tail call void @kfree(ptr noundef %13) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nf_ct_ext_add(ptr noundef %ct, i32 noundef %id, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !37

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ext = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %3 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ext, align 8
  %tobool20.not = icmp eq ptr %4, null
  br i1 %tobool20.not, label %if.end.if.end27_crit_edge, label %if.then21

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then21:                                        ; preds = %if.end
  %idxprom.i = and i32 %id, 255
  %arrayidx.i = getelementptr [10 x i8], ptr %4, i32 0, i32 %idxprom.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not = icmp eq i8 %6, 0
  br i1 %tobool.i.not, label %cleanup, label %if.then21.cleanup73_crit_edge

if.then21.cleanup73_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

cleanup:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr inbounds %struct.nf_ct_ext, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len, align 1
  %conv26 = zext i8 %8 to i32
  %phi.bo = add nsw i32 %conv26, -1
  br label %if.end27

if.end27:                                         ; preds = %cleanup, %if.end.if.end27_crit_edge
  %oldlen.1 = phi i32 [ %phi.bo, %cleanup ], [ 10, %if.end.if.end27_crit_edge ]
  %9 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !35
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.end27.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end27.rcu_read_lock.exit_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end27
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end27.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr [10 x ptr], ptr @nf_ct_ext_types, i32 0, i32 %id
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx, align 4
  %call33 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end42_crit_edge

rcu_read_lock.exit.do.end42_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call35 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true.do.end42_crit_edge, label %land.lhs.true37

land.lhs.true.do.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

land.lhs.true37:                                  ; preds = %land.lhs.true
  %.b107 = load i1, ptr @nf_ct_ext_add.__warned, align 1
  br i1 %.b107, label %land.lhs.true37.do.end42_crit_edge, label %if.then39

land.lhs.true37.do.end42_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nf_ct_ext_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 62, ptr noundef nonnull @.str.1) #6
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %land.lhs.true37.do.end42_crit_edge, %land.lhs.true.do.end42_crit_edge, %rcu_read_lock.exit.do.end42_crit_edge
  %tobool44.not = icmp eq ptr %14, null
  br i1 %tobool44.not, label %if.then45, label %if.end46

if.then45:                                        ; preds = %do.end42
  %call.i108 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i108, label %if.then45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i111

if.then45.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i111:                               ; preds = %if.then45
  %call1.i109 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i109)
  %tobool.not.i110 = icmp eq i32 %call1.i109, 0
  br i1 %tobool.not.i110, label %land.lhs.true.i111.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i113

land.lhs.true.i111.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i113:                              ; preds = %land.lhs.true.i111
  %.b4.i112 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i112, label %land.lhs.true2.i113.rcu_read_unlock.exit_crit_edge, label %if.then.i114

land.lhs.true2.i113.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i114:                                     ; preds = %land.lhs.true2.i113
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i114, %land.lhs.true2.i113.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i111.rcu_read_unlock.exit_crit_edge, %if.then45.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !36
  %15 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i.i.i115 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i115 to ptr
  %preempt_count.i.i.i.i116 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i116, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i116, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %cleanup73

if.end46:                                         ; preds = %do.end42
  %align = getelementptr inbounds %struct.nf_ct_ext_type, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %align to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %align, align 1
  %conv47 = zext i8 %20 to i32
  %add = add nsw i32 %oldlen.1, %conv47
  %neg = sub nsw i32 0, %conv47
  %and = and i32 %add, %neg
  %len51 = getelementptr inbounds %struct.nf_ct_ext_type, ptr %14, i32 0, i32 2
  %21 = ptrtoint ptr %len51 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %len51, align 4
  %conv52 = zext i8 %22 to i32
  %add53 = add nsw i32 %and, %conv52
  %call.i117 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i117, label %if.end46.rcu_read_unlock.exit127_crit_edge, label %land.lhs.true.i120

if.end46.rcu_read_unlock.exit127_crit_edge:       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit127

land.lhs.true.i120:                               ; preds = %if.end46
  %call1.i118 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i118)
  %tobool.not.i119 = icmp eq i32 %call1.i118, 0
  br i1 %tobool.not.i119, label %land.lhs.true.i120.rcu_read_unlock.exit127_crit_edge, label %land.lhs.true2.i122

land.lhs.true.i120.rcu_read_unlock.exit127_crit_edge: ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit127

land.lhs.true2.i122:                              ; preds = %land.lhs.true.i120
  %.b4.i121 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i121, label %land.lhs.true2.i122.rcu_read_unlock.exit127_crit_edge, label %if.then.i123

land.lhs.true2.i122.rcu_read_unlock.exit127_crit_edge: ; preds = %land.lhs.true2.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit127

if.then.i123:                                     ; preds = %land.lhs.true2.i122
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #6
  br label %rcu_read_unlock.exit127

rcu_read_unlock.exit127:                          ; preds = %if.then.i123, %land.lhs.true2.i122.rcu_read_unlock.exit127_crit_edge, %land.lhs.true.i120.rcu_read_unlock.exit127_crit_edge, %if.end46.rcu_read_unlock.exit127_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !36
  %23 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i.i.i124 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i124 to ptr
  %preempt_count.i.i.i.i125 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i125, align 4
  %sub.i.i.i126 = add i32 %26, -1
  store volatile i32 %sub.i.i.i126, ptr %preempt_count.i.i.i.i125, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %27 = tail call i32 @llvm.umax.i32(i32 %add53, i32 128)
  %28 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ext, align 8
  %call57 = tail call noalias ptr @krealloc(ptr noundef %29, i32 noundef %27, i32 noundef %gfp) #9
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %rcu_read_unlock.exit127.cleanup73_crit_edge, label %if.end60

rcu_read_unlock.exit127.cleanup73_crit_edge:      ; preds = %rcu_read_unlock.exit127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup73

if.end60:                                         ; preds = %rcu_read_unlock.exit127
  %30 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ext, align 8
  %tobool62.not = icmp eq ptr %31, null
  br i1 %tobool62.not, label %if.then63, label %if.end60.if.end64_crit_edge

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %32 = call ptr @memset(ptr %call57, i32 0, i32 10)
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end60.if.end64_crit_edge
  %conv65 = trunc i32 %and to i8
  %arrayidx67 = getelementptr [10 x i8], ptr %call57, i32 0, i32 %id
  %33 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv65, ptr %arrayidx67, align 1
  %conv68 = trunc i32 %add53 to i8
  %len69 = getelementptr inbounds %struct.nf_ct_ext, ptr %call57, i32 0, i32 1
  %34 = ptrtoint ptr %len69 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv68, ptr %len69, align 1
  %add.ptr = getelementptr i8, ptr %call57, i32 %and
  %35 = call ptr @memset(ptr %add.ptr, i32 0, i32 %conv52)
  %36 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call57, ptr %ext, align 8
  br label %cleanup73

cleanup73:                                        ; preds = %if.end64, %rcu_read_unlock.exit127.cleanup73_crit_edge, %rcu_read_unlock.exit, %if.then21.cleanup73_crit_edge
  %retval.1 = phi ptr [ %add.ptr, %if.end64 ], [ null, %rcu_read_unlock.exit ], [ null, %rcu_read_unlock.exit127.cleanup73_crit_edge ], [ null, %if.then21.cleanup73_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_ct_extend_register(ptr noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nf_ct_ext_type_mutex, i32 noundef 0) #6
  %id = getelementptr inbounds %struct.nf_ct_ext_type, ptr %type, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [10 x ptr], ptr @nf_ct_ext_types, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !38
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx25 = getelementptr [10 x ptr], ptr @nf_ct_ext_types, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %type, ptr %arrayidx25, align 4
  br label %out

out:                                              ; preds = %do.body, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %do.body ], [ -16, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @nf_ct_ext_type_mutex) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_ct_extend_unregister(ptr nocapture noundef readonly %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nf_ct_ext_type_mutex, i32 noundef 0) #6
  %id = getelementptr inbounds %struct.nf_ct_ext_type, ptr %type, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [10 x ptr], ptr @nf_ct_ext_types, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nf_ct_ext_type_mutex) #6
  tail call void @synchronize_rcu() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #2 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20, !21, !23, !24}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_extend.c", i32 27, i32 7}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_conntrack_extend.c", i32 62, i32 6}
!6 = !{ptr @__ksymtab_nf_ct_ext_add, !7, !"__ksymtab_nf_ct_ext_add", i1 false, i1 false}
!7 = !{!"../net/netfilter/nf_conntrack_extend.c", i32 87, i32 1}
!8 = !{ptr @__ksymtab_nf_ct_extend_register, !9, !"__ksymtab_nf_ct_extend_register", i1 false, i1 false}
!9 = !{!"../net/netfilter/nf_conntrack_extend.c", i32 105, i32 1}
!10 = !{ptr @__ksymtab_nf_ct_extend_unregister, !11, !"__ksymtab_nf_ct_extend_unregister", i1 false, i1 false}
!11 = !{!"../net/netfilter/nf_conntrack_extend.c", i32 115, i32 1}
!12 = !{ptr @nf_ct_ext_types, !13, !"nf_ct_ext_types", i1 false, i1 false}
!13 = !{!"../net/netfilter/nf_conntrack_extend.c", i32 16, i32 37}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/nf_conntrack_extend.c", i32 17, i32 8}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nf_ct_ext_type_mutex, !22, !"nf_ct_ext_type_mutex", i1 false, i1 false}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2149921629}
!36 = !{i64 2149921895}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2157993242}
