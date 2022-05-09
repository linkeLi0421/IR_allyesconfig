; ModuleID = '/llk/IR_all_yes/net/ax25/ax25_iface.c_pt.bc'
source_filename = "../net/ax25/ax25_iface.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ax25_register_pid\22, \22a\22\09"
module asm "\09.weak\09__crc_ax25_register_pid\09\09\09\09"
module asm "\09.long\09__crc_ax25_register_pid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax25_register_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22ax25_register_pid\22\09\09\09\09\09"
module asm "__kstrtabns_ax25_register_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ax25_protocol_release\22, \22a\22\09"
module asm "\09.weak\09__crc_ax25_protocol_release\09\09\09\09"
module asm "\09.long\09__crc_ax25_protocol_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax25_protocol_release:\09\09\09\09\09"
module asm "\09.asciz \09\22ax25_protocol_release\22\09\09\09\09\09"
module asm "__kstrtabns_ax25_protocol_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ax25_linkfail_register\22, \22a\22\09"
module asm "\09.weak\09__crc_ax25_linkfail_register\09\09\09\09"
module asm "\09.long\09__crc_ax25_linkfail_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax25_linkfail_register:\09\09\09\09\09"
module asm "\09.asciz \09\22ax25_linkfail_register\22\09\09\09\09\09"
module asm "__kstrtabns_ax25_linkfail_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ax25_linkfail_release\22, \22a\22\09"
module asm "\09.weak\09__crc_ax25_linkfail_release\09\09\09\09"
module asm "\09.long\09__crc_ax25_linkfail_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax25_linkfail_release:\09\09\09\09\09"
module asm "\09.asciz \09\22ax25_linkfail_release\22\09\09\09\09\09"
module asm "__kstrtabns_ax25_linkfail_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ax25_listen_register\22, \22a\22\09"
module asm "\09.weak\09__crc_ax25_listen_register\09\09\09\09"
module asm "\09.long\09__crc_ax25_listen_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax25_listen_register:\09\09\09\09\09"
module asm "\09.asciz \09\22ax25_listen_register\22\09\09\09\09\09"
module asm "__kstrtabns_ax25_listen_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ax25_listen_release\22, \22a\22\09"
module asm "\09.weak\09__crc_ax25_listen_release\09\09\09\09"
module asm "\09.long\09__crc_ax25_listen_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax25_listen_release:\09\09\09\09\09"
module asm "\09.asciz \09\22ax25_listen_release\22\09\09\09\09\09"
module asm "__kstrtabns_ax25_listen_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.ax25_protocol = type { ptr, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.listen_struct = type { ptr, %struct.ax25_address, ptr }
%struct.ax25_address = type { [7 x i8] }
%struct.ax25_linkfail = type { %struct.hlist_node, ptr }

