; ModuleID = '/llk/IR_all_yes/net/x25/x25_out.c_pt.bc'
source_filename = "../net/x25/x25_out.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.x25_sock = type { %struct.sock, %struct.x25_address, %struct.x25_address, ptr, i32, i32, i8, i8, i16, i16, i16, i16, i32, i32, i32, i32, i16, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.timer_list, %struct.x25_causediag, %struct.x25_facilities, %struct.x25_dte_facilities, %struct.x25_calluserdata, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.x25_address = type { [16 x i8] }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.x25_causediag = type { i8, i8 }
%struct.x25_facilities = type { i32, i32, i32, i32, i32, i32 }
%struct.x25_dte_facilities = type { i16, i16, i16, i8, i8, i8, i8, [20 x i8], [20 x i8] }
%struct.x25_calluserdata = type { i32, [128 x i8] }
%struct.x25_neigh = type { %struct.list_head, ptr, i32, i32, %struct.sk_buff_head, i32, %struct.timer_list, i32, %struct.refcount_struct }

@x25_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017x25_output: fragment alloc failed, err=%d, %d bytes sent\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"x25_output\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/x25/x25_out.c\00", [46 x i8] zeroinitializer }, align 32
@x25_output._entry_ptr = internal global ptr @x25_output._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [21 x i8] c"../net/x25/x25_out.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 75, i32 5 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @x25_output._entry, ptr @x25_output._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x25_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @x25_output(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %header.sroa.0 = alloca i32, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header.sroa.0)
  %0 = ptrtoint ptr %header.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %header.sroa.0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #5
  %1 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %err, align 4, !annotation !15
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cb, align 8
  %and = and i32 %3, 64
  %neighbour = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 3
  %4 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %neighbour, align 8
  %extended = getelementptr inbounds %struct.x25_neigh, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %extended to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool.not, i32 3, i32 4
  %pacsize_out = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 24, i32 3
  %8 = ptrtoint ptr %pacsize_out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pacsize_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %entry.x25_pacsize_to_bytes.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.x25_pacsize_to_bytes.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %x25_pacsize_to_bytes.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %bytes.05.i = phi i32 [ %mul.i, %while.body.i.while.body.i_crit_edge ], [ 1, %entry.while.body.i_crit_edge ]
  %pacsize.addr.04.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %9, %entry.while.body.i_crit_edge ]
  %dec.i = add i32 %pacsize.addr.04.i, -1
  %mul.i = shl i32 %bytes.05.i, 1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %while.body.i.x25_pacsize_to_bytes.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.x25_pacsize_to_bytes.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %x25_pacsize_to_bytes.exit

x25_pacsize_to_bytes.exit:                        ; preds = %while.body.i.x25_pacsize_to_bytes.exit_crit_edge, %entry.x25_pacsize_to_bytes.exit_crit_edge
  %retval.0.i = phi i32 [ 128, %entry.x25_pacsize_to_bytes.exit_crit_edge ], [ %mul.i, %while.body.i.x25_pacsize_to_bytes.exit_crit_edge ]
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len2, align 4
  %sub = sub i32 %11, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %retval.0.i)
  %cmp = icmp ugt i32 %sub, %retval.0.i
  br i1 %cmp, label %if.then, label %if.else48

if.then:                                          ; preds = %x25_pacsize_to_bytes.exit
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = call ptr @memcpy(ptr %header.sroa.0, ptr %13, i32 %cond)
  %call4 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %cond) #5
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %19 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp7.not116 = icmp eq i32 %20, 0
  br i1 %cmp7.not116, label %if.then.while.end_crit_edge, label %while.body.lr.ph

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.then
  %add = add i32 %sub.ptr.sub.i, %retval.0.i
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  br label %while.body

while.body:                                       ; preds = %if.end46.while.body_crit_edge, %while.body.lr.ph
  %sent.0117 = phi i32 [ 0, %while.body.lr.ph ], [ %add47, %if.end46.while.body_crit_edge ]
  call void @release_sock(ptr noundef %sk) #5
  %call8 = call ptr @sock_alloc_send_skb(ptr noundef %sk, i32 noundef %add, i32 noundef %and, ptr noundef nonnull %err) #5
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #5
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end23

