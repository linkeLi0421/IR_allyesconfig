; ModuleID = '/llk/IR_all_yes/net/dccp/diag.c_pt.bc'
source_filename = "../net/dccp/diag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inet_diag_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16 }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [92 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.21 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.21 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.inet_diag_msg = type { i8, i8, i8, i8, %struct.inet_diag_sockid, i32, i32, i32, i32, i32 }
%struct.inet_diag_sockid = type { i16, i16, [4 x i32], [4 x i32], i32, [2 x i32] }
%struct.sock_common = type { %union.anon.137, %union.anon.139, %union.anon.140, i16, i8, i8, i32, %union.anon.142, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.145, [0 x i32], %union.anon.146, i16, i16, %union.anon.147, %struct.refcount_struct, [0 x i32], %union.anon.148 }
%union.anon.137 = type { i64 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { i32 }
%union.anon.142 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { %struct.hlist_node }
%union.anon.147 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.148 = type { i32 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.192, %struct.anon.193, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.149, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.150, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.151, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.149 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.150 = type { ptr }
%union.anon.151 = type { ptr }
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.23 }
%union.anon.23 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.192 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.193 = type { i32, i32, i32, i32 }
%struct.tcp_info = type { i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.dccp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, ptr, i32, i32, i16, i16, i48, i64, i48, i32, %struct.list_head, ptr, ptr, ptr, %struct.dccp_options_received, i8, i32, i8, %struct.tasklet_struct, %struct.timer_list }
%struct.dccp_options_received = type { i48, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.194, i32 }
%union.anon.194 = type { ptr }
%struct.ccid_operations = type { i8, i32, ptr, ptr, ptr, [32 x i8], [32 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@dccp_diag_handler = internal constant { %struct.inet_diag_handler, [36 x i8] } { %struct.inet_diag_handler { ptr @dccp_diag_dump, ptr @dccp_diag_dump_one, ptr @dccp_diag_get_info, ptr null, ptr null, ptr null, i16 33, i16 232 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_dccp_diag__593_78_dccp_diag_init6 = internal global ptr @dccp_diag_init, section ".initcall6.init", align 4
@__exitcall_dccp_diag_fini = internal global ptr @dccp_diag_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file594 = internal constant [34 x i8] c"dccp_diag.file=net/dccp/dccp_diag\00", section ".modinfo", align 1
@__UNIQUE_ID_license595 = internal constant [22 x i8] c"dccp_diag.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author596 = internal constant [62 x i8] c"dccp_diag.author=Arnaldo Carvalho de Melo <acme@mandriva.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description597 = internal constant [45 x i8] c"dccp_diag.description=DCCP inet_diag handler\00", section ".modinfo", align 1
@__UNIQUE_ID_alias598 = internal constant [44 x i8] c"dccp_diag.alias=net-pf-16-proto-4-type-2-33\00", section ".modinfo", align 1
@dccp_hashinfo = external dso_local global %struct.inet_hashinfo, align 128
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"dccp_diag_handler\00", align 1
@___asan_gen_.2 = private constant [19 x i8] c"../net/dccp/diag.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 60, i32 39 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias598, ptr @__UNIQUE_ID_author596, ptr @__UNIQUE_ID_description597, ptr @__UNIQUE_ID_file594, ptr @__UNIQUE_ID_license595, ptr @__exitcall_dccp_diag_fini, ptr @__initcall__kmod_dccp_diag__593_78_dccp_diag_init6, ptr @dccp_diag_fini, ptr @dccp_diag_handler], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_diag_handler to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dccp_diag_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @inet_diag_unregister(ptr noundef nonnull @dccp_diag_handler) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_diag_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_diag_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet_diag_register(ptr noundef nonnull @dccp_diag_handler) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dccp_diag_dump(ptr noundef %skb, ptr noundef %cb, ptr noundef %r) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @inet_diag_dump_icsk(ptr noundef nonnull @dccp_hashinfo, ptr noundef %skb, ptr noundef %cb, ptr noundef %r) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dccp_diag_dump_one(ptr noundef %cb, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet_diag_dump_one_icsk(ptr noundef nonnull @dccp_hashinfo, ptr noundef %cb, ptr noundef %req) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dccp_diag_get_info(ptr noundef %sk, ptr nocapture noundef writeonly %r, ptr noundef %_info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %idiag_wqueue = getelementptr inbounds %struct.inet_diag_msg, ptr %r, i32 0, i32 7
  %0 = ptrtoint ptr %idiag_wqueue to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %idiag_wqueue, align 4
  %idiag_rqueue = getelementptr inbounds %struct.inet_diag_msg, ptr %r, i32 0, i32 6
  %1 = ptrtoint ptr %idiag_rqueue to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %idiag_rqueue, align 4
  %cmp.not = icmp eq ptr %_info, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = call ptr @memset(ptr %_info, i32 0, i32 232)
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i, align 2
  %5 = ptrtoint ptr %_info to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %_info, align 8
  %icsk_retransmits.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 18
  %6 = ptrtoint ptr %icsk_retransmits.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %icsk_retransmits.i, align 1
  %tcpi_retransmits.i = getelementptr inbounds %struct.tcp_info, ptr %_info, i32 0, i32 2
  %8 = ptrtoint ptr %tcpi_retransmits.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %tcpi_retransmits.i, align 2
  %icsk_probes_out.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 22
  %9 = ptrtoint ptr %icsk_probes_out.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %icsk_probes_out.i, align 1
  %tcpi_probes.i = getelementptr inbounds %struct.tcp_info, ptr %_info, i32 0, i32 3
  %11 = ptrtoint ptr %tcpi_probes.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tcpi_probes.i, align 1
  %icsk_backoff.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 20
  %12 = ptrtoint ptr %icsk_backoff.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %icsk_backoff.i, align 1
  %tcpi_backoff.i = getelementptr inbounds %struct.tcp_info, ptr %_info, i32 0, i32 4
  %14 = ptrtoint ptr %tcpi_backoff.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tcpi_backoff.i, align 4
  %icsk_pmtu_cookie.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 9
  %15 = ptrtoint ptr %icsk_pmtu_cookie.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %icsk_pmtu_cookie.i, align 8
  %tcpi_pmtu.i = getelementptr inbounds %struct.tcp_info, ptr %_info, i32 0, i32 20
  %17 = ptrtoint ptr %tcpi_pmtu.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tcpi_pmtu.i, align 4
  %dccps_hc_rx_ackvec.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 23
  %18 = ptrtoint ptr %dccps_hc_rx_ackvec.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dccps_hc_rx_ackvec.i, align 4
  %cmp.not.i = icmp eq ptr %19, null
  br i1 %cmp.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %tcpi_options.i = getelementptr inbounds %struct.tcp_info, ptr %_info, i32 0, i32 5
  %20 = ptrtoint ptr %tcpi_options.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tcpi_options.i, align 1
  %22 = or i8 %21, 2
  store i8 %22, ptr %tcpi_options.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %dccps_hc_rx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 24
  %23 = ptrtoint ptr %dccps_hc_rx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dccps_hc_rx_ccid.i, align 8
  %cmp3.not.i = icmp eq ptr %24, null
  br i1 %cmp3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %ccid_hc_rx_get_info.i.i = getelementptr inbounds %struct.ccid_operations, ptr %26, i32 0, i32 20
  %27 = ptrtoint ptr %ccid_hc_rx_get_info.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ccid_hc_rx_get_info.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %28, null
  br i1 %cmp.not.i.i, label %if.then5.i.if.end7.i_crit_edge, label %if.then.i.i

if.then5.i.if.end7.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7.i

if.then.i.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %28(ptr noundef %sk, ptr noundef nonnull %_info) #3
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.i.i, %if.then5.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %dccps_hc_tx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %29 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %cmp8.not.i = icmp eq ptr %30, null
  br i1 %cmp8.not.i, label %if.end7.i.if.end_crit_edge, label %if.then10.i

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then10.i:                                      ; preds = %if.end7.i
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %ccid_hc_tx_get_info.i.i = getelementptr inbounds %struct.ccid_operations, ptr %32, i32 0, i32 21
  %33 = ptrtoint ptr %ccid_hc_tx_get_info.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ccid_hc_tx_get_info.i.i, align 4
  %cmp.not.i33.i = icmp eq ptr %34, null
  br i1 %cmp.not.i33.i, label %if.then10.i.if.end_crit_edge, label %if.then.i34.i

if.then10.i.if.end_crit_edge:                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then.i34.i:                                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %34(ptr noundef %sk, ptr noundef nonnull %_info) #3
  br label %if.end

if.end:                                           ; preds = %if.then.i34.i, %if.then10.i.if.end_crit_edge, %if.end7.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_diag_dump_icsk(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_diag_dump_one_icsk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_diag_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__initcall__kmod_dccp_diag__593_78_dccp_diag_init6, !1, !"__initcall__kmod_dccp_diag__593_78_dccp_diag_init6", i1 false, i1 false}
!1 = !{!"../net/dccp/diag.c", i32 78, i32 1}
!2 = !{ptr @__exitcall_dccp_diag_fini, !3, !"__exitcall_dccp_diag_fini", i1 false, i1 false}
!3 = !{!"../net/dccp/diag.c", i32 79, i32 1}
!4 = !{ptr @__UNIQUE_ID_file594, !5, !"__UNIQUE_ID_file594", i1 false, i1 false}
!5 = !{!"../net/dccp/diag.c", i32 81, i32 1}
!6 = !{ptr @__UNIQUE_ID_license595, !5, !"__UNIQUE_ID_license595", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author596, !8, !"__UNIQUE_ID_author596", i1 false, i1 false}
!8 = !{!"../net/dccp/diag.c", i32 82, i32 1}
!9 = !{ptr @__UNIQUE_ID_description597, !10, !"__UNIQUE_ID_description597", i1 false, i1 false}
!10 = !{!"../net/dccp/diag.c", i32 83, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias598, !12, !"__UNIQUE_ID_alias598", i1 false, i1 false}
!12 = !{!"../net/dccp/diag.c", i32 84, i32 1}
!13 = !{ptr @dccp_diag_handler, !14, !"dccp_diag_handler", i1 false, i1 false}
!14 = !{!"../net/dccp/diag.c", i32 60, i32 39}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
