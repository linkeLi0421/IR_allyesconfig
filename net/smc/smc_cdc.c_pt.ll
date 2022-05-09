; ModuleID = '/llk/IR_all_yes/net/smc/smc_cdc.c_pt.bc'
source_filename = "../net/smc/smc_cdc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smc_wr_rx_handler = type { %struct.hlist_node, ptr, i8 }
%struct.hlist_node = type { ptr, ptr }
%struct.smc_connection = type { %struct.rb_node, ptr, ptr, i32, i8, i32, %struct.atomic_t, i32, ptr, ptr, i32, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %union.smc_host_cursor, %struct.atomic_t, i16, i16, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.delayed_work, i32, %struct.smc_host_cdc_msg, %union.smc_host_cursor, %union.smc_host_cursor, i32, i8, i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.work_struct, %struct.work_struct, %struct.tasklet_struct, i8, i64, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.smc_host_cdc_msg = type { %struct.smc_wr_rx_hdr, i8, i16, i32, %union.smc_host_cursor, %union.smc_host_cursor, %struct.smc_cdc_producer_flags, %struct.smc_cdc_conn_state_flags, [18 x i8] }
%struct.smc_wr_rx_hdr = type { %union.anon.179 }
%union.anon.179 = type { i8 }
%struct.smc_cdc_producer_flags = type { i8 }
%struct.smc_cdc_conn_state_flags = type { i8 }
%union.smc_host_cursor = type { %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.174, i32 }
%union.anon.174 = type { ptr }
%struct.smc_cdc_tx_pend = type { ptr, %union.smc_host_cursor, %union.smc_host_cursor, i16 }
%struct.anon.181 = type { i16, i16, i32 }
%struct.smc_buf_desc = type { %struct.list_head, ptr, ptr, i32, i32, %union.anon.176 }
%union.anon.176 = type { %struct.anon.178, [40 x i8] }
%struct.anon.178 = type { i16, i64, i32 }
%struct.smc_cdc_msg = type { %struct.smc_wr_rx_hdr, i8, i16, i32, %union.smc_cdc_cursor, %union.smc_cdc_cursor, %struct.smc_cdc_producer_flags, %struct.smc_cdc_conn_state_flags, [18 x i8] }
%union.smc_cdc_cursor = type { %struct.atomic64_t }
%struct.anon.182 = type { i16, i16, i32 }
%struct.smc_link_group = type { %struct.list_head, %struct.rb_root, %struct.rwlock_t, i32, i16, [16 x %struct.list_head], %struct.mutex, [16 x %struct.list_head], %struct.mutex, [4 x i8], %struct.delayed_work, %struct.work_struct, ptr, i8, %struct.refcount_struct, i8, i8, [32 x i8], i8, i8, [32 x i8], %union.anon.1 }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { i32, [3 x %struct.smc_link], ptr, ptr, [8 x i8], [255 x [3 x %struct.smc_rtoken]], [8 x i32], i8, i32, [17 x i8], %struct.list_head, %struct.spinlock, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.smc_llc_flow, %struct.smc_llc_flow, ptr, %struct.spinlock, i32, i32, [6 x i8], i8, i32, ptr }
%struct.smc_link = type { ptr, i8, ptr, ptr, %struct.ib_qp_attr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, ptr, ptr, ptr, i32, i32, i64, i32, i32, %struct.ib_reg_wr, %struct.wait_queue_head, %struct.atomic_t, i32, [16 x i8], i8, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, [4 x i8], [4 x i8], i8, i8, i8, %struct.refcount_struct, ptr, %struct.work_struct, [64 x i8], i32, i32, %struct.delayed_work, %struct.completion, i32, %struct.atomic_t }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.165 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.160 }
%struct.anon.160 = type { i64, i64 }
%union.anon.165 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.161, ptr, i32, i32, i32, %union.anon.162 }
%union.anon.161 = type { i64 }
%union.anon.162 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.smc_rtoken = type { i64, i32 }
%struct.smc_llc_flow = type { i32, ptr }
%struct.smcd_cdc_msg = type { %struct.smc_wr_rx_hdr, [7 x i8], %union.smcd_cdc_cursor, %union.smcd_cdc_cursor, [8 x i8] }
%union.smcd_cdc_cursor = type { %struct.atomic64_t }
%struct.anon.183 = type <{ i16, i32, %struct.smc_cdc_producer_flags, %struct.smc_cdc_conn_state_flags }>
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.sock_common = type { %union.anon.42, %union.anon.44, %union.anon.45, i16, i8, i8, i32, %union.anon.47, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.74, [0 x i32], %union.anon.75, i16, i16, %union.anon.76, %struct.refcount_struct, [0 x i32], %union.anon.77 }
%union.anon.42 = type { i64 }
%union.anon.44 = type { i32 }
%union.anon.45 = type { i32 }
%union.anon.47 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.73 }
%union.anon.73 = type { [4 x i32] }
%union.anon.74 = type { i32 }
%union.anon.75 = type { %struct.hlist_node }
%union.anon.76 = type { i32 }
%union.anon.77 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.82, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.83, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.84, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.82 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.83 = type { ptr }
%union.anon.84 = type { ptr }
%struct.sk_buff_head = type { %union.anon.80, i32, %struct.spinlock }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.smc_sock = type { %struct.sock, ptr, ptr, ptr, ptr, ptr, %struct.smc_connection, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.spinlock, i8, i32, i32, i32, i8, %struct.mutex }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.ib_wc = type { %union.anon.139, i32, i32, i32, i32, ptr, %union.anon.140, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.139 = type { i64 }
%union.anon.140 = type { i32 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/smc/smc_cdc.c\00", [46 x i8] zeroinitializer }, align 32
@smc_cdc_rx_handlers = internal global { [2 x %struct.smc_wr_rx_handler], [32 x i8] } { [2 x %struct.smc_wr_rx_handler] [%struct.smc_wr_rx_handler { %struct.hlist_node zeroinitializer, ptr @smc_cdc_rx_handler, i8 -2 }, %struct.smc_wr_rx_handler zeroinitializer], [32 x i8] zeroinitializer }, align 32
@smc_close_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 217, i32 2 }
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"smc_cdc_rx_handlers\00", align 1
@___asan_gen_.5 = private constant [21 x i8] c"../net/smc/smc_cdc.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 455, i32 33 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @smc_cdc_rx_handlers], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_cdc_rx_handlers to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_cdc_get_free_slot(ptr nocapture noundef readonly %conn, ptr noundef %link, ptr noundef %wr_buf, ptr noundef %wr_rdma_buf, ptr noundef %pend) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smc_wr_tx_get_free_slot(ptr noundef %link, ptr noundef nonnull @smc_cdc_tx_handler, ptr noundef %wr_buf, ptr noundef %wr_rdma_buf, ptr noundef %pend) #7
  %killed = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 39
  %0 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %killed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @smc_wr_tx_put_slot(ptr noundef %link, ptr noundef %pend) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %rc.0 = phi i32 [ %call, %entry.if.end4_crit_edge ], [ -32, %if.then2 ], [ -32, %if.then.if.end4_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_wr_tx_get_free_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_cdc_tx_handler(ptr noundef %pnd_snd, ptr nocapture noundef readnone %link, i32 noundef %wc_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pnd_snd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnd_snd, align 8
  %sk_lock = getelementptr i8, ptr %1, i32 -860
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wc_status)
  %tobool.not = icmp eq i32 %wc_status, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %pnd_snd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pnd_snd, align 8
  %tx_curs_fin = getelementptr inbounds %struct.smc_connection, ptr %3, i32 0, i32 16
  %cursor = getelementptr inbounds %struct.smc_cdc_tx_pend, ptr %pnd_snd, i32 0, i32 1
  %wrap.i = getelementptr inbounds %struct.anon.181, ptr %tx_curs_fin, i32 0, i32 1
  %4 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wrap.i, align 2
  %wrap1.i = getelementptr inbounds %struct.anon.181, ptr %cursor, i32 0, i32 1
  %6 = ptrtoint ptr %wrap1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wrap1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp.not.i = icmp eq i16 %5, %7
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %sndbuf_desc = getelementptr inbounds %struct.smc_connection, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sndbuf_desc, align 8
  %len = getelementptr inbounds %struct.smc_buf_desc, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 8
  %count.i = getelementptr inbounds %struct.anon.181, ptr %tx_curs_fin, i32 0, i32 2
  %12 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count.i, align 4
  %sub.i = sub i32 %11, %13
  %count4.i = getelementptr inbounds %struct.anon.181, ptr %cursor, i32 0, i32 2
  %14 = ptrtoint ptr %count4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count4.i, align 4
  %add.i = add i32 %sub.i, %15
  br label %smc_curs_diff.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %count7.i = getelementptr inbounds %struct.anon.181, ptr %cursor, i32 0, i32 2
  %16 = ptrtoint ptr %count7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count7.i, align 4
  %count8.i = getelementptr inbounds %struct.anon.181, ptr %tx_curs_fin, i32 0, i32 2
  %18 = ptrtoint ptr %count8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count8.i, align 4
  %sub9.i = sub i32 %17, %19
  br label %smc_curs_diff.exit

smc_curs_diff.exit:                               ; preds = %if.end.i, %if.then.i
  %sub9.sink.i = phi i32 [ %sub9.i, %if.end.i ], [ %add.i, %if.then.i ]
  %20 = tail call i32 @llvm.smax.i32(i32 %sub9.sink.i, i32 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !13
  %21 = ptrtoint ptr %pnd_snd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pnd_snd, align 8
  %sndbuf_space = getelementptr inbounds %struct.smc_connection, ptr %22, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sndbuf_space, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %sndbuf_space, i32 1, i32 3, i32 1) #7
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sndbuf_space, ptr %sndbuf_space, i32 %20, ptr elementtype(i32) %sndbuf_space) #7, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !15
  %tx_curs_fin14 = getelementptr inbounds %struct.smc_connection, ptr %1, i32 0, i32 16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cursor, i32 noundef 8) #7
  %call.i.i78 = tail call i64 @generic_atomic64_read(ptr noundef %cursor) #7
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_curs_fin14, i32 noundef 8) #7
  tail call void @generic_atomic64_set(ptr noundef %tx_curs_fin14, i64 noundef %call.i.i78) #7
  %local_tx_ctrl_fin = getelementptr inbounds %struct.smc_connection, ptr %1, i32 0, i32 13
  %p_cursor = getelementptr inbounds %struct.smc_cdc_tx_pend, ptr %pnd_snd, i32 0, i32 2
  %call.i.i.i79 = tail call zeroext i1 @__kasan_check_read(ptr noundef %p_cursor, i32 noundef 8) #7
  %call.i.i80 = tail call i64 @generic_atomic64_read(ptr noundef %p_cursor) #7
  %call.i.i1.i81 = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_tx_ctrl_fin, i32 noundef 8) #7
  tail call void @generic_atomic64_set(ptr noundef %local_tx_ctrl_fin, i64 noundef %call.i.i80) #7
  %ctrl_seq = getelementptr inbounds %struct.smc_cdc_tx_pend, ptr %pnd_snd, i32 0, i32 3
  %24 = ptrtoint ptr %ctrl_seq to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ctrl_seq, align 8
  %tx_cdc_seq_fin = getelementptr inbounds %struct.smc_connection, ptr %1, i32 0, i32 19
  %26 = ptrtoint ptr %tx_cdc_seq_fin to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %tx_cdc_seq_fin, align 2
  br label %if.end