if.then10:                                        ; preds = %while.body
  %21 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %22)
  %cmp11 = icmp ne i32 %22, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp11, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %do.body, label %if.then13

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

do.body:                                          ; preds = %if.then10
  %tobool14.not = icmp eq ptr %sk, null
  br i1 %tobool14.not, label %do.body.do.end22_crit_edge, label %land.lhs.true15

do.body.do.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22

land.lhs.true15:                                  ; preds = %do.body
  %23 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not = icmp eq i32 %26, 0
  br i1 %tobool.i.not, label %land.lhs.true15.do.end22_crit_edge, label %do.end

land.lhs.true15.do.end22_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22

do.end:                                           ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %22, i32 noundef %sent.0117) #8
  br label %do.end22

do.end22:                                         ; preds = %do.end, %land.lhs.true15.do.end22_crit_edge, %do.body.do.end22_crit_edge
  %27 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %err, align 4
  br label %cleanup

if.end23:                                         ; preds = %while.body
  %data.i109 = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 19
  %29 = ptrtoint ptr %data.i109 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i109, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 %sub.ptr.sub.i
  store ptr %add.ptr.i, ptr %data.i109, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call8, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %32, i32 %sub.ptr.sub.i
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %33 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len2, align 4
  %35 = call i32 @llvm.umin.i32(i32 %retval.0.i, i32 %34)
  %call28 = call ptr @skb_put(ptr noundef nonnull %call8, i32 noundef %35) #5
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %38 = call ptr @memcpy(ptr %call28, ptr %37, i32 %35)
  %call29 = call ptr @skb_pull(ptr noundef %skb, i32 noundef %35) #5
  %call30 = call ptr @skb_push(ptr noundef nonnull %call8, i32 noundef %cond) #5
  %39 = ptrtoint ptr %data.i109 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i109, align 4
  %41 = call ptr @memcpy(ptr %40, ptr %header.sroa.0, i32 %cond)
  %42 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp33.not = icmp eq i32 %43, 0
  br i1 %cmp33.not, label %if.end23.if.end46_crit_edge, label %if.then34

if.end23.if.end46_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %neighbour, align 8
  %extended36 = getelementptr inbounds %struct.x25_neigh, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %extended36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %extended36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool37.not = icmp eq i32 %47, 0
  %48 = ptrtoint ptr %data.i109 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i109, align 4
  %. = select i1 %tobool37.not, i32 2, i32 3
  %.123 = select i1 %tobool37.not, i8 16, i8 1
  %arrayidx41 = getelementptr i8, ptr %49, i32 %.
  %50 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx41, align 1
  %52 = or i8 %51, %.123
  store i8 %52, ptr %arrayidx41, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.then34, %if.end23.if.end46_crit_edge
  call void @skb_queue_tail(ptr noundef %sk_write_queue, ptr noundef nonnull %call8) #5
  %add47 = add i32 %35, %sent.0117
  %53 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len2, align 4
  %cmp7.not = icmp eq i32 %54, 0
  br i1 %cmp7.not, label %if.end46.while.end_crit_edge, label %if.end46.while.body_crit_edge

