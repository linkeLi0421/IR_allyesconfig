; ModuleID = '/llk/IR_all_yes/net/llc/llc_c_ac.c_pt.bc'
source_filename = "../net/llc/llc_c_ac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.llc_sock = type { %struct.sock, %struct.sockaddr_llc, i8, ptr, %struct.llc_addr, %struct.llc_addr, ptr, ptr, i32, i8, i8, i8, i8, %struct.llc_timer, %struct.llc_timer, %struct.llc_timer, %struct.llc_timer, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, %struct.sk_buff_head, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, %struct.hlist_node }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
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
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.121 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr_llc = type { i16, i16, i8, i8, i8, i8, [6 x i8], [2 x i8] }
%struct.llc_addr = type { i8, [6 x i8] }
%struct.llc_timer = type { %struct.timer_list, i32 }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.llc_pdu_sn = type { i8, i8, i8, i8 }
%struct.llc_pdu_un = type { i8, i8, i8 }
%struct.llc_sap = type { i8, i8, i8, %struct.refcount_struct, ptr, %struct.llc_addr, %struct.list_head, %struct.spinlock, i32, [64 x %struct.hlist_nulls_head], [64 x %struct.hlist_head], %struct.callback_head }
%struct.hlist_nulls_head = type { ptr }
%struct.hlist_head = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.125, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.125 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.114, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.114 = type { ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@llc_process_tmr_ev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: timer called on closed connection\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"llc_process_tmr_ev\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/llc/llc_c_ac.c\00", [45 x i8] zeroinitializer }, align 32
@llc_process_tmr_ev._entry_ptr = internal global ptr @llc_process_tmr_ev._entry, section ".printk_index", align 4
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 5]
@__sancov_gen_cov_switch_values.6 = internal global [7 x i64] [i64 5, i64 8, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.17 = private constant [22 x i8] c"../net/llc/llc_c_ac.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 1440, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 1750, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 316, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 1011, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @llc_process_tmr_ev._entry, ptr @llc_process_tmr_ev._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_process_tmr_ev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_clear_remote_busy(ptr noundef %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %remote_busy_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 27
  %0 = ptrtoint ptr %remote_busy_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %remote_busy_flag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %6 = ptrtoint ptr %remote_busy_flag to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %remote_busy_flag, align 2
  %busy_state_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 16
  %call3 = tail call i32 @del_timer(ptr noundef %busy_state_timer) #10
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_2, align 1
  %9 = lshr i8 %8, 1
  tail call void @llc_conn_resend_i_pdu_as_cmd(ptr noundef %sk, i8 noundef zeroext %9, i8 noundef zeroext 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_conn_resend_i_pdu_as_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ac_conn_ind(ptr nocapture noundef readnone %sk, ptr nocapture noundef writeonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ind_prim = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %ind_prim to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %ind_prim, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ac_conn_confirm(ptr nocapture noundef readnone %sk, ptr nocapture noundef writeonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cfm_prim = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %0 = ptrtoint ptr %cfm_prim to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %cfm_prim, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_data_ind(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @llc_conn_rtn_pdu(ptr noundef %sk, ptr noundef %skb) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_conn_rtn_pdu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ac_disc_ind(ptr nocapture noundef readnone %sk, ptr nocapture noundef %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cb.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.if.end51_crit_edge [
    i8 4, label %if.then
    i8 5, label %entry.if.then49_crit_edge
  ]

entry.if.then49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then:                                          ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %ssap = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ssap, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %land.lhs.true23, label %if.then.if.then49_crit_edge

if.then.if.then49_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

land.lhs.true23:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl_124 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %ctrl_124 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrl_124, align 1
  %12 = and i8 %11, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %12)
  %13 = icmp eq i8 %12, 67
  %spec.select = zext i1 %13 to i8
  br label %if.then49

if.then49:                                        ; preds = %land.lhs.true23, %if.then.if.then49_crit_edge, %entry.if.then49_crit_edge
  %reason.1.ph = phi i8 [ %spec.select, %land.lhs.true23 ], [ 2, %entry.if.then49_crit_edge ], [ 0, %if.then.if.then49_crit_edge ]
  %reason50 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %reason50 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %reason.1.ph, ptr %reason50, align 1
  %ind_prim = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 5
  %15 = ptrtoint ptr %ind_prim to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %ind_prim, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %entry.if.end51_crit_edge
  %rc.067 = phi i32 [ 0, %if.then49 ], [ -22, %entry.if.end51_crit_edge ]
  ret i32 %rc.067
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ac_disc_confirm(ptr nocapture noundef readnone %sk, ptr nocapture noundef %skb) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status, align 1
  %reason = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %reason to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %reason, align 1
  %cfm_prim = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %3 = ptrtoint ptr %cfm_prim to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %cfm_prim, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ac_rst_ind(ptr nocapture noundef readonly %sk, ptr nocapture noundef %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cb.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %1, label %entry.if.end46_crit_edge [
    i8 4, label %sw.bb
    i8 5, label %entry.sw.bb37_crit_edge
    i8 6, label %entry.sw.bb37_crit_edge62
    i8 7, label %entry.sw.bb37_crit_edge63
    i8 8, label %entry.sw.bb37_crit_edge64
  ]

entry.sw.bb37_crit_edge64:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb37

entry.sw.bb37_crit_edge63:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb37

entry.sw.bb37_crit_edge62:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb37

entry.sw.bb37_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb37

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

sw.bb:                                            ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %ssap = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ssap, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %ctrl_122 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %ctrl_122 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrl_122, align 1
  %12 = and i8 %11, -17
  br i1 %tobool.not, label %land.lhs.true21, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 -121, i8 %12)
  %13 = icmp eq i8 %12, -121
  br i1 %13, label %land.lhs.true.if.then44_crit_edge, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

land.lhs.true.if.then44_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

land.lhs.true21:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 111, i8 %12)
  %14 = icmp eq i8 %12, 111
  br i1 %14, label %land.lhs.true21.if.then44_crit_edge, label %land.lhs.true21.if.end46_crit_edge

land.lhs.true21.if.end46_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

land.lhs.true21.if.then44_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

sw.bb37:                                          ; preds = %entry.sw.bb37_crit_edge, %entry.sw.bb37_crit_edge62, %entry.sw.bb37_crit_edge63, %entry.sw.bb37_crit_edge64
  %retry_count = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 9
  %15 = ptrtoint ptr %retry_count to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %retry_count, align 4
  %conv38 = zext i8 %16 to i32
  %n2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 19
  %17 = ptrtoint ptr %n2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv38)
  %cmp39 = icmp ult i32 %18, %conv38
  br i1 %cmp39, label %sw.bb37.if.then44_crit_edge, label %sw.bb37.if.end46_crit_edge

sw.bb37.if.end46_crit_edge:                       ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

sw.bb37.if.then44_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.then44:                                        ; preds = %sw.bb37.if.then44_crit_edge, %land.lhs.true21.if.then44_crit_edge, %land.lhs.true.if.then44_crit_edge
  %reason.0 = phi i8 [ 2, %land.lhs.true.if.then44_crit_edge ], [ 1, %land.lhs.true21.if.then44_crit_edge ], [ 2, %sw.bb37.if.then44_crit_edge ]
  %reason45 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %reason45 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %reason.0, ptr %reason45, align 1
  %ind_prim = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 5
  %20 = ptrtoint ptr %ind_prim to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 5, ptr %ind_prim, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %sw.bb37.if.end46_crit_edge, %land.lhs.true21.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %entry.if.end46_crit_edge
  %rc.061 = phi i32 [ 0, %if.then44 ], [ 1, %entry.if.end46_crit_edge ], [ 1, %sw.bb37.if.end46_crit_edge ], [ 1, %land.lhs.true21.if.end46_crit_edge ], [ 1, %land.lhs.true.if.end46_crit_edge ]
  ret i32 %rc.061
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ac_rst_confirm(ptr nocapture noundef readnone %sk, ptr nocapture noundef writeonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reason = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %reason to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %reason, align 1
  %cfm_prim = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %1 = ptrtoint ptr %cfm_prim to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 5, ptr %cfm_prim, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_clear_remote_busy_if_f_eq_1(ptr noundef %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssap, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %land.lhs.true6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrl_2, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %tobool9.not, label %land.lhs.true6.if.end_crit_edge, label %land.lhs.true12

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true12:                                  ; preds = %land.lhs.true6
  %ack_pf = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 32
  %13 = ptrtoint ptr %ack_pf to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ack_pf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %land.lhs.true12.if.end_crit_edge, label %if.then

land.lhs.true12.if.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true12
  %remote_busy_flag.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 27
  %15 = ptrtoint ptr %remote_busy_flag.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %remote_busy_flag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %remote_busy_flag.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %remote_busy_flag.i, align 2
  %busy_state_timer.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 16
  %call3.i = tail call i32 @del_timer(ptr noundef %busy_state_timer.i) #10
  %18 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ctrl_2, align 1
  %20 = lshr i8 %19, 1
  tail call void @llc_conn_resend_i_pdu_as_cmd(ptr noundef %sk, i8 noundef zeroext %20, i8 noundef zeroext 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %land.lhs.true12.if.end_crit_edge, %land.lhs.true6.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_stop_rej_tmr_if_data_flag_eq_2(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 26
  %0 = ptrtoint ptr %data_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rej_sent_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 15
  %call2 = tail call i32 @del_timer(ptr noundef %rej_sent_timer) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_disc_cmd_p_set_x(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %1, i8 noundef zeroext 3, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup13_crit_edge, label %if.then

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup13

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap2, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 3) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %5, ptr %ssap4.i, align 1
  tail call void @llc_pdu_init_as_disc_cmd(ptr noundef nonnull %call1, i8 noundef zeroext 1) #10
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 86
  %17 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %18, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  %p_flag.i.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 23
  %19 = ptrtoint ptr %p_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %p_flag.i.i, align 2
  br label %cleanup13

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup13

cleanup13:                                        ; preds = %free, %cleanup.thread, %entry.cleanup13_crit_edge
  %rc.0 = phi i32 [ %call6, %free ], [ -105, %entry.cleanup13_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @llc_alloc_frame(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_pdu_init_as_disc_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_mac_hdr_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_conn_send_pdu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_dm_rsp_f_set_p(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %f_bit = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %1, i8 noundef zeroext 3, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup13_crit_edge, label %if.then

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup13

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap2, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %f_bit) #10
  %4 = ptrtoint ptr %f_bit to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %f_bit, align 1, !annotation !23
  call void @llc_pdu_decode_pf_bit(ptr noundef %skb, ptr noundef nonnull %f_bit) #10
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %7 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %daddr, align 1
  %call.i = call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 3) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 %conv.i.i.i
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %8, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %or13.i = or i8 %6, 1
  %15 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or13.i, ptr %ssap4.i, align 1
  %16 = ptrtoint ptr %f_bit to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %f_bit, align 1
  call void @llc_pdu_init_as_dm_rsp(ptr noundef nonnull %call1, i8 noundef zeroext %17) #10
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 86
  %20 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call6 = call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %21, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %f_bit) #10
  br label %cleanup13

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %f_bit) #10
  call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup13

cleanup13:                                        ; preds = %free, %cleanup.thread, %entry.cleanup13_crit_edge
  %rc.0 = phi i32 [ %call6, %free ], [ -105, %entry.cleanup13_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_pdu_decode_pf_bit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_pdu_init_as_dm_rsp(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_dm_rsp_f_set_1(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %1, i8 noundef zeroext 3, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup12_crit_edge, label %if.then

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap2, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 3) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %or13.i = or i8 %5, 1
  %14 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or13.i, ptr %ssap4.i, align 1
  tail call void @llc_pdu_init_as_dm_rsp(ptr noundef nonnull %call1, i8 noundef zeroext 1) #10
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 86
  %17 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %18, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %cleanup12

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup12

cleanup12:                                        ; preds = %free, %cleanup.thread, %entry.cleanup12_crit_edge
  %rc.0 = phi i32 [ %call6, %free ], [ -105, %entry.cleanup12_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_frmr_rsp_f_set_x(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %f_bit = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %f_bit) #10
  %0 = ptrtoint ptr %f_bit to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %f_bit, align 1, !annotation !23
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %3 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  %rx_pdu_hdr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 39
  %7 = ptrtoint ptr %rx_pdu_hdr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rx_pdu_hdr, align 8
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ssap, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llc_pdu_decode_pf_bit(ptr noundef %skb, ptr noundef nonnull %f_bit) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %f_bit to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %f_bit, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %call2 = call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %13, i8 noundef zeroext 3, i32 noundef 5) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup16_crit_edge, label %if.then4

if.end.cleanup16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup16

if.then4:                                         ; preds = %if.end
  %sap5 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %14 = ptrtoint ptr %sap5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sap5, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %18 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %daddr, align 1
  %call.i = call ptr @skb_push(ptr noundef nonnull %call2, i32 noundef 3) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %head.i.i40 = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i40, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i41 = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i42 = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 15, i32 0, i32 20
  %24 = ptrtoint ptr %network_header.i.i42 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i.i41, ptr %network_header.i.i42, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 %conv.i.i.i
  %25 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %19, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %or13.i = or i8 %17, 1
  %26 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %or13.i, ptr %ssap4.i, align 1
  %27 = ptrtoint ptr %f_bit to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %f_bit, align 1
  %vS = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 17
  %29 = ptrtoint ptr %vS to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %vS, align 8
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %31 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %vR, align 1
  call void @llc_pdu_init_as_frmr_rsp(ptr noundef nonnull %call2, ptr noundef %add.ptr.i.i, i8 noundef zeroext %28, i8 noundef zeroext %30, i8 noundef zeroext %32, i8 noundef zeroext 0) #10
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 86
  %35 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call9 = call i32 @llc_mac_hdr_init(ptr noundef nonnull %call2, ptr noundef %36, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call2) #10
  br label %cleanup16

free:                                             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef nonnull %call2, i32 noundef 0) #10
  br label %cleanup16

cleanup16:                                        ; preds = %free, %cleanup.thread, %if.end.cleanup16_crit_edge
  %rc.0 = phi i32 [ %call9, %free ], [ -105, %if.end.cleanup16_crit_edge ], [ 0, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %f_bit) #10
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_pdu_init_as_frmr_rsp(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_resend_frmr_rsp_f_set_0(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %1, i8 noundef zeroext 3, i32 noundef 5) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup13_crit_edge, label %if.then

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup13

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap2, align 4
  %rx_pdu_hdr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 39
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 3) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %or13.i = or i8 %5, 1
  %14 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or13.i, ptr %ssap4.i, align 1
  %vS = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 17
  %15 = ptrtoint ptr %vS to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vS, align 8
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %17 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vR, align 1
  tail call void @llc_pdu_init_as_frmr_rsp(ptr noundef nonnull %call1, ptr noundef %rx_pdu_hdr, i8 noundef zeroext 0, i8 noundef zeroext %16, i8 noundef zeroext %18, i8 noundef zeroext 0) #10
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 86
  %21 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %22, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %cleanup13

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup13

cleanup13:                                        ; preds = %free, %cleanup.thread, %entry.cleanup13_crit_edge
  %rc.0 = phi i32 [ %call6, %free ], [ -105, %entry.cleanup13_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_resend_frmr_rsp_f_set_p(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %f_bit = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %f_bit) #10
  %0 = ptrtoint ptr %f_bit to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %f_bit, align 1, !annotation !23
  call void @llc_pdu_decode_pf_bit(ptr noundef %skb, ptr noundef nonnull %f_bit) #10
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %call1 = call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %2, i8 noundef zeroext 3, i32 noundef 5) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup14_crit_edge, label %if.then

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %3 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sap2, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %4, i32 0, i32 5
  %9 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %11 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %daddr, align 1
  %call.i = call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 3) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i, align 4
  %head.i.i34 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i34, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i35 = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i36 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i.i36 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i35, ptr %network_header.i.i36, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 %conv.i.i.i
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %12, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %or13.i = or i8 %10, 1
  %19 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %or13.i, ptr %ssap4.i, align 1
  %20 = ptrtoint ptr %f_bit to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %f_bit, align 1
  %vS = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 17
  %22 = ptrtoint ptr %vS to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vS, align 8
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %24 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %vR, align 1
  call void @llc_pdu_init_as_frmr_rsp(ptr noundef nonnull %call1, ptr noundef %add.ptr.i.i, i8 noundef zeroext %21, i8 noundef zeroext %23, i8 noundef zeroext %25, i8 noundef zeroext 0) #10
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 86
  %28 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call7 = call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %29, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %cleanup14

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup14

cleanup14:                                        ; preds = %free, %cleanup.thread, %entry.cleanup14_crit_edge
  %rc.0 = phi i32 [ %call7, %free ], [ -105, %entry.cleanup14_crit_edge ], [ 0, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %f_bit) #10
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_i_cmd_p_set_1(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sap1 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %sap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sap1, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %4 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %5, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %3, ptr %ssap4.i, align 1
  %vS = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 17
  %13 = ptrtoint ptr %vS to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vS, align 8
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %15 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vR, align 1
  tail call void @llc_pdu_init_as_i_cmd(ptr noundef %skb, i8 noundef zeroext 1, i8 noundef zeroext %14, i8 noundef zeroext %16) #10
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call4 = tail call i32 @llc_mac_hdr_init(ptr noundef %skb, ptr noundef %20, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !22

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #10, !srcloc !24
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !25

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %22 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !22

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #10
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef %skb) #10
  %23 = ptrtoint ptr %vS to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %vS, align 8
  %25 = add i8 %24, 1
  %26 = and i8 %25, 127
  store i8 %26, ptr %vS, align 8
  br label %if.end

if.end:                                           ; preds = %skb_get.exit, %entry.if.end_crit_edge
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_pdu_init_as_i_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_i_xxx_x_set_0(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sap1 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %sap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sap1, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %4 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %5, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %3, ptr %ssap4.i, align 1
  %vS = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 17
  %13 = ptrtoint ptr %vS to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vS, align 8
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %15 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vR, align 1
  tail call void @llc_pdu_init_as_i_cmd(ptr noundef %skb, i8 noundef zeroext 0, i8 noundef zeroext %14, i8 noundef zeroext %16) #10
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call4 = tail call i32 @llc_mac_hdr_init(ptr noundef %skb, ptr noundef %20, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !22

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #10, !srcloc !24
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !25

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %22 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !22

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #10
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef %skb) #10
  %23 = ptrtoint ptr %vS to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %vS, align 8
  %25 = add i8 %24, 1
  %26 = and i8 %25, 127
  store i8 %26, ptr %vS, align 8
  br label %if.end

if.end:                                           ; preds = %skb_get.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_resend_i_xxx_x_set_0(ptr noundef %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_2, align 1
  %6 = lshr i8 %5, 1
  tail call void @llc_conn_resend_i_pdu_as_cmd(ptr noundef %sk, i8 noundef zeroext %6, i8 noundef zeroext 0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_resend_i_xxx_x_set_0_or_send_rr(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %call2 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %5, i8 noundef zeroext 3, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.if.then15_crit_edge, label %if.then

entry.if.then15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.then:                                          ; preds = %entry
  %sap3 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %6 = ptrtoint ptr %sap3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sap3, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %10 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call2, i32 noundef 3) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %head.i.i33 = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i33, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i34 = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i35 = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 15, i32 0, i32 20
  %16 = ptrtoint ptr %network_header.i.i35 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i.i34, ptr %network_header.i.i35, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 %conv.i.i.i
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %11, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %or13.i = or i8 %9, 1
  %18 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or13.i, ptr %ssap4.i, align 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %19 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %vR, align 1
  tail call void @llc_pdu_init_as_rr_rsp(ptr noundef nonnull %call2, i8 noundef zeroext 0, i8 noundef zeroext %20) #10
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 86
  %23 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call7 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call2, ptr noundef %24, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.thread, label %if.end, !prof !22

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call2) #10
  br label %if.end17

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %if.then15

if.then15:                                        ; preds = %if.end, %entry.if.then15_crit_edge
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ctrl_2, align 1
  %27 = lshr i8 %26, 1
  tail call void @llc_conn_resend_i_pdu_as_cmd(ptr noundef %sk, i8 noundef zeroext %27, i8 noundef zeroext 0) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end.thread
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_pdu_init_as_rr_rsp(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_resend_i_rsp_f_set_1(ptr noundef %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_2, align 1
  %6 = lshr i8 %5, 1
  tail call void @llc_conn_resend_i_pdu_as_rsp(ptr noundef %sk, i8 noundef zeroext %6, i8 noundef zeroext 1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_conn_resend_i_pdu_as_rsp(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_rej_cmd_p_set_1(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %1, i8 noundef zeroext 1, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup12_crit_edge, label %if.then

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap2, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 4) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %5, ptr %ssap4.i, align 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %15 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vR, align 1
  tail call void @llc_pdu_init_as_rej_cmd(ptr noundef nonnull %call1, i8 noundef zeroext 1, i8 noundef zeroext %16) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %20, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %cleanup12

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup12

cleanup12:                                        ; preds = %free, %cleanup.thread, %entry.cleanup12_crit_edge
  %rc.0 = phi i32 [ %call6, %free ], [ -105, %entry.cleanup12_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_pdu_init_as_rej_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_rej_rsp_f_set_1(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %1, i8 noundef zeroext 1, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup12_crit_edge, label %if.then

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap2, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 4) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %or13.i = or i8 %5, 1
  %14 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or13.i, ptr %ssap4.i, align 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %15 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vR, align 1
  tail call void @llc_pdu_init_as_rej_rsp(ptr noundef nonnull %call1, i8 noundef zeroext 1, i8 noundef zeroext %16) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %20, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %cleanup12

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup12

cleanup12:                                        ; preds = %free, %cleanup.thread, %entry.cleanup12_crit_edge
  %rc.0 = phi i32 [ %call6, %free ], [ -105, %entry.cleanup12_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_pdu_init_as_rej_rsp(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_rej_xxx_x_set_0(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %1, i8 noundef zeroext 1, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup12_crit_edge, label %if.then

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap2, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 4) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %or13.i = or i8 %5, 1
  %14 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or13.i, ptr %ssap4.i, align 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %15 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vR, align 1
  tail call void @llc_pdu_init_as_rej_rsp(ptr noundef nonnull %call1, i8 noundef zeroext 0, i8 noundef zeroext %16) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %20, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %cleanup12

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup12

cleanup12:                                        ; preds = %free, %cleanup.thread, %entry.cleanup12_crit_edge
  %rc.0 = phi i32 [ %call6, %free ], [ -105, %entry.cleanup12_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_rnr_cmd_p_set_1(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %1, i8 noundef zeroext 1, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup12_crit_edge, label %if.then

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap2, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 4) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %5, ptr %ssap4.i, align 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %15 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vR, align 1
  tail call void @llc_pdu_init_as_rnr_cmd(ptr noundef nonnull %call1, i8 noundef zeroext 1, i8 noundef zeroext %16) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %20, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %cleanup12

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup12

cleanup12:                                        ; preds = %free, %cleanup.thread, %entry.cleanup12_crit_edge
  %rc.0 = phi i32 [ %call6, %free ], [ -105, %entry.cleanup12_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_pdu_init_as_rnr_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_rnr_rsp_f_set_1(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %1, i8 noundef zeroext 1, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup12_crit_edge, label %if.then

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap2, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 4) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %or13.i = or i8 %5, 1
  %14 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or13.i, ptr %ssap4.i, align 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %15 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vR, align 1
  tail call void @llc_pdu_init_as_rnr_rsp(ptr noundef nonnull %call1, i8 noundef zeroext 1, i8 noundef zeroext %16) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %20, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %cleanup12

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup12

cleanup12:                                        ; preds = %free, %cleanup.thread, %entry.cleanup12_crit_edge
  %rc.0 = phi i32 [ %call6, %free ], [ -105, %entry.cleanup12_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_pdu_init_as_rnr_rsp(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_rnr_xxx_x_set_0(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %1, i8 noundef zeroext 1, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup12_crit_edge, label %if.then

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap2, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 4) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %or13.i = or i8 %5, 1
  %14 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or13.i, ptr %ssap4.i, align 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %15 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vR, align 1
  tail call void @llc_pdu_init_as_rnr_rsp(ptr noundef nonnull %call1, i8 noundef zeroext 0, i8 noundef zeroext %16) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %20, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %cleanup12

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup12

cleanup12:                                        ; preds = %free, %cleanup.thread, %entry.cleanup12_crit_edge
  %rc.0 = phi i32 [ %call6, %free ], [ -105, %entry.cleanup12_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_set_remote_busy(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %remote_busy_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 27
  %0 = ptrtoint ptr %remote_busy_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %remote_busy_flag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %remote_busy_flag to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %remote_busy_flag, align 2
  %busy_state_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %expire = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %expire to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %expire, align 4
  %add = add i32 %5, %3
  %call3 = tail call i32 @mod_timer(ptr noundef %busy_state_timer, i32 noundef %add) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_opt_send_rnr_xxx_x_set_0(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %1, i8 noundef zeroext 1, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup12_crit_edge, label %if.then

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap2, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 4) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %or13.i = or i8 %5, 1
  %14 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or13.i, ptr %ssap4.i, align 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %15 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vR, align 1
  tail call void @llc_pdu_init_as_rnr_rsp(ptr noundef nonnull %call1, i8 noundef zeroext 0, i8 noundef zeroext %16) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %20, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %cleanup12

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup12

cleanup12:                                        ; preds = %free, %cleanup.thread, %entry.cleanup12_crit_edge
  %rc.0 = phi i32 [ %call6, %free ], [ -105, %entry.cleanup12_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_rr_cmd_p_set_1(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %1, i8 noundef zeroext 1, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup12_crit_edge, label %if.then

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap2, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 4) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %5, ptr %ssap4.i, align 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %15 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vR, align 1
  tail call void @llc_pdu_init_as_rr_cmd(ptr noundef nonnull %call1, i8 noundef zeroext 1, i8 noundef zeroext %16) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %20, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %cleanup12

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup12

cleanup12:                                        ; preds = %free, %cleanup.thread, %entry.cleanup12_crit_edge
  %rc.0 = phi i32 [ %call6, %free ], [ -105, %entry.cleanup12_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_pdu_init_as_rr_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_rr_rsp_f_set_1(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %1, i8 noundef zeroext 1, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup13_crit_edge, label %if.then

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup13

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap2, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 4) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %or13.i = or i8 %5, 1
  %14 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or13.i, ptr %ssap4.i, align 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %15 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vR, align 1
  tail call void @llc_pdu_init_as_rr_rsp(ptr noundef nonnull %call1, i8 noundef zeroext 1, i8 noundef zeroext %16) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %20, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %cleanup13

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup13

cleanup13:                                        ; preds = %free, %cleanup.thread, %entry.cleanup13_crit_edge
  %rc.0 = phi i32 [ %call6, %free ], [ -105, %entry.cleanup13_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_ack_rsp_f_set_1(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %1, i8 noundef zeroext 1, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup12_crit_edge, label %if.then

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap2, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 4) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %or13.i = or i8 %5, 1
  %14 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or13.i, ptr %ssap4.i, align 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %15 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vR, align 1
  tail call void @llc_pdu_init_as_rr_rsp(ptr noundef nonnull %call1, i8 noundef zeroext 1, i8 noundef zeroext %16) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %20, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %cleanup12

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup12

cleanup12:                                        ; preds = %free, %cleanup.thread, %entry.cleanup12_crit_edge
  %rc.0 = phi i32 [ %call6, %free ], [ -105, %entry.cleanup12_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_rr_xxx_x_set_0(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %1, i8 noundef zeroext 1, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup12_crit_edge, label %if.then

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap2, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 4) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %or13.i = or i8 %5, 1
  %14 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or13.i, ptr %ssap4.i, align 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %15 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vR, align 1
  tail call void @llc_pdu_init_as_rr_rsp(ptr noundef nonnull %call1, i8 noundef zeroext 0, i8 noundef zeroext %16) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %20, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %cleanup12

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup12

cleanup12:                                        ; preds = %free, %cleanup.thread, %entry.cleanup12_crit_edge
  %rc.0 = phi i32 [ %call6, %free ], [ -105, %entry.cleanup12_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_ack_xxx_x_set_0(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %1, i8 noundef zeroext 1, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup12_crit_edge, label %if.then

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup12

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap2, align 4
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 4) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %conv.i.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %or13.i = or i8 %5, 1
  %14 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or13.i, ptr %ssap4.i, align 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %15 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vR, align 1
  tail call void @llc_pdu_init_as_rr_rsp(ptr noundef nonnull %call1, i8 noundef zeroext 0, i8 noundef zeroext %16) #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call6 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %20, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %cleanup12

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup12

cleanup12:                                        ; preds = %free, %cleanup.thread, %entry.cleanup12_crit_edge
  %rc.0 = phi i32 [ %call6, %free ], [ -105, %entry.cleanup12_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_conn_set_p_flag(ptr noundef %sk, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 23
  %0 = ptrtoint ptr %p_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p_flag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %value)
  %tobool1.not = icmp eq i8 %value, 0
  %spec.select = and i1 %tobool1.not, %tobool.not
  %2 = ptrtoint ptr %p_flag to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %value, ptr %p_flag, align 2
  br i1 %spec.select, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %3 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_state_change, align 4
  tail call void %4(ptr noundef %sk) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_sabme_cmd_p_set_x(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %1, i8 noundef zeroext 3, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup19_crit_edge, label %if.then

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup19

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap2, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %dmac.0 = phi ptr [ %9, %if.then5 ], [ %mac, %if.then.if.end_crit_edge ]
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %laddr, align 4
  %12 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %daddr, align 1
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 3) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 %conv.i.i.i
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %13, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %11, ptr %ssap4.i, align 1
  tail call void @llc_pdu_init_as_sabme_cmd(ptr noundef nonnull %call1, i8 noundef zeroext 1) #10
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %dev_addr10 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 86
  %23 = ptrtoint ptr %dev_addr10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr10, align 64
  %call11 = tail call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %24, ptr noundef %dmac.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  %p_flag.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 23
  %25 = ptrtoint ptr %p_flag.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %p_flag.i, align 2
  br label %cleanup19

free:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup19

cleanup19:                                        ; preds = %free, %cleanup.thread, %entry.cleanup19_crit_edge
  %rc.0 = phi i32 [ %call11, %free ], [ -105, %entry.cleanup19_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_pdu_init_as_sabme_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_ua_rsp_f_set_p(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %f_bit = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %f_bit) #10
  %0 = ptrtoint ptr %f_bit to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %f_bit, align 1, !annotation !23
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %call1 = tail call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %2, i8 noundef zeroext 3, i32 noundef 0) #10
  call void @llc_pdu_decode_pf_bit(ptr noundef %skb, ptr noundef nonnull %f_bit) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup13_crit_edge, label %if.then

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup13

if.then:                                          ; preds = %entry
  %sap2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %3 = ptrtoint ptr %sap2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sap2, align 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = getelementptr inbounds %struct.anon.44, ptr %call1, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %7, align 8
  %laddr = getelementptr inbounds %struct.llc_sap, ptr %4, i32 0, i32 5
  %9 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %laddr, align 4
  %daddr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %11 = ptrtoint ptr %daddr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %daddr, align 1
  %call.i = call ptr @skb_push(ptr noundef nonnull %call1, i32 noundef 3) #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 %conv.i.i.i
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %12, ptr %add.ptr.i.i.i, align 1
  %ssap4.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i, i32 0, i32 1
  %or13.i = or i8 %10, 1
  %19 = ptrtoint ptr %ssap4.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %or13.i, ptr %ssap4.i, align 1
  %20 = ptrtoint ptr %f_bit to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %f_bit, align 1
  call void @llc_pdu_init_as_ua_rsp(ptr noundef nonnull %call1, i8 noundef zeroext %21) #10
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 86
  %24 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr, align 64
  %mac = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call7 = call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1, ptr noundef %25, ptr noundef %mac) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %cleanup.thread, label %free, !prof !22

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %cleanup13

free:                                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef nonnull %call1, i32 noundef 0) #10
  br label %cleanup13

cleanup13:                                        ; preds = %free, %cleanup.thread, %entry.cleanup13_crit_edge
  %rc.0 = phi i32 [ %call7, %free ], [ -105, %entry.cleanup13_crit_edge ], [ 0, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %f_bit) #10
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_pdu_init_as_ua_rsp(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ac_set_s_flag_0(ptr nocapture noundef writeonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %s_flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %s_flag, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ac_set_s_flag_1(ptr nocapture noundef writeonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %s_flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %s_flag, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_start_p_timer(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_flag.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 23
  %0 = ptrtoint ptr %p_flag.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %p_flag.i, align 2
  %pf_cycle_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %expire = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 14, i32 1
  %2 = ptrtoint ptr %expire to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %expire, align 4
  %add = add i32 %3, %1
  %call2 = tail call i32 @mod_timer(ptr noundef %pf_cycle_timer, i32 noundef %add) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_ack_if_needed(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %pf_bit = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pf_bit) #10
  %0 = ptrtoint ptr %pf_bit to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pf_bit, align 1, !annotation !23
  call void @llc_pdu_decode_pf_bit(ptr noundef %skb, ptr noundef nonnull %pf_bit) #10
  %1 = ptrtoint ptr %pf_bit to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pf_bit, align 1
  %3 = and i8 %2, 1
  %ack_pf = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 32
  %4 = ptrtoint ptr %ack_pf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ack_pf, align 1
  %or35 = or i8 %5, %3
  store i8 %or35, ptr %ack_pf, align 1
  %ack_must_be_send = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 10
  %6 = ptrtoint ptr %ack_must_be_send to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ack_must_be_send, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %8 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vR, align 1
  %first_pdu_Ns = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 11
  %10 = ptrtoint ptr %first_pdu_Ns to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %first_pdu_Ns, align 2
  %11 = ptrtoint ptr %ack_must_be_send to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %ack_must_be_send, align 1
  %12 = ptrtoint ptr %ack_pf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %3, ptr %ack_pf, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vR8 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %13 = ptrtoint ptr %vR8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vR8, align 1
  %conv9 = zext i8 %14 to i16
  %first_pdu_Ns10 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 11
  %15 = ptrtoint ptr %first_pdu_Ns10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %first_pdu_Ns10, align 2
  %conv11 = zext i8 %16 to i16
  %sub = add nuw nsw i16 %conv9, 129
  %add12 = sub nsw i16 %sub, %conv11
  %rem38 = srem i16 %add12, 128
  %rem.sext = sext i16 %rem38 to i32
  %npta = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 12
  %17 = ptrtoint ptr %npta to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %npta, align 1
  %conv13 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.sext, i32 %conv13)
  %cmp.not = icmp slt i32 %rem.sext, %conv13
  br i1 %cmp.not, label %if.end.if.end20_crit_edge, label %if.then15

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then15:                                        ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  %call1.i = call ptr @llc_alloc_frame(ptr noundef %sk, ptr noundef %20, i8 noundef zeroext 1, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then15.llc_conn_ac_send_rr_rsp_f_set_ackpf.exit_crit_edge, label %if.then.i

if.then15.llc_conn_ac_send_rr_rsp_f_set_ackpf.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %llc_conn_ac_send_rr_rsp_f_set_ackpf.exit

if.then.i:                                        ; preds = %if.then15
  %sap2.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %21 = ptrtoint ptr %sap2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sap2.i, align 4
  %laddr.i = getelementptr inbounds %struct.llc_sap, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %laddr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %laddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %25 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %daddr.i, align 1
  %call.i.i = call ptr @skb_push(ptr noundef nonnull %call1.i, i32 noundef 4) #10
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 18
  %29 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %conv.i.i.i.i = and i32 %sub.ptr.sub.i.i.i, 65535
  %add.ptr.i.i.i.i = getelementptr i8, ptr %30, i32 %conv.i.i.i.i
  %32 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %26, ptr %add.ptr.i.i.i.i, align 1
  %ssap4.i.i = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %or13.i.i = or i8 %24, 1
  %33 = ptrtoint ptr %ssap4.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %or13.i.i, ptr %ssap4.i.i, align 1
  %34 = ptrtoint ptr %ack_pf to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ack_pf, align 1
  %36 = ptrtoint ptr %vR8 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %vR8, align 1
  call void @llc_pdu_init_as_rr_rsp(ptr noundef nonnull %call1.i, i8 noundef zeroext %35, i8 noundef zeroext %37) #10
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 86
  %40 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_addr.i, align 64
  %mac.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call6.i = call i32 @llc_mac_hdr_init(ptr noundef nonnull %call1.i, ptr noundef %41, ptr noundef %mac.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %cleanup.thread.i, label %free.i, !prof !22

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef nonnull %call1.i) #10
  br label %llc_conn_ac_send_rr_rsp_f_set_ackpf.exit

free.i:                                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef nonnull %call1.i, i32 noundef 0) #10
  br label %llc_conn_ac_send_rr_rsp_f_set_ackpf.exit

llc_conn_ac_send_rr_rsp_f_set_ackpf.exit:         ; preds = %free.i, %cleanup.thread.i, %if.then15.llc_conn_ac_send_rr_rsp_f_set_ackpf.exit_crit_edge
  %42 = ptrtoint ptr %ack_must_be_send to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %ack_must_be_send, align 1
  %43 = ptrtoint ptr %ack_pf to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %ack_pf, align 1
  %inc_cntr.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 35
  %44 = ptrtoint ptr %inc_cntr.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %inc_cntr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i36 = icmp eq i8 %45, 0
  br i1 %tobool.not.i36, label %if.then.i37, label %if.else.i

if.then.i37:                                      ; preds = %llc_conn_ac_send_rr_rsp_f_set_ackpf.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dec_step.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 34
  %46 = ptrtoint ptr %dec_step.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %dec_step.i, align 1
  %47 = ptrtoint ptr %inc_cntr.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %inc_cntr.i, align 2
  %dec_cntr.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 36
  %48 = ptrtoint ptr %dec_cntr.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %dec_cntr.i, align 1
  %49 = ptrtoint ptr %npta to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %npta, align 1
  %inc.i = add i8 %50, 1
  %51 = call i8 @llvm.umin.i8(i8 %inc.i, i8 127) #10
  %52 = ptrtoint ptr %npta to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %npta, align 1
  br label %if.end20

if.else.i:                                        ; preds = %llc_conn_ac_send_rr_rsp_f_set_ackpf.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dec.i = add i8 %45, -1
  %53 = ptrtoint ptr %inc_cntr.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %dec.i, ptr %inc_cntr.i, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.else.i, %if.then.i37, %if.end.if.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pf_bit) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ac_rst_sendack_flag(ptr nocapture noundef writeonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_pf = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 32
  %0 = ptrtoint ptr %ack_pf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ack_pf, align 1
  %ack_must_be_send = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 10
  %1 = ptrtoint ptr %ack_must_be_send to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ack_must_be_send, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_send_i_as_ack(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_must_be_send = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 10
  %0 = ptrtoint ptr %ack_must_be_send to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ack_must_be_send, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %sap1.i9 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %sap1.i9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sap1.i9, align 4
  %laddr.i10 = getelementptr inbounds %struct.llc_sap, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %laddr.i10 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %laddr.i10, align 4
  %daddr.i11 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %daddr.i11 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %daddr.i11, align 1
  %call.i.i12 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #10
  %data.i.i.i13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i.i13, align 4
  %head.i.i.i14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i.i14, align 8
  %sub.ptr.lhs.cast.i.i.i15 = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i.i16 = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i.i17 = sub i32 %sub.ptr.lhs.cast.i.i.i15, %sub.ptr.rhs.cast.i.i.i16
  %conv.i.i.i18 = trunc i32 %sub.ptr.sub.i.i.i17 to i16
  %network_header.i.i.i19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i.i19 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i.i18, ptr %network_header.i.i.i19, align 4
  %conv.i.i.i.i20 = and i32 %sub.ptr.sub.i.i.i17, 65535
  %add.ptr.i.i.i.i21 = getelementptr i8, ptr %11, i32 %conv.i.i.i.i20
  %13 = ptrtoint ptr %add.ptr.i.i.i.i21 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %7, ptr %add.ptr.i.i.i.i21, align 1
  %ssap4.i.i22 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i.i.i21, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %or13.i.i = or i8 %5, 1
  %14 = ptrtoint ptr %ssap4.i.i22 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or13.i.i, ptr %ssap4.i.i22, align 1
  %ack_pf.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 32
  %15 = ptrtoint ptr %ack_pf.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ack_pf.i, align 1
  %vS.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 17
  %17 = ptrtoint ptr %vS.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vS.i, align 8
  %vR.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %19 = ptrtoint ptr %vR.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %vR.i, align 1
  tail call void @llc_pdu_init_as_i_cmd(ptr noundef %skb, i8 noundef zeroext %16, i8 noundef zeroext %18, i8 noundef zeroext %20) #10
  %dev.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 86
  %23 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr.i, align 64
  %mac.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call4.i = tail call i32 @llc_mac_hdr_init(ptr noundef %skb, ptr noundef %24, ptr noundef %mac.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.llc_conn_ac_send_i_rsp_f_set_ackpf.exit_crit_edge, !prof !22

if.then.llc_conn_ac_send_i_rsp_f_set_ackpf.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %llc_conn_ac_send_i_rsp_f_set_ackpf.exit

if.then.i:                                        ; preds = %if.then
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #10
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #10, !srcloc !24
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !25

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !22

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.skb_get.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %skb_get.exit.i

skb_get.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef %skb) #10
  %27 = ptrtoint ptr %vS.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %vS.i, align 8
  %29 = add i8 %28, 1
  %30 = and i8 %29, 127
  store i8 %30, ptr %vS.i, align 8
  br label %llc_conn_ac_send_i_rsp_f_set_ackpf.exit

llc_conn_ac_send_i_rsp_f_set_ackpf.exit:          ; preds = %skb_get.exit.i, %if.then.llc_conn_ac_send_i_rsp_f_set_ackpf.exit_crit_edge
  %31 = ptrtoint ptr %ack_must_be_send to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %ack_must_be_send, align 1
  %32 = ptrtoint ptr %ack_pf.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %ack_pf.i, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %33 = ptrtoint ptr %ssap4.i.i22 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %5, ptr %ssap4.i.i22, align 1
  %vS.i23 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 17
  %34 = ptrtoint ptr %vS.i23 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %vS.i23, align 8
  %vR.i24 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %36 = ptrtoint ptr %vR.i24 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %vR.i24, align 1
  tail call void @llc_pdu_init_as_i_cmd(ptr noundef %skb, i8 noundef zeroext 0, i8 noundef zeroext %35, i8 noundef zeroext %37) #10
  %dev.i25 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %38 = ptrtoint ptr %dev.i25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i25, align 8
  %dev_addr.i26 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 86
  %40 = ptrtoint ptr %dev_addr.i26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_addr.i26, align 64
  %mac.i27 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 5, i32 1
  %call4.i28 = tail call i32 @llc_mac_hdr_init(ptr noundef %skb, ptr noundef %41, ptr noundef %mac.i27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i28)
  %tobool.not.i29 = icmp eq i32 %call4.i28, 0
  br i1 %tobool.not.i29, label %if.then.i34, label %if.else.if.end_crit_edge, !prof !22

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i34:                                      ; preds = %if.else
  %users.i.i30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i30, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i.i30, i32 1, i32 3, i32 1) #10
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i30, ptr %users.i.i30, i32 1, ptr elementtype(i32) %users.i.i30) #10, !srcloc !24
  %asmresult.i.i.i.i.i.i.i32 = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i32)
  %tobool1.not.i.i.i.i.i33 = icmp eq i32 %asmresult.i.i.i.i.i.i.i32, 0
  br i1 %tobool1.not.i.i.i.i.i33, label %if.then.i34.if.end15.sink.split.i.i.i.i.i39_crit_edge, label %if.else.i.i.i.i.i37, !prof !25

if.then.i34.if.end15.sink.split.i.i.i.i.i39_crit_edge: ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i39

if.else.i.i.i.i.i37:                              ; preds = %if.then.i34
  %add.i.i.i.i.i35 = add i32 %asmresult.i.i.i.i.i.i.i32, 1
  %43 = or i32 %add.i.i.i.i.i35, %asmresult.i.i.i.i.i.i.i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %.not.i.i.i.i.i36 = icmp sgt i32 %43, -1
  br i1 %.not.i.i.i.i.i36, label %if.else.i.i.i.i.i37.skb_get.exit.i40_crit_edge, label %if.else.i.i.i.i.i37.if.end15.sink.split.i.i.i.i.i39_crit_edge, !prof !22

if.else.i.i.i.i.i37.if.end15.sink.split.i.i.i.i.i39_crit_edge: ; preds = %if.else.i.i.i.i.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i39

if.else.i.i.i.i.i37.skb_get.exit.i40_crit_edge:   ; preds = %if.else.i.i.i.i.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get.exit.i40

if.end15.sink.split.i.i.i.i.i39:                  ; preds = %if.else.i.i.i.i.i37.if.end15.sink.split.i.i.i.i.i39_crit_edge, %if.then.i34.if.end15.sink.split.i.i.i.i.i39_crit_edge
  %.sink.i.i.i.i.i38 = phi i32 [ 2, %if.then.i34.if.end15.sink.split.i.i.i.i.i39_crit_edge ], [ 1, %if.else.i.i.i.i.i37.if.end15.sink.split.i.i.i.i.i39_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i30, i32 noundef %.sink.i.i.i.i.i38) #10
  br label %skb_get.exit.i40

skb_get.exit.i40:                                 ; preds = %if.end15.sink.split.i.i.i.i.i39, %if.else.i.i.i.i.i37.skb_get.exit.i40_crit_edge
  tail call void @llc_conn_send_pdu(ptr noundef %sk, ptr noundef %skb) #10
  %44 = ptrtoint ptr %vS.i23 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %vS.i23, align 8
  %46 = add i8 %45, 1
  %47 = and i8 %46, 127
  store i8 %47, ptr %vS.i23, align 8
  br label %if.end

if.end:                                           ; preds = %skb_get.exit.i40, %if.else.if.end_crit_edge, %llc_conn_ac_send_i_rsp_f_set_ackpf.exit
  %ret.0 = phi i32 [ %call4.i, %llc_conn_ac_send_i_rsp_f_set_ackpf.exit ], [ %call4.i28, %if.else.if.end_crit_edge ], [ 0, %skb_get.exit.i40 ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ac_adjust_npta_by_rr(ptr nocapture noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %connect_step = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 37
  %0 = ptrtoint ptr %connect_step to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %connect_step, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else19_crit_edge

entry.if.else19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19

land.lhs.true:                                    ; preds = %entry
  %remote_busy_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 27
  %2 = ptrtoint ptr %remote_busy_flag to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %remote_busy_flag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.else19_crit_edge

land.lhs.true.if.else19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else19

if.then:                                          ; preds = %land.lhs.true
  %dec_step = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 34
  %4 = ptrtoint ptr %dec_step to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dec_step, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then3:                                         ; preds = %if.then
  %dec_cntr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 36
  %6 = ptrtoint ptr %dec_cntr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dec_cntr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  %8 = ptrtoint ptr %dec_cntr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %dec_cntr, align 1
  %inc_cntr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 35
  %9 = ptrtoint ptr %inc_cntr to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %inc_cntr, align 2
  %npta = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 12
  %10 = ptrtoint ptr %npta to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %npta, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not = icmp eq i8 %11, 0
  br i1 %cmp.not, label %if.then5.if.end21_crit_edge, label %if.then8

if.then5.if.end21_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %sub = add i8 %11, -1
  %12 = ptrtoint ptr %npta to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %sub, ptr %npta, align 1
  br label %if.end21

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %sub15 = add i8 %7, -1
  %13 = ptrtoint ptr %dec_cntr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %sub15, ptr %dec_cntr, align 1
  br label %if.end21

if.else19:                                        ; preds = %land.lhs.true.if.else19_crit_edge, %entry.if.else19_crit_edge
  %14 = ptrtoint ptr %connect_step to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %connect_step, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.else, %if.then8, %if.then5.if.end21_crit_edge, %if.then.if.end21_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ac_adjust_npta_by_rnr(ptr nocapture noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %remote_busy_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 27
  %0 = ptrtoint ptr %remote_busy_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %remote_busy_flag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  %dec_step = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 34
  %2 = ptrtoint ptr %dec_step to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dec_step, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then2:                                         ; preds = %if.then
  %dec_cntr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 36
  %4 = ptrtoint ptr %dec_cntr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dec_cntr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.then4, label %if.then2.if.end13.sink.split_crit_edge

if.then2.if.end13.sink.split_crit_edge:           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.sink.split

if.then4:                                         ; preds = %if.then2
  %6 = ptrtoint ptr %dec_cntr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %dec_cntr, align 1
  %inc_cntr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 35
  %7 = ptrtoint ptr %inc_cntr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %inc_cntr, align 2
  %npta = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 12
  %8 = ptrtoint ptr %npta to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %npta, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not = icmp eq i8 %9, 0
  br i1 %cmp.not, label %if.then4.if.end13_crit_edge, label %if.then4.if.end13.sink.split_crit_edge

if.then4.if.end13.sink.split_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.sink.split

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end13.sink.split:                              ; preds = %if.then4.if.end13.sink.split_crit_edge, %if.then2.if.end13.sink.split_crit_edge
  %.sink = phi i8 [ %9, %if.then4.if.end13.sink.split_crit_edge ], [ %5, %if.then2.if.end13.sink.split_crit_edge ]
  %npta.sink = phi ptr [ %npta, %if.then4.if.end13.sink.split_crit_edge ], [ %dec_cntr, %if.then2.if.end13.sink.split_crit_edge ]
  %dec = add i8 %.sink, -1
  %10 = ptrtoint ptr %npta.sink to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %dec, ptr %npta.sink, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %if.then4.if.end13_crit_edge, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ac_dec_tx_win_size(ptr nocapture noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 29, i32 1
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  %k = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 21
  %2 = ptrtoint ptr %k to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %k, align 4
  %conv2 = zext i8 %3 to i32
  %conv3 = and i32 %1, 255
  %sub = sub nsw i32 %conv2, %conv3
  %4 = tail call i32 @llvm.smax.i32(i32 %sub, i32 1)
  %5 = trunc i32 %4 to i8
  %6 = ptrtoint ptr %k to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %k, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ac_inc_tx_win_size(ptr nocapture noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %k = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 21
  %0 = ptrtoint ptr %k to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %k, align 4
  %add = add i8 %1, 1
  %2 = tail call i8 @llvm.umin.i8(i8 %add, i8 127)
  %3 = ptrtoint ptr %k to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %k, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_stop_all_timers(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @llc_sk_stop_all_timers(ptr noundef %sk, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_sk_stop_all_timers(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_stop_other_timers(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rej_sent_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 15
  %call1 = tail call i32 @del_timer(ptr noundef %rej_sent_timer) #10
  %pf_cycle_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 14
  %call3 = tail call i32 @del_timer(ptr noundef %pf_cycle_timer) #10
  %busy_state_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 16
  %call5 = tail call i32 @del_timer(ptr noundef %busy_state_timer) #10
  %ack_must_be_send = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 10
  %0 = ptrtoint ptr %ack_must_be_send to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ack_must_be_send, align 1
  %ack_pf = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 32
  %1 = ptrtoint ptr %ack_pf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %ack_pf, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_start_ack_timer(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %expire = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 13, i32 1
  %1 = ptrtoint ptr %expire to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %expire, align 8
  %add = add i32 %2, %0
  %call2 = tail call i32 @mod_timer(ptr noundef %ack_timer, i32 noundef %add) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_start_rej_timer(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rej_sent_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %expire = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 15, i32 1
  %1 = ptrtoint ptr %expire to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %expire, align 8
  %add = add i32 %2, %0
  %call2 = tail call i32 @mod_timer(ptr noundef %rej_sent_timer, i32 noundef %add) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_start_ack_tmr_if_not_running(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 13, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ack_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %expire = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %expire to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %expire, align 8
  %add = add i32 %4, %2
  %call5 = tail call i32 @mod_timer(ptr noundef %ack_timer, i32 noundef %add) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_stop_ack_timer(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 13
  %call1 = tail call i32 @del_timer(ptr noundef %ack_timer) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_stop_p_timer(ptr noundef %sk, ptr nocapture readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pf_cycle_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 14
  %call1 = tail call i32 @del_timer(ptr noundef %pf_cycle_timer) #10
  %p_flag.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 23
  %0 = ptrtoint ptr %p_flag.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p_flag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %p_flag.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %p_flag.i, align 2
  br i1 %tobool.not.i.not, label %entry.llc_conn_set_p_flag.exit_crit_edge, label %if.then.i

entry.llc_conn_set_p_flag.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %llc_conn_set_p_flag.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %3 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_state_change.i, align 4
  tail call void %4(ptr noundef %sk) #10
  br label %llc_conn_set_p_flag.exit

llc_conn_set_p_flag.exit:                         ; preds = %if.then.i, %entry.llc_conn_set_p_flag.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_stop_rej_timer(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rej_sent_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 15
  %call1 = tail call i32 @del_timer(ptr noundef %rej_sent_timer) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_upd_nr_received(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %unacked = alloca i16, align 2
  %f_bit = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %unacked) #10
  %0 = ptrtoint ptr %unacked to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %unacked, align 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %3 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ctrl_2, align 1
  %7 = lshr i8 %6, 1
  %last_nr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 38
  %8 = ptrtoint ptr %last_nr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %last_nr, align 1
  %call4 = call i32 @llc_conn_remove_acked_pdus(ptr noundef %sk, i8 noundef zeroext %7, ptr noundef nonnull %unacked) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp sgt i32 %call4, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %dev = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and6 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %retry_count = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 9
  %13 = ptrtoint ptr %retry_count to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %retry_count, align 4
  %ack_timer = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 13
  %call7 = call i32 @del_timer(ptr noundef %ack_timer) #10
  %failed_data_req = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 33
  %14 = ptrtoint ptr %failed_data_req to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %failed_data_req, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  br i1 %tobool8.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %failed_data_req to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %failed_data_req, align 8
  %cfm_prim.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %17 = ptrtoint ptr %cfm_prim.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %cfm_prim.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  %18 = ptrtoint ptr %unacked to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %unacked, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool12.not = icmp eq i16 %19, 0
  br i1 %tobool12.not, label %if.end.if.end30_crit_edge, label %if.then13

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %expire = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 13, i32 1
  %21 = ptrtoint ptr %expire to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %expire, align 8
  %add = add i32 %22, %20
  %call17 = call i32 @mod_timer(ptr noundef %ack_timer, i32 noundef %add) #10
  br label %if.end30

if.else:                                          ; preds = %lor.lhs.false
  %failed_data_req19 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 33
  %23 = ptrtoint ptr %failed_data_req19 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %failed_data_req19, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool20.not = icmp eq i8 %24, 0
  br i1 %tobool20.not, label %if.else.if.end30_crit_edge, label %if.then21

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then21:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %f_bit) #10
  %25 = ptrtoint ptr %f_bit to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %f_bit, align 1, !annotation !23
  call void @llc_pdu_decode_pf_bit(ptr noundef %skb, ptr noundef nonnull %f_bit) #10
  %26 = ptrtoint ptr %f_bit to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %f_bit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp23 = icmp eq i8 %27, 1
  br i1 %cmp23, label %if.then25, label %if.then21.if.end28_crit_edge

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %failed_data_req19 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %failed_data_req19, align 8
  %cfm_prim.i47 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %29 = ptrtoint ptr %cfm_prim.i47 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %cfm_prim.i47, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.then21.if.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %f_bit) #10
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %if.else.if.end30_crit_edge, %if.then13, %if.end.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %unacked) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_conn_remove_acked_pdus(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_upd_p_flag(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %f_bit = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssap, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %f_bit) #10
  %7 = ptrtoint ptr %f_bit to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %f_bit, align 1, !annotation !23
  call void @llc_pdu_decode_pf_bit(ptr noundef %skb, ptr noundef nonnull %f_bit) #10
  %8 = ptrtoint ptr %f_bit to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %f_bit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %if.then
  %p_flag.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 23
  %10 = ptrtoint ptr %p_flag.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %p_flag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.not = icmp eq i8 %11, 0
  %12 = ptrtoint ptr %p_flag.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %p_flag.i, align 2
  br i1 %tobool.not.i.not, label %if.then2.llc_conn_set_p_flag.exit_crit_edge, label %if.then.i

if.then2.llc_conn_set_p_flag.exit_crit_edge:      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %llc_conn_set_p_flag.exit

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %13 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk_state_change.i, align 4
  call void %14(ptr noundef %sk) #10
  br label %llc_conn_set_p_flag.exit

llc_conn_set_p_flag.exit:                         ; preds = %if.then.i, %if.then2.llc_conn_set_p_flag.exit_crit_edge
  %pf_cycle_timer.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 14
  %call1.i = call i32 @del_timer(ptr noundef %pf_cycle_timer.i) #10
  %15 = ptrtoint ptr %p_flag.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %p_flag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.not.i = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %p_flag.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %p_flag.i, align 2
  br i1 %tobool.not.i.not.i, label %llc_conn_set_p_flag.exit.if.end_crit_edge, label %if.then.i.i

llc_conn_set_p_flag.exit.if.end_crit_edge:        ; preds = %llc_conn_set_p_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i.i:                                      ; preds = %llc_conn_set_p_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sk_state_change.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %18 = ptrtoint ptr %sk_state_change.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk_state_change.i.i, align 4
  call void %19(ptr noundef %sk) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %llc_conn_set_p_flag.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %f_bit) #10
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ac_set_data_flag_2(ptr nocapture noundef writeonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 26
  %0 = ptrtoint ptr %data_flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %data_flag, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ac_set_data_flag_0(ptr nocapture noundef writeonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 26
  %0 = ptrtoint ptr %data_flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data_flag, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ac_set_data_flag_1(ptr nocapture noundef writeonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 26
  %0 = ptrtoint ptr %data_flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %data_flag, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ac_set_data_flag_1_if_data_flag_eq_0(ptr nocapture noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 26
  %0 = ptrtoint ptr %data_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %data_flag to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %data_flag, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ac_set_p_flag_0(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %p_flag.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 23
  %0 = ptrtoint ptr %p_flag.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p_flag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %p_flag.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %p_flag.i, align 2
  br i1 %tobool.not.i.not, label %entry.llc_conn_set_p_flag.exit_crit_edge, label %if.then.i

entry.llc_conn_set_p_flag.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %llc_conn_set_p_flag.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %3 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_state_change.i, align 4
  tail call void %4(ptr noundef %sk) #10
  br label %llc_conn_set_p_flag.exit

llc_conn_set_p_flag.exit:                         ; preds = %if.then.i, %entry.llc_conn_set_p_flag.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ac_set_remote_busy_0(ptr nocapture noundef writeonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %remote_busy_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 27
  %0 = ptrtoint ptr %remote_busy_flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %remote_busy_flag, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ac_set_cause_flag_0(ptr nocapture noundef writeonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cause_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 28
  %0 = ptrtoint ptr %cause_flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %cause_flag, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ac_set_cause_flag_1(ptr nocapture noundef writeonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cause_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 28
  %0 = ptrtoint ptr %cause_flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %cause_flag, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ac_set_retry_cnt_0(ptr nocapture noundef writeonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %retry_count = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %retry_count to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %retry_count, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ac_inc_retry_cnt_by_1(ptr nocapture noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %retry_count = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %retry_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %retry_count, align 4
  %inc = add i8 %1, 1
  store i8 %inc, ptr %retry_count, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ac_set_vr_0(ptr nocapture noundef writeonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %0 = ptrtoint ptr %vR to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %vR, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ac_inc_vr_by_1(ptr nocapture noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %0 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vR, align 1
  %add = add i8 %1, 1
  %and = and i8 %add, 127
  store i8 %and, ptr %vR, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ac_set_vs_0(ptr nocapture noundef writeonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vS = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 17
  %0 = ptrtoint ptr %vS to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %vS, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ac_set_vs_nr(ptr nocapture noundef %sk, ptr nocapture readnone %skb) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %last_nr = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 38
  %0 = ptrtoint ptr %last_nr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %last_nr, align 1
  %vS = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 17
  %2 = ptrtoint ptr %vS to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %vS, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_conn_pf_cycle_tmr_cb(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1068
  tail call fastcc void @llc_conn_tmr_common_cb(ptr noundef %add.ptr, i8 noundef zeroext 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @llc_conn_tmr_common_cb(ptr noundef %sk, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef 0, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %sk_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %1(ptr noundef nonnull %call.i) #10
  br label %skb_orphan.exit.i

do.body.i.i:                                      ; preds = %if.then
  %2 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool3.not.i.i = icmp eq ptr %4, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.skb_orphan.exit.i_crit_edge, label %do.body7.i.i, !prof !22

do.body.i.i.skb_orphan.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_orphan.exit.i

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #10, !srcloc !26
  unreachable

skb_orphan.exit.i:                                ; preds = %do.body.i.i.skb_orphan.exit.i_crit_edge, %if.then.i.i
  %5 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sk, ptr %5, align 4
  %7 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sock_rfree, ptr %destructor.i.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 20
  %8 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %truesize.i, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %9, ptr elementtype(i32) %sk_backlog.i) #10, !srcloc !27
  %skc_prot.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %11 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_prot.i.i.i, align 8
  %memory_allocated.i.i.i = getelementptr inbounds %struct.proto, ptr %12, i32 0, i32 32
  %13 = ptrtoint ptr %memory_allocated.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %memory_allocated.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.i.not.i.i, label %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge, label %if.end.i.i

skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge: ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_set_owner_r.exit

if.end.i.i:                                       ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %truesize.i, align 8
  %sk_forward_alloc.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %17 = ptrtoint ptr %sk_forward_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_forward_alloc.i.i, align 8
  %sub.i.i = sub i32 %18, %16
  store i32 %sub.i.i, ptr %sk_forward_alloc.i.i, align 8
  br label %skb_set_owner_r.exit

skb_set_owner_r.exit:                             ; preds = %if.end.i.i, %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge
  %19 = ptrtoint ptr %cb.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %type, ptr %cb.i, align 1
  %state.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 2
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.i = icmp eq i8 %21, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %skb_set_owner_r.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #10
  br label %if.end

if.else.i:                                        ; preds = %skb_set_owner_r.exit
  %dep_map.i.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lockdep_sock_is_held.exit.i.i.i, label %if.else.i.sock_owned_by_user.exit.i_crit_edge

if.else.i.sock_owned_by_user.exit.i_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

lockdep_sock_is_held.exit.i.i.i:                  ; preds = %if.else.i
  %dep_map2.i.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i.i)
  %tobool4.i.not.i.i.i = icmp eq i32 %call.i6.i.i.i.i, 0
  br i1 %tobool4.i.not.i.i.i, label %land.rhs.i.i.i, label %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge

lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs.i.i.i:                                   ; preds = %lockdep_sock_is_held.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %22 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %land.rhs3.i.i.i

land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

land.rhs3.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b40.i.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, label %if.then.i.i.i, !prof !22

land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge: ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_owned_by_user.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1750, i32 noundef 9, ptr noundef null) #10
  br label %sock_owned_by_user.exit.i

sock_owned_by_user.exit.i:                        ; preds = %if.then.i.i.i, %land.rhs3.i.i.i.sock_owned_by_user.exit.i_crit_edge, %land.rhs.i.i.i.sock_owned_by_user.exit.i_crit_edge, %lockdep_sock_is_held.exit.i.i.i.sock_owned_by_user.exit.i_crit_edge, %if.else.i.sock_owned_by_user.exit.i_crit_edge
  %owned.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %owned.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %owned.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i, label %if.then4.i, label %if.else6.i

if.then4.i:                                       ; preds = %sock_owned_by_user.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 @llc_conn_state_process(ptr noundef %sk, ptr noundef nonnull %call.i) #10
  br label %if.end

if.else6.i:                                       ; preds = %sock_owned_by_user.exit.i
  %arrayidx.i.i = getelementptr %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 47
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %arrayidx.i.i, align 1
  %26 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %and.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i14.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i14.i, label %if.else6.i.skb_dst_force.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.else6.i.skb_dst_force.exit.i.i_crit_edge:      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_force.exit.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.else6.i
  %call.i.i.i.i15.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i15.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i15.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.skb_dst_is_noref.exit.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.skb_dst_is_noref.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_is_noref.exit.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %call2.i.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i.i)
  %tobool3.not.i.i.i.i.i = icmp eq i32 %call2.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i, label %do.end.i.i.i.i.i, label %land.rhs.i.i.i.i.i.skb_dst_is_noref.exit.i.i.i_crit_edge, !prof !25

land.rhs.i.i.i.i.i.skb_dst_is_noref.exit.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_is_noref.exit.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst_is_noref.exit.i.i.i

skb_dst_is_noref.exit.i.i.i:                      ; preds = %do.end.i.i.i.i.i, %land.rhs.i.i.i.i.i.skb_dst_is_noref.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.skb_dst_is_noref.exit.i.i.i_crit_edge
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %tobool1.i.i.i.i = icmp ugt i32 %30, 1
  br i1 %tobool1.i.i.i.i, label %if.then.i.i16.i, label %skb_dst_is_noref.exit.i.i.i.skb_dst_force.exit.i.i_crit_edge

skb_dst_is_noref.exit.i.i.i.skb_dst_force.exit.i.i_crit_edge: ; preds = %skb_dst_is_noref.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst_force.exit.i.i

if.then.i.i16.i:                                  ; preds = %skb_dst_is_noref.exit.i.i.i
  %and.i2.i.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i.i)
  %tobool.not.i3.i.i.i = icmp eq i32 %and.i2.i.i.i, 0
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i16.i.skb_dst.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i16.i.skb_dst.exit.i.i.i_crit_edge:     ; preds = %if.then.i.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i16.i
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_dst.exit.i.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_dst.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_dst.exit.i.i.i_crit_edge, !prof !25

land.rhs.i.i.i.i.skb_dst.exit.i.i.i_crit_edge:    ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit.i.i.i

skb_dst.exit.i.i.i:                               ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_dst.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_dst.exit.i.i.i_crit_edge, %if.then.i.i16.i.skb_dst.exit.i.i.i_crit_edge
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %26, align 8
  %and25.i.i.i.i = and i32 %32, -2
  %33 = inttoptr i32 %and25.i.i.i.i to ptr
  %call2.i.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i17.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool.not.i.i17.i, label %do.end.i.i.i, label %skb_dst.exit.i.i.i.if.end.i.i.i_crit_edge, !prof !25

skb_dst.exit.i.i.i.if.end.i.i.i_crit_edge:        ; preds = %skb_dst.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %skb_dst.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 316, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %skb_dst.exit.i.i.i.if.end.i.i.i_crit_edge
  %__refcnt.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %33, i32 0, i32 18
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !28
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i.i.i, i32 1, i32 3, i32 1) #10
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i.i.i, ptr %__refcnt.i.i.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i.i.i) #10, !srcloc !29
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %if.end.i.i.i.dst_hold_safe.exit.i.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i.i

if.end.i.i.i.dst_hold_safe.exit.i.i.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dst_hold_safe.exit.i.i.i

do.end11.i.i.i.i.i.i.i.i:                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !30
  br label %dst_hold_safe.exit.i.i.i

dst_hold_safe.exit.i.i.i:                         ; preds = %do.end11.i.i.i.i.i.i.i.i, %if.end.i.i.i.dst_hold_safe.exit.i.i.i_crit_edge
  %spec.select.i.i.i = phi ptr [ null, %if.end.i.i.i.dst_hold_safe.exit.i.i.i_crit_edge ], [ %33, %do.end11.i.i.i.i.i.i.i.i ]
  %35 = ptrtoint ptr %spec.select.i.i.i to i32
  %36 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %26, align 8
  %tobool27.not.i.i.i = icmp eq ptr %spec.select.i.i.i, null
  %slow_gro.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 3
  %37 = ptrtoint ptr %slow_gro.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %bf.load.i.i.i = load i32, ptr %slow_gro.i.i.i, align 2
  %bf.load.mask.i.i.i = and i32 %bf.load.i.i.i, 4096
  %bf.shl.i.i.i = select i1 %tobool27.not.i.i.i, i32 %bf.load.mask.i.i.i, i32 4096
  %bf.clear34.i.i.i = and i32 %bf.load.i.i.i, -4097
  %bf.set.i.i.i = or i32 %bf.shl.i.i.i, %bf.clear34.i.i.i
  store i32 %bf.set.i.i.i, ptr %slow_gro.i.i.i, align 2
  br label %skb_dst_force.exit.i.i

skb_dst_force.exit.i.i:                           ; preds = %dst_hold_safe.exit.i.i.i, %skb_dst_is_noref.exit.i.i.i.skb_dst_force.exit.i.i_crit_edge, %if.else6.i.skb_dst_force.exit.i.i_crit_edge
  %tail.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9, i32 3
  %38 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i11 = icmp eq ptr %39, null
  br i1 %tobool.not.i.i11, label %do.body2.i.i, label %if.else.i.i

do.body2.i.i:                                     ; preds = %skb_dst_force.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9, i32 2
  %40 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call.i, ptr %head.i.i, align 4
  br label %__sk_add_backlog.exit.i

if.else.i.i:                                      ; preds = %skb_dst_force.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %39, align 8
  br label %__sk_add_backlog.exit.i

__sk_add_backlog.exit.i:                          ; preds = %if.else.i.i, %do.body2.i.i
  %42 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %call.i, ptr %tail.i.i, align 4
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %call.i, align 8
  br label %if.end

if.end:                                           ; preds = %__sk_add_backlog.exit.i, %if.then4.i, %do.end.i, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_conn_busy_tmr_cb(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1172
  tail call fastcc void @llc_conn_tmr_common_cb(ptr noundef %add.ptr, i8 noundef zeroext 8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_conn_ack_tmr_cb(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1016
  tail call fastcc void @llc_conn_tmr_common_cb(ptr noundef %add.ptr, i8 noundef zeroext 5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_conn_rej_tmr_cb(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1120
  tail call fastcc void @llc_conn_tmr_common_cb(ptr noundef %add.ptr, i8 noundef zeroext 7)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ac_rst_vs(ptr nocapture noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vS = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 17
  %0 = ptrtoint ptr %vS to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vS, align 8
  %X = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 31
  %2 = ptrtoint ptr %X to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %X, align 2
  %last_nr.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 38
  %3 = ptrtoint ptr %last_nr.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %last_nr.i, align 1
  store i8 %4, ptr %vS, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ac_upd_vs(ptr nocapture noundef %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_2, align 1
  %6 = lshr i8 %5, 1
  %vS = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 17
  %7 = ptrtoint ptr %vS to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vS, align 8
  %X = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 31
  %9 = ptrtoint ptr %X to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %X, align 2
  %sub.i = sub i8 %6, %8
  %sub5.i = sub i8 %10, %8
  call void @__sanitizer_cov_trace_cmp1(i8 %sub.i, i8 %sub5.i)
  %cmp.i.not = icmp ugt i8 %sub.i, %sub5.i
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %last_nr.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 38
  %11 = ptrtoint ptr %last_nr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %last_nr.i, align 1
  %13 = ptrtoint ptr %vS to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %vS, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @llc_circular_between(i8 noundef zeroext %a, i8 noundef zeroext %b, i8 noundef zeroext %c) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i8 %b, %a
  %sub5 = sub i8 %c, %a
  call void @__sanitizer_cov_trace_cmp1(i8 %sub, i8 %sub5)
  %cmp = icmp ule i8 %sub, %sub5
  %conv10 = zext i1 %cmp to i8
  ret i8 %conv10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_disc(ptr nocapture noundef readnone %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_reset(ptr noundef %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @llc_sk_reset(ptr noundef %sk) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_sk_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_conn_state_process(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/llc/llc_c_ac.c", i32 1440, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @llc_process_tmr_ev._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @llc_process_tmr_ev._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/net/sock.h", i32 1750, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/net/dst.h", i32 316, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{!"auto-init"}
!24 = !{i64 2148518000, i64 2148518032, i64 2148518061, i64 2148518095, i64 2148518126, i64 2148518149}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i64 2154989528, i64 2154990016, i64 2154989565, i64 2154989621, i64 2154989655, i64 2154989679, i64 2154989720, i64 2154989741, i64 2154989769, i64 2154989803}
!27 = !{i64 2148516470, i64 2148516496, i64 2148516525, i64 2148516559, i64 2148516590, i64 2148516613}
!28 = !{i64 2148515889}
!29 = !{i64 1001509, i64 1001534, i64 1001556, i64 1001572, i64 1001584, i64 1001604, i64 1001628, i64 1001644, i64 1001656}
!30 = !{i64 2148516077}
