; ModuleID = '/llk/IR_all_yes/net/tipc/subscr.c_pt.bc'
source_filename = "../net/tipc/subscr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tipc_subscr = type { %struct.tipc_service_range, i32, i32, [8 x i8] }
%struct.tipc_service_range = type { i32, i32, i32 }
%struct.publication = type { %struct.tipc_service_range, %struct.tipc_socket_addr, i16, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.callback_head }
%struct.tipc_socket_addr = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.tipc_subscription = type { %struct.tipc_subscr, %struct.tipc_event, %struct.kref, ptr, %struct.timer_list, %struct.list_head, %struct.list_head, i32, i8, %struct.spinlock }
%struct.tipc_event = type { i32, i32, i32, %struct.tipc_socket_addr, %struct.tipc_subscr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }

@tipc_sub_subscribe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014tipc: Subscription rejected, illegal request\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tipc_sub_subscribe\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/tipc/subscr.c\00", [46 x i8] zeroinitializer }, align 32
@tipc_sub_subscribe._entry_ptr = internal global ptr @tipc_sub_subscribe._entry, section ".printk_index", align 4
@tipc_sub_subscribe._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014tipc: Subscription rejected, no memory\0A\00", [54 x i8] zeroinitializer }, align 32
@tipc_sub_subscribe._entry_ptr.5 = internal global ptr @tipc_sub_subscribe._entry.3, section ".printk_index", align 4
@tipc_sub_subscribe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&sub->lock\00", [21 x i8] zeroinitializer }, align 32
@tipc_sub_subscribe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&sub->timer)\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 143, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 148, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 163, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [21 x i8] c"../net/tipc/subscr.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 169, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @tipc_sub_subscribe._entry, ptr @tipc_sub_subscribe._entry.3, ptr @tipc_sub_subscribe._entry_ptr, ptr @tipc_sub_subscribe._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @tipc_sub_subscribe.__key, ptr @.str.6, ptr @tipc_sub_subscribe.__key.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_sub_subscribe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_sub_subscribe._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_sub_subscribe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_sub_subscribe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_sub_report_overlap(ptr noundef %sub, ptr noundef readonly %p, i32 noundef %event, i1 noundef zeroext %must) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %filter2 = getelementptr inbounds %struct.tipc_subscr, ptr %sub, i32 0, i32 2
  %0 = ptrtoint ptr %filter2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %filter2, align 4
  %lower.i = getelementptr inbounds %struct.tipc_service_range, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lower.i, align 4
  %upper.i = getelementptr inbounds %struct.tipc_service_range, ptr %p, i32 0, i32 2
  %4 = ptrtoint ptr %upper.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %upper.i, align 4
  %lower1.i = getelementptr inbounds %struct.tipc_service_range, ptr %sub, i32 0, i32 1
  %6 = ptrtoint ptr %lower1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lower1.i, align 4
  %8 = tail call i32 @llvm.umax.i32(i32 %3, i32 %7) #6
  %upper3.i = getelementptr inbounds %struct.tipc_service_range, ptr %sub, i32 0, i32 2
  %9 = ptrtoint ptr %upper3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %upper3.i, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %5, i32 %10) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %11)
  %cmp8.i.not = icmp ugt i32 %8, %11
  br i1 %cmp8.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %must.not = xor i1 %must, true
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %or.cond = select i1 %must.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %and7 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %land.lhs.true9

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true9:                                   ; preds = %if.end6
  %scope = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 2
  %12 = ptrtoint ptr %scope to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %scope, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %13)
  %cmp = icmp eq i16 %13, 3
  br i1 %cmp, label %land.lhs.true9.cleanup_crit_edge, label %land.lhs.true9.if.end12_crit_edge

land.lhs.true9.if.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true9.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  %and13 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end21_crit_edge, label %land.lhs.true15

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

land.lhs.true15:                                  ; preds = %if.end12
  %scope16 = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 2
  %14 = ptrtoint ptr %scope16 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %scope16, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %15)
  %cmp18.not = icmp eq i16 %15, 3
  br i1 %cmp18.not, label %land.lhs.true15.if.end21_crit_edge, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true15.if.end21_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true15.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %lock = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %evt.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 1
  %inactive.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 8
  %16 = ptrtoint ptr %inactive.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %inactive.i, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end21.tipc_sub_send_event.exit_crit_edge

if.end21.tipc_sub_send_event.exit_crit_edge:      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %tipc_sub_send_event.exit