if.end:                                           ; preds = %smc_curs_diff.exit, %entry.if.end_crit_edge
  %cdc_pend_tx_wr = getelementptr inbounds %struct.smc_connection, ptr %1, i32 0, i32 21
  %call.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cdc_pend_tx_wr, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !16
  tail call void @llvm.prefetch.p0(ptr %cdc_pend_tx_wr, i32 1, i32 3, i32 1) #7
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cdc_pend_tx_wr, ptr %cdc_pend_tx_wr, i32 1, ptr elementtype(i32) %cdc_pend_tx_wr) #7, !srcloc !17
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !19
  %head.i.i = getelementptr inbounds %struct.smc_connection, ptr %1, i32 0, i32 22, i32 1
  %28 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.i.not = icmp eq ptr %29, %head.i.i
  br i1 %cmp.i.i.i.not, label %land.lhs.true.if.end22_crit_edge, label %if.then20, !prof !20

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %cdc_pend_tx_wq = getelementptr inbounds %struct.smc_connection, ptr %1, i32 0, i32 22
  tail call void @__wake_up(ptr noundef %cdc_pend_tx_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %land.lhs.true.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %call.i.i77 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cdc_pend_tx_wr, i32 noundef 4) #7
  %30 = ptrtoint ptr %cdc_pend_tx_wr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %cdc_pend_tx_wr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp = icmp slt i32 %31, 0
  br i1 %cmp, label %do.end40, label %if.end22.if.end46_crit_edge, !prof !21

if.end22.if.end46_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

do.end40:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef null) #7
  br label %if.end46

if.end46:                                         ; preds = %do.end40, %if.end22.if.end46_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 -984
  tail call void @smc_tx_sndbuf_nonfull(ptr noundef %add.ptr) #7
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_wr_tx_put_slot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_cdc_msg_send(ptr noundef %conn, ptr nocapture noundef writeonly %wr_buf, ptr noundef %pend) local_unnamed_addr #0 align 64 {
entry:
  %cfed = alloca %union.smc_host_cursor, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lnk = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 2
  %0 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnk, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cfed) #7
  %2 = ptrtoint ptr %cfed to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %cfed, align 8, !annotation !22
  %3 = ptrtoint ptr %pend to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %conn, ptr %pend, align 8
  %cursor.i = getelementptr inbounds %struct.smc_cdc_tx_pend, ptr %pend, i32 0, i32 1
  %tx_curs_sent.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 15
  %4 = ptrtoint ptr %tx_curs_sent.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tx_curs_sent.i, align 8
  %6 = ptrtoint ptr %cursor.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %cursor.i, align 8
  %p_cursor.i = getelementptr inbounds %struct.smc_cdc_tx_pend, ptr %pend, i32 0, i32 2
  %prod.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 4
  %7 = ptrtoint ptr %prod.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %prod.i, align 8
  %9 = ptrtoint ptr %p_cursor.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %p_cursor.i, align 8
  %tx_cdc_seq.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 18
  %10 = ptrtoint ptr %tx_cdc_seq.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tx_cdc_seq.i, align 4
  %ctrl_seq.i = getelementptr inbounds %struct.smc_cdc_tx_pend, ptr %pend, i32 0, i32 3
  %12 = ptrtoint ptr %ctrl_seq.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %ctrl_seq.i, align 8
  %13 = load i16, ptr %tx_cdc_seq.i, align 4
  %inc = add i16 %13, 1
  store i16 %inc, ptr %tx_cdc_seq.i, align 4
  %seqno = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 2
  %14 = ptrtoint ptr %seqno to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %inc, ptr %seqno, align 2
  %local_tx_ctrl.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12
  %15 = ptrtoint ptr %local_tx_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %local_tx_ctrl.i, align 8
  %17 = ptrtoint ptr %wr_buf to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %wr_buf, align 8
  %len.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 1
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %len.i, align 1
  %len2.i = getelementptr inbounds %struct.smc_cdc_msg, ptr %wr_buf, i32 0, i32 1
  %20 = ptrtoint ptr %len2.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %len2.i, align 1
  %21 = load i16, ptr %seqno, align 2
  %seqno3.i = getelementptr inbounds %struct.smc_cdc_msg, ptr %wr_buf, i32 0, i32 2
  %22 = ptrtoint ptr %seqno3.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %seqno3.i, align 2
  %token.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 3
  %23 = ptrtoint ptr %token.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %token.i, align 4
  %token4.i = getelementptr inbounds %struct.smc_cdc_msg, ptr %wr_buf, i32 0, i32 3
  %25 = ptrtoint ptr %token4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %token4.i, align 4
  %prod.i26 = getelementptr inbounds %struct.smc_cdc_msg, ptr %wr_buf, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %prod.i, i32 noundef 8) #7
  %call.i.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %prod.i) #7
  %call.i.i1.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cfed, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef nonnull %cfed, i64 noundef %call.i.i.i.i) #7
  %count.i.i = getelementptr inbounds %struct.anon.181, ptr %cfed, i32 0, i32 2
  %26 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count.i.i, align 4
  %count1.i.i = getelementptr inbounds %struct.anon.182, ptr %prod.i26, i32 0, i32 2
  %28 = ptrtoint ptr %count1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %count1.i.i, align 4
  %wrap.i.i = getelementptr inbounds %struct.anon.181, ptr %cfed, i32 0, i32 1
  %29 = ptrtoint ptr %wrap.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %wrap.i.i, align 2
  %wrap2.i.i = getelementptr inbounds %struct.anon.182, ptr %prod.i26, i32 0, i32 1
  %31 = ptrtoint ptr %wrap2.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %wrap2.i.i, align 2
  %cons.i = getelementptr inbounds %struct.smc_cdc_msg, ptr %wr_buf, i32 0, i32 5
  %cons6.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 5
  %call.i.i.i.i26.i = call zeroext i1 @__kasan_check_read(ptr noundef %cons6.i, i32 noundef 8) #7
  %call.i.i.i27.i = call i64 @generic_atomic64_read(ptr noundef %cons6.i) #7
  %call.i.i1.i.i28.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cfed, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef nonnull %cfed, i64 noundef %call.i.i.i27.i) #7
  %32 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count.i.i, align 4
  %count1.i30.i = getelementptr inbounds %struct.anon.182, ptr %cons.i, i32 0, i32 2
  %34 = ptrtoint ptr %count1.i30.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %count1.i30.i, align 4
  %35 = ptrtoint ptr %wrap.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %wrap.i.i, align 2
  %wrap2.i32.i = getelementptr inbounds %struct.anon.182, ptr %cons.i, i32 0, i32 1
  %37 = ptrtoint ptr %wrap2.i32.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %wrap2.i32.i, align 2
  %prod_flags.i = getelementptr inbounds %struct.smc_cdc_msg, ptr %wr_buf, i32 0, i32 6
  %prod_flags7.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 6
  %38 = ptrtoint ptr %prod_flags7.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %prod_flags7.i, align 8
  %40 = ptrtoint ptr %prod_flags.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %prod_flags.i, align 8
  %conn_state_flags.i = getelementptr inbounds %struct.smc_cdc_msg, ptr %wr_buf, i32 0, i32 7
  %conn_state_flags8.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 7
  %41 = ptrtoint ptr %conn_state_flags8.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %conn_state_flags8.i, align 1
  %43 = ptrtoint ptr %conn_state_flags.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %conn_state_flags.i, align 1
  %cdc_pend_tx_wr = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 21
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cdc_pend_tx_wr, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %cdc_pend_tx_wr, i32 1, i32 3, i32 1) #7
  %44 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cdc_pend_tx_wr, ptr %cdc_pend_tx_wr, i32 1, ptr elementtype(i32) %cdc_pend_tx_wr) #7, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !23
  %call = call i32 @smc_wr_tx_send(ptr noundef %1, ptr noundef %pend) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_curs_confirmed = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 26
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cfed, i32 noundef 8) #7
  %call.i.i27 = call i64 @generic_atomic64_read(ptr noundef nonnull %cfed) #7
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef %rx_curs_confirmed, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef %rx_curs_confirmed, i64 noundef %call.i.i27) #7
  %prod_flags = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 25, i32 6
  %45 = ptrtoint ptr %prod_flags to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %prod_flags, align 8
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %prod_flags, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %tx_cdc_seq.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %tx_cdc_seq.i, align 4
  %dec = add i16 %47, -1
  store i16 %dec, ptr %tx_cdc_seq.i, align 4
  %48 = ptrtoint ptr %seqno to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %dec, ptr %seqno, align 2
  %call.i.i25 = call zeroext i1 @__kasan_check_write(ptr noundef %cdc_pend_tx_wr, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %cdc_pend_tx_wr, i32 1, i32 3, i32 1) #7
  %49 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cdc_pend_tx_wr, ptr %cdc_pend_tx_wr, i32 1, ptr elementtype(i32) %cdc_pend_tx_wr) #7, !srcloc !24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cfed) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_wr_tx_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smcr_cdc_msg_send_validation(ptr noundef %conn, ptr noundef %pend, ptr nocapture noundef %wr_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %local_tx_ctrl = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12
  %lnk = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 2
  %0 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnk, align 8
  %2 = ptrtoint ptr %local_tx_ctrl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %local_tx_ctrl, align 8
  %4 = ptrtoint ptr %wr_buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %wr_buf, align 8
  %len = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %len, align 1
  %len2 = getelementptr inbounds %struct.smc_cdc_msg, ptr %wr_buf, i32 0, i32 1
  %7 = ptrtoint ptr %len2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %len2, align 1
  %tx_cdc_seq_fin = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 19
  %8 = ptrtoint ptr %tx_cdc_seq_fin to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tx_cdc_seq_fin, align 2
  %seqno = getelementptr inbounds %struct.smc_cdc_msg, ptr %wr_buf, i32 0, i32 2
  %10 = ptrtoint ptr %seqno to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %seqno, align 2
  %token = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 3
  %11 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %token, align 4
  %token3 = getelementptr inbounds %struct.smc_cdc_msg, ptr %wr_buf, i32 0, i32 3
  %13 = ptrtoint ptr %token3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %token3, align 4
  %prod_flags = getelementptr inbounds %struct.smc_cdc_msg, ptr %wr_buf, i32 0, i32 6
  %14 = ptrtoint ptr %prod_flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %prod_flags, align 8
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %prod_flags, align 8
  %15 = ptrtoint ptr %pend to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %conn, ptr %pend, align 8
  %cursor.i = getelementptr inbounds %struct.smc_cdc_tx_pend, ptr %pend, i32 0, i32 1
  %tx_curs_sent.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 15
  %16 = ptrtoint ptr %tx_curs_sent.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tx_curs_sent.i, align 8
  %18 = ptrtoint ptr %cursor.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %cursor.i, align 8
  %p_cursor.i = getelementptr inbounds %struct.smc_cdc_tx_pend, ptr %pend, i32 0, i32 2
  %prod.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 4
  %19 = ptrtoint ptr %prod.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %prod.i, align 8
  %21 = ptrtoint ptr %p_cursor.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %p_cursor.i, align 8
  %tx_cdc_seq.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 18
  %22 = ptrtoint ptr %tx_cdc_seq.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %tx_cdc_seq.i, align 4
  %ctrl_seq.i = getelementptr inbounds %struct.smc_cdc_tx_pend, ptr %pend, i32 0, i32 3
  %24 = ptrtoint ptr %ctrl_seq.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %ctrl_seq.i, align 8
  %cdc_pend_tx_wr = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cdc_pend_tx_wr, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %cdc_pend_tx_wr, i32 1, i32 3, i32 1) #7
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cdc_pend_tx_wr, ptr %cdc_pend_tx_wr, i32 1, ptr elementtype(i32) %cdc_pend_tx_wr) #7, !srcloc !14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !25
  %call = tail call i32 @smc_wr_tx_send(ptr noundef %1, ptr noundef %pend) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !20

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cdc_pend_tx_wr, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %cdc_pend_tx_wr, i32 1, i32 3, i32 1) #7
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cdc_pend_tx_wr, ptr %cdc_pend_tx_wr, i32 1, ptr elementtype(i32) %cdc_pend_tx_wr) #7, !srcloc !24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_cdc_get_slot_and_msg_send(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  %pend.i = alloca ptr, align 4
  %wr_buf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 1
  %0 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %smc_conn_lgr_valid.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

