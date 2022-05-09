; ModuleID = '/llk/IR_all_yes/net/llc/llc_core.c_pt.bc'
source_filename = "../net/llc/llc_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+llc_sap_list\22, \22a\22\09"
module asm "\09.weak\09__crc_llc_sap_list\09\09\09\09"
module asm "\09.long\09__crc_llc_sap_list\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llc_sap_list:\09\09\09\09\09"
module asm "\09.asciz \09\22llc_sap_list\22\09\09\09\09\09"
module asm "__kstrtabns_llc_sap_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+llc_sap_find\22, \22a\22\09"
module asm "\09.weak\09__crc_llc_sap_find\09\09\09\09"
module asm "\09.long\09__crc_llc_sap_find\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llc_sap_find:\09\09\09\09\09"
module asm "\09.asciz \09\22llc_sap_find\22\09\09\09\09\09"
module asm "__kstrtabns_llc_sap_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+llc_sap_open\22, \22a\22\09"
module asm "\09.weak\09__crc_llc_sap_open\09\09\09\09"
module asm "\09.long\09__crc_llc_sap_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llc_sap_open:\09\09\09\09\09"
module asm "\09.asciz \09\22llc_sap_open\22\09\09\09\09\09"
module asm "__kstrtabns_llc_sap_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+llc_sap_close\22, \22a\22\09"
module asm "\09.weak\09__crc_llc_sap_close\09\09\09\09"
module asm "\09.long\09__crc_llc_sap_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llc_sap_close:\09\09\09\09\09"
module asm "\09.asciz \09\22llc_sap_close\22\09\09\09\09\09"
module asm "__kstrtabns_llc_sap_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.llc_sap = type { i8, i8, i8, %struct.refcount_struct, ptr, %struct.llc_addr, %struct.list_head, %struct.spinlock, i32, [64 x %struct.hlist_nulls_head], [64 x %struct.hlist_head], %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llc_addr = type { i8, [6 x i8] }
%struct.hlist_nulls_head = type { ptr }
%struct.hlist_head = type { ptr }
%struct.callback_head = type { ptr, ptr }

@llc_sap_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @llc_sap_list, ptr @llc_sap_list }, [24 x i8] zeroinitializer }, align 32
@llc_sap_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.6 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/llc/llc_core.c\00", [45 x i8] zeroinitializer }, align 32
@llc_packet_type = internal global %struct.packet_type { i16 4, i8 0, ptr null, ptr null, ptr @llc_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@llc_tr_packet_type = internal global %struct.packet_type { i16 17, i8 0, ptr null, ptr null, ptr @llc_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@__initcall__kmod_llc__348_156_llc_init6 = internal global ptr @llc_init, section ".initcall6.init", align 4
@__exitcall_llc_exit = internal global ptr @llc_exit, section ".exitcall.exit", align 4
@__kstrtab_llc_sap_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_llc_sap_list = external dso_local constant [0 x i8], align 1
@__ksymtab_llc_sap_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llc_sap_list to i32), ptr @__kstrtab_llc_sap_list, ptr @__kstrtabns_llc_sap_list }, section "___ksymtab+llc_sap_list", align 4
@__kstrtab_llc_sap_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_llc_sap_find = external dso_local constant [0 x i8], align 1
@__ksymtab_llc_sap_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llc_sap_find to i32), ptr @__kstrtab_llc_sap_find, ptr @__kstrtabns_llc_sap_find }, section "___ksymtab+llc_sap_find", align 4
@__kstrtab_llc_sap_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_llc_sap_open = external dso_local constant [0 x i8], align 1
@__ksymtab_llc_sap_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llc_sap_open to i32), ptr @__kstrtab_llc_sap_open, ptr @__kstrtabns_llc_sap_open }, section "___ksymtab+llc_sap_open", align 4
@__kstrtab_llc_sap_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_llc_sap_close = external dso_local constant [0 x i8], align 1
@__ksymtab_llc_sap_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llc_sap_close to i32), ptr @__kstrtab_llc_sap_close, ptr @__kstrtabns_llc_sap_close }, section "___ksymtab+llc_sap_close", align 4
@__UNIQUE_ID_file349 = internal constant [21 x i8] c"llc.file=net/llc/llc\00", section ".modinfo", align 1
@__UNIQUE_ID_license350 = internal constant [16 x i8] c"llc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author351 = internal constant [70 x i8] c"llc.author=Procom 1997, Jay Schullist 2001, Arnaldo C. Melo 2001-2003\00", section ".modinfo", align 1
@__UNIQUE_ID_description352 = internal constant [44 x i8] c"llc.description=LLC IEEE 802.2 core support\00", section ".modinfo", align 1
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"llc_sap_list_lock\00", [46 x i8] zeroinitializer }, align 32
@llc_sap_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sap->sk_lock\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.6 = private unnamed_addr constant [13 x i8] c"llc_sap_list\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 25, i32 1 }
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"llc_sap_list_lock\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 124, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 749, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 760, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 26, i32 8 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [22 x i8] c"../net/llc/llc_core.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 41, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description352, ptr @__UNIQUE_ID_file349, ptr @__UNIQUE_ID_license350, ptr @__exitcall_llc_exit, ptr @__initcall__kmod_llc__348_156_llc_init6, ptr @__ksymtab_llc_sap_close, ptr @__ksymtab_llc_sap_find, ptr @__ksymtab_llc_sap_list, ptr @__ksymtab_llc_sap_open, ptr @llc_exit, ptr @llc_sap_list, ptr @llc_sap_list_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @llc_sap_alloc.__key, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @llc_sap_find(i8 noundef zeroext %sap_value) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable() #7
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.for.cond.i.preheader_crit_edge, label %land.lhs.true.i