if.end.i:                                         ; preds = %if.end21
  %filter.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 1, i32 4, i32 2
  %18 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %filter.i, align 4
  %and.i = and i32 %19, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  %20 = tail call i32 @llvm.bswap.i32(i32 %event) #6
  %cond.i = select i1 %tobool5.not.i, i32 %20, i32 %event
  %21 = ptrtoint ptr %evt.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond.i, ptr %evt.i, align 4
  %tobool8.not.i = icmp eq ptr %p, null
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %lower.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lower.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  %cond24.i = select i1 %tobool5.not.i, i32 %24, i32 %23
  %found_lower.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %found_lower.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond24.i, ptr %found_lower.i, align 4
  %26 = ptrtoint ptr %upper.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %upper.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  %cond40.i = select i1 %tobool5.not.i, i32 %28, i32 %27
  %found_upper.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %found_upper.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond40.i, ptr %found_upper.i, align 4
  %sk.i = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 1
  %30 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sk.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  %cond55.i = select i1 %tobool5.not.i, i32 %32, i32 %31
  %port.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond55.i, ptr %port.i, align 4
  %node.i = getelementptr inbounds %struct.publication, ptr %p, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %node.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  %cond72.i = select i1 %tobool5.not.i, i32 %36, i32 %35
  br label %if.end144.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %lower77.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 1, i32 4, i32 0, i32 1
  %37 = ptrtoint ptr %lower77.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lower77.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  %cond90.i = select i1 %tobool5.not.i, i32 %39, i32 %38
  %found_lower91.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %found_lower91.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond90.i, ptr %found_lower91.i, align 4
  %upper95.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 1, i32 4, i32 0, i32 2
  %41 = ptrtoint ptr %upper95.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %upper95.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  %cond108.i = select i1 %tobool5.not.i, i32 %43, i32 %42
  %found_upper109.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %found_upper109.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %cond108.i, ptr %found_upper109.i, align 4
  %port125.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %port125.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %port125.i, align 4
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.else.i, %if.then9.i
  %cond72.sink.i = phi i32 [ 0, %if.else.i ], [ %cond72.i, %if.then9.i ]
  %46 = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 1, i32 3, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cond72.sink.i, ptr %46, align 4
  %net.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 3
  %48 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net.i, align 4
  %conid.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 7
  %50 = ptrtoint ptr %conid.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %conid.i, align 4
  tail call void @tipc_topsrv_queue_evt(ptr noundef %49, i32 noundef %51, i32 noundef %event, ptr noundef %evt.i) #6
  br label %tipc_sub_send_event.exit

tipc_sub_send_event.exit:                         ; preds = %if.end144.i, %if.end21.tipc_sub_send_event.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %tipc_sub_send_event.exit, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_sub_put(ptr noundef %subscription) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.tipc_subscription, ptr %subscription, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #6, !srcloc !27
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !28

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #6
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @kfree(ptr noundef %subscription) #6
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_sub_get(ptr noundef %subscription) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.tipc_subscription, ptr %subscription, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #6, !srcloc !30
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !31

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !28

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #6
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tipc_sub_subscribe(ptr noundef %net, ptr nocapture noundef readonly %s, i32 noundef %conid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lower1 = getelementptr inbounds %struct.tipc_service_range, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %lower1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lower1, align 4
  %filter = getelementptr inbounds %struct.tipc_subscr, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %filter, align 4
  %and = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %4 = tail call i32 @llvm.bswap.i32(i32 %1)
  %cond = select i1 %tobool.not, i32 %4, i32 %1
  %upper6 = getelementptr inbounds %struct.tipc_service_range, ptr %s, i32 0, i32 2
  %5 = ptrtoint ptr %upper6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %upper6, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %cond18 = select i1 %tobool.not, i32 %7, i32 %6
  %8 = tail call i32 @llvm.bswap.i32(i32 %3)
  %cond34 = select i1 %tobool.not, i32 %8, i32 %3
  %9 = and i32 %cond34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %.not = icmp eq i32 %9, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %cond18)
  %cmp = icmp ugt i32 %cond, %cond18
  %or.cond178 = select i1 %.not, i1 true, i1 %cmp
  br i1 %or.cond178, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2592, i32 noundef 200) #10
  %tobool41.not = icmp eq ptr %call7.i, null
  br i1 %tobool41.not, label %do.end45, label %if.end48