if.end46.while.body_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end46.while.end_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end46.while.end_crit_edge, %if.then.while.end_crit_edge
  %sent.0.lcssa = phi i32 [ 0, %if.then.while.end_crit_edge ], [ %add47, %if.end46.while.end_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

if.else48:                                        ; preds = %x25_pacsize_to_bytes.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sk_write_queue49 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  tail call void @skb_queue_tail(ptr noundef %sk_write_queue49, ptr noundef %skb) #5
  %55 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len2, align 4
  %sub51 = sub i32 %56, %cond
  br label %cleanup

cleanup:                                          ; preds = %if.else48, %while.end, %do.end22, %if.then13
  %retval.0 = phi i32 [ %sent.0117, %if.then13 ], [ %28, %do.end22 ], [ %sent.0.lcssa, %while.end ], [ %sub51, %if.else48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.sroa.0)
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_kick(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.not = icmp eq i8 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %interrupt_out_queue = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 21
  %2 = ptrtoint ptr %interrupt_out_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_out_queue, align 4
  %cmp.i = icmp eq ptr %3, %interrupt_out_queue
  %cmp3.not107 = icmp eq ptr %3, null
  %cmp3.not = or i1 %cmp.i, %cmp3.not107
  br i1 %cmp3.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 17
  %call5 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call ptr @skb_dequeue(ptr noundef %interrupt_out_queue) #5
  %neighbour = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 3
  %4 = ptrtoint ptr %neighbour to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %neighbour, align 8
  tail call void @x25_transmit_link(ptr noundef %call8, ptr noundef %5) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %condition = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 7
  %6 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %condition, align 1
  %8 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %9 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i103 = icmp eq ptr %10, %sk_write_queue
  %tobool15.not108 = icmp eq ptr %10, null
  %tobool15.not = or i1 %cmp.i103, %tobool15.not108
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %neighbour18 = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 3
  %11 = ptrtoint ptr %neighbour18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %neighbour18, align 8
  %extended = getelementptr inbounds %struct.x25_neigh, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %extended to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %extended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  %ack_queue = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 18
  %15 = ptrtoint ptr %ack_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ack_queue, align 4
  %cmp.i105 = icmp eq ptr %16, %ack_queue
  %tobool21.not109 = icmp eq ptr %16, null
  %tobool21.not = or i1 %cmp.i105, %tobool21.not109
  %vs = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 8
  %va = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 10
  %cond24.in.in = select i1 %tobool21.not, ptr %va, ptr %vs
  %17 = ptrtoint ptr %cond24.in.in to i32
  call void @__asan_load2_noabort(i32 %17)
  %cond24.in102 = load i16, ptr %cond24.in.in, align 2
  %18 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %va, align 2
  %conv27 = zext i16 %19 to i32
  %winsize_out = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 24, i32 1
  %20 = ptrtoint ptr %winsize_out to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %winsize_out, align 4
  %add = add i32 %21, %conv27
  %22 = select i1 %tobool19.not, i32 65543, i32 65663
  %rem = and i32 %add, %22
  %23 = trunc i32 %rem to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %cond24.in102, i16 %23)
  %cmp31 = icmp eq i16 %cond24.in102, %23
  br i1 %cmp31, label %if.end17.cleanup_crit_edge, label %if.end34

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end17
  %24 = ptrtoint ptr %vs to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %cond24.in102, ptr %vs, align 2
  %call37 = tail call ptr @skb_dequeue(ptr noundef %sk_write_queue) #5
  %vr30.i = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end34
  %skb.0 = phi ptr [ %call37, %if.end34 ], [ %call57, %land.rhs.do.body_crit_edge ]
  %call38 = tail call ptr @skb_clone(ptr noundef %skb.0, i32 noundef 2592) #5
  %cmp39 = icmp eq ptr %call38, null
  br i1 %cmp39, label %if.then41, label %if.end.i

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @skb_queue_head(ptr noundef %sk_write_queue, ptr noundef %skb.0) #5
  br label %do.end

if.end.i:                                         ; preds = %do.body
  tail call void @skb_set_owner_w(ptr noundef nonnull %call38, ptr noundef %sk) #5
  %25 = ptrtoint ptr %neighbour18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %neighbour18, align 8
  %extended.i = getelementptr inbounds %struct.x25_neigh, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %extended.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %extended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool1.not.i = icmp eq i32 %28, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vs, align 2
  %conv.i = trunc i16 %30 to i8
  %shl.i = shl i8 %conv.i, 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call38, i32 0, i32 19
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %32, i32 2
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %shl.i, ptr %arrayidx.i, align 1
  %34 = load ptr, ptr %data.i, align 4
  %arrayidx5.i = getelementptr i8, ptr %34, i32 3
  %35 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx5.i, align 1
  %37 = and i8 %36, 1
  store i8 %37, ptr %arrayidx5.i, align 1
  br label %x25_send_iframe.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %data16.i = getelementptr inbounds %struct.sk_buff, ptr %call38, i32 0, i32 19
  %38 = ptrtoint ptr %data16.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data16.i, align 4
  %arrayidx17.i = getelementptr i8, ptr %39, i32 2
  %40 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx17.i, align 1
  %42 = and i8 %41, 16
  store i8 %42, ptr %arrayidx17.i, align 1
  %43 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vs, align 2
  %conv22.i = trunc i16 %44 to i8
  %shl23.i = shl i8 %conv22.i, 1
  %and24.i = and i8 %shl23.i, 14
  %45 = load ptr, ptr %data16.i, align 4
  %arrayidx26.i = getelementptr i8, ptr %45, i32 2
  %46 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx26.i, align 1
  %or28.i = or i8 %and24.i, %47
  store i8 %or28.i, ptr %arrayidx26.i, align 1
  br label %x25_send_iframe.exit

x25_send_iframe.exit:                             ; preds = %if.else.i, %if.then2.i
  %.sink.i = phi i8 [ 5, %if.else.i ], [ 1, %if.then2.i ]
  %data16.sink.i = phi ptr [ %data16.i, %if.else.i ], [ %data.i, %if.then2.i ]
  %.sink54.i = phi i32 [ 2, %if.else.i ], [ 3, %if.then2.i ]
  %48 = ptrtoint ptr %vr30.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vr30.i, align 8
  %conv31.i = trunc i16 %49 to i8
  %shl32.i = shl i8 %conv31.i, %.sink.i
  %50 = ptrtoint ptr %data16.sink.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data16.sink.i, align 4
  %arrayidx35.i = getelementptr i8, ptr %51, i32 %.sink54.i
  %52 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx35.i, align 1
  %or37.i = or i8 %shl32.i, %53
  store i8 %or37.i, ptr %arrayidx35.i, align 1
  %54 = ptrtoint ptr %neighbour18 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %neighbour18, align 8
  tail call void @x25_transmit_link(ptr noundef nonnull %call38, ptr noundef %55) #5
  %56 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vs, align 2
  %conv45 = zext i16 %57 to i32
  %add46 = add nuw nsw i32 %conv45, 1
  %rem47 = and i32 %add46, %22
  %conv48 = trunc i32 %rem47 to i16
  store i16 %conv48, ptr %vs, align 2
  tail call void @skb_queue_tail(ptr noundef %ack_queue, ptr noundef %skb.0) #5
  %58 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vs, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %23)
  %cmp54.not = icmp eq i16 %59, %23
  br i1 %cmp54.not, label %x25_send_iframe.exit.do.end_crit_edge, label %land.rhs

