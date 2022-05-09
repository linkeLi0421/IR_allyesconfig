; ModuleID = '/llk/IR_all_yes/net/rds/tcp_listen.c_pt.bc'
source_filename = "../net/rds/tcp_listen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.in6_addr = type { %union.anon.70 }
%union.anon.70 = type { [4 x i32] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.71, [0 x i32], %union.anon.72, i16, i16, %union.anon.73, %struct.refcount_struct, [0 x i32], %union.anon.74 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { i32 }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.74 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.79, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.119, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.120, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.79 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.119 = type { ptr }
%union.anon.120 = type { ptr }
%struct.sk_buff_head = type { %union.anon.77, i32, %struct.spinlock }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.124 }
%union.anon.124 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.223, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.223 = type { %struct.anon.224 }
%struct.anon.224 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.rds_connection = type { %struct.hlist_node, %struct.in6_addr, %struct.in6_addr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.possible_net_t, i8, %struct.list_head, i32, ptr, %struct.wait_queue_head, i32, i32 }
%struct.rds_conn_path = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i64, ptr, %struct.atomic_t, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, %struct.wait_queue_head, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rds_tcp_connection = type { %struct.list_head, i8, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, i32, i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.220 }
%union.anon.220 = type { ptr, [124 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@rds_tcp_accept_one.__UNIQUE_ID_ddebug645 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rds_tcp\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rds_tcp_accept_one\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/rds/tcp_listen.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s(): accepted family %d tcp %pI6c:%u -> %pI6c:%u\0A\00", [45 x i8] zeroinitializer }, align 32
@rds_tcp_transport = external dso_local global %struct.rds_transport, align 4
@rds_tcp_listen_data_ready.__UNIQUE_ID_ddebug646 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rds_tcp_listen_data_ready\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): listen data ready sk %p\0A\00", [33 x i8] zeroinitializer }, align 32
@rds_tcp_listen_init.__UNIQUE_ID_ddebug647 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rds_tcp_listen_init\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s(): could not create %s listener socket: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IPv6\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IPv4\00", [27 x i8] zeroinitializer }, align 32
@in6addr_any = external dso_local local_unnamed_addr constant %struct.in6_addr, align 4
@rds_tcp_listen_init.__UNIQUE_ID_ddebug648 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.10, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(): could not bind %s listener socket: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@rds_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 149, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 234, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 275, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [24 x i8] c"../net/rds/tcp_listen.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 306, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_tcp_keepalive(ptr nocapture noundef readonly %sock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  tail call void @sock_set_keepalive(ptr noundef %1) #5
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %call = tail call i32 @tcp_sock_set_keepcnt(ptr noundef %3, i32 noundef 5) #5
  %4 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk, align 16
  %call3 = tail call i32 @tcp_sock_set_keepidle(ptr noundef %5, i32 noundef 5) #5
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 16
  %call5 = tail call i32 @tcp_sock_set_keepintvl(ptr noundef %7, i32 noundef 5) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_set_keepalive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sock_set_keepcnt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sock_set_keepidle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sock_set_keepintvl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_tcp_accept_one(ptr noundef %sock) local_unnamed_addr #0 align 64 {
entry:
  %new_sock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_sock) #5
  %0 = ptrtoint ptr %new_sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %new_sock, align 4
  %tobool.not = icmp eq ptr %sock, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk, align 16
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %skc_family, align 8
  %conv = zext i16 %4 to i32
  %sk_type = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 45
  %5 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sk_type, align 2
  %conv2 = zext i16 %6 to i32
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 46
  %7 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sk_protocol, align 4
  %conv4 = zext i16 %8 to i32
  %call = call i32 @sock_create_lite(i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4, ptr noundef nonnull %new_sock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.if.end115_crit_edge

if.end.if.end115_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

if.end7:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %accept = getelementptr inbounds %struct.proto_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %accept to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %accept, align 4
  %13 = ptrtoint ptr %new_sock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %new_sock, align 4
  %call8 = call i32 %12(ptr noundef nonnull %sock, ptr noundef %14, i32 noundef 2048, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end7.if.end115_crit_edge, label %if.end11

if.end7.if.end115_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

if.end11:                                         ; preds = %if.end7
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %17 = ptrtoint ptr %new_sock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %new_sock, align 4
  %ops13 = getelementptr inbounds %struct.socket, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %ops13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %ops13, align 4
  %owner = getelementptr inbounds %struct.proto_ops, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %owner, align 4
  call void @__module_get(ptr noundef %21) #5
  %22 = ptrtoint ptr %new_sock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %new_sock, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk.i, align 16
  call void @sock_set_keepalive(ptr noundef %25) #5
  %26 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sk.i, align 16
  %call.i = call i32 @tcp_sock_set_keepcnt(ptr noundef %27, i32 noundef 5) #5
  %28 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk.i, align 16
  %call3.i = call i32 @tcp_sock_set_keepidle(ptr noundef %29, i32 noundef 5) #5
  %30 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk.i, align 16
  %call5.i = call i32 @tcp_sock_set_keepintvl(ptr noundef %31, i32 noundef 5) #5
  %32 = ptrtoint ptr %new_sock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %new_sock, align 4
  call void @rds_tcp_tune(ptr noundef %33) #5
  %34 = ptrtoint ptr %new_sock to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %new_sock, align 4
  %sk15 = getelementptr inbounds %struct.socket, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %sk15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sk15, align 16
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %37, i32 0, i32 11
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %37, i32 0, i32 10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_accept_one.__UNIQUE_ID_ddebug645, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_accept_one, %if.then25)) #5
          to label %do.end [label %if.then25], !srcloc !28