smc_conn_lgr_valid.exit:                          ; preds = %entry
  %alert_token_local.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 3
  %2 = ptrtoint ptr %alert_token_local.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alert_token_local.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.i.not = icmp eq i32 %3, 0
  br i1 %tobool1.i.not, label %smc_conn_lgr_valid.exit.cleanup_crit_edge, label %lor.lhs.false

smc_conn_lgr_valid.exit.cleanup_crit_edge:        ; preds = %smc_conn_lgr_valid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %smc_conn_lgr_valid.exit
  %is_smcd = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %is_smcd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_smcd, align 8, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %peer_shutdown = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %peer_shutdown to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %peer_shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %send_lock = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 20
  tail call void @_raw_spin_lock_bh(ptr noundef %send_lock) #7
  %call7 = tail call i32 @smcd_cdc_msg_send(ptr noundef %conn)
  tail call void @_raw_spin_unlock_bh(ptr noundef %send_lock) #7
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pend.i) #7
  %7 = ptrtoint ptr %pend.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %pend.i, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_buf.i) #7
  %8 = ptrtoint ptr %wr_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %wr_buf.i, align 4, !annotation !22
  %lnk.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 2
  %killed.i.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 39
  %send_lock.i = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 20
  %9 = ptrtoint ptr %lnk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lnk.i, align 8
  %state.i.i.i.i = getelementptr inbounds %struct.smc_link, ptr %10, i32 0, i32 54
  %11 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %switch.i.i.i.i = icmp ugt i32 %12, 1
  br i1 %switch.i.i.i.i, label %smc_link_sendable.exit.i.i, label %if.else.smcr_cdc_get_slot_and_msg_send.exit_crit_edge

if.else.smcr_cdc_get_slot_and_msg_send.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %smcr_cdc_get_slot_and_msg_send.exit

smc_link_sendable.exit.i.i:                       ; preds = %if.else
  %cur_qp_state.i.i.i = getelementptr inbounds %struct.smc_link, ptr %10, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %cur_qp_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_qp_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i.i.i = icmp eq i32 %14, 3
  br i1 %cmp.i.i.i, label %if.end.i, label %smc_link_sendable.exit.i.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge

smc_link_sendable.exit.i.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge: ; preds = %smc_link_sendable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smcr_cdc_get_slot_and_msg_send.exit

if.end.i:                                         ; preds = %smc_link_sendable.exit.i.i
  %wr_tx_refcnt.i.i = getelementptr inbounds %struct.smc_link, ptr %10, i32 0, i32 21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i.i, i32 1, i32 3, i32 1) #7
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i.i, ptr %wr_tx_refcnt.i.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i.i) #7, !srcloc !14
  %call.i.i = call i32 @smc_wr_tx_get_free_slot(ptr noundef %10, ptr noundef nonnull @smc_cdc_tx_handler, ptr noundef nonnull %wr_buf.i, ptr noundef null, ptr noundef nonnull %pend.i) #7
  %16 = ptrtoint ptr %killed.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i.i = load i8, ptr %killed.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %smc_cdc_get_free_slot.exit.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.1.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %.lcssa52.i = phi ptr [ %10, %if.end.i.if.then.i.i_crit_edge ], [ %23, %if.end.1.i.if.then.i.i_crit_edge ]
  %call.i.lcssa.i = phi i32 [ %call.i.i, %if.end.i.if.then.i.i_crit_edge ], [ %call.i.1.i, %if.end.1.i.if.then.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.lcssa.i, 0
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.then.i.i.put_out.i_crit_edge

if.then.i.i.put_out.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_out.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i.i = call i32 @smc_wr_tx_put_slot(ptr noundef %.lcssa52.i, ptr noundef nonnull %pend.i) #7
  br label %put_out.i

smc_cdc_get_free_slot.exit.i:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i18 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i18, label %if.end4.i, label %smc_cdc_get_free_slot.exit.i.put_out.i_crit_edge

smc_cdc_get_free_slot.exit.i.put_out.i_crit_edge: ; preds = %smc_cdc_get_free_slot.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_out.i

if.end4.i:                                        ; preds = %smc_cdc_get_free_slot.exit.i
  call void @_raw_spin_lock_bh(ptr noundef %send_lock.i) #7
  %17 = ptrtoint ptr %lnk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lnk.i, align 8
  %cmp.not.i = icmp eq ptr %10, %18
  br i1 %cmp.not.i, label %if.end4.i.if.end12.i_crit_edge, label %if.then6.i

if.end4.i.if.end12.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @_raw_spin_unlock_bh(ptr noundef %send_lock.i) #7
  %19 = ptrtoint ptr %pend.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pend.i, align 4
  %call8.i = call i32 @smc_wr_tx_put_slot(ptr noundef %10, ptr noundef %20) #7
  %call.i.i.i32.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !16
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i.i, i32 1, i32 3, i32 1) #7
  %21 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i.i, ptr %wr_tx_refcnt.i.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i.i) #7, !srcloc !17
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i33.i, label %if.then6.i.smc_wr_tx_link_put.exit.i_crit_edge

if.then6.i.smc_wr_tx_link_put.exit.i_crit_edge:   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smc_wr_tx_link_put.exit.i

if.then.i33.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %wr_tx_wait.i.i = getelementptr inbounds %struct.smc_link, ptr %10, i32 0, i32 20
  call void @__wake_up(ptr noundef %wr_tx_wait.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  br label %smc_wr_tx_link_put.exit.i

smc_wr_tx_link_put.exit.i:                        ; preds = %if.then.i33.i, %if.then6.i.smc_wr_tx_link_put.exit.i_crit_edge
  %22 = ptrtoint ptr %lnk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lnk.i, align 8
  %state.i.i.i.1.i = getelementptr inbounds %struct.smc_link, ptr %23, i32 0, i32 54
  %24 = ptrtoint ptr %state.i.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.i.i.i.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %switch.i.i.i.1.i = icmp ugt i32 %25, 1
  br i1 %switch.i.i.i.1.i, label %smc_link_sendable.exit.i.1.i, label %smc_wr_tx_link_put.exit.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge

smc_wr_tx_link_put.exit.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge: ; preds = %smc_wr_tx_link_put.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smcr_cdc_get_slot_and_msg_send.exit

smc_link_sendable.exit.i.1.i:                     ; preds = %smc_wr_tx_link_put.exit.i
  %cur_qp_state.i.i.1.i = getelementptr inbounds %struct.smc_link, ptr %23, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %cur_qp_state.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cur_qp_state.i.i.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp.i.i.1.i = icmp eq i32 %27, 3
  br i1 %cmp.i.i.1.i, label %if.end.1.i, label %smc_link_sendable.exit.i.1.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge

smc_link_sendable.exit.i.1.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge: ; preds = %smc_link_sendable.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smcr_cdc_get_slot_and_msg_send.exit

if.end.1.i:                                       ; preds = %smc_link_sendable.exit.i.1.i
  %wr_tx_refcnt.i.1.i = getelementptr inbounds %struct.smc_link, ptr %23, i32 0, i32 21
  %call.i.i.i.1.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i.1.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i.1.i, i32 1, i32 3, i32 1) #7
  %28 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i.1.i, ptr %wr_tx_refcnt.i.1.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i.1.i) #7, !srcloc !14
  %call.i.1.i = call i32 @smc_wr_tx_get_free_slot(ptr noundef %23, ptr noundef nonnull @smc_cdc_tx_handler, ptr noundef nonnull %wr_buf.i, ptr noundef null, ptr noundef nonnull %pend.i) #7
  %29 = ptrtoint ptr %killed.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i.1.i = load i8, ptr %killed.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.1.i)
  %tobool.not.i.1.i = icmp sgt i8 %bf.load.i.1.i, -1
  br i1 %tobool.not.i.1.i, label %smc_cdc_get_free_slot.exit.1.i, label %if.end.1.i.if.then.i.i_crit_edge

if.end.1.i.if.then.i.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

smc_cdc_get_free_slot.exit.1.i:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.1.i, label %if.end4.1.i, label %smc_cdc_get_free_slot.exit.1.i.put_out.i_crit_edge

smc_cdc_get_free_slot.exit.1.i.put_out.i_crit_edge: ; preds = %smc_cdc_get_free_slot.exit.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_out.i

if.end4.1.i:                                      ; preds = %smc_cdc_get_free_slot.exit.1.i
  call void @_raw_spin_lock_bh(ptr noundef %send_lock.i) #7
  %30 = ptrtoint ptr %lnk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lnk.i, align 8
  %cmp.not.1.i = icmp eq ptr %23, %31
  br i1 %cmp.not.1.i, label %if.end4.1.i.if.end12.i_crit_edge, label %if.then6.1.i

if.end4.1.i.if.end12.i_crit_edge:                 ; preds = %if.end4.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then6.1.i:                                     ; preds = %if.end4.1.i
  call void @_raw_spin_unlock_bh(ptr noundef %send_lock.i) #7
  %32 = ptrtoint ptr %pend.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pend.i, align 4
  %call8.1.i = call i32 @smc_wr_tx_put_slot(ptr noundef %23, ptr noundef %33) #7
  %call.i.i.i32.1.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i.1.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !16
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i.1.i, i32 1, i32 3, i32 1) #7
  %34 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i.1.i, ptr %wr_tx_refcnt.i.1.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i.1.i) #7, !srcloc !17
  %asmresult.i.i.i.i.i.i.1.i = extractvalue { i32, i32 } %34, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.1.i)
  %cmp.i.i.i.1.i = icmp eq i32 %asmresult.i.i.i.i.i.i.1.i, 0
  br i1 %cmp.i.i.i.1.i, label %if.then6.1.i.cleanup.sink.split.i_crit_edge, label %if.then6.1.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge

if.then6.1.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge: ; preds = %if.then6.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smcr_cdc_get_slot_and_msg_send.exit

if.then6.1.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.then6.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end12.i:                                       ; preds = %if.end4.1.i.if.end12.i_crit_edge, %if.end4.i.if.end12.i_crit_edge
  %.lcssa54.i = phi ptr [ %10, %if.end4.i.if.end12.i_crit_edge ], [ %23, %if.end4.1.i.if.end12.i_crit_edge ]
  %35 = ptrtoint ptr %wr_buf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wr_buf.i, align 4
  %37 = ptrtoint ptr %pend.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pend.i, align 4
  %call13.i = call i32 @smc_cdc_msg_send(ptr noundef %conn, ptr noundef %36, ptr noundef %38) #7
  call void @_raw_spin_unlock_bh(ptr noundef %send_lock.i) #7
  br label %put_out.i

put_out.i:                                        ; preds = %if.end12.i, %smc_cdc_get_free_slot.exit.1.i.put_out.i_crit_edge, %smc_cdc_get_free_slot.exit.i.put_out.i_crit_edge, %if.then2.i.i, %if.then.i.i.put_out.i_crit_edge
  %39 = phi ptr [ %.lcssa54.i, %if.end12.i ], [ %.lcssa52.i, %if.then2.i.i ], [ %.lcssa52.i, %if.then.i.i.put_out.i_crit_edge ], [ %10, %smc_cdc_get_free_slot.exit.i.put_out.i_crit_edge ], [ %23, %smc_cdc_get_free_slot.exit.1.i.put_out.i_crit_edge ]
  %rc.0.i = phi i32 [ %call13.i, %if.end12.i ], [ -32, %if.then2.i.i ], [ -32, %if.then.i.i.put_out.i_crit_edge ], [ %call.i.i, %smc_cdc_get_free_slot.exit.i.put_out.i_crit_edge ], [ %call.i.1.i, %smc_cdc_get_free_slot.exit.1.i.put_out.i_crit_edge ]
  %wr_tx_refcnt.i35.i = getelementptr inbounds %struct.smc_link, ptr %39, i32 0, i32 21
  %call.i.i.i36.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt.i35.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !16
  call void @llvm.prefetch.p0(ptr %wr_tx_refcnt.i35.i, i32 1, i32 3, i32 1) #7
  %40 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_refcnt.i35.i, ptr %wr_tx_refcnt.i35.i, i32 1, ptr elementtype(i32) %wr_tx_refcnt.i35.i) #7, !srcloc !17
  %asmresult.i.i.i.i.i.i37.i = extractvalue { i32, i32 } %40, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i37.i)
  %cmp.i.i.i38.i = icmp eq i32 %asmresult.i.i.i.i.i.i37.i, 0
  br i1 %cmp.i.i.i38.i, label %put_out.i.cleanup.sink.split.i_crit_edge, label %put_out.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge

put_out.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge: ; preds = %put_out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smcr_cdc_get_slot_and_msg_send.exit

put_out.i.cleanup.sink.split.i_crit_edge:         ; preds = %put_out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %put_out.i.cleanup.sink.split.i_crit_edge, %if.then6.1.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %23, %if.then6.1.i.cleanup.sink.split.i_crit_edge ], [ %39, %put_out.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -67, %if.then6.1.i.cleanup.sink.split.i_crit_edge ], [ %rc.0.i, %put_out.i.cleanup.sink.split.i_crit_edge ]
  %wr_tx_wait.i.1.i = getelementptr inbounds %struct.smc_link, ptr %.sink.i, i32 0, i32 20
  call void @__wake_up(ptr noundef %wr_tx_wait.i.1.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  br label %smcr_cdc_get_slot_and_msg_send.exit

smcr_cdc_get_slot_and_msg_send.exit:              ; preds = %cleanup.sink.split.i, %put_out.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge, %if.then6.1.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge, %smc_link_sendable.exit.i.1.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge, %smc_wr_tx_link_put.exit.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge, %smc_link_sendable.exit.i.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge, %if.else.smcr_cdc_get_slot_and_msg_send.exit_crit_edge
  %retval.0.i = phi i32 [ %rc.0.i, %put_out.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge ], [ -67, %if.then6.1.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge ], [ -67, %smc_link_sendable.exit.i.1.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge ], [ -67, %smc_wr_tx_link_put.exit.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge ], [ -67, %smc_link_sendable.exit.i.i.smcr_cdc_get_slot_and_msg_send.exit_crit_edge ], [ -67, %if.else.smcr_cdc_get_slot_and_msg_send.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pend.i) #7
  br label %cleanup

cleanup:                                          ; preds = %smcr_cdc_get_slot_and_msg_send.exit, %if.then6, %land.lhs.true.cleanup_crit_edge, %smc_conn_lgr_valid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %land.lhs.true.cleanup_crit_edge ], [ -32, %smc_conn_lgr_valid.exit.cleanup_crit_edge ], [ %call7, %if.then6 ], [ %retval.0.i, %smcr_cdc_get_slot_and_msg_send.exit ], [ -32, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smcd_cdc_msg_send(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  %curs = alloca %union.smc_host_cursor, align 8
  %cdc = alloca %struct.smcd_cdc_msg, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %curs) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cdc) #7
  %0 = getelementptr inbounds %struct.smcd_cdc_msg, ptr %cdc, i32 0, i32 2
  %1 = getelementptr inbounds %struct.smcd_cdc_msg, ptr %cdc, i32 0, i32 3
  %2 = call ptr @memset(ptr %cdc, i32 0, i32 32)
  %3 = ptrtoint ptr %cdc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -2, ptr %cdc, align 8
  %prod = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %prod, i32 noundef 8) #7
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %prod) #7
  %4 = lshr i64 %call.i, 32
  %5 = trunc i64 %4 to i16
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %0, align 8
  %7 = trunc i64 %call.i to i32
  %count4 = getelementptr inbounds %struct.anon.183, ptr %0, i32 0, i32 1
  %8 = ptrtoint ptr %count4 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %count4, align 2
  %cons = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 5
  %call.i.i55 = tail call zeroext i1 @__kasan_check_read(ptr noundef %cons, i32 noundef 8) #7
  %call.i56 = tail call i64 @generic_atomic64_read(ptr noundef %cons) #7
  %9 = ptrtoint ptr %curs to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call.i56, ptr %curs, align 8
  %10 = lshr i64 %call.i56, 32
  %11 = trunc i64 %10 to i16
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %1, align 8
  %13 = trunc i64 %call.i56 to i32
  %count13 = getelementptr inbounds %struct.anon.183, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %count13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %count13, align 2
  %prod_flags = getelementptr inbounds %struct.anon.183, ptr %1, i32 0, i32 2
  %prod_flags16 = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 6
  %15 = ptrtoint ptr %prod_flags16 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %prod_flags16, align 8
  %17 = ptrtoint ptr %prod_flags to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %prod_flags, align 2
  %conn_state_flags = getelementptr inbounds %struct.anon.183, ptr %1, i32 0, i32 3
  %conn_state_flags19 = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 12, i32 7
  %18 = ptrtoint ptr %conn_state_flags19 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %conn_state_flags19, align 1
  %20 = ptrtoint ptr %conn_state_flags to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %conn_state_flags, align 1
  %call20 = call i32 @smcd_tx_ism_write(ptr noundef %conn, ptr noundef nonnull %cdc, i32 noundef 32, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %conn, i32 -984
  %rx_curs_confirmed = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 26
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %curs, i32 noundef 8) #7
  %call.i.i58 = call i64 @generic_atomic64_read(ptr noundef nonnull %curs) #7
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef %rx_curs_confirmed, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef %rx_curs_confirmed, i64 noundef %call.i.i58) #7
  %prod_flags21 = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 25, i32 6
  %21 = ptrtoint ptr %prod_flags21 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %prod_flags21, align 8
  %bf.clear = and i8 %bf.load, -17
  store i8 %bf.clear, ptr %prod_flags21, align 8
  %tx_curs_fin = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 16
  %tx_curs_sent = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 15
  %wrap.i = getelementptr inbounds %struct.anon.181, ptr %tx_curs_fin, i32 0, i32 1
  %22 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %wrap.i, align 2
  %wrap1.i = getelementptr inbounds %struct.anon.181, ptr %tx_curs_sent, i32 0, i32 1
  %24 = ptrtoint ptr %wrap1.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %wrap1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp.not.i = icmp eq i16 %23, %25
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sndbuf_desc = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 8
  %26 = ptrtoint ptr %sndbuf_desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sndbuf_desc, align 8
  %len = getelementptr inbounds %struct.smc_buf_desc, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 8
  %count.i = getelementptr inbounds %struct.anon.181, ptr %tx_curs_fin, i32 0, i32 2
  %30 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count.i, align 4
  %sub.i = sub i32 %29, %31
  %count4.i = getelementptr inbounds %struct.anon.181, ptr %tx_curs_sent, i32 0, i32 2
  %32 = ptrtoint ptr %count4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count4.i, align 4
  %add.i = add i32 %sub.i, %33
  br label %smc_curs_diff.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %count7.i = getelementptr inbounds %struct.anon.181, ptr %tx_curs_sent, i32 0, i32 2
  %34 = ptrtoint ptr %count7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count7.i, align 4
  %count8.i = getelementptr inbounds %struct.anon.181, ptr %tx_curs_fin, i32 0, i32 2
  %36 = ptrtoint ptr %count8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count8.i, align 4
  %sub9.i = sub i32 %35, %37
  br label %smc_curs_diff.exit