@protocol_list_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@protocol_list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ax25_register_pid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax25_register_pid = external dso_local constant [0 x i8], align 1
@__ksymtab_ax25_register_pid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax25_register_pid to i32), ptr @__kstrtab_ax25_register_pid, ptr @__kstrtabns_ax25_register_pid }, section "___ksymtab_gpl+ax25_register_pid", align 4
@__kstrtab_ax25_protocol_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax25_protocol_release = external dso_local constant [0 x i8], align 1
@__ksymtab_ax25_protocol_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax25_protocol_release to i32), ptr @__kstrtab_ax25_protocol_release, ptr @__kstrtabns_ax25_protocol_release }, section "___ksymtab+ax25_protocol_release", align 4
@linkfail_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ax25_linkfail_list = internal global { %struct.hlist_head, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ax25_linkfail_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax25_linkfail_register = external dso_local constant [0 x i8], align 1
@__ksymtab_ax25_linkfail_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax25_linkfail_register to i32), ptr @__kstrtab_ax25_linkfail_register, ptr @__kstrtabns_ax25_linkfail_register }, section "___ksymtab+ax25_linkfail_register", align 4
@__kstrtab_ax25_linkfail_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax25_linkfail_release = external dso_local constant [0 x i8], align 1
@__ksymtab_ax25_linkfail_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax25_linkfail_release to i32), ptr @__kstrtab_ax25_linkfail_release, ptr @__kstrtabns_ax25_linkfail_release }, section "___ksymtab+ax25_linkfail_release", align 4
@listen_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@listen_list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ax25_listen_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax25_listen_register = external dso_local constant [0 x i8], align 1
@__ksymtab_ax25_listen_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax25_listen_register to i32), ptr @__kstrtab_ax25_listen_register, ptr @__kstrtabns_ax25_listen_register }, section "___ksymtab+ax25_listen_register", align 4
@__kstrtab_ax25_listen_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax25_listen_release = external dso_local constant [0 x i8], align 1
@__ksymtab_ax25_listen_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax25_listen_release to i32), ptr @__kstrtab_ax25_listen_release, ptr @__kstrtabns_ax25_listen_release }, section "___ksymtab+ax25_listen_release", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"protocol_list_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"linkfail_lock\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"listen_lock\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [19 x i8] c"protocol_list_lock\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"protocol_list\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 28, i32 30 }
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"linkfail_lock\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"ax25_linkfail_list\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 31, i32 8 }
@___asan_gen_.15 = private unnamed_addr constant [12 x i8] c"listen_lock\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"listen_list\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 38, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 29, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 32, i32 8 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [25 x i8] c"../net/ax25/ax25_iface.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 39, i32 8 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_ax25_linkfail_register, ptr @__ksymtab_ax25_linkfail_release, ptr @__ksymtab_ax25_listen_register, ptr @__ksymtab_ax25_listen_release, ptr @__ksymtab_ax25_protocol_release, ptr @__ksymtab_ax25_register_pid, ptr @protocol_list_lock, ptr @protocol_list, ptr @linkfail_lock, ptr @ax25_linkfail_list, ptr @listen_lock, ptr @listen_list, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @protocol_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @protocol_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linkfail_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_linkfail_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @listen_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @listen_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_register_pid(ptr noundef %ap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @protocol_list_lock) #3
  %0 = load ptr, ptr @protocol_list, align 4
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %ap, align 4
  store ptr %ap, ptr @protocol_list, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @protocol_list_lock) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_protocol_release(i32 noundef %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @protocol_list_lock) #3
  %0 = load ptr, ptr @protocol_list, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end:                                           ; preds = %entry
  %pid1 = getelementptr inbounds %struct.ax25_protocol, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %pid1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pid1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %pid)
  %cmp2 = icmp eq i32 %2, %pid
  br i1 %cmp2, label %if.end.out.sink.split_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end.while.cond_crit_edge
  %protocol.0 = phi ptr [ %4, %while.body.while.cond_crit_edge ], [ %0, %if.end.while.cond_crit_edge ]
  %3 = ptrtoint ptr %protocol.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %protocol.0, align 4
  %cmp7.not = icmp eq ptr %4, null
  br i1 %cmp7.not, label %while.cond.out_crit_edge, label %while.body

while.cond.out_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

while.body:                                       ; preds = %while.cond
  %pid9 = getelementptr inbounds %struct.ax25_protocol, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pid9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid9, align 4
  %cmp10 = icmp eq i32 %6, %pid
  br i1 %cmp10, label %while.body.out.sink.split_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

while.body.out.sink.split_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