if.then25:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sk, align 16
  %skc_family28 = getelementptr inbounds %struct.sock_common, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %skc_family28 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %skc_family28, align 8
  %conv29 = zext i16 %41 to i32
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %37, i32 0, i32 6
  %42 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %inet_sport, align 8
  %conv30 = zext i16 %43 to i32
  %44 = getelementptr inbounds %struct.sock_common, ptr %37, i32 0, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %44, align 4
  %conv33 = zext i16 %46 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_accept_one.__UNIQUE_ID_ddebug645, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %conv29, ptr noundef %skc_v6_rcv_saddr, i32 noundef %conv30, ptr noundef %skc_v6_daddr, i32 noundef %conv33) #5
  br label %do.end

do.end:                                           ; preds = %if.then25, %if.end11
  %call.i163 = call i32 @__ipv6_addr_type(ptr noundef %skc_v6_rcv_saddr) #5
  %and = and i32 %call.i163, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %do.end.if.else_crit_edge, label %land.lhs.true

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %call.i164 = call i32 @__ipv6_addr_type(ptr noundef %skc_v6_daddr) #5
  %and38 = and i32 %call.i164, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then40, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then40:                                        ; preds = %land.lhs.true
  %47 = ptrtoint ptr %new_sock to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %new_sock, align 4
  %sk41 = getelementptr inbounds %struct.socket, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %sk41 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sk41, align 16
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %52 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then40.inet6_sk.exit_crit_edge, label %cond.true.i

if.then40.inet6_sk.exit_crit_edge:                ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %50, i32 0, i32 1
  %53 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %if.then40.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %54, %cond.true.i ], [ null, %if.then40.inet6_sk.exit_crit_edge ]
  %mcast_oif = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 8
  br label %if.end45

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  %55 = ptrtoint ptr %new_sock to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %new_sock, align 4
  %sk43 = getelementptr inbounds %struct.socket, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %sk43 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sk43, align 16
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %58, i32 0, i32 6
  br label %if.end45

