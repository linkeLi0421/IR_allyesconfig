; ModuleID = '/llk/IR_all_yes/net/ipv4/metrics.c_pt.bc'
source_filename = "../net/ipv4/metrics.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ip_fib_metrics_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_fib_metrics_init\09\09\09\09"
module asm "\09.long\09__crc_ip_fib_metrics_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_fib_metrics_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_fib_metrics_init\22\09\09\09\09\09"
module asm "__kstrtabns_ip_fib_metrics_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dst_metrics = type { [17 x i32], %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }

@dst_default_metrics = external dso_local constant %struct.dst_metrics, align 4
@__kstrtab_ip_fib_metrics_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_fib_metrics_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_fib_metrics_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_fib_metrics_init to i32), ptr @__kstrtab_ip_fib_metrics_init, ptr @__kstrtabns_ip_fib_metrics_init }, section "___ksymtab_gpl+ip_fib_metrics_init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ip_metrics_convert.__msg = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid metric type\00", [44 x i8] zeroinitializer }, align 32
@ip_metrics_convert.__msg.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unknown tcp congestion algorithm\00", [63 x i8] zeroinitializer }, align 32
@ip_metrics_convert.__msg.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid attribute in metrics\00", [35 x i8] zeroinitializer }, align 32
@ip_metrics_convert.__msg.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Unknown flag set in feature mask in metrics attribute\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 27, i32 4 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 37, i32 5 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 42, i32 5 }
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.14 = private constant [22 x i8] c"../net/ipv4/metrics.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 55, i32 4 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_ip_fib_metrics_init, ptr @ip_metrics_convert.__msg, ptr @ip_metrics_convert.__msg.1, ptr @ip_metrics_convert.__msg.2, ptr @ip_metrics_convert.__msg.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_metrics_convert.__msg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_metrics_convert.__msg.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_metrics_convert.__msg.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_metrics_convert.__msg.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip_fib_metrics_init(ptr noundef %net, ptr noundef %fc_mx, i32 noundef %fc_mx_len, ptr noundef writeonly %extack) #0 align 64 {
entry:
  %ecn_ca.i = alloca i8, align 1
  %tmp.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fc_mx, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #8
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end7, !prof !19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ecn_ca.i) #5
  %1 = ptrtoint ptr %ecn_ca.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ecn_ca.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %fc_mx_len)
  %cmp.i125.i = icmp sgt i32 %fc_mx_len, 3
  br i1 %cmp.i125.i, label %if.end7.land.lhs.true.i.i_crit_edge, label %if.end7.if.then10_crit_edge

if.end7.if.then10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end7.land.lhs.true.i.i_crit_edge:              ; preds = %if.end7
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.inc.i.land.lhs.true.i.i_crit_edge, %if.end7.land.lhs.true.i.i_crit_edge
  %nla.0127.i = phi ptr [ %add.ptr.i.i, %for.inc.i.land.lhs.true.i.i_crit_edge ], [ %fc_mx, %if.end7.land.lhs.true.i.i_crit_edge ]
  %remaining.0126.i = phi i32 [ %sub1.i.i, %for.inc.i.land.lhs.true.i.i_crit_edge ], [ %fc_mx_len, %if.end7.land.lhs.true.i.i_crit_edge ]
  %2 = ptrtoint ptr %nla.0127.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nla.0127.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp1.i.i = icmp ult i16 %3, 4
  %conv.i.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.0126.i, i32 %conv.i.i)
  %cmp5.i.not.i = icmp ult i32 %remaining.0126.i, %conv.i.i
  %or.cond120.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond120.i, label %land.lhs.true.i.i.for.end.i_crit_edge, label %for.body.i

land.lhs.true.i.i.for.end.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i:                                       ; preds = %land.lhs.true.i.i
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %nla.0127.i, i32 0, i32 1
  %4 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla_type.i.i, align 2
  %6 = and i16 %5, 16383
  %and.i.i = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not.i = icmp eq i16 %6, 0
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end5.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end5.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %6)
  %cmp.i = icmp ugt i16 %6, 17
  br i1 %cmp.i, label %do.body.i, label %if.end10.i

do.body.i:                                        ; preds = %if.end5.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ip_metrics_convert.__msg) #5
  %tobool7.not.i = icmp eq ptr %extack, null
  br i1 %tobool7.not.i, label %do.body.i.if.else_crit_edge, label %if.then8.i

do.body.i.if.else_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ip_metrics_convert.__msg, ptr %extack, align 4
  br label %if.else

if.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %6)
  %cmp11.i = icmp eq i16 %6, 16
  br i1 %cmp11.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #5
  %8 = call ptr @memset(ptr %tmp.i, i32 255, i32 16)
  %call13.i = call i32 @nla_strscpy(ptr noundef nonnull %tmp.i, ptr noundef %nla.0127.i, i32 noundef 16) #5
  %call15.i = call i32 @tcp_ca_get_key_by_name(ptr noundef %net, ptr noundef nonnull %tmp.i, ptr noundef nonnull %ecn_ca.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp eq i32 %call15.i, 0
  br i1 %cmp16.i, label %do.body18.i, label %if.end40.critedge.i

do.body18.i:                                      ; preds = %if.then12.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ip_metrics_convert.__msg.1) #5
  %tobool20.not.i = icmp eq ptr %extack, null
  br i1 %tobool20.not.i, label %cleanup68.critedge.i, label %if.then21.i

if.then21.i:                                      ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ip_metrics_convert.__msg.1, ptr %extack, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #5
  br label %if.else