out.sink.split:                                   ; preds = %while.body.out.sink.split_crit_edge, %if.end.out.sink.split_crit_edge
  %.lcssa31.sink = phi ptr [ %0, %if.end.out.sink.split_crit_edge ], [ %4, %while.body.out.sink.split_crit_edge ]
  %protocol.0.lcssa32.sink = phi ptr [ @protocol_list, %if.end.out.sink.split_crit_edge ], [ %protocol.0, %while.body.out.sink.split_crit_edge ]
  %7 = ptrtoint ptr %.lcssa31.sink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.lcssa31.sink, align 4
  %9 = ptrtoint ptr %protocol.0.lcssa32.sink to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %protocol.0.lcssa32.sink, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %while.cond.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @protocol_list_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_linkfail_register(ptr noundef %lf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @linkfail_lock) #3
  %0 = load ptr, ptr @ax25_linkfail_list, align 4
  %1 = ptrtoint ptr %lf to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %0, ptr %lf, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.hlist_add_head.exit_crit_edge, label %do.body12.i

entry.hlist_add_head.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %lf, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %entry.hlist_add_head.exit_crit_edge
  store volatile ptr %lf, ptr @ax25_linkfail_list, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %lf, i32 0, i32 1
  %3 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr @ax25_linkfail_list, ptr %pprev34.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @linkfail_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_linkfail_release(ptr nocapture noundef %lf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @linkfail_lock) #3
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %lf, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init.exit_crit_edge, label %if.then.i

entry.hlist_del_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %lf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i3.i = icmp eq ptr %3, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %6 = ptrtoint ptr %lf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %lf, align 4
  %7 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %entry.hlist_del_init.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @linkfail_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25_listen_register(ptr noundef %callsign, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @listen_lock) #3
  %listen.011.i = load ptr, ptr @listen_list, align 4
  %cmp.not12.i = icmp eq ptr %listen.011.i, null
  br i1 %cmp.not12.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %listen.013.i = phi ptr [ %listen.0.i, %for.inc.i.for.body.i_crit_edge ], [ %listen.011.i, %entry.for.body.i_crit_edge ]
  %callsign1.i = getelementptr inbounds %struct.listen_struct, ptr %listen.013.i, i32 0, i32 1
  %call.i = tail call i32 @ax25cmp(ptr noundef %callsign1.i, ptr noundef %callsign) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %dev3.i = getelementptr inbounds %struct.listen_struct, ptr %listen.013.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3.i, align 4
  %cmp4.i = icmp eq ptr %1, %dev
  %cmp6.i = icmp eq ptr %1, null
  %or.cond.i = or i1 %cmp4.i, %cmp6.i
  br i1 %or.cond.i, label %land.lhs.true.i.cleanup.sink.split_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %2 = ptrtoint ptr %listen.013.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %listen.0.i = load ptr, ptr %listen.013.i, align 4
  %cmp.not.i = icmp eq ptr %listen.0.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @listen_lock) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2592, i32 noundef 16) #6
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %callsign4 = getelementptr inbounds %struct.listen_struct, ptr %call7.i, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %callsign4, ptr %callsign, i32 7)
  %dev5 = getelementptr inbounds %struct.listen_struct, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev5, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @listen_lock) #3
  %6 = load ptr, ptr @listen_list, align 4
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %call7.i, align 8
  store ptr %call7.i, ptr @listen_list, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end3, %land.lhs.true.i.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @listen_lock) #3
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25_listen_mine(ptr noundef %callsign, ptr noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @listen_lock) #3
  %listen.011 = load ptr, ptr @listen_list, align 4
  %cmp.not12 = icmp eq ptr %listen.011, null
  br i1 %cmp.not12, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %listen.013 = phi ptr [ %listen.0, %for.inc.for.body_crit_edge ], [ %listen.011, %entry.for.body_crit_edge ]
  %callsign1 = getelementptr inbounds %struct.listen_struct, ptr %listen.013, i32 0, i32 1
  %call = tail call i32 @ax25cmp(ptr noundef %callsign1, ptr noundef %callsign) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %dev3 = getelementptr inbounds %struct.listen_struct, ptr %listen.013, i32 0, i32 2
  %0 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev3, align 4
  %cmp4 = icmp eq ptr %1, %dev
  %cmp6 = icmp eq ptr %1, null
  %or.cond = or i1 %cmp4, %cmp6
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %2 = ptrtoint ptr %listen.013 to i32
  call void @__asan_load4_noabort(i32 %2)
  %listen.0 = load ptr, ptr %listen.013, align 4
  %cmp.not = icmp eq ptr %listen.0, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @listen_lock) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_listen_release(ptr noundef %callsign, ptr noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @listen_lock) #3
  %0 = load ptr, ptr @listen_list, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @listen_lock) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %callsign1 = getelementptr inbounds %struct.listen_struct, ptr %0, i32 0, i32 1
  %call = tail call i32 @ax25cmp(ptr noundef %callsign1, ptr noundef %callsign) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.land.rhs.preheader_crit_edge

