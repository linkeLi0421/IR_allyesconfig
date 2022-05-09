; ModuleID = '/llk/IR_all_yes/net/802/stp.c_pt.bc'
source_filename = "../net/802/stp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+stp_proto_register\22, \22a\22\09"
module asm "\09.weak\09__crc_stp_proto_register\09\09\09\09"
module asm "\09.long\09__crc_stp_proto_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stp_proto_register:\09\09\09\09\09"
module asm "\09.asciz \09\22stp_proto_register\22\09\09\09\09\09"
module asm "__kstrtabns_stp_proto_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+stp_proto_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_stp_proto_unregister\09\09\09\09"
module asm "\09.long\09__crc_stp_proto_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stp_proto_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22stp_proto_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_stp_proto_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llc_pdu_un = type { i8, i8, i8 }
%struct.stp_proto = type { [6 x i8], ptr, ptr }
%struct.llc_sap = type { i8, i8, i8, %struct.refcount_struct, ptr, %struct.llc_addr, %struct.list_head, %struct.spinlock, i32, [64 x %struct.hlist_nulls_head], [64 x %struct.hlist_head], %struct.callback_head }
%struct.llc_addr = type { i8, [6 x i8] }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.hlist_nulls_head = type { ptr }
%struct.hlist_head = type { ptr }
%struct.callback_head = type { ptr, ptr }

@stp_proto_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @stp_proto_mutex, i64 52), ptr getelementptr (i8, ptr @stp_proto_mutex, i64 52) }, ptr @stp_proto_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@sap_registered = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sap = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@stp_proto = internal global ptr null, section ".data..read_mostly", align 4
@garp_protos = internal global [16 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_stp_proto_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_stp_proto_register = external dso_local constant [0 x i8], align 1
@__ksymtab_stp_proto_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stp_proto_register to i32), ptr @__kstrtab_stp_proto_register, ptr @__kstrtabns_stp_proto_register }, section "___ksymtab_gpl+stp_proto_register", align 4
@__kstrtab_stp_proto_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_stp_proto_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_stp_proto_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stp_proto_unregister to i32), ptr @__kstrtab_stp_proto_unregister, ptr @__kstrtabns_stp_proto_unregister }, section "___ksymtab_gpl+stp_proto_unregister", align 4
@__UNIQUE_ID_file361 = internal constant [21 x i8] c"stp.file=net/802/stp\00", section ".modinfo", align 1
@__UNIQUE_ID_license362 = internal constant [16 x i8] c"stp.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stp_proto_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stp_proto_mutex\00", [16 x i8] zeroinitializer }, align 32
@stp_pdu_rcv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/802/stp.c\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@stp_pdu_rcv.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"stp_proto_mutex\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"sap_registered\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 26, i32 21 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 27, i32 8 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [17 x i8] c"../net/802/stp.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 43, i32 11 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_file361, ptr @__UNIQUE_ID_license362, ptr @__ksymtab_stp_proto_register, ptr @__ksymtab_stp_proto_unregister, ptr @stp_proto_mutex, ptr @sap_registered, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stp_proto_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sap_registered to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stp_proto_register(ptr noundef %proto) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @stp_proto_mutex, i32 noundef 0) #3
  %0 = load i32, ptr @sap_registered, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @sap_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2

if.then:                                          ; preds = %entry
  %call = tail call ptr @llc_sap_open(i8 noundef zeroext 66, ptr noundef nonnull @stp_pdu_rcv) #3
  store ptr %call, ptr @sap, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.out_crit_edge, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %1 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %proto, align 4
  %add.ptr.i = getelementptr i8, ptr %proto, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %4 to i32
  %or.i = or i32 %2, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3
  br i1 %cmp.i, label %if.end2.out.sink.split_crit_edge, label %do.body39

if.end2.out.sink.split_crit_edge:                 ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.sink.split

do.body39:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx70 = getelementptr [6 x i8], ptr %proto, i32 0, i32 5
  %5 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx70, align 1
  %conv71 = zext i8 %6 to i32
  %sub72 = add nsw i32 %conv71, -32
  %arrayidx73 = getelementptr [16 x ptr], ptr @garp_protos, i32 0, i32 %sub72
  br label %out.sink.split