smc_curs_diff.exit:                               ; preds = %if.end.i, %if.then.i
  %sub9.sink.i = phi i32 [ %sub9.i, %if.end.i ], [ %add.i, %if.then.i ]
  %38 = call i32 @llvm.smax.i32(i32 %sub9.sink.i, i32 0) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  %sndbuf_space = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 17
  %call.i.i57 = call zeroext i1 @__kasan_check_write(ptr noundef %sndbuf_space, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %sndbuf_space, i32 1, i32 3, i32 1) #7
  %39 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sndbuf_space, ptr %sndbuf_space, i32 %38, ptr elementtype(i32) %sndbuf_space) #7, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !28
  %call.i.i.i59 = call zeroext i1 @__kasan_check_read(ptr noundef %tx_curs_sent, i32 noundef 8) #7
  %call.i.i60 = call i64 @generic_atomic64_read(ptr noundef %tx_curs_sent) #7
  %call.i.i1.i61 = call zeroext i1 @__kasan_check_write(ptr noundef %tx_curs_fin, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef %tx_curs_fin, i64 noundef %call.i.i60) #7
  call void @smc_tx_sndbuf_nonfull(ptr noundef %add.ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %smc_curs_diff.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cdc) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %curs) #7
  ret i32 %call20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_cdc_wait_pend_tx_wr(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 217) #7
  %cdc_pend_tx_wr = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cdc_pend_tx_wr, i32 noundef 4) #7
  %0 = ptrtoint ptr %cdc_pend_tx_wr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cdc_pend_tx_wr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %if.end

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %cdc_pend_tx_wq = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 22
  %call418 = call i32 @prepare_to_wait_event(ptr noundef %cdc_pend_tx_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %call.i.i1519 = call zeroext i1 @__kasan_check_read(ptr noundef %cdc_pend_tx_wr, i32 noundef 4) #7
  %3 = ptrtoint ptr %cdc_pend_tx_wr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %cdc_pend_tx_wr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not20 = icmp eq i32 %4, 0
  br i1 %tobool7.not20, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #7
  %call4 = call i32 @prepare_to_wait_event(ptr noundef %cdc_pend_tx_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %call.i.i15 = call zeroext i1 @__kasan_check_read(ptr noundef %cdc_pend_tx_wr, i32 noundef 4) #7
  %5 = ptrtoint ptr %cdc_pend_tx_wr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %cdc_pend_tx_wr, align 4
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %cdc_pend_tx_wq, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %do.end11

do.end11:                                         ; preds = %for.end, %entry.do.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smcd_tx_ism_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_tx_sndbuf_nonfull(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smcd_cdc_rx_init(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_tsklet = getelementptr inbounds %struct.smc_connection, ptr %conn, i32 0, i32 36
  tail call void @tasklet_setup(ptr noundef %rx_tsklet, ptr noundef nonnull @smcd_cdc_rx_tsklet) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smcd_cdc_rx_tsklet(ptr noundef %t) #0 align 64 {
entry:
  %cdc = alloca %struct.smcd_cdc_msg, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -520
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cdc) #7
  %0 = getelementptr inbounds %struct.smcd_cdc_msg, ptr %cdc, i32 0, i32 2
  %1 = getelementptr inbounds %struct.smcd_cdc_msg, ptr %cdc, i32 0, i32 3
  %tobool.not = icmp eq ptr %add.ptr, null
  %2 = call ptr @memset(ptr %cdc, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %killed = getelementptr i8, ptr %t, i32 40
  %3 = ptrtoint ptr %killed to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %killed, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %rmb_desc = getelementptr i8, ptr %t, i32 -476
  %4 = ptrtoint ptr %rmb_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmb_desc, align 4
  %cpu_addr = getelementptr inbounds %struct.smc_buf_desc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpu_addr, align 8
  %prod2 = getelementptr inbounds %struct.smcd_cdc_msg, ptr %7, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %prod2, i32 noundef 8) #7
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %prod2) #7
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef %0, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef %0, i64 noundef %call.i.i) #7
  %cons3 = getelementptr inbounds %struct.smcd_cdc_msg, ptr %7, i32 0, i32 3
  %call.i.i.i16 = call zeroext i1 @__kasan_check_read(ptr noundef %cons3, i32 noundef 8) #7
  %call.i.i17 = call i64 @generic_atomic64_read(ptr noundef %cons3) #7
  %call.i.i1.i18 = call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef %1, i64 noundef %call.i.i17) #7
  %add.ptr6 = getelementptr i8, ptr %t, i32 -1504
  call fastcc void @smc_cdc_msg_recv(ptr noundef %add.ptr6, ptr noundef nonnull %cdc)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cdc) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_cdc_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds ([2 x %struct.smc_wr_rx_handler], ptr @smc_cdc_rx_handlers, i32 0, i32 0, i32 1), align 4
  %tobool.not7 = icmp eq ptr %0, null
  br i1 %tobool.not7, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr %struct.smc_wr_rx_handler, ptr %handler.08, i32 1
  %handler1 = getelementptr %struct.smc_wr_rx_handler, ptr %handler.08, i32 1, i32 1
  %1 = ptrtoint ptr %handler1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %handler1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %handler.08 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ @smc_cdc_rx_handlers, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %handler.08 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %handler.08, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %handler.08, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pprev.i, align 4
  %call = tail call i32 @smc_wr_rx_register_handler(ptr noundef %handler.08) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %rc.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_wr_rx_register_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_cdc_msg_recv(ptr noundef %smc, ptr noundef %cdc) unnamed_addr #0 align 64 {
entry:
  %sent.i.i = alloca %union.smc_host_cursor, align 8
  %prep.i.i = alloca %union.smc_host_cursor, align 8
  %temp.i.i.i = alloca %union.smc_host_cursor, align 8
  %cons_old.i = alloca %union.smc_host_cursor, align 8
  %prod_old.i = alloca %union.smc_host_cursor, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #7, !srcloc !29
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !21

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !20

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #7
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %sk_lock = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cons_old.i) #7
  %2 = ptrtoint ptr %cons_old.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %cons_old.i, align 8, !annotation !22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prod_old.i) #7
  %3 = ptrtoint ptr %prod_old.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %prod_old.i, align 8, !annotation !22
  %conn1.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6
  %prod.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 25, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %prod.i, i32 noundef 8) #7
  %call.i.i174.i = tail call i64 @generic_atomic64_read(ptr noundef %prod.i) #7
  %call.i.i1.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %prod_old.i, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef nonnull %prod_old.i, i64 noundef %call.i.i174.i) #7
  %cons.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 25, i32 5
  %call.i.i.i175.i = call zeroext i1 @__kasan_check_read(ptr noundef %cons.i, i32 noundef 8) #7
  %call.i.i176.i = call i64 @generic_atomic64_read(ptr noundef %cons.i) #7
  %call.i.i1.i177.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cons_old.i, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef nonnull %cons_old.i, i64 noundef %call.i.i176.i) #7
  %lgr.i.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %lgr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lgr.i.i, align 4
  %is_smcd.i.i = getelementptr inbounds %struct.smc_link_group, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %is_smcd.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_smcd.i.i, align 8, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %temp.i.i.i) #7
  %8 = ptrtoint ptr %temp.i.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %temp.i.i.i, align 8, !annotation !22
  %prod.i.i.i = getelementptr inbounds %struct.smcd_cdc_msg, ptr %cdc, i32 0, i32 2
  %9 = ptrtoint ptr %prod.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %prod.i.i.i, align 8
  %wrap1.i.i.i = getelementptr inbounds %struct.anon.181, ptr %temp.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %wrap1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %wrap1.i.i.i, align 2
  %count.i.i.i = getelementptr inbounds %struct.anon.183, ptr %prod.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %count.i.i.i, align 2
  %count3.i.i.i = getelementptr inbounds %struct.anon.181, ptr %temp.i.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %count3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %count3.i.i.i, align 4
  %call.i.i.i.i.i.i10 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %temp.i.i.i, i32 noundef 8) #7
  %call.i.i.i.i.i = call i64 @generic_atomic64_read(ptr noundef nonnull %temp.i.i.i) #7
  %call.i.i1.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %prod.i, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef %prod.i, i64 noundef %call.i.i.i.i.i) #7
  %cons.i.i.i = getelementptr inbounds %struct.smcd_cdc_msg, ptr %cdc, i32 0, i32 3
  %15 = ptrtoint ptr %cons.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cons.i.i.i, align 8
  %17 = ptrtoint ptr %wrap1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %wrap1.i.i.i, align 2
  %count8.i.i.i = getelementptr inbounds %struct.anon.183, ptr %cons.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %count8.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %count8.i.i.i, align 2
  %20 = ptrtoint ptr %count3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %count3.i.i.i, align 4
  %call.i.i.i1.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %temp.i.i.i, i32 noundef 8) #7
  %call.i.i2.i.i.i = call i64 @generic_atomic64_read(ptr noundef nonnull %temp.i.i.i) #7
  %call.i.i1.i3.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cons.i, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef %cons.i, i64 noundef %call.i.i2.i.i.i) #7
  %prod_flags.i.i.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 25, i32 6
  %prod_flags12.i.i.i = getelementptr inbounds %struct.anon.183, ptr %cons.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %prod_flags12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %prod_flags12.i.i.i, align 2
  %23 = ptrtoint ptr %prod_flags.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %prod_flags.i.i.i, align 8
  %conn_state_flags14.i.i.i = getelementptr inbounds %struct.anon.183, ptr %cons.i.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %conn_state_flags14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %conn_state_flags14.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %temp.i.i.i) #7
  br label %smc_cdc_msg_to_host.exit.i

if.else.i.i:                                      ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #9
  %local_rx_ctrl.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 25
  %26 = ptrtoint ptr %cdc to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cdc, align 8
  %28 = ptrtoint ptr %local_rx_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %local_rx_ctrl.i, align 8
  %len.i.i.i = getelementptr inbounds %struct.smc_cdc_msg, ptr %cdc, i32 0, i32 1
  %29 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %len.i.i.i, align 1
  %len2.i.i.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 25, i32 1
  %31 = ptrtoint ptr %len2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %len2.i.i.i, align 1
  %seqno.i.i.i = getelementptr inbounds %struct.smc_cdc_msg, ptr %cdc, i32 0, i32 2
  %32 = ptrtoint ptr %seqno.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %seqno.i.i.i, align 2
  %seqno3.i.i.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 25, i32 2
  %34 = ptrtoint ptr %seqno3.i.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %seqno3.i.i.i, align 2
  %token.i.i.i = getelementptr inbounds %struct.smc_cdc_msg, ptr %cdc, i32 0, i32 3
  %35 = ptrtoint ptr %token.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %token.i.i.i, align 4
  %token4.i.i.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 25, i32 3
  %37 = ptrtoint ptr %token4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %token4.i.i.i, align 4
  %prod5.i.i.i = getelementptr inbounds %struct.smc_cdc_msg, ptr %cdc, i32 0, i32 4
  call fastcc void @smc_cdc_cursor_to_host(ptr noundef %prod.i, ptr noundef %prod5.i.i.i) #7
  %cons6.i.i.i = getelementptr inbounds %struct.smc_cdc_msg, ptr %cdc, i32 0, i32 5
  call fastcc void @smc_cdc_cursor_to_host(ptr noundef %cons.i, ptr noundef %cons6.i.i.i) #7
  %prod_flags.i7.i.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 25, i32 6
  %prod_flags7.i.i.i = getelementptr inbounds %struct.smc_cdc_msg, ptr %cdc, i32 0, i32 6
  %38 = ptrtoint ptr %prod_flags7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %prod_flags7.i.i.i, align 8
  %40 = ptrtoint ptr %prod_flags.i7.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %prod_flags.i7.i.i, align 8
  %conn_state_flags8.i.i.i = getelementptr inbounds %struct.smc_cdc_msg, ptr %cdc, i32 0, i32 7
  %41 = ptrtoint ptr %conn_state_flags8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %conn_state_flags8.i.i.i, align 1
  br label %smc_cdc_msg_to_host.exit.i