entry.for.cond.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.for.cond.i.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 750, ptr noundef nonnull @.str.2) #7
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i, %land.lhs.true2.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %entry.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @llc_sap_list, %for.cond.i.preheader ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @llc_sap_list
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %laddr.i = getelementptr i8, ptr %.pn.i, i32 -8
  %1 = ptrtoint ptr %laddr.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %laddr.i, align 4
  %cmp2.i = icmp eq i8 %2, %sap_value
  br i1 %cmp2.i, label %__llc_sap_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

__llc_sap_find.exit:                              ; preds = %for.body.i
  %sap.0.le.i = getelementptr i8, ptr %.pn.i, i32 -20
  %tobool.not = icmp eq ptr %sap.0.le.i, null
  br i1 %tobool.not, label %__llc_sap_find.exit.if.then_crit_edge, label %lor.lhs.false

__llc_sap_find.exit.if.then_crit_edge:            ; preds = %__llc_sap_find.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %__llc_sap_find.exit
  %refcnt.i = getelementptr i8, ptr %.pn.i, i32 -16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #7
  %3 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false
  %5 = phi i32 [ %4, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %6 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %5, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #7
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #7
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %9 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 %8, i32 %add.i.i.i.i, ptr elementtype(i32) %refcnt.i) #7, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %8
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !50

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %11, 1
  %12 = or i32 %add5.i.i.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.llc_sap_hold_safe.exit_crit_edge, label %if.then10.i.i.i.i, !prof !50

if.end4.i.i.i.i.llc_sap_hold_safe.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %llc_sap_hold_safe.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 0) #7
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %llc_sap_hold_safe.exit