if.end45:                                         ; preds = %if.else, %inet6_sk.exit
  %dev_if.0.in = phi ptr [ %skc_bound_dev_if, %if.else ], [ %mcast_oif, %inet6_sk.exit ]
  %59 = ptrtoint ptr %dev_if.0.in to i32
  call void @__asan_load4_noabort(i32 %59)
  %dev_if.0 = load i32, ptr %dev_if.0.in, align 4
  %60 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sk, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %61, i32 0, i32 9
  %62 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %skc_net.i, align 4
  %call48 = call i32 @rds_tcp_laddr_check(ptr noundef %63, ptr noundef %skc_v6_daddr, i32 noundef %dev_if.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end45.if.end115_crit_edge, label %if.end51

if.end45.if.end115_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

if.end51:                                         ; preds = %if.end45
  %64 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sk, align 16
  %skc_net.i166 = getelementptr inbounds %struct.sock_common, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %skc_net.i166 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %skc_net.i166, align 4
  %call54 = call ptr @rds_conn_create(ptr noundef %67, ptr noundef %skc_v6_rcv_saddr, ptr noundef %skc_v6_daddr, ptr noundef nonnull @rds_tcp_transport, i8 noundef zeroext 0, i32 noundef 3264, i32 noundef %dev_if.0) #5
  %cmp.i = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %call54 to i32
  br label %if.end115

if.end58:                                         ; preds = %if.end51
  %c_npaths.i = getelementptr inbounds %struct.rds_connection, ptr %call54, i32 0, i32 6
  %69 = ptrtoint ptr %c_npaths.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %c_npaths.i, align 4
  %71 = call i32 @llvm.smax.i32(i32 %70, i32 1) #5
  %c_faddr.i = getelementptr inbounds %struct.rds_connection, ptr %call54, i32 0, i32 2
  %c_laddr.i = getelementptr inbounds %struct.rds_connection, ptr %call54, i32 0, i32 1
  %call.i167 = call i32 @rds_addr_cmp(ptr noundef %c_faddr.i, ptr noundef %c_laddr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i167)
  %cmp1.i = icmp sgt i32 %call.i167, -1
  br i1 %cmp1.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end58
  %c_path6.i = getelementptr inbounds %struct.rds_connection, ptr %call54, i32 0, i32 17
  br label %for.body.i

if.then.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp2.i = icmp slt i32 %70, 2
  br i1 %cmp2.i, label %if.then3.i, label %if.then.i.out_crit_edge

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %c_path.i = getelementptr inbounds %struct.rds_connection, ptr %call54, i32 0, i32 17
  %72 = ptrtoint ptr %c_path.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %c_path.i, align 4
  call void @rds_conn_path_connect_if_down(ptr noundef %73) #5
  br label %out

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.042.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %74 = ptrtoint ptr %c_path6.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %c_path6.i, align 4
  %cp_state.i.i = getelementptr %struct.rds_conn_path, ptr %75, i32 %i.042.i, i32 14
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cp_state.i.i, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !29
  call void @llvm.prefetch.p0(ptr %cp_state.i.i, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %for.body.i
  %76 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %cp_state.i.i, ptr %cp_state.i.i, i32 0, i32 1, ptr elementtype(i32) %cp_state.i.i) #5, !srcloc !30
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %76, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %rds_conn_path_transition.exit.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i.i

rds_conn_path_transition.exit.i:                  ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %76, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i.i)
  %cmp.i.not.i = icmp eq i32 %asmresult3.i.i.i.i.i, 0
  br i1 %cmp.i.not.i, label %rds_conn_path_transition.exit.i.rds_tcp_accept_one_path.exit_crit_edge, label %lor.lhs.false.i

rds_conn_path_transition.exit.i.rds_tcp_accept_one_path.exit_crit_edge: ; preds = %rds_conn_path_transition.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rds_tcp_accept_one_path.exit