smc_cdc_msg_to_host.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i
  %.sink.i.i = phi i8 [ %42, %if.else.i.i ], [ %25, %if.then.i.i ]
  %43 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 25, i32 7
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %.sink.i.i, ptr %43, align 1
  %peer_rmbe_size.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 5
  %wrap.i.i = getelementptr inbounds %struct.anon.181, ptr %cons_old.i, i32 0, i32 1
  %45 = ptrtoint ptr %wrap.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %wrap.i.i, align 2
  %wrap1.i.i = getelementptr inbounds %struct.anon.181, ptr %cons.i, i32 0, i32 1
  %47 = ptrtoint ptr %wrap1.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %wrap1.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %48)
  %cmp.not.i.i = icmp eq i16 %46, %48
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i178.i

if.then.i178.i:                                   ; preds = %smc_cdc_msg_to_host.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %peer_rmbe_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %peer_rmbe_size.i, align 4
  %count.i.i = getelementptr inbounds %struct.anon.181, ptr %cons_old.i, i32 0, i32 2
  %51 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count.i.i, align 4
  %sub.i.i = sub i32 %50, %52
  %count4.i.i = getelementptr inbounds %struct.anon.181, ptr %cons.i, i32 0, i32 2
  %53 = ptrtoint ptr %count4.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count4.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %54
  br label %smc_curs_diff.exit.i

if.end.i.i:                                       ; preds = %smc_cdc_msg_to_host.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %count7.i.i = getelementptr inbounds %struct.anon.181, ptr %cons.i, i32 0, i32 2
  %55 = ptrtoint ptr %count7.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %count7.i.i, align 4
  %count8.i.i = getelementptr inbounds %struct.anon.181, ptr %cons_old.i, i32 0, i32 2
  %57 = ptrtoint ptr %count8.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count8.i.i, align 4
  %sub9.i.i = sub i32 %56, %58
  br label %smc_curs_diff.exit.i

smc_curs_diff.exit.i:                             ; preds = %if.end.i.i, %if.then.i178.i
  %sub9.sink.i.i = phi i32 [ %sub9.i.i, %if.end.i.i ], [ %add.i.i, %if.then.i178.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub9.sink.i.i)
  %tobool.not.i = icmp slt i32 %sub9.sink.i.i, 1
  br i1 %tobool.not.i, label %smc_curs_diff.exit.i.if.end.i_crit_edge, label %do.end.i

smc_curs_diff.exit.i.if.end.i_crit_edge:          ; preds = %smc_curs_diff.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %smc_curs_diff.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  %peer_rmbe_space.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 6
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %peer_rmbe_space.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %peer_rmbe_space.i, i32 1, i32 3, i32 1) #7
  %59 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %peer_rmbe_space.i, ptr %peer_rmbe_space.i, i32 %sub9.sink.i.i, ptr elementtype(i32) %peer_rmbe_space.i) #7, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %smc_curs_diff.exit.i.if.end.i_crit_edge
  %rmb_desc.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 9
  %wrap.i179.i = getelementptr inbounds %struct.anon.181, ptr %prod_old.i, i32 0, i32 1
  %60 = ptrtoint ptr %wrap.i179.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %wrap.i179.i, align 2
  %wrap1.i180.i = getelementptr inbounds %struct.anon.181, ptr %prod.i, i32 0, i32 1
  %62 = ptrtoint ptr %wrap1.i180.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %wrap1.i180.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %63)
  %cmp.not.i181.i = icmp eq i16 %61, %63
  br i1 %cmp.not.i181.i, label %if.end.i190.i, label %if.then.i186.i

if.then.i186.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %rmb_desc.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmb_desc.i, align 4
  %len.i = getelementptr inbounds %struct.smc_buf_desc, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len.i, align 8
  %count.i182.i = getelementptr inbounds %struct.anon.181, ptr %prod_old.i, i32 0, i32 2
  %68 = ptrtoint ptr %count.i182.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %count.i182.i, align 4
  %sub.i183.i = sub i32 %67, %69
  %count4.i184.i = getelementptr inbounds %struct.anon.181, ptr %prod.i, i32 0, i32 2
  %70 = ptrtoint ptr %count4.i184.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count4.i184.i, align 4
  %add.i185.i = add i32 %sub.i183.i, %71
  br label %smc_curs_diff.exit192.i

if.end.i190.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %count7.i187.i = getelementptr inbounds %struct.anon.181, ptr %prod.i, i32 0, i32 2
  %72 = ptrtoint ptr %count7.i187.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count7.i187.i, align 4
  %count8.i188.i = getelementptr inbounds %struct.anon.181, ptr %prod_old.i, i32 0, i32 2
  %74 = ptrtoint ptr %count8.i188.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %count8.i188.i, align 4
  %sub9.i189.i = sub i32 %73, %75
  br label %smc_curs_diff.exit192.i

smc_curs_diff.exit192.i:                          ; preds = %if.end.i190.i, %if.then.i186.i
  %sub9.sink.i191.i = phi i32 [ %sub9.i189.i, %if.end.i190.i ], [ %add.i185.i, %if.then.i186.i ]
  %76 = call i32 @llvm.smax.i32(i32 %sub9.sink.i191.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub9.sink.i191.i)
  %tobool18.not.i = icmp slt i32 %sub9.sink.i191.i, 1
  %prod_flags38.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 25, i32 6
  %77 = ptrtoint ptr %prod_flags38.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load39.i = load i8, ptr %prod_flags38.i, align 8
  br i1 %tobool18.not.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %smc_curs_diff.exit192.i
  %78 = and i8 %bf.load39.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool21.not.i = icmp eq i8 %78, 0
  br i1 %tobool21.not.i, label %if.then19.i.do.end27.i_crit_edge, label %if.then22.i

if.then19.i.do.end27.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27.i

if.then22.i:                                      ; preds = %if.then19.i
  %urg_curs.i.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 27
  %call.i.i.i.i193.i = call zeroext i1 @__kasan_check_read(ptr noundef %prod.i, i32 noundef 8) #7
  %call.i.i.i194.i = call i64 @generic_atomic64_read(ptr noundef %prod.i) #7
  %call.i.i1.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %urg_curs.i.i, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef %urg_curs.i.i, i64 noundef %call.i.i.i194.i) #7
  %urg_state.i.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 28
  %79 = ptrtoint ptr %urg_state.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %urg_state.i.i, align 8
  %80 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %80, align 4
  %83 = lshr i32 %82, 2
  %84 = and i32 %83, 1
  %sext.i = add nsw i32 %76, -1
  %spec.select.i = add nsw i32 %sext.i, %84
  %85 = ptrtoint ptr %rmb_desc.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rmb_desc.i, align 4
  %cpu_addr.i.i = getelementptr inbounds %struct.smc_buf_desc, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %cpu_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cpu_addr.i.i, align 8
  %rx_off.i.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 37
  %89 = ptrtoint ptr %rx_off.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %rx_off.i.i, align 8
  %count.i196.i = getelementptr inbounds %struct.anon.181, ptr %urg_curs.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %count.i196.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %count.i196.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i197.i = icmp eq i32 %92, 0
  br i1 %tobool.not.i197.i, label %if.else.i199.i, label %if.then22.i.smc_cdc_handle_urg_data_arrival.exit.i_crit_edge

if.then22.i.smc_cdc_handle_urg_data_arrival.exit.i_crit_edge: ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smc_cdc_handle_urg_data_arrival.exit.i

if.else.i199.i:                                   ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  %len.i.i = getelementptr inbounds %struct.smc_buf_desc, ptr %86, i32 0, i32 3
  %93 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len.i.i, align 8
  br label %smc_cdc_handle_urg_data_arrival.exit.i

smc_cdc_handle_urg_data_arrival.exit.i:           ; preds = %if.else.i199.i, %if.then22.i.smc_cdc_handle_urg_data_arrival.exit.i_crit_edge
  %.pn.i.i = phi i32 [ %94, %if.else.i199.i ], [ %92, %if.then22.i.smc_cdc_handle_urg_data_arrival.exit.i_crit_edge ]
  %conv.i.i = zext i8 %90 to i32
  %add.ptr.i.i = getelementptr i8, ptr %88, i32 %conv.i.i
  %add.ptr9.pn.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %.pn.i.i
  %.sink.in.i.i = getelementptr i8, ptr %add.ptr9.pn.i.i, i32 -1
  %95 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %.sink.i200.i = load i8, ptr %.sink.in.i.i, align 1
  %96 = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 31
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %.sink.i200.i, ptr %96, align 2
  call void @sk_send_sigurg(ptr noundef %smc) #7
  br label %do.end27.i

do.end27.i:                                       ; preds = %smc_cdc_handle_urg_data_arrival.exit.i, %if.then19.i.do.end27.i_crit_edge
  %diff_prod.1.i = phi i32 [ %76, %if.then19.i.do.end27.i_crit_edge ], [ %spec.select.i, %smc_cdc_handle_urg_data_arrival.exit.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  %bytes_to_rcv.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 32
  %call.i.i172.i = call zeroext i1 @__kasan_check_write(ptr noundef %bytes_to_rcv.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %bytes_to_rcv.i, i32 1, i32 3, i32 1) #7
  %98 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bytes_to_rcv.i, ptr %bytes_to_rcv.i, i32 %diff_prod.1.i, ptr elementtype(i32) %bytes_to_rcv.i) #7, !srcloc !14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 77
  %99 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %sk_data_ready.i, align 8
  call void %100(ptr noundef %smc) #7
  br label %if.end55.i

if.else.i:                                        ; preds = %smc_curs_diff.exit192.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load39.i)
  %tobool41.not.i = icmp sgt i8 %bf.load39.i, -1
  br i1 %tobool41.not.i, label %if.else.i.if.end46.i_crit_edge, label %if.then42.i

if.else.i.if.end46.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

if.then42.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %sk_data_ready44.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 77
  %101 = ptrtoint ptr %sk_data_ready44.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sk_data_ready44.i, align 8
  call void %102(ptr noundef %smc) #7
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then42.i, %if.else.i.if.end46.i_crit_edge
  %103 = ptrtoint ptr %prod_flags38.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load49.i = load i8, ptr %prod_flags38.i, align 8
  %104 = and i8 %bf.load49.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool52.not.i = icmp eq i8 %104, 0
  br i1 %tobool52.not.i, label %if.end46.i.if.end55.i_crit_edge, label %if.then53.i

if.end46.i.if.end55.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

if.then53.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  %urg_state.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 28
  %105 = ptrtoint ptr %urg_state.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 2, ptr %urg_state.i, align 8
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then53.i, %if.end46.i.if.end55.i_crit_edge, %do.end27.i
  br i1 %tobool.not.i, label %if.end55.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