llc_sap_hold_safe.exit:                           ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.llc_sap_hold_safe.exit_crit_edge
  %14 = phi i32 [ %11, %if.end4.i.i.i.i.llc_sap_hold_safe.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.i.i.i.i.not = icmp eq i32 %14, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  br i1 %tobool12.i.i.i.i.not, label %llc_sap_hold_safe.exit.if.then_crit_edge, label %llc_sap_hold_safe.exit.if.end_crit_edge

llc_sap_hold_safe.exit.if.end_crit_edge:          ; preds = %llc_sap_hold_safe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

llc_sap_hold_safe.exit.if.then_crit_edge:         ; preds = %llc_sap_hold_safe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %llc_sap_hold_safe.exit.if.then_crit_edge, %__llc_sap_find.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %llc_sap_hold_safe.exit.if.end_crit_edge
  %sap.0 = phi ptr [ %sap.0.le.i, %llc_sap_hold_safe.exit.if.end_crit_edge ], [ null, %if.then ]
  %call.i4 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i4, label %if.end.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i7

if.end.rcu_read_unlock_bh.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i7:                                 ; preds = %if.end
  %call1.i5 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock_bh.exit

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 761, ptr noundef nonnull @.str.3) #7
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i7.rcu_read_unlock_bh.exit_crit_edge, %if.end.rcu_read_unlock_bh.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #7
  call fastcc void @local_bh_enable() #7
  ret ptr %sap.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @llc_sap_open(i8 noundef zeroext %lsap, ptr noundef %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @llc_sap_list_lock) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @llc_sap_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @llc_sap_list
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %laddr.i = getelementptr i8, ptr %.pn.i, i32 -8
  %1 = ptrtoint ptr %laddr.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %laddr.i, align 4
  %cmp2.i = icmp eq i8 %2, %lsap
  br i1 %cmp2.i, label %__llc_sap_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

__llc_sap_find.exit:                              ; preds = %for.body.i
  %sap.0.le.i = getelementptr i8, ptr %.pn.i, i32 -20
  %tobool.not = icmp eq ptr %sap.0.le.i, null
  br i1 %tobool.not, label %__llc_sap_find.exit.if.end_crit_edge, label %__llc_sap_find.exit.out_crit_edge

__llc_sap_find.exit.out_crit_edge:                ; preds = %__llc_sap_find.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

__llc_sap_find.exit.if.end_crit_edge:             ; preds = %__llc_sap_find.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %__llc_sap_find.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2848, i32 noundef 596) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %if.then.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.i:                                        ; preds = %if.end
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %call7.i.i.i, align 8
  %sk_lock.i = getelementptr inbounds %struct.llc_sap, ptr %call7.i.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %sk_lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @llc_sap_alloc.__key, i16 noundef signext 3) #7
  br label %for.body.i11

for.body.i11:                                     ; preds = %for.body.i11.for.body.i11_crit_edge, %if.then.i
  %i.010.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %for.body.i11.for.body.i11_crit_edge ]
  %shl.i = shl nuw i32 %i.010.i, 1
  %or.i = or i32 %shl.i, 1
  %5 = inttoptr i32 %or.i to ptr
  %arrayidx.i = getelementptr %struct.llc_sap, ptr %call7.i.i.i, i32 0, i32 9, i32 %i.010.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %if.end4, label %for.body.i11.for.body.i11_crit_edge

for.body.i11.for.body.i11_crit_edge:              ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i11

if.end4:                                          ; preds = %for.body.i11
  %refcnt.i = getelementptr inbounds %struct.llc_sap, ptr %call7.i.i.i, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #7
  %7 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %refcnt.i, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %call7.i.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %laddr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %lsap, ptr %laddr, align 4
  %rcv_func = getelementptr inbounds %struct.llc_sap, ptr %call7.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %rcv_func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %func, ptr %rcv_func, align 8
  %node = getelementptr inbounds %struct.llc_sap, ptr %call7.i.i.i, i32 0, i32 6
  %10 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @llc_sap_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %10, ptr noundef nonnull @llc_sap_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @llc_sap_list, ptr %node, align 4
  %prev2.i.i = getelementptr inbounds %struct.llc_sap, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %prev2.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !51
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %node, ptr %10, align 4
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @llc_sap_list, i32 0, i32 1), align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %if.end4.out_crit_edge, %if.end.out_crit_edge, %__llc_sap_find.exit.out_crit_edge
  %sap.0 = phi ptr [ null, %__llc_sap_find.exit.out_crit_edge ], [ %call7.i.i.i, %if.end4.out_crit_edge ], [ %call7.i.i.i, %if.end.i.i ], [ null, %if.end.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @llc_sap_list_lock) #7
  ret ptr %sap.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_sap_close(ptr noundef %sap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_count = getelementptr inbounds %struct.llc_sap, ptr %sap, i32 0, i32 8
  %0 = ptrtoint ptr %sk_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !50

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @llc_sap_list_lock) #7
  %node = getelementptr inbounds %struct.llc_sap, ptr %sap, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_rcu.exit_crit_edge