x25_send_iframe.exit.do.end_crit_edge:            ; preds = %x25_send_iframe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.rhs:                                         ; preds = %x25_send_iframe.exit
  %call57 = tail call ptr @skb_dequeue(ptr noundef %sk_write_queue) #5
  %cmp58.not = icmp eq ptr %call57, null
  br i1 %cmp58.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %x25_send_iframe.exit.do.end_crit_edge, %if.then41
  %60 = ptrtoint ptr %vr30.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vr30.i, align 8
  %vl = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 11
  %62 = ptrtoint ptr %vl to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %vl, align 4
  %63 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %condition, align 1
  %65 = and i8 %64, -2
  store i8 %65, ptr %condition, align 1
  tail call void @x25_stop_timer(ptr noundef %sk) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_transmit_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_stop_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @x25_enquiry_response(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %condition = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 7
  %0 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %condition, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %. = select i1 %tobool.not, i32 1, i32 5
  tail call void @x25_write_internal(ptr noundef %sk, i32 noundef %.) #5
  %vr = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 9
  %3 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vr, align 8
  %vl = getelementptr inbounds %struct.x25_sock, ptr %sk, i32 0, i32 11
  %5 = ptrtoint ptr %vl to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %vl, align 4
  %6 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %condition, align 1
  %8 = and i8 %7, -2
  store i8 %8, ptr %condition, align 1
  tail call void @x25_stop_timer(ptr noundef %sk) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @x25_write_internal(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/x25/x25_out.c", i32 75, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @x25_output._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @x25_output._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
