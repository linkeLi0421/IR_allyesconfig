; ModuleID = '/llk/IR_all_yes/net/rds/loop.c_pt.bc'
source_filename = "../net/rds/loop.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rds_loop_connection = type { %struct.list_head, ptr }
%struct.rds_connection = type { %struct.hlist_node, %struct.in6_addr, %struct.in6_addr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.possible_net_t, i8, %struct.list_head, i32, ptr, %struct.wait_queue_head, i32, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.possible_net_t = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rds_conn_path = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i64, ptr, %struct.atomic_t, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, %struct.wait_queue_head, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rds_message = type { %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.rds_incoming, i64, %struct.in6_addr, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i64, i32, i32, ptr, %struct.anon.129, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rds_incoming = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.rds_header, i32, %struct.in6_addr, %struct.rds_inc_usercopy, [4 x i64] }
%struct.rds_header = type { i64, i64, i32, i16, i16, i8, i8, [4 x i8], i16, [16 x i8] }
%struct.rds_inc_usercopy = type { i64, i64 }
%struct.anon.129 = type { %struct.rm_atomic_op, %struct.rm_rdma_op, %struct.rm_data_op }
%struct.rm_atomic_op = type { i32, %union.anon.130, i32, i64, i8, ptr, ptr, ptr }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { i64, i64, i64, i64 }
%struct.rm_rdma_op = type { i32, i64, i8, i32, i32, i32, ptr, ptr, ptr, i64, ptr }
%struct.rm_data_op = type { i8, i32, i32, i32, i32, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@loop_conns_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@loop_conns = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @loop_conns, ptr @loop_conns }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/rds/loop.c\00", [17 x i8] zeroinitializer }, align 32
@rds_loop_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr null, ptr null, ptr @rds_loop_exit_net, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@rds_loop_transport = dso_local global { %struct.rds_transport, [60 x i8] } { %struct.rds_transport { [16 x i8] c"loopback\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null, i8 0, i32 3, ptr null, ptr @rds_loop_conn_alloc, ptr @rds_loop_conn_free, ptr @rds_loop_conn_path_connect, ptr @rds_loop_conn_path_shutdown, ptr null, ptr null, ptr @rds_loop_xmit, ptr null, ptr null, ptr @rds_loop_recv_path, ptr @rds_message_inc_copy_to_user, ptr @rds_loop_inc_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rds_loop_is_unloading, ptr null }, [60 x i8] zeroinitializer }, align 32
@rds_loop_unloading = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"loop_conns_lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rds_loop_conn_free.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rds\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rds_loop_conn_free\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s(): lc %p\0A\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [16 x i8] c"loop_conns_lock\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"loop_conns\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 45, i32 8 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 191, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"rds_loop_net_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 222, i32 33 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"rds_loop_transport\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 242, i32 22 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"rds_loop_unloading\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 46, i32 17 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 44, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [18 x i8] c"../net/rds/loop.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 160, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @loop_conns_lock, ptr @loop_conns, ptr @.str, ptr @rds_loop_net_ops, ptr @rds_loop_transport, ptr @rds_loop_unloading, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_conns_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_conns to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_loop_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_loop_transport to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_loop_unloading to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_loop_exit() local_unnamed_addr #0 align 64 {
entry:
  %tmp_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list) #6
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_list, i32 0, i32 1
  %1 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp_list, ptr %tmp_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_list, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @rds_loop_unloading, i32 noundef 4) #6
  store volatile i32 1, ptr @rds_loop_unloading, align 4
  call void @synchronize_rcu() #6
  call void @_raw_spin_lock_irq(ptr noundef nonnull @loop_conns_lock) #6
  %3 = load volatile ptr, ptr @loop_conns, align 4
  %cmp.i.not.i = icmp eq ptr %3, @loop_conns
  br i1 %cmp.i.not.i, label %entry.list_splice.exit_crit_edge, label %if.then.i

entry.list_splice.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_splice.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmp_list, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @loop_conns, i32 0, i32 1), align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tmp_list, ptr %prev3.i.i, align 4
  store ptr %3, ptr %tmp_list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %6, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i, %entry.list_splice.exit_crit_edge
  store volatile ptr @loop_conns, ptr @loop_conns, align 4
  store ptr @loop_conns, ptr getelementptr inbounds (%struct.list_head, ptr @loop_conns, i32 0, i32 1), align 4
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @loop_conns_lock) #6
  %10 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tmp_list, align 4
  %cmp.not40 = icmp eq ptr %11, %tmp_list
  br i1 %cmp.not40, label %list_splice.exit.for.end_crit_edge, label %list_splice.exit.for.body_crit_edge