out.sink.split:                                   ; preds = %do.body39, %if.end2.out.sink.split_crit_edge
  %stp_proto.sink = phi ptr [ %arrayidx73, %do.body39 ], [ @stp_proto, %if.end2.out.sink.split_crit_edge ]
  %7 = ptrtoint ptr %stp_proto.sink to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %proto, ptr %stp_proto.sink, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.then.out_crit_edge
  %err.0 = phi i32 [ -12, %if.then.out_crit_edge ], [ 0, %out.sink.split ]
  tail call void @mutex_unlock(ptr noundef nonnull @stp_proto_mutex) #3
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llc_sap_open(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stp_pdu_rcv(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readnone %pt, ptr nocapture noundef readnone %orig_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i81 = zext i16 %5 to i32
  %add.ptr.i.i82 = getelementptr i8, ptr %1, i32 %conv.i.i81
  %ssap = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i82, i32 0, i32 1
  %6 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ssap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %7)
  %cmp.not = icmp eq i8 %7, 66
  br i1 %cmp.not, label %lor.lhs.false, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %err

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %add.ptr.i.i82 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.i.i82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %9)
  %cmp4.not = icmp eq i8 %9, 66
  br i1 %cmp4.not, label %lor.lhs.false6, label %lor.lhs.false.err_crit_edge

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %err

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i82, i32 0, i32 2
  %10 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrl_1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp8.not = icmp eq i8 %11, 3
  br i1 %cmp8.not, label %if.end, label %lor.lhs.false6.err_crit_edge

lor.lhs.false6.err_crit_edge:                     ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #5
  br label %err

if.end:                                           ; preds = %lor.lhs.false6
  %arrayidx = getelementptr [6 x i8], ptr %add.ptr.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = and i8 %13, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %14)
  %15 = icmp eq i8 %14, 32
  br i1 %15, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end
  %conv10 = zext i8 %13 to i32
  %sub = add nsw i32 %conv10, -32
  %arrayidx22 = getelementptr [16 x ptr], ptr @garp_protos, i32 0, i32 %sub
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx22, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %land.lhs.true25, label %if.then18.do.end33_crit_edge

if.then18.do.end33_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end33

land.lhs.true25:                                  ; preds = %if.then18
  %call26 = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true25.do.end33_crit_edge, label %land.lhs.true28

land.lhs.true25.do.end33_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end33

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %.b79 = load i1, ptr @stp_pdu_rcv.__warned, align 1
  br i1 %.b79, label %land.lhs.true28.do.end33_crit_edge, label %if.then30

land.lhs.true28.do.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end33

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @stp_pdu_rcv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 44, ptr noundef nonnull @.str.3) #3
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %land.lhs.true28.do.end33_crit_edge, %land.lhs.true25.do.end33_crit_edge, %if.then18.do.end33_crit_edge
  %tobool35.not = icmp eq ptr %17, null
  br i1 %tobool35.not, label %do.end33.err_crit_edge, label %land.lhs.true36

do.end33.err_crit_edge:                           ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %err

land.lhs.true36:                                  ; preds = %do.end33
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 4
  %xor.i = xor i32 %21, %19
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %17, i32 4
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %25, %23
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true36.if.end62_crit_edge, label %land.lhs.true36.err_crit_edge

land.lhs.true36.err_crit_edge:                    ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #5
  br label %err

land.lhs.true36.if.end62_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end62

if.else:                                          ; preds = %if.end
  %26 = load volatile ptr, ptr @stp_proto, align 4
  %call47 = tail call i32 @rcu_read_lock_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true49, label %if.else.if.end59_crit_edge

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end59

land.lhs.true49:                                  ; preds = %if.else
  %call50 = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true49.if.end59_crit_edge, label %land.lhs.true52

land.lhs.true49.if.end59_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end59

land.lhs.true52:                                  ; preds = %land.lhs.true49
  %.b7778 = load i1, ptr @stp_pdu_rcv.__warned.4, align 1
  br i1 %.b7778, label %land.lhs.true52.if.end59_crit_edge, label %if.then54

land.lhs.true52.if.end59_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end59

if.then54:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @stp_pdu_rcv.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 49, ptr noundef nonnull @.str.3) #3
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %land.lhs.true52.if.end59_crit_edge, %land.lhs.true49.if.end59_crit_edge, %if.else.if.end59_crit_edge
  %tobool60.not = icmp eq ptr %26, null
  br i1 %tobool60.not, label %if.end59.err_crit_edge, label %if.end59.if.end62_crit_edge