if.else.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %3)
  %cmp28.not.i = icmp eq i16 %3, 8
  br i1 %cmp28.not.i, label %if.end38.i, label %do.body30.i

do.body30.i:                                      ; preds = %if.else.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ip_metrics_convert.__msg.2) #5
  %tobool32.not.i = icmp eq ptr %extack, null
  br i1 %tobool32.not.i, label %do.body30.i.if.else_crit_edge, label %if.then33.i

do.body30.i.if.else_crit_edge:                    ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then33.i:                                      ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ip_metrics_convert.__msg.2, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %11 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %nla.0127.i, ptr %bad_attr.i, align 4
  %policy.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %12 = ptrtoint ptr %policy.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %policy.i, align 4
  br label %if.else

if.end38.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i.i = getelementptr i8, ptr %nla.0127.i, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i.i, align 4
  br label %if.end40.i

if.end40.critedge.i:                              ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #5
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end40.critedge.i, %if.end38.i
  %val.0.i = phi i32 [ %14, %if.end38.i ], [ %call15.i, %if.end40.critedge.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %6)
  %cmp41.i = icmp eq i16 %6, 8
  %15 = call i32 @llvm.umin.i32(i32 %val.0.i, i32 65495) #5
  %spec.select.i = select i1 %cmp41.i, i32 %15, i32 %val.0.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp45.i = icmp eq i16 %6, 2
  %16 = call i32 @llvm.umin.i32(i32 %spec.select.i, i32 65520) #5
  %val.2.i = select i1 %cmp45.i, i32 %16, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %6)
  %cmp50.i = icmp eq i16 %6, 10
  %17 = call i32 @llvm.umin.i32(i32 %val.2.i, i32 255) #5
  %val.3.i = select i1 %cmp50.i, i32 %17, i32 %val.2.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %6)
  %cmp55.i = icmp ne i16 %6, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %val.3.i)
  %tobool57.not.i = icmp ult i32 %val.3.i, 16
  %or.cond.i = select i1 %cmp55.i, i1 true, i1 %tobool57.not.i
  br i1 %or.cond.i, label %if.end67.i, label %do.body59.i

do.body59.i:                                      ; preds = %if.end40.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @ip_metrics_convert.__msg.3) #5
  %tobool61.not.i = icmp eq ptr %extack, null
  br i1 %tobool61.not.i, label %do.body59.i.if.else_crit_edge, label %if.then62.i

do.body59.i.if.else_crit_edge:                    ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then62.i:                                      ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ip_metrics_convert.__msg.3, ptr %extack, align 4
  br label %if.else

if.end67.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add nsw i32 %and.i.i, -1
  %arrayidx.i = getelementptr i32, ptr %call7.i.i, i32 %sub.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %val.3.i, ptr %arrayidx.i, align 4
  br label %for.inc.i

cleanup68.critedge.i:                             ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #5
  br label %if.else

for.inc.i:                                        ; preds = %if.end67.i, %for.body.i.for.inc.i_crit_edge
  %20 = ptrtoint ptr %nla.0127.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nla.0127.i, align 2
  %conv.i114.i = zext i16 %21 to i32
  %sub.i115.i = add nuw nsw i32 %conv.i114.i, 3
  %and.i116.i = and i32 %sub.i115.i, 131068
  %sub1.i.i = sub nsw i32 %remaining.0126.i, %and.i116.i
  %add.ptr.i.i = getelementptr i8, ptr %nla.0127.i, i32 %and.i116.i
  %cmp.i.i = icmp sgt i32 %sub1.i.i, 3
  br i1 %cmp.i.i, label %for.inc.i.land.lhs.true.i.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i.land.lhs.true.i.i_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.lhs.true.i.i.for.end.i_crit_edge
  %22 = ptrtoint ptr %ecn_ca.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %.pr.i = load i8, ptr %ecn_ca.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool73.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool73.not.i, label %for.end.i.if.then10_crit_edge, label %if.then74.i

for.end.i.if.then10_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then74.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx75.i = getelementptr i32, ptr %call7.i.i, i32 11
  %23 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx75.i, align 4
  %or.i = or i32 %24, -2147483648
  store i32 %or.i, ptr %arrayidx75.i, align 4
  br label %if.then10

if.then10:                                        ; preds = %if.then74.i, %for.end.i.if.then10_crit_edge, %if.end7.if.then10_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ecn_ca.i) #5
  %refcnt = getelementptr inbounds %struct.dst_metrics, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #5
  %25 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %refcnt, align 4
  br label %cleanup

if.else:                                          ; preds = %cleanup68.critedge.i, %if.then62.i, %do.body59.i.if.else_crit_edge, %if.then33.i, %do.body30.i.if.else_crit_edge, %if.then21.i, %if.then8.i, %do.body.i.if.else_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ecn_ca.i) #5
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @dst_default_metrics, %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else ], [ %call7.i.i, %if.then10 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_ca_get_key_by_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_ip_fib_metrics_init, !1, !"__ksymtab_ip_fib_metrics_init", i1 false, i1 false}
!1 = !{!"../net/ipv4/metrics.c", i32 92, i32 1}
!2 = !{ptr @ip_metrics_convert.__msg, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../net/ipv4/metrics.c", i32 27, i32 4}
!4 = !{ptr @ip_metrics_convert.__msg.1, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../net/ipv4/metrics.c", i32 37, i32 5}
!6 = !{ptr @ip_metrics_convert.__msg.2, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../net/ipv4/metrics.c", i32 42, i32 5}
!8 = !{ptr @ip_metrics_convert.__msg.3, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../net/ipv4/metrics.c", i32 55, i32 4}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 1, i32 2000}