if.end.land.rhs.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs.preheader

land.lhs.true:                                    ; preds = %if.end
  %dev3 = getelementptr inbounds %struct.listen_struct, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev3, align 4
  %cmp4 = icmp eq ptr %2, %dev
  br i1 %cmp4, label %if.then5, label %land.lhs.true.land.rhs.preheader_crit_edge

land.lhs.true.land.rhs.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %land.lhs.true.land.rhs.preheader_crit_edge, %if.end.land.rhs.preheader_crit_edge
  br label %land.rhs

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  store ptr %4, ptr @listen_list, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @listen_lock) #3
  tail call void @kfree(ptr noundef nonnull %0) #3
  br label %cleanup

land.rhs:                                         ; preds = %if.end23.land.rhs_crit_edge, %land.rhs.preheader
  %listen.043 = phi ptr [ %8, %if.end23.land.rhs_crit_edge ], [ %0, %land.rhs.preheader ]
  %5 = ptrtoint ptr %listen.043 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %listen.043, align 4
  %cmp9.not = icmp eq ptr %6, null
  br i1 %cmp9.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %callsign11 = getelementptr inbounds %struct.listen_struct, ptr %6, i32 0, i32 1
  %call12 = tail call i32 @ax25cmp(ptr noundef %callsign11, ptr noundef %callsign) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  %7 = ptrtoint ptr %listen.043 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %listen.043, align 4
  br i1 %cmp13, label %land.lhs.true14, label %while.body.if.end23_crit_edge

while.body.if.end23_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

land.lhs.true14:                                  ; preds = %while.body
  %dev16 = getelementptr inbounds %struct.listen_struct, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev16, align 4
  %cmp17 = icmp eq ptr %10, %dev
  br i1 %cmp17, label %if.then18, label %land.lhs.true14.if.end23_crit_edge

land.lhs.true14.if.end23_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

if.then18:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %13 = ptrtoint ptr %listen.043 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %listen.043, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @listen_lock) #3
  tail call void @kfree(ptr noundef %8) #3
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true14.if.end23_crit_edge, %while.body.if.end23_crit_edge
  %cmp7.not = icmp eq ptr %8, null
  br i1 %cmp7.not, label %if.end23.while.end_crit_edge, label %if.end23.land.rhs_crit_edge