if.end59.if.end62_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end62

if.end59.err_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #5
  br label %err

if.end62:                                         ; preds = %if.end59.if.end62_crit_edge, %land.lhs.true36.if.end62_crit_edge
  %proto.088 = phi ptr [ %26, %if.end59.if.end62_crit_edge ], [ %17, %land.lhs.true36.if.end62_crit_edge ]
  %rcv = getelementptr inbounds %struct.stp_proto, ptr %proto.088, i32 0, i32 1
  %27 = ptrtoint ptr %rcv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rcv, align 4
  tail call void %28(ptr noundef nonnull %proto.088, ptr noundef %skb, ptr noundef %dev) #3
  br label %cleanup

err:                                              ; preds = %if.end59.err_crit_edge, %land.lhs.true36.err_crit_edge, %do.end33.err_crit_edge, %lor.lhs.false6.err_crit_edge, %lor.lhs.false.err_crit_edge, %entry.err_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end62
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stp_proto_unregister(ptr nocapture noundef readonly %proto) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @stp_proto_mutex, i32 noundef 0) #3
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %proto, align 4
  %add.ptr.i = getelementptr i8, ptr %proto, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %3 to i32
  %or.i = or i32 %1, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %do.body11

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr [6 x i8], ptr %proto, i32 0, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %sub = add nsw i32 %conv, -32
  %arrayidx13 = getelementptr [16 x ptr], ptr @garp_protos, i32 0, i32 %sub
  br label %if.end

if.end:                                           ; preds = %do.body11, %entry.if.end_crit_edge
  %arrayidx13.sink = phi ptr [ %arrayidx13, %do.body11 ], [ @stp_proto, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %arrayidx13.sink to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %arrayidx13.sink, align 4
  tail call void @synchronize_rcu() #3
  %7 = load i32, ptr @sap_registered, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr @sap_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then18, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then18:                                        ; preds = %if.end
  %8 = load ptr, ptr @sap, align 4
  %refcnt.i = getelementptr inbounds %struct.llc_sap, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #3
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #3, !srcloc !35
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end19_crit_edge, label %if.then10.i.i.i.i, !prof !36

if.end5.i.i.i.i.if.end19_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #3
  br label %if.end19

if.then.i:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !37
  tail call void @llc_sap_close(ptr noundef %8) #3
  br label %if.end19

if.end19:                                         ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end19_crit_edge, %if.end.if.end19_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @stp_proto_mutex) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_sap_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !21, !22, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__ksymtab_stp_proto_register, !1, !"__ksymtab_stp_proto_register", i1 false, i1 false}
!1 = !{!"../net/802/stp.c", i32 83, i32 1}
!2 = !{ptr @__ksymtab_stp_proto_unregister, !3, !"__ksymtab_stp_proto_unregister", i1 false, i1 false}
!3 = !{!"../net/802/stp.c", i32 99, i32 1}
!4 = !{ptr @__UNIQUE_ID_file361, !5, !"__UNIQUE_ID_file361", i1 false, i1 false}
!5 = !{!"../net/802/stp.c", i32 101, i32 1}
!6 = !{ptr @__UNIQUE_ID_license362, !5, !"__UNIQUE_ID_license362", i1 false, i1 false}
!7 = !{ptr @garp_protos, !8, !"garp_protos", i1 false, i1 false}
!8 = !{!"../net/802/stp.c", i32 22, i32 38}
!9 = !{ptr @stp_proto, !10, !"stp_proto", i1 false, i1 false}
!10 = !{!"../net/802/stp.c", i32 23, i32 38}
!11 = !{ptr @sap, !12, !"sap", i1 false, i1 false}
!12 = !{!"../net/802/stp.c", i32 25, i32 24}
!13 = !{ptr @sap_registered, !14, !"sap_registered", i1 false, i1 false}
!14 = !{!"../net/802/stp.c", i32 26, i32 21}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/802/stp.c", i32 27, i32 8}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @stp_proto_mutex, !16, !"stp_proto_mutex", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/802/stp.c", i32 43, i32 11}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/802/stp.c", i32 49, i32 11}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2148442551}
!35 = !{i64 2148357015, i64 2148357047, i64 2148357076, i64 2148357110, i64 2148357141, i64 2148357164}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2150520442}