lor.lhs.false.i:                                  ; preds = %rds_conn_path_transition.exit.i
  %call.i.i.i28.i = call zeroext i1 @__kasan_check_write(ptr noundef %cp_state.i.i, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !29
  call void @llvm.prefetch.p0(ptr %cp_state.i.i, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i.i31.i

do.body.i.i.i.i31.i:                              ; preds = %do.body.i.i.i.i31.i.do.body.i.i.i.i31.i_crit_edge, %lor.lhs.false.i
  %77 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %cp_state.i.i, ptr %cp_state.i.i, i32 5, i32 1, ptr elementtype(i32) %cp_state.i.i) #5, !srcloc !30
  %asmresult.i.i.i.i29.i = extractvalue { i32, i32 } %77, 0
  %tobool.not.i.i.i.i30.i = icmp eq i32 %asmresult.i.i.i.i29.i, 0
  br i1 %tobool.not.i.i.i.i30.i, label %rds_conn_path_transition.exit35.i, label %do.body.i.i.i.i31.i.do.body.i.i.i.i31.i_crit_edge

do.body.i.i.i.i31.i.do.body.i.i.i.i31.i_crit_edge: ; preds = %do.body.i.i.i.i31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i31.i

rds_conn_path_transition.exit35.i:                ; preds = %do.body.i.i.i.i31.i
  %asmresult3.i.i.i.i32.i = extractvalue { i32, i32 } %77, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %asmresult3.i.i.i.i32.i)
  %cmp.i33.not.i = icmp eq i32 %asmresult3.i.i.i.i32.i, 5
  br i1 %cmp.i33.not.i, label %rds_conn_path_transition.exit35.i.rds_tcp_accept_one_path.exit_crit_edge, label %for.inc.i

rds_conn_path_transition.exit35.i.rds_tcp_accept_one_path.exit_crit_edge: ; preds = %rds_conn_path_transition.exit35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rds_tcp_accept_one_path.exit

for.inc.i:                                        ; preds = %rds_conn_path_transition.exit35.i
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %71
  br i1 %exitcond.not.i, label %for.inc.i.out_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

rds_tcp_accept_one_path.exit:                     ; preds = %rds_conn_path_transition.exit35.i.rds_tcp_accept_one_path.exit_crit_edge, %rds_conn_path_transition.exit.i.rds_tcp_accept_one_path.exit_crit_edge
  %cp_transport_data.i = getelementptr %struct.rds_conn_path, ptr %75, i32 %i.042.i, i32 13
  %78 = ptrtoint ptr %cp_transport_data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cp_transport_data.i, align 8
  %tobool60.not = icmp eq ptr %79, null
  br i1 %tobool60.not, label %rds_tcp_accept_one_path.exit.out_crit_edge, label %if.end62

rds_tcp_accept_one_path.exit.out_crit_edge:       ; preds = %rds_tcp_accept_one_path.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end62:                                         ; preds = %rds_tcp_accept_one_path.exit
  %t_conn_path_lock = getelementptr inbounds %struct.rds_tcp_connection, ptr %79, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %t_conn_path_lock, i32 noundef 0) #5
  %t_cpath = getelementptr inbounds %struct.rds_tcp_connection, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %t_cpath to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %t_cpath, align 4
  %cp_state.i = getelementptr inbounds %struct.rds_conn_path, ptr %81, i32 0, i32 14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i, i32 noundef 4) #5
  %82 = ptrtoint ptr %cp_state.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %cp_state.i, align 4
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values)
  switch i32 %83, label %if.end62.out_crit_edge [
    i32 3, label %do.end81
    i32 1, label %if.end62.if.end101_crit_edge
    i32 5, label %if.end62.if.end101_crit_edge207
  ], !prof !32

if.end62.if.end101_crit_edge207:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.end62.if.end101_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.end62.out_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end81:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 195, i32 noundef 9, ptr noundef null) #5
  br label %out

if.end101:                                        ; preds = %if.end62.if.end101_crit_edge, %if.end62.if.end101_crit_edge207
  %t_sock = getelementptr inbounds %struct.rds_tcp_connection, ptr %79, i32 0, i32 4
  %85 = ptrtoint ptr %t_sock to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %t_sock, align 4
  %tobool102.not = icmp eq ptr %86, null
  %87 = ptrtoint ptr %new_sock to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %new_sock, align 4
  br i1 %tobool102.not, label %if.else104, label %if.then103