do.end45:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end48:                                         ; preds = %if.end
  %service_list = getelementptr inbounds %struct.tipc_subscription, ptr %call7.i, i32 0, i32 5
  %11 = ptrtoint ptr %service_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %service_list, ptr %service_list, align 4
  %prev.i = getelementptr inbounds %struct.tipc_subscription, ptr %call7.i, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %service_list, ptr %prev.i, align 8
  %sub_list = getelementptr inbounds %struct.tipc_subscription, ptr %call7.i, i32 0, i32 6
  %13 = ptrtoint ptr %sub_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %sub_list, ptr %sub_list, align 4
  %prev.i179 = getelementptr inbounds %struct.tipc_subscription, ptr %call7.i, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %prev.i179 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sub_list, ptr %prev.i179, align 8
  %net49 = getelementptr inbounds %struct.tipc_subscription, ptr %call7.i, i32 0, i32 3
  %15 = ptrtoint ptr %net49 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %net, ptr %net49, align 8
  %conid50 = getelementptr inbounds %struct.tipc_subscription, ptr %call7.i, i32 0, i32 7
  %16 = ptrtoint ptr %conid50 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conid, ptr %conid50, align 4
  %inactive = getelementptr inbounds %struct.tipc_subscription, ptr %call7.i, i32 0, i32 8
  %17 = ptrtoint ptr %inactive to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %inactive, align 8
  %s51 = getelementptr inbounds %struct.tipc_subscription, ptr %call7.i, i32 0, i32 1, i32 4
  %18 = call ptr @memcpy(ptr %s51, ptr %s, i32 28)
  %19 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s, align 4
  %21 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %filter, align 4
  %and57 = and i32 %22, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %23 = tail call i32 @llvm.bswap.i32(i32 %20)
  %cond66 = select i1 %tobool58.not, i32 %23, i32 %20
  %24 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond66, ptr %call7.i, align 8
  %lower72 = getelementptr inbounds %struct.tipc_service_range, ptr %call7.i, i32 0, i32 1
  %25 = ptrtoint ptr %lower72 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond, ptr %lower72, align 4
  %upper75 = getelementptr inbounds %struct.tipc_service_range, ptr %call7.i, i32 0, i32 2
  %26 = ptrtoint ptr %upper75 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond18, ptr %upper75, align 8
  %filter77 = getelementptr inbounds %struct.tipc_subscr, ptr %call7.i, i32 0, i32 2
  %27 = ptrtoint ptr %filter77 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond34, ptr %filter77, align 8
  %timeout80 = getelementptr inbounds %struct.tipc_subscr, ptr %s, i32 0, i32 1
  %28 = ptrtoint ptr %timeout80 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %timeout80, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %cond92 = select i1 %tobool58.not, i32 %30, i32 %29
  %timeout94 = getelementptr inbounds %struct.tipc_subscr, ptr %call7.i, i32 0, i32 1
  %31 = ptrtoint ptr %timeout94 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond92, ptr %timeout94, align 4
  %usr_handle = getelementptr inbounds %struct.tipc_subscr, ptr %call7.i, i32 0, i32 3
  %usr_handle96 = getelementptr inbounds %struct.tipc_subscr, ptr %s, i32 0, i32 3
  %32 = ptrtoint ptr %usr_handle96 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %usr_handle96, align 4
  %34 = ptrtoint ptr %usr_handle to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %usr_handle, align 4
  %lock = getelementptr inbounds %struct.tipc_subscription, ptr %call7.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @tipc_sub_subscribe.__key, i16 noundef signext 3) #6
  %kref = getelementptr inbounds %struct.tipc_subscription, ptr %call7.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #6
  %35 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 1, ptr %kref, align 4
  %call102 = tail call zeroext i1 @tipc_nametbl_subscribe(ptr noundef nonnull %call7.i) #6
  br i1 %call102, label %do.body105, label %if.then103

if.then103:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

do.body105:                                       ; preds = %if.end48
  %timer = getelementptr inbounds %struct.tipc_subscription, ptr %call7.i, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @tipc_sub_timeout, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @tipc_sub_subscribe.__key.7) #6
  %timeout112 = getelementptr inbounds %struct.tipc_subscription, ptr %call7.i, i32 0, i32 1, i32 4, i32 1
  %36 = ptrtoint ptr %timeout112 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %timeout112, align 4
  %filter114 = getelementptr inbounds %struct.tipc_subscription, ptr %call7.i, i32 0, i32 1, i32 4, i32 2
  %38 = ptrtoint ptr %filter114 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %filter114, align 8
  %and115 = and i32 %39, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  %40 = tail call i32 @llvm.bswap.i32(i32 %37)
  %cond124 = select i1 %tobool116.not, i32 %40, i32 %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond124)
  %cmp125.not = icmp eq i32 %cond124, -1
  br i1 %cmp125.not, label %do.body105.cleanup_crit_edge, label %if.then126