list_splice.exit.for.body_crit_edge:              ; preds = %list_splice.exit
  br label %for.body

list_splice.exit.for.end_crit_edge:               ; preds = %list_splice.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %list_splice.exit.for.body_crit_edge
  %lc.041 = phi ptr [ %_lc.042, %if.end.for.body_crit_edge ], [ %11, %list_splice.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %lc.041 to i32
  call void @__asan_load4_noabort(i32 %12)
  %_lc.042 = load ptr, ptr %lc.041, align 4
  %conn = getelementptr inbounds %struct.rds_loop_connection, ptr %lc.041, i32 0, i32 1
  %13 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %conn, align 4
  %c_passive = getelementptr inbounds %struct.rds_connection, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %c_passive to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %c_passive, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.end, !prof !27

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %17 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %conn, align 4
  call void @rds_conn_destroy(ptr noundef %18) #6
  %cmp.not = icmp eq ptr %_lc.042, %tmp_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %list_splice.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_loop_net_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_device(ptr noundef nonnull @rds_loop_net_ops) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_loop_net_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_pernet_device(ptr noundef nonnull @rds_loop_net_ops) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_loop_conn_alloc(ptr noundef %conn, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !27

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %conn1 = getelementptr inbounds %struct.rds_loop_connection, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %conn1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %conn, ptr %conn1, align 8
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %5 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %c_path, align 4
  %cp_transport_data = getelementptr inbounds %struct.rds_conn_path, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %cp_transport_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %cp_transport_data, align 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @loop_conns_lock) #6
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @loop_conns, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %8, ptr noundef nonnull @loop_conns) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @loop_conns, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @loop_conns, ptr %call7.i.i, align 8
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %prev.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i.i, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @loop_conns_lock, i32 noundef %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %kzalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_loop_conn_free(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_loop_conn_free.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_loop_conn_free, %if.then)) #6
          to label %do.body4 [label %if.then], !srcloc !28

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_loop_conn_free.__UNIQUE_ID_ddebug548, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %arg) #6
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @loop_conns_lock) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arg) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.body4.list_del.exit_crit_edge