if.then103:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  call void @rds_tcp_reset_callbacks(ptr noundef %88, ptr noundef %81) #5
  br label %if.end105

if.else104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  call void @rds_tcp_set_callbacks(ptr noundef %88, ptr noundef %81) #5
  br label %if.end105

if.end105:                                        ; preds = %if.else104, %if.then103
  %.sink = phi i32 [ 1, %if.else104 ], [ 4, %if.then103 ]
  call void @rds_connect_path_complete(ptr noundef %81, i32 noundef %.sink) #5
  %89 = ptrtoint ptr %new_sock to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %new_sock, align 4
  %90 = ptrtoint ptr %c_npaths.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %c_npaths.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp106 = icmp eq i32 %91, 0
  br i1 %cmp106, label %if.then108, label %if.end105.if.then113_crit_edge

if.end105.if.then113_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then113

if.then108:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %81, align 8
  %cp_index = getelementptr inbounds %struct.rds_conn_path, ptr %81, i32 0, i32 26
  %94 = ptrtoint ptr %cp_index to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cp_index, align 4
  call void @rds_send_ping(ptr noundef %93, i32 noundef %95) #5
  br label %if.then113

out:                                              ; preds = %do.end81, %if.end62.out_crit_edge, %rds_tcp_accept_one_path.exit.out_crit_edge, %for.inc.i.out_crit_edge, %if.then3.i, %if.then.i.out_crit_edge
  %retval.2.i171 = phi ptr [ %79, %do.end81 ], [ %79, %if.end62.out_crit_edge ], [ null, %rds_tcp_accept_one_path.exit.out_crit_edge ], [ null, %if.then3.i ], [ null, %if.then.i.out_crit_edge ], [ null, %for.inc.i.out_crit_edge ]
  %96 = ptrtoint ptr %new_sock to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %new_sock, align 4
  %sk110 = getelementptr inbounds %struct.socket, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %sk110 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sk110, align 16
  call void @sock_no_linger(ptr noundef %99) #5
  %100 = ptrtoint ptr %new_sock to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %new_sock, align 4
  %call111 = call i32 @kernel_sock_shutdown(ptr noundef %101, i32 noundef 2) #5
  %tobool112.not = icmp eq ptr %retval.2.i171, null
  br i1 %tobool112.not, label %out.if.end115_crit_edge, label %out.if.then113_crit_edge

out.if.then113_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then113

out.if.end115_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