if.end23.land.rhs_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %if.end23.while.end_crit_edge, %land.rhs.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @listen_lock) #3
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then18, %if.then5, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25cmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ax25_protocol_function(i32 noundef %pid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @protocol_list_lock) #3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %protocol.0.in = phi ptr [ @protocol_list, %entry ], [ %protocol.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %protocol.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %protocol.0 = load ptr, ptr %protocol.0.in, align 4
  %cmp.not = icmp eq ptr %protocol.0, null
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.cond
  %pid1 = getelementptr inbounds %struct.ax25_protocol, ptr %protocol.0, i32 0, i32 1
  %1 = ptrtoint ptr %pid1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pid1, align 4
  %cmp2 = icmp eq i32 %2, %pid
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %func = getelementptr inbounds %struct.ax25_protocol, ptr %protocol.0, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %func, align 4
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge
  %res.0 = phi ptr [ %4, %if.then ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @protocol_list_lock) #3
  ret ptr %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_link_failed(ptr noundef %ax25, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @linkfail_lock) #3
  %lf.019 = load ptr, ptr @ax25_linkfail_list, align 4
  %tobool2.not20 = icmp eq ptr %lf.019, null
  br i1 %tobool2.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %lf.021 = phi ptr [ %lf.0, %for.body.for.body_crit_edge ], [ %lf.019, %entry.for.body_crit_edge ]
  %func = getelementptr inbounds %struct.ax25_linkfail, ptr %lf.021, i32 0, i32 1
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func, align 4
  tail call void %1(ptr noundef %ax25, i32 noundef %reason) #3
  %2 = ptrtoint ptr %lf.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %lf.0 = load ptr, ptr %lf.021, align 4
  %tobool2.not = icmp eq ptr %lf.0, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @linkfail_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25_protocol_is_registered(i32 noundef %pid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @protocol_list_lock) #3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %protocol.0.in = phi ptr [ @protocol_list, %entry ], [ %protocol.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %protocol.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %protocol.0 = load ptr, ptr %protocol.0.in, align 4
  %cmp.not = icmp eq ptr %protocol.0, null
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.cond
  %pid1 = getelementptr inbounds %struct.ax25_protocol, ptr %protocol.0, i32 0, i32 1
  %1 = ptrtoint ptr %pid1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pid1, align 4
  %cmp2 = icmp eq i32 %2, %pid
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %res.0 = phi i32 [ 0, %for.cond.for.end_crit_edge ], [ 1, %for.body.for.end_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @protocol_list_lock) #3
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !22, !24, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__ksymtab_ax25_register_pid, !1, !"__ksymtab_ax25_register_pid", i1 false, i1 false}
!1 = !{!"../net/ax25/ax25_iface.c", i32 53, i32 1}
!2 = !{ptr @__ksymtab_ax25_protocol_release, !3, !"__ksymtab_ax25_protocol_release", i1 false, i1 false}
!3 = !{!"../net/ax25/ax25_iface.c", i32 81, i32 1}
!4 = !{ptr @__ksymtab_ax25_linkfail_register, !5, !"__ksymtab_ax25_linkfail_register", i1 false, i1 false}
!5 = !{!"../net/ax25/ax25_iface.c", i32 90, i32 1}
!6 = !{ptr @__ksymtab_ax25_linkfail_release, !7, !"__ksymtab_ax25_linkfail_release", i1 false, i1 false}
!7 = !{!"../net/ax25/ax25_iface.c", i32 99, i32 1}
!8 = !{ptr @__ksymtab_ax25_listen_register, !9, !"__ksymtab_ax25_listen_register", i1 false, i1 false}
!9 = !{!"../net/ax25/ax25_iface.c", i32 122, i32 1}
!10 = !{ptr @__ksymtab_ax25_listen_release, !11, !"__ksymtab_ax25_listen_release", i1 false, i1 false}
!11 = !{!"../net/ax25/ax25_iface.c", i32 156, i32 1}
!12 = !{ptr @protocol_list, !13, !"protocol_list", i1 false, i1 false}
!13 = !{!"../net/ax25/ax25_iface.c", i32 28, i32 30}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/ax25/ax25_iface.c", i32 29, i32 8}
!16 = !{ptr @protocol_list_lock, !15, !"protocol_list_lock", i1 false, i1 false}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/ax25/ax25_iface.c", i32 32, i32 8}
!19 = !{ptr @linkfail_lock, !18, !"linkfail_lock", i1 false, i1 false}
!20 = !{ptr @ax25_linkfail_list, !21, !"ax25_linkfail_list", i1 false, i1 false}
!21 = !{!"../net/ax25/ax25_iface.c", i32 31, i32 8}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/ax25/ax25_iface.c", i32 39, i32 8}
!24 = !{ptr @listen_lock, !23, !"listen_lock", i1 false, i1 false}
!25 = !{ptr @listen_list, !26, !"listen_list", i1 false, i1 false}
!26 = !{!"../net/ax25/ax25_iface.c", i32 38, i32 4}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