if.end55.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end55.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sent.i.i) #7
  %106 = ptrtoint ptr %sent.i.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 -1, ptr %sent.i.i, align 8, !annotation !22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prep.i.i) #7
  %107 = ptrtoint ptr %prep.i.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 -1, ptr %prep.i.i, align 8, !annotation !22
  %tx_curs_sent.i.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 15
  %call.i.i.i.i201.i = call zeroext i1 @__kasan_check_read(ptr noundef %tx_curs_sent.i.i, i32 noundef 8) #7
  %call.i.i.i202.i = call i64 @generic_atomic64_read(ptr noundef %tx_curs_sent.i.i) #7
  %call.i.i1.i.i203.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sent.i.i, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef nonnull %sent.i.i, i64 noundef %call.i.i.i202.i) #7
  %tx_curs_prep.i.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 14
  %call.i.i.i5.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %tx_curs_prep.i.i, i32 noundef 8) #7
  %call.i.i6.i.i = call i64 @generic_atomic64_read(ptr noundef %tx_curs_prep.i.i) #7
  %call.i.i1.i7.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %prep.i.i, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef nonnull %prep.i.i, i64 noundef %call.i.i6.i.i) #7
  %wrap.i.i.i = getelementptr inbounds %struct.anon.181, ptr %sent.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %wrap.i.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %wrap.i.i.i, align 2
  %wrap1.i.i204.i = getelementptr inbounds %struct.anon.181, ptr %prep.i.i, i32 0, i32 1
  %110 = ptrtoint ptr %wrap1.i.i204.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %wrap1.i.i204.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %109, i16 %111)
  %cmp.not.i.i.i = icmp eq i16 %109, %111
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %sndbuf_desc.i.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 8
  %112 = ptrtoint ptr %sndbuf_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sndbuf_desc.i.i, align 8
  %len.i205.i = getelementptr inbounds %struct.smc_buf_desc, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %len.i205.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %len.i205.i, align 8
  %count.i.i206.i = getelementptr inbounds %struct.anon.181, ptr %sent.i.i, i32 0, i32 2
  %116 = ptrtoint ptr %count.i.i206.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %count.i.i206.i, align 4
  %sub.i.i.i = sub i32 %115, %117
  %count4.i.i.i = getelementptr inbounds %struct.anon.181, ptr %prep.i.i, i32 0, i32 2
  %118 = ptrtoint ptr %count4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %count4.i.i.i, align 4
  %add.i.i.i = add i32 %sub.i.i.i, %119
  br label %smc_tx_prepared_sends.exit.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %count7.i.i.i = getelementptr inbounds %struct.anon.181, ptr %prep.i.i, i32 0, i32 2
  %120 = ptrtoint ptr %count7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %count7.i.i.i, align 4
  %count8.i.i207.i = getelementptr inbounds %struct.anon.181, ptr %sent.i.i, i32 0, i32 2
  %122 = ptrtoint ptr %count8.i.i207.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %count8.i.i207.i, align 4
  %sub9.i.i.i = sub i32 %121, %123
  br label %smc_tx_prepared_sends.exit.i

smc_tx_prepared_sends.exit.i:                     ; preds = %if.end.i.i.i, %if.then.i.i.i
  %sub9.sink.i.i.i = phi i32 [ %sub9.i.i.i, %if.end.i.i.i ], [ %add.i.i.i, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prep.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sent.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub9.sink.i.i.i)
  %tobool58.not.i = icmp slt i32 %sub9.sink.i.i.i, 1
  br i1 %tobool58.not.i, label %smc_tx_prepared_sends.exit.i.lor.lhs.false.i_crit_edge, label %smc_tx_prepared_sends.exit.i.if.then73.i_crit_edge

smc_tx_prepared_sends.exit.i.if.then73.i_crit_edge: ; preds = %smc_tx_prepared_sends.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then73.i

smc_tx_prepared_sends.exit.i.lor.lhs.false.i_crit_edge: ; preds = %smc_tx_prepared_sends.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %smc_tx_prepared_sends.exit.i.lor.lhs.false.i_crit_edge, %if.end55.i.lor.lhs.false.i_crit_edge
  %124 = ptrtoint ptr %prod_flags38.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load61.i = load i8, ptr %prod_flags38.i, align 8
  %125 = and i8 %bf.load61.i, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %lor.lhs.false.i.if.end75.i_crit_edge, label %lor.lhs.false.i.if.then73.i_crit_edge

lor.lhs.false.i.if.then73.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then73.i

lor.lhs.false.i.if.end75.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75.i

if.then73.i:                                      ; preds = %lor.lhs.false.i.if.then73.i_crit_edge, %smc_tx_prepared_sends.exit.i.if.then73.i_crit_edge
  %call74.i = call i32 @smc_tx_sndbuf_nonempty(ptr noundef %conn1.i) #7
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then73.i, %lor.lhs.false.i.if.end75.i_crit_edge
  br i1 %tobool.not.i, label %if.end75.i.if.end89.i_crit_edge, label %land.lhs.true77.i

if.end75.i.if.end89.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89.i

land.lhs.true77.i:                                ; preds = %if.end75.i
  %urg_tx_pend.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 29
  %127 = ptrtoint ptr %urg_tx_pend.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %urg_tx_pend.i, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool78.not.i = icmp eq i8 %128, 0
  br i1 %tobool78.not.i, label %land.lhs.true77.i.if.end89.i_crit_edge, label %land.lhs.true80.i

land.lhs.true77.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89.i

land.lhs.true80.i:                                ; preds = %land.lhs.true77.i
  %peer_rmbe_space81.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 6
  %call.i.i173.i = call zeroext i1 @__kasan_check_read(ptr noundef %peer_rmbe_space81.i, i32 noundef 4) #7
  %129 = ptrtoint ptr %peer_rmbe_space81.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %peer_rmbe_space81.i, align 4
  %131 = ptrtoint ptr %peer_rmbe_size.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %peer_rmbe_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %132)
  %cmp.i = icmp eq i32 %130, %132
  br i1 %cmp.i, label %if.then85.i, label %land.lhs.true80.i.if.end89.i_crit_edge

land.lhs.true80.i.if.end89.i_crit_edge:           ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89.i

if.then85.i:                                      ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %urg_tx_pend.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %urg_tx_pend.i, align 4
  %sk_write_space.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 78
  %134 = ptrtoint ptr %sk_write_space.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sk_write_space.i, align 4
  call void %135(ptr noundef %smc) #7
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then85.i, %land.lhs.true80.i.if.end89.i_crit_edge, %land.lhs.true77.i.if.end89.i_crit_edge, %if.end75.i.if.end89.i_crit_edge
  %136 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load91.i = load i8, ptr %43, align 1
  %137 = and i8 %bf.load91.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool94.not.i = icmp eq i8 %137, 0
  br i1 %tobool94.not.i, label %if.end100.i, label %if.end100.i.thread

if.end100.i.thread:                               ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #9
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 51
  %138 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 104, ptr %sk_err.i, align 4
  %conn_state_flags97.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 12, i32 7
  %139 = ptrtoint ptr %conn_state_flags97.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %bf.load98.i = load i8, ptr %conn_state_flags97.i, align 1
  %bf.set.i = or i8 %bf.load98.i, 32
  store i8 %bf.set.i, ptr %conn_state_flags97.i, align 1
  br label %if.then102.i

if.end100.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %bf.load91.i)
  %140 = icmp ugt i8 %bf.load91.i, 31
  br i1 %140, label %if.end100.i.if.then102.i_crit_edge, label %if.end100.i.smc_cdc_msg_recv_action.exit_crit_edge

if.end100.i.smc_cdc_msg_recv_action.exit_crit_edge: ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smc_cdc_msg_recv_action.exit

if.end100.i.if.then102.i_crit_edge:               ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then102.i

if.then102.i:                                     ; preds = %if.end100.i.if.then102.i_crit_edge, %if.end100.i.thread
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %smc, i32 0, i32 66
  %141 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %sk_shutdown.i, align 2
  %143 = or i8 %142, 1
  store i8 %143, ptr %sk_shutdown.i, align 2
  %clcsock.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 1
  %144 = ptrtoint ptr %clcsock.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %clcsock.i, align 8
  %tobool106.not.i = icmp eq ptr %145, null
  br i1 %tobool106.not.i, label %if.then102.i.if.end118.i_crit_edge, label %land.lhs.true107.i

if.then102.i.if.end118.i_crit_edge:               ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.i

land.lhs.true107.i:                               ; preds = %if.then102.i
  %sk109.i = getelementptr inbounds %struct.socket, ptr %145, i32 0, i32 4
  %146 = ptrtoint ptr %sk109.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sk109.i, align 16
  %tobool110.not.i = icmp eq ptr %147, null
  br i1 %tobool110.not.i, label %land.lhs.true107.i.if.end118.i_crit_edge, label %if.then111.i

land.lhs.true107.i.if.end118.i_crit_edge:         ; preds = %land.lhs.true107.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.i

if.then111.i:                                     ; preds = %land.lhs.true107.i
  call void @__sanitizer_cov_trace_pc() #9
  %sk_shutdown114.i = getelementptr inbounds %struct.sock, ptr %147, i32 0, i32 66
  %148 = ptrtoint ptr %sk_shutdown114.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %sk_shutdown114.i, align 2
  %150 = or i8 %149, 1
  store i8 %150, ptr %sk_shutdown114.i, align 2
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.then111.i, %land.lhs.true107.i.if.end118.i_crit_edge, %if.then102.i.if.end118.i_crit_edge
  %151 = getelementptr inbounds %struct.sock_common, ptr %smc, i32 0, i32 13
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 4
  %or.i.i.i = or i32 %153, 2
  store i32 %or.i.i.i, ptr %151, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #7
  %154 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #7, !srcloc !29
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %154, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end118.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !21

if.end118.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end118.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %155 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %155)
  %.not.i.i.i.i.i = icmp sgt i32 %155, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !20

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end118.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end118.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_close_wq to i32))
  %156 = load ptr, ptr @smc_close_wq, align 4
  %close_work.i = getelementptr inbounds %struct.smc_sock, ptr %smc, i32 0, i32 6, i32 34
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %156, ptr noundef %close_work.i) #7
  br i1 %call.i.i, label %sock_hold.exit.i.smc_cdc_msg_recv_action.exit_crit_edge, label %if.then122.i

sock_hold.exit.i.smc_cdc_msg_recv_action.exit_crit_edge: ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smc_cdc_msg_recv_action.exit

if.then122.i:                                     ; preds = %sock_hold.exit.i
  %call.i.i.i.i.i.i209.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !34
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #7
  %157 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #7, !srcloc !35
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %157, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i211.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i210.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i210.i, label %if.end5.i.i.i.i.i.smc_cdc_msg_recv_action.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !20

if.end5.i.i.i.i.i.smc_cdc_msg_recv_action.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smc_cdc_msg_recv_action.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #7
  br label %smc_cdc_msg_recv_action.exit

if.then.i211.i:                                   ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !36
  call void @sk_free(ptr noundef %smc) #7
  br label %smc_cdc_msg_recv_action.exit