if.then113:                                       ; preds = %out.if.then113_crit_edge, %if.then108, %if.end105.if.then113_crit_edge
  %rs_tcp.0181 = phi ptr [ %retval.2.i171, %out.if.then113_crit_edge ], [ %79, %if.then108 ], [ %79, %if.end105.if.then113_crit_edge ]
  %t_conn_path_lock114 = getelementptr inbounds %struct.rds_tcp_connection, ptr %rs_tcp.0181, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %t_conn_path_lock114) #5
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %out.if.end115_crit_edge, %if.then56, %if.end45.if.end115_crit_edge, %if.end7.if.end115_crit_edge, %if.end.if.end115_crit_edge
  %ret.0175 = phi i32 [ 0, %if.then113 ], [ 0, %out.if.end115_crit_edge ], [ -95, %if.end45.if.end115_crit_edge ], [ %68, %if.then56 ], [ %call8, %if.end7.if.end115_crit_edge ], [ %call, %if.end.if.end115_crit_edge ]
  %102 = ptrtoint ptr %new_sock to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %new_sock, align 4
  %tobool116.not = icmp eq ptr %103, null
  br i1 %tobool116.not, label %if.end115.cleanup_crit_edge, label %if.then117

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then117:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  call void @sock_release(ptr noundef nonnull %103) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then117, %if.end115.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -101, %entry.cleanup_crit_edge ], [ %ret.0175, %if.then117 ], [ %ret.0175, %if.end115.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_sock) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_lite(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_tune(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_tcp_laddr_check(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_conn_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_reset_callbacks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_connect_path_complete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_set_callbacks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_send_ping(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_no_linger(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_tcp_listen_data_ready(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_listen_data_ready.__UNIQUE_ID_ddebug646, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_listen_data_ready, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !28

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_listen_data_ready.__UNIQUE_ID_ddebug646, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %sk) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock) #5
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %2 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_data_ready, align 8
  br label %out

if.end5:                                          ; preds = %do.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp = icmp eq i8 %5, 10
  br i1 %cmp, label %out.thread, label %if.else

out.thread:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rds_tcp_accept_work(ptr noundef %sk) #5
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #5
  br label %if.then13

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  %call9 = tail call ptr @rds_tcp_listen_sock_def_readable(ptr noundef %7) #5
  br label %out

out:                                              ; preds = %if.else, %if.then4
  %ready.0 = phi ptr [ %call9, %if.else ], [ %3, %if.then4 ]
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock) #5
  %tobool12.not = icmp eq ptr %ready.0, null
  br i1 %tobool12.not, label %out.if.end14_crit_edge, label %out.if.then13_crit_edge

out.if.then13_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

out.if.end14_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then13:                                        ; preds = %out.if.then13_crit_edge, %out.thread
  %ready.028 = phi ptr [ %1, %out.thread ], [ %ready.0, %out.if.then13_crit_edge ]
  tail call void %ready.028(ptr noundef %sk) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %out.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_tcp_accept_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_tcp_listen_sock_def_readable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rds_tcp_listen_init(ptr noundef %net, i1 noundef zeroext %isv6) local_unnamed_addr #0 align 64 {
entry:
  %sock = alloca ptr, align 4
  %ss = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock) #5
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sock, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ss) #5
  %1 = call ptr @memset(ptr %ss, i32 255, i32 128)
  %cond = select i1 %isv6, i32 10, i32 2
  %call = call i32 @sock_create_kern(ptr noundef %net, i32 noundef %cond, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %sock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_listen_init.__UNIQUE_ID_ddebug647, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_listen_init, %if.then6)) #5
          to label %out [label %if.then6], !srcloc !28

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %cond8 = select i1 %isv6, ptr @.str.8, ptr @.str.9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_listen_init.__UNIQUE_ID_ddebug647, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond8, i32 noundef %call) #5
  br label %out

if.end9:                                          ; preds = %entry
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk, align 16
  %skc_reuse = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %skc_reuse to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %skc_reuse, align 1
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, 16
  store i8 %bf.set, ptr %skc_reuse, align 1
  %7 = load ptr, ptr %sk, align 16
  call void @tcp_sock_set_nodelay(ptr noundef %7) #5
  %8 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sock, align 4
  %sk11 = getelementptr inbounds %struct.socket, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %sk11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk11, align 16
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #5
  %12 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sock, align 4
  %sk12 = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %sk12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk12, align 16
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 77
  %16 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk_data_ready, align 8
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 72
  %18 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %sk_user_data, align 4
  %19 = load ptr, ptr %sk12, align 16
  %sk_data_ready15 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 77
  %20 = ptrtoint ptr %sk_data_ready15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rds_tcp_listen_data_ready, ptr %sk_data_ready15, align 8
  %21 = load ptr, ptr %sk12, align 16
  %sk_callback_lock17 = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 50
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock17) #5
  br i1 %isv6, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %ss to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 10, ptr %ss, align 4
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %ss, i32 0, i32 3
  %23 = call ptr @memcpy(ptr %sin6_addr, ptr @in6addr_any, i32 16)
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %ss, i32 0, i32 1
  %24 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 16385, ptr %sin6_port, align 2
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %ss, i32 0, i32 4
  %25 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sin6_scope_id, align 4
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, ptr %ss, i32 0, i32 2
  %26 = ptrtoint ptr %sin6_flowinfo to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %sin6_flowinfo, align 4
  br label %if.end20

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %ss to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2, ptr %ss, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %ss, i32 0, i32 2
  %28 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %sin_addr, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %ss, i32 0, i32 1
  %29 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 16385, ptr %sin_port, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then19
  %addr_len.0 = phi i32 [ 28, %if.then19 ], [ 16, %if.else ]
  %30 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sock, align 4
  %ops = getelementptr inbounds %struct.socket, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %bind = getelementptr inbounds %struct.proto_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %bind to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bind, align 4
  %call21 = call i32 %35(ptr noundef %31, ptr noundef nonnull %ss, i32 noundef %addr_len.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.body24, label %if.end42

do.body24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_tcp_listen_init.__UNIQUE_ID_ddebug648, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_tcp_listen_init, %if.then36)) #5
          to label %out [label %if.then36], !srcloc !28

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  %cond38 = select i1 %isv6, ptr @.str.8, ptr @.str.9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_tcp_listen_init.__UNIQUE_ID_ddebug648, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond38, i32 noundef %call21) #5
  br label %out