do.body105.cleanup_crit_edge:                     ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then126:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %cond124) #6
  %add = add i32 %call2.i, %41
  %call129 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then126, %do.body105.cleanup_crit_edge, %if.then103, %do.end45, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %if.then103 ], [ null, %do.end45 ], [ %call7.i, %if.then126 ], [ %call7.i, %do.body105.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_nametbl_subscribe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_sub_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %t, i32 72
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %inactive.i = getelementptr i8, ptr %t, i32 68
  %0 = ptrtoint ptr %inactive.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %inactive.i, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.tipc_sub_send_event.exit_crit_edge

entry.tipc_sub_send_event.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tipc_sub_send_event.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %evt.i = getelementptr i8, ptr %t, i32 -56
  %filter.i = getelementptr i8, ptr %t, i32 -20
  %2 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %filter.i, align 4
  %and.i = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool5.not.i, i32 50331648, i32 3
  %4 = ptrtoint ptr %evt.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i, ptr %evt.i, align 4
  %lower77.i = getelementptr i8, ptr %t, i32 -32
  %5 = ptrtoint ptr %lower77.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lower77.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %cond90.i = select i1 %tobool5.not.i, i32 %7, i32 %6
  %found_lower91.i = getelementptr i8, ptr %t, i32 -52
  %8 = ptrtoint ptr %found_lower91.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond90.i, ptr %found_lower91.i, align 4
  %upper95.i = getelementptr i8, ptr %t, i32 -28
  %9 = ptrtoint ptr %upper95.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %upper95.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %cond108.i = select i1 %tobool5.not.i, i32 %11, i32 %10
  %found_upper109.i = getelementptr i8, ptr %t, i32 -48
  %12 = ptrtoint ptr %found_upper109.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond108.i, ptr %found_upper109.i, align 4
  %port125.i = getelementptr i8, ptr %t, i32 -44
  %13 = ptrtoint ptr %port125.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %port125.i, align 4
  %14 = getelementptr i8, ptr %t, i32 -40
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %14, align 4
  %net.i = getelementptr i8, ptr %t, i32 -4
  %16 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net.i, align 4
  %conid.i = getelementptr i8, ptr %t, i32 64
  %18 = ptrtoint ptr %conid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %conid.i, align 4
  tail call void @tipc_topsrv_queue_evt(ptr noundef %17, i32 noundef %19, i32 noundef 3, ptr noundef %evt.i) #6
  br label %tipc_sub_send_event.exit

tipc_sub_send_event.exit:                         ; preds = %if.end.i, %entry.tipc_sub_send_event.exit_crit_edge
  %20 = ptrtoint ptr %inactive.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %inactive.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_sub_unsubscribe(ptr noundef %sub) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tipc_nametbl_unsubscribe(ptr noundef %sub) #6
  %timeout = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 1, i32 4, i32 1
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %timer = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 4
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sub_list = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %sub_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %sub_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sub_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %sub_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %sub_list, align 4
  %prev.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %kref.i = getelementptr inbounds %struct.tipc_subscription, ptr %sub, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #6
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #6, !srcloc !27
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.tipc_sub_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !28

if.end5.i.i.i.i.i.tipc_sub_put.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tipc_sub_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #6
  br label %tipc_sub_put.exit

if.then.i.i:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @kfree(ptr noundef %sub) #6
  br label %tipc_sub_put.exit

tipc_sub_put.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.tipc_sub_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_nametbl_unsubscribe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_topsrv_queue_evt(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/tipc/subscr.c", i32 143, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tipc_sub_subscribe._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tipc_sub_subscribe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/tipc/subscr.c", i32 148, i32 3}
!8 = !{ptr @tipc_sub_subscribe._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @tipc_sub_subscribe._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @tipc_sub_subscribe.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../net/tipc/subscr.c", i32 163, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tipc_sub_subscribe.__key.7, !14, !"__key", i1 false, i1 false}
!14 = !{!"../net/tipc/subscr.c", i32 169, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i8 0, i8 2}
!26 = !{i64 2148402400}
!27 = !{i64 2148316864, i64 2148316896, i64 2148316925, i64 2148316959, i64 2148316990, i64 2148317013}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 2150007424}
!30 = !{i64 2148314399, i64 2148314431, i64 2148314460, i64 2148314494, i64 2148314525, i64 2148314548}
!31 = !{!"branch_weights", i32 1, i32 2000}