smc_cdc_msg_recv_action.exit:                     ; preds = %if.then.i211.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.smc_cdc_msg_recv_action.exit_crit_edge, %sock_hold.exit.i.smc_cdc_msg_recv_action.exit_crit_edge, %if.end100.i.smc_cdc_msg_recv_action.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prod_old.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cons_old.i) #7
  call void @_raw_spin_unlock(ptr noundef %sk_lock) #7
  %call.i.i.i.i.i.i12 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !34
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #7
  %158 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #7, !srcloc !35
  %asmresult.i.i.i.i.i.i.i13 = extractvalue { i32, i32, i32 } %158, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i13)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i13, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %smc_cdc_msg_recv_action.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i13)
  %.not.i.i.i.i14 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i13, 0
  br i1 %.not.i.i.i.i14, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !20

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #7
  br label %sock_put.exit

if.then.i:                                        ; preds = %smc_cdc_msg_recv_action.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !36
  call void @sk_free(ptr noundef %smc) #7
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_tx_sndbuf_nonempty(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smc_cdc_cursor_to_host(ptr noundef %local, ptr noundef %peer) unnamed_addr #5 align 64 {
entry:
  %temp = alloca %union.smc_host_cursor, align 8
  %old = alloca %union.smc_host_cursor, align 8
  %net = alloca %union.smc_cdc_cursor, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %temp) #7
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %temp, align 8, !annotation !22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old) #7
  %1 = ptrtoint ptr %old to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %old, align 8, !annotation !22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %net) #7
  %2 = ptrtoint ptr %net to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %net, align 8, !annotation !22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %local, i32 noundef 8) #7
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %local) #7
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef nonnull %old, i64 noundef %call.i.i) #7
  %call.i.i.i1 = call zeroext i1 @__kasan_check_read(ptr noundef %peer, i32 noundef 8) #7
  %call.i.i2 = call i64 @generic_atomic64_read(ptr noundef %peer) #7
  %call.i.i1.i3 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %net, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef nonnull %net, i64 noundef %call.i.i2) #7
  %count = getelementptr inbounds %struct.anon.182, ptr %net, i32 0, i32 2
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  %count1 = getelementptr inbounds %struct.anon.181, ptr %temp, i32 0, i32 2
  %5 = ptrtoint ptr %count1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %count1, align 4
  %wrap = getelementptr inbounds %struct.anon.182, ptr %net, i32 0, i32 1
  %6 = ptrtoint ptr %wrap to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wrap, align 2
  %wrap2 = getelementptr inbounds %struct.anon.181, ptr %temp, i32 0, i32 1
  %8 = ptrtoint ptr %wrap2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %wrap2, align 2
  %wrap3 = getelementptr inbounds %struct.anon.181, ptr %old, i32 0, i32 1
  %9 = ptrtoint ptr %wrap3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %wrap3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %7)
  %cmp = icmp ule i16 %10, %7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %7)
  %cmp13 = icmp eq i16 %10, %7
  br i1 %cmp13, label %land.lhs.true15, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true15:                                  ; preds = %if.end
  %count16 = getelementptr inbounds %struct.anon.181, ptr %old, i32 0, i32 2
  %11 = ptrtoint ptr %count16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %4)
  %cmp18 = icmp ugt i32 %12, %4
  br i1 %cmp18, label %land.lhs.true15.cleanup_crit_edge, label %land.lhs.true15.if.end21_crit_edge

land.lhs.true15.if.end21_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true15.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %call.i.i.i4 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %temp, i32 noundef 8) #7
  %call.i.i5 = call i64 @generic_atomic64_read(ptr noundef nonnull %temp) #7
  %call.i.i1.i6 = call zeroext i1 @__kasan_check_write(ptr noundef %local, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef %local, i64 noundef %call.i.i5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %land.lhs.true15.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %net) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %temp) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_send_sigurg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_cdc_rx_handler(ptr nocapture noundef readonly %wc, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %4 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %byte_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %5)
  %cmp = icmp ult i32 %5, 26
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.smc_cdc_msg, ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %7)
  %cmp1.not = icmp eq i8 %7, 44
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lgr.i = getelementptr inbounds %struct.smc_link, ptr %3, i32 0, i32 50
  %8 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lgr.i, align 4
  %conns_lock = getelementptr inbounds %struct.smc_link_group, ptr %9, i32 0, i32 2
  tail call void @_raw_read_lock_bh(ptr noundef %conns_lock) #7
  %token = getelementptr inbounds %struct.smc_cdc_msg, ptr %buf, i32 0, i32 3
  %10 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %token, align 4
  %conns_all.i = getelementptr inbounds %struct.smc_link_group, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %conns_all.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %node.018.i = load ptr, ptr %conns_all.i, align 4
  %tobool.not19.i = icmp eq ptr %node.018.i, null
  br i1 %tobool.not19.i, label %if.end4.smc_lgr_find_conn.exit.thread_crit_edge, label %if.end4.while.body.i_crit_edge

if.end4.while.body.i_crit_edge:                   ; preds = %if.end4
  br label %while.body.i

if.end4.smc_lgr_find_conn.exit.thread_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %smc_lgr_find_conn.exit.thread

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end4.while.body.i_crit_edge
  %node.020.i = phi ptr [ %node.0.i, %cleanup.i.while.body.i_crit_edge ], [ %node.018.i, %if.end4.while.body.i_crit_edge ]
  %alert_token_local.i = getelementptr inbounds %struct.smc_connection, ptr %node.020.i, i32 0, i32 3
  %13 = ptrtoint ptr %alert_token_local.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %alert_token_local.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %11)
  %cmp.i = icmp ugt i32 %14, %11
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.020.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %11)
  %cmp2.i = icmp ult i32 %14, %11
  br i1 %cmp2.i, label %if.then3.i, label %lor.lhs.false

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.020.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then3.i, %if.then.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %15 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.smc_lgr_find_conn.exit.thread_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

cleanup.i.smc_lgr_find_conn.exit.thread_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smc_lgr_find_conn.exit.thread

smc_lgr_find_conn.exit.thread:                    ; preds = %cleanup.i.smc_lgr_find_conn.exit.thread_crit_edge, %if.end4.smc_lgr_find_conn.exit.thread_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %conns_lock) #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.else.i
  tail call void @_raw_read_unlock_bh(ptr noundef %conns_lock) #7
  %out_of_sync = getelementptr %struct.smc_connection, ptr %node.020.i, i32 0, i32 39
  %16 = ptrtoint ptr %out_of_sync to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %out_of_sync, align 8
  %17 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  br i1 %tobool8.not, label %if.end10, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %node.020.i, i32 -984
  %prod_flags = getelementptr inbounds %struct.smc_cdc_msg, ptr %buf, i32 0, i32 6
  %18 = ptrtoint ptr %prod_flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load11 = load i8, ptr %prod_flags, align 8
  %19 = and i8 %bf.load11, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool14.not = icmp eq i8 %19, 0
  %seqno = getelementptr inbounds %struct.smc_cdc_msg, ptr %buf, i32 0, i32 2
  %20 = ptrtoint ptr %seqno to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %seqno, align 2
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end10
  %seqno2.i = getelementptr i8, ptr %node.020.i, i32 354
  %22 = ptrtoint ptr %seqno2.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %seqno2.i, align 2
  %sub.i = sub i16 %23, %21
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i)
  %cmp.i38 = icmp slt i16 %sub.i, 0
  br i1 %cmp.i38, label %if.then.i39, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i39:                                      ; preds = %if.then15
  %24 = ptrtoint ptr %out_of_sync to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %out_of_sync, align 8
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %out_of_sync, align 8
  %send_lock.i = getelementptr i8, ptr %node.020.i, i32 144
  tail call void @_raw_spin_lock_bh(ptr noundef %send_lock.i) #7
  %conn_state_flags.i = getelementptr i8, ptr %node.020.i, i32 81
  %25 = ptrtoint ptr %conn_state_flags.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load7.i = load i8, ptr %conn_state_flags.i, align 1
  %bf.set9.i = or i8 %bf.load7.i, 32
  store i8 %bf.set9.i, ptr %conn_state_flags.i, align 1
  %lnk.i = getelementptr i8, ptr %node.020.i, i32 16
  %26 = ptrtoint ptr %lnk.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %3, ptr %lnk.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %send_lock.i) #7
  %skc_refcnt.i.i = getelementptr i8, ptr %node.020.i, i32 -884
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #7
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #7, !srcloc !29
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i39.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !21

if.then.i39.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i39
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %28 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !20

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i39.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i39.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_close_wq to i32))
  %29 = load ptr, ptr @smc_close_wq, align 4
  %abort_work.i = getelementptr i8, ptr %node.020.i, i32 476
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %abort_work.i) #7
  br i1 %call.i.i, label %sock_hold.exit.i.cleanup_crit_edge, label %if.then11.i

sock_hold.exit.i.cleanup_crit_edge:               ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11.i:                                      ; preds = %sock_hold.exit.i
  %call.i.i.i.i.i.i23.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #7
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #7, !srcloc !35
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i24.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i24.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !20

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #7
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @sk_free(ptr noundef %add.ptr) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %seqno17 = getelementptr inbounds %struct.smc_connection, ptr %node.020.i, i32 0, i32 25, i32 2
  %31 = ptrtoint ptr %seqno17 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %seqno17, align 2
  %sub.i40 = sub i16 %21, %32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub.i40)
  %cmp.i41 = icmp slt i16 %sub.i40, 0
  br i1 %cmp.i41, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @smc_cdc_msg_recv(ptr noundef %add.ptr, ptr noundef %buf)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16.cleanup_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %sock_hold.exit.i.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %smc_lgr_find_conn.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/smc/smc_cdc.c", i32 217, i32 2}
!2 = !{ptr @smc_cdc_rx_handlers, !3, !"smc_cdc_rx_handlers", i1 false, i1 false}
!3 = !{!"../net/smc/smc_cdc.c", i32 455, i32 33}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2158162448}
!14 = !{i64 2148489505, i64 2148489531, i64 2148489560, i64 2148489594, i64 2148489625, i64 2148489648}
!15 = !{i64 2158162625}
!16 = !{i64 2148577981}
!17 = !{i64 2148492690, i64 2148492722, i64 2148492751, i64 2148492785, i64 2148492816, i64 2148492839}
!18 = !{i64 2148578210}
!19 = !{i64 2149438830}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{!"auto-init"}
!23 = !{i64 2158168776}
!24 = !{i64 2148491970, i64 2148491996, i64 2148492025, i64 2148492059, i64 2148492090, i64 2148492113}
!25 = !{i64 2158169171}
!26 = !{i8 0, i8 2}
!27 = !{i64 2158171921}
!28 = !{i64 2158172098}
!29 = !{i64 2148491035, i64 2148491067, i64 2148491096, i64 2148491130, i64 2148491161, i64 2148491184}
!30 = !{i64 2158172536}
!31 = !{i64 2158172713}
!32 = !{i64 2158172891}
!33 = !{i64 2158173068}
!34 = !{i64 2148579060}
!35 = !{i64 2148493500, i64 2148493532, i64 2148493561, i64 2148493595, i64 2148493626, i64 2148493649}
!36 = !{i64 2149294616}