if.end42:                                         ; preds = %if.end20
  %36 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sock, align 4
  %ops43 = getelementptr inbounds %struct.socket, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %ops43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops43, align 4
  %listen = getelementptr inbounds %struct.proto_ops, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %listen to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %listen, align 4
  %call44 = call i32 %41(ptr noundef %37, i32 noundef 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end42.out_crit_edge, label %if.end47

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end47:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sock, align 4
  br label %cleanup

out:                                              ; preds = %if.end42.out_crit_edge, %if.then36, %do.body24, %if.then6, %do.body
  %44 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sock, align 4
  %tobool48.not = icmp eq ptr %45, null
  br i1 %tobool48.not, label %out.cleanup_crit_edge, label %if.then49

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then49:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  call void @sock_release(ptr noundef nonnull %45) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %out.cleanup_crit_edge, %if.end47
  %retval.0 = phi ptr [ %43, %if.end47 ], [ null, %if.then49 ], [ null, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ss) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_kern(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_nodelay(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_tcp_listen_stop(ptr noundef %sock, ptr noundef %acceptor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sock, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #5
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #5
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 72
  %2 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_user_data, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 77
  %4 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %sk_data_ready, align 8
  %5 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sk_user_data, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #5
  tail call void @release_sock(ptr noundef %1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_wq to i32))
  %6 = load ptr, ptr @rds_wq, align 4
  tail call void @flush_workqueue(ptr noundef %6) #5
  %call = tail call zeroext i1 @flush_work(ptr noundef %acceptor) #5
  tail call void @sock_release(ptr noundef nonnull %sock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_addr_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_path_connect_if_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/tcp_listen.c", i32 149, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rds_tcp_accept_one.__UNIQUE_ID_ddebug645, !1, !"__UNIQUE_ID_ddebug645", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rds/tcp_listen.c", i32 234, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rds_tcp_listen_data_ready.__UNIQUE_ID_ddebug646, !7, !"__UNIQUE_ID_ddebug646", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/rds/tcp_listen.c", i32 275, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rds_tcp_listen_init.__UNIQUE_ID_ddebug647, !11, !"__UNIQUE_ID_ddebug647", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/rds/tcp_listen.c", i32 306, i32 3}
!18 = !{ptr @rds_tcp_listen_init.__UNIQUE_ID_ddebug648, !17, !"__UNIQUE_ID_ddebug648", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 2148699776, i64 2148699781, i64 2148699794, i64 2148699838, i64 2148699872, i64 2148699893}
!29 = !{i64 2148319784}
!30 = !{i64 701697, i64 701721, i64 701742, i64 701759, i64 701776}
!31 = !{i64 2148320010}
!32 = !{!"branch_weights", i32 2000, i32 4, i32 4000, i32 2000}