if.end.list_del_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.llc_sap, ptr %sap, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.llc_sap, ptr %sap, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @llc_sap_list_lock) #7
  %tobool21.not = icmp eq ptr %sap, null
  br i1 %tobool21.not, label %list_del_rcu.exit.if.end26_crit_edge, label %do.end25

list_del_rcu.exit.if.end26_crit_edge:             ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end25:                                         ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rcu = getelementptr inbounds %struct.llc_sap, ptr %sap, i32 0, i32 11
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 588 to ptr)) #7
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %list_del_rcu.exit.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @llc_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dev_remove_pack(ptr noundef nonnull @llc_packet_type) #7
  tail call void @dev_remove_pack(ptr noundef nonnull @llc_tr_packet_type) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @llc_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dev_add_pack(ptr noundef nonnull @llc_packet_type) #7
  tail call void @dev_add_pack(ptr noundef nonnull @llc_tr_packet_type) #7
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_rcv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !29, !30, !32, !33, !35, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @llc_sap_list, !1, !"llc_sap_list", i1 false, i1 false}
!1 = !{!"../net/llc/llc_core.c", i32 25, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/llc/llc_core.c", i32 124, i32 2}
!4 = !{ptr @__initcall__kmod_llc__348_156_llc_init6, !5, !"__initcall__kmod_llc__348_156_llc_init6", i1 false, i1 false}
!5 = !{!"../net/llc/llc_core.c", i32 156, i32 1}
!6 = !{ptr @__exitcall_llc_exit, !7, !"__exitcall_llc_exit", i1 false, i1 false}
!7 = !{!"../net/llc/llc_core.c", i32 157, i32 1}
!8 = !{ptr @__ksymtab_llc_sap_list, !9, !"__ksymtab_llc_sap_list", i1 false, i1 false}
!9 = !{!"../net/llc/llc_core.c", i32 159, i32 1}
!10 = !{ptr @__ksymtab_llc_sap_find, !11, !"__ksymtab_llc_sap_find", i1 false, i1 false}
!11 = !{!"../net/llc/llc_core.c", i32 160, i32 1}
!12 = !{ptr @__ksymtab_llc_sap_open, !13, !"__ksymtab_llc_sap_open", i1 false, i1 false}
!13 = !{!"../net/llc/llc_core.c", i32 161, i32 1}
!14 = !{ptr @__ksymtab_llc_sap_close, !15, !"__ksymtab_llc_sap_close", i1 false, i1 false}
!15 = !{!"../net/llc/llc_core.c", i32 162, i32 1}
!16 = !{ptr @__UNIQUE_ID_file349, !17, !"__UNIQUE_ID_file349", i1 false, i1 false}
!17 = !{!"../net/llc/llc_core.c", i32 164, i32 1}
!18 = !{ptr @__UNIQUE_ID_license350, !17, !"__UNIQUE_ID_license350", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_author351, !20, !"__UNIQUE_ID_author351", i1 false, i1 false}
!20 = !{!"../net/llc/llc_core.c", i32 165, i32 1}
!21 = !{ptr @__UNIQUE_ID_description352, !22, !"__UNIQUE_ID_description352", i1 false, i1 false}
!22 = !{!"../net/llc/llc_core.c", i32 166, i32 1}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/llc/llc_core.c", i32 26, i32 8}
!32 = !{ptr @llc_sap_list_lock, !31, !"llc_sap_list_lock", i1 false, i1 false}
!33 = !{ptr @llc_sap_alloc.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../net/llc/llc_core.c", i32 41, i32 3}
!35 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @llc_packet_type, !37, !"llc_packet_type", i1 false, i1 false}
!37 = !{!"../net/llc/llc_core.c", i32 133, i32 27}
!38 = !{ptr @llc_tr_packet_type, !39, !"llc_tr_packet_type", i1 false, i1 false}
!39 = !{!"../net/llc/llc_core.c", i32 138, i32 27}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 826839, i64 826863, i64 826884, i64 826901, i64 826918}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2151668276}