do.body4.list_del.exit_crit_edge:                 ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.body4.list_del.exit_crit_edge
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %arg, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arg, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @loop_conns_lock, i32 noundef %call7) #6
  tail call void @kfree(ptr noundef %arg) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_loop_conn_path_connect(ptr nocapture noundef readonly %cp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp, align 8
  tail call void @rds_connect_complete(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rds_loop_conn_path_shutdown(ptr nocapture noundef %cp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_loop_xmit(ptr noundef %conn, ptr noundef %rm, i32 noundef %hdr_off, i32 noundef %sg, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %m_inc = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3
  %i_hdr = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 4
  %h_len = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 4, i32 2
  %0 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %h_len, align 8
  %add = add i32 %1, 48
  %h_flags = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 4, i32 5
  %2 = ptrtoint ptr %h_flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %h_flags, align 8
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %op_sg = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 6
  %5 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %op_sg, align 8
  %c_fcong = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 10
  %7 = ptrtoint ptr %c_fcong to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %c_fcong, align 4
  tail call void @rds_cong_map_updated(ptr noundef %8, i64 noundef -1) #6
  %length = getelementptr %struct.scatterlist, ptr %6, i32 %sg, i32 2
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %11 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %c_path, align 4
  %cp_xmit_data_off = getelementptr inbounds %struct.rds_conn_path, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %cp_xmit_data_off to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cp_xmit_data_off, align 8
  %sub = sub i32 %10, %14
  %15 = tail call i32 @llvm.smin.i32(i32 %add, i32 %sub)
  br label %out

do.body:                                          ; preds = %entry
  %16 = or i32 %sg, %hdr_off
  %17 = or i32 %16, %off
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %.not = icmp eq i32 %17, 0
  br i1 %.not, label %do.end17, label %do.body11, !prof !29

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/loop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 90, 0\0A.popsection", ""() #6, !srcloc !30
  unreachable

do.end17:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %c_laddr = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 1
  tail call void @rds_inc_init(ptr noundef %m_inc, ptr noundef %conn, ptr noundef %c_laddr) #6
  tail call void @rds_message_addref(ptr noundef %rm) #6
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 2
  tail call void @rds_recv_incoming(ptr noundef %conn, ptr noundef %c_laddr, ptr noundef %c_faddr, ptr noundef %m_inc, i32 noundef 3264) #6
  %18 = ptrtoint ptr %i_hdr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_hdr, align 8
  tail call void @rds_send_drop_acked(ptr noundef %conn, i64 noundef %19, ptr noundef null) #6
  tail call void @rds_inc_put(ptr noundef %m_inc) #6
  br label %out

out:                                              ; preds = %do.end17, %if.then
  %ret.0 = phi i32 [ %15, %if.then ], [ %add, %do.end17 ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rds_loop_recv_path(ptr nocapture noundef readnone %cp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_message_inc_copy_to_user(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_loop_inc_free(ptr noundef %inc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %inc, i32 -24
  tail call void @rds_message_put(ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rds_loop_is_unloading(ptr nocapture noundef readnone %conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @rds_loop_unloading, i32 noundef 4) #6
  %0 = load volatile i32, ptr @rds_loop_unloading, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp ne i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_loop_exit_net(ptr noundef readnone %net) #0 align 64 {
entry:
  %tmp_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list.i) #6
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_list.i, i32 0, i32 1
  %1 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp_list.i, ptr %tmp_list.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tmp_list.i, ptr %0, align 4
  call void @_raw_spin_lock_irq(ptr noundef nonnull @loop_conns_lock) #6
  %3 = load ptr, ptr @loop_conns, align 4
  %cmp.not72.i = icmp eq ptr %3, @loop_conns
  br i1 %cmp.not72.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %lc.073.i = phi ptr [ %_lc.075.i, %cleanup.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %lc.073.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %_lc.075.i = load ptr, ptr %lc.073.i, align 4
  %conn.i = getelementptr inbounds %struct.rds_loop_connection, ptr %lc.073.i, i32 0, i32 1
  %5 = ptrtoint ptr %conn.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conn.i, align 4
  %c_net6.i = getelementptr inbounds %struct.rds_connection, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %c_net6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %c_net6.i, align 4
  %cmp7.not.i = icmp eq ptr %8, %net
  br i1 %cmp7.not.i, label %if.end.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %lc.073.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.__list_del_entry.exit.i.i_crit_edge

if.end.i.__list_del_entry.exit.i.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %lc.073.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %lc.073.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lc.073.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end.i.__list_del_entry.exit.i.i_crit_edge
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %lc.073.i, ptr noundef %16, ptr noundef nonnull %tmp_list.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.cleanup.i_crit_edge

__list_del_entry.exit.i.i.cleanup.i_crit_edge:    ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %lc.073.i, ptr %0, align 4
  %18 = ptrtoint ptr %lc.073.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tmp_list.i, ptr %lc.073.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %lc.073.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %lc.073.i, ptr %16, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %cmp.not.i = icmp eq ptr %_lc.075.i, @loop_conns
  br i1 %cmp.not.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @loop_conns_lock) #6
  %21 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tmp_list.i, align 4
  %cmp25.not77.i = icmp eq ptr %22, %tmp_list.i
  br i1 %cmp25.not77.i, label %for.end.i.rds_loop_kill_conns.exit_crit_edge, label %for.end.i.for.body27.i_crit_edge

for.end.i.for.body27.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body27.i

for.end.i.rds_loop_kill_conns.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rds_loop_kill_conns.exit

for.body27.i:                                     ; preds = %if.end44.i.for.body27.i_crit_edge, %for.end.i.for.body27.i_crit_edge
  %lc.178.i = phi ptr [ %_lc.179.i, %if.end44.i.for.body27.i_crit_edge ], [ %22, %for.end.i.for.body27.i_crit_edge ]
  %23 = ptrtoint ptr %lc.178.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %_lc.179.i = load ptr, ptr %lc.178.i, align 4
  %conn28.i = getelementptr inbounds %struct.rds_loop_connection, ptr %lc.178.i, i32 0, i32 1
  %24 = ptrtoint ptr %conn28.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %conn28.i, align 4
  %c_passive.i = getelementptr inbounds %struct.rds_connection, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %c_passive.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %c_passive.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %for.body27.i.if.end44.i_crit_edge, label %do.end.i, !prof !27

for.body27.i.if.end44.i_crit_edge:                ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

do.end.i:                                         ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 212, i32 noundef 9, ptr noundef null) #6
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end.i, %for.body27.i.if.end44.i_crit_edge
  %28 = ptrtoint ptr %conn28.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %conn28.i, align 4
  call void @rds_conn_destroy(ptr noundef %29) #6
  %cmp25.not.i = icmp eq ptr %_lc.179.i, %tmp_list.i
  br i1 %cmp25.not.i, label %if.end44.i.rds_loop_kill_conns.exit_crit_edge, label %if.end44.i.for.body27.i_crit_edge

if.end44.i.for.body27.i_crit_edge:                ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body27.i

if.end44.i.rds_loop_kill_conns.exit_crit_edge:    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rds_loop_kill_conns.exit

rds_loop_kill_conns.exit:                         ; preds = %if.end44.i.rds_loop_kill_conns.exit_crit_edge, %for.end.i.rds_loop_kill_conns.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_connect_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_cong_map_updated(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_inc_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_message_addref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_recv_incoming(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_send_drop_acked(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_inc_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_message_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/loop.c", i32 191, i32 3}
!2 = !{ptr @rds_loop_transport, !3, !"rds_loop_transport", i1 false, i1 false}
!3 = !{!"../net/rds/loop.c", i32 242, i32 22}
!4 = !{ptr @rds_loop_unloading, !5, !"rds_loop_unloading", i1 false, i1 false}
!5 = !{!"../net/rds/loop.c", i32 46, i32 17}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rds/loop.c", i32 44, i32 8}
!8 = !{ptr @loop_conns_lock, !7, !"loop_conns_lock", i1 false, i1 false}
!9 = !{ptr @loop_conns, !10, !"loop_conns", i1 false, i1 false}
!10 = !{!"../net/rds/loop.c", i32 45, i32 8}
!11 = !{ptr @rds_loop_net_ops, !12, !"rds_loop_net_ops", i1 false, i1 false}
!12 = !{!"../net/rds/loop.c", i32 222, i32 33}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/rds/loop.c", i32 160, i32 2}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rds_loop_conn_free.__UNIQUE_ID_ddebug548, !14, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2148696866, i64 2148696871, i64 2148696884, i64 2148696928, i64 2148696962, i64 2148696983}
!29 = !{!"branch_weights", i32 -294967296, i32 6003000}
!30 = !{i64 2158196348, i64 2158196826, i64 2158196385, i64 2158196441, i64 2158196475, i64 2158196499, i64 2158196540, i64 2158196561, i64 2158196589, i64 2158196623}
