; ModuleID = '/llk/IR_all_yes/net/llc/llc_c_ev.c_pt.bc'
source_filename = "../net/llc/llc_c_ev.c"
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
%struct.llc_pdu_un = type { i8, i8, i8 }
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
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
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
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.llc_pdu_sn = type { i8, i8, i8, i8 }
%struct.llc_sock = type { %struct.sock, %struct.sockaddr_llc, i8, ptr, %struct.llc_addr, %struct.llc_addr, ptr, ptr, i32, i8, i8, i8, i8, %struct.llc_timer, %struct.llc_timer, %struct.llc_timer, %struct.llc_timer, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, %struct.sk_buff_head, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, %struct.hlist_node }
%struct.sockaddr_llc = type { i16, i16, i8, i8, i8, i8, [6 x i8], [2 x i8] }
%struct.llc_addr = type { i8, [6 x i8] }
%struct.llc_timer = type { %struct.timer_list, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.125, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.125 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
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

@llc_conn_ev_rx_i_cmd_pbit_set_x_inval_ns._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: matched, state=%d, ns=%d, vr=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"llc_conn_ev_rx_i_cmd_pbit_set_x_inval_ns\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/llc/llc_c_ev.c\00", [45 x i8] zeroinitializer }, align 32
@llc_conn_ev_rx_i_cmd_pbit_set_x_inval_ns._entry_ptr = internal global ptr @llc_conn_ev_rx_i_cmd_pbit_set_x_inval_ns._entry, section ".printk_index", align 4
@llc_conn_ev_rx_i_rsp_fbit_set_x_inval_ns._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"llc_conn_ev_rx_i_rsp_fbit_set_x_inval_ns\00", [55 x i8] zeroinitializer }, align 32
@llc_conn_ev_rx_i_rsp_fbit_set_x_inval_ns._entry_ptr = internal global ptr @llc_conn_ev_rx_i_rsp_fbit_set_x_inval_ns._entry, section ".printk_index", align 4
@llc_conn_ev_rx_zzz_cmd_pbit_set_x_inval_nr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: matched, state=%d, vs=%d, nr=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"llc_conn_ev_rx_zzz_cmd_pbit_set_x_inval_nr\00", [53 x i8] zeroinitializer }, align 32
@llc_conn_ev_rx_zzz_cmd_pbit_set_x_inval_nr._entry_ptr = internal global ptr @llc_conn_ev_rx_zzz_cmd_pbit_set_x_inval_nr._entry, section ".printk_index", align 4
@llc_conn_ev_rx_zzz_rsp_fbit_set_x_inval_nr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.6, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"llc_conn_ev_rx_zzz_rsp_fbit_set_x_inval_nr\00", [53 x i8] zeroinitializer }, align 32
@llc_conn_ev_rx_zzz_rsp_fbit_set_x_inval_nr._entry_ptr = internal global ptr @llc_conn_ev_rx_zzz_rsp_fbit_set_x_inval_nr._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 8, i64 12, i64 96, i64 132]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 230, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 308, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 513, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [22 x i8] c"../net/llc/llc_c_ev.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 532, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @llc_conn_ev_rx_i_cmd_pbit_set_x_inval_ns._entry, ptr @llc_conn_ev_rx_i_cmd_pbit_set_x_inval_ns._entry_ptr, ptr @llc_conn_ev_rx_i_rsp_fbit_set_x_inval_ns._entry, ptr @llc_conn_ev_rx_i_rsp_fbit_set_x_inval_ns._entry_ptr, ptr @llc_conn_ev_rx_zzz_cmd_pbit_set_x_inval_nr._entry, ptr @llc_conn_ev_rx_zzz_cmd_pbit_set_x_inval_nr._entry_ptr, ptr @llc_conn_ev_rx_zzz_rsp_fbit_set_x_inval_nr._entry, ptr @llc_conn_ev_rx_zzz_rsp_fbit_set_x_inval_nr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_conn_ev_rx_i_cmd_pbit_set_x_inval_ns._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_conn_ev_rx_i_rsp_fbit_set_x_inval_ns._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_conn_ev_rx_zzz_cmd_pbit_set_x_inval_nr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_conn_ev_rx_zzz_rsp_fbit_set_x_inval_nr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_conn_req(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prim = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prim to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prim, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prim_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %prim_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prim_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp3 = icmp ne i8 %3, 1
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_data_req(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prim = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prim to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prim, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prim_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %prim_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prim_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp3 = icmp ne i8 %3, 1
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_disc_req(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prim = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prim to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prim, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp eq i8 %1, 4
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prim_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %prim_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prim_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp3 = icmp ne i8 %3, 1
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rst_req(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prim = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prim to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prim, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp = icmp eq i8 %1, 5
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prim_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %prim_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prim_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp3 = icmp ne i8 %3, 1
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_local_busy_detected(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prim_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %prim_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prim_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp3 = icmp ne i8 %3, 7
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_local_busy_cleared(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prim_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %prim_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prim_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp3 = icmp ne i8 %3, 8
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_bad_pdu(ptr nocapture noundef readnone %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_disc_cmd_pbit_set_x(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %ssap = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssap, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and2)
  %cmp = icmp eq i32 %and2, 3
  br i1 %cmp, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %and8 = and i32 %conv1, 236
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and8)
  %cmp9 = icmp ne i32 %and8, 64
  %phi.cast = zext i1 %cmp9 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %9 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true.land.end_crit_edge ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_dm_rsp_fbit_set_x(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %ssap = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssap, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and2)
  %cmp = icmp eq i32 %and2, 3
  br i1 %cmp, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %and8 = and i32 %conv1, 236
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and8)
  %cmp9 = icmp ne i32 %and8, 12
  %phi.cast = zext i1 %cmp9 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %9 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true.land.end_crit_edge ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_frmr_rsp_fbit_set_x(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %ssap = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssap, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and2)
  %cmp = icmp eq i32 %and2, 3
  br i1 %cmp, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %and8 = and i32 %conv1, 236
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %and8)
  %cmp9 = icmp ne i32 %and8, 132
  %phi.cast = zext i1 %cmp9 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %9 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true.land.end_crit_edge ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_i_cmd_pbit_set_0(ptr noundef %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sk_backlog.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %6 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %truesize.i, align 8
  %add.i = add i32 %7, %5
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %8 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_rcvbuf.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %9)
  %cmp.i.not = icmp ult i32 %add.i, %9
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssap, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctrl_1, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %land.lhs.true9, label %land.lhs.true3.land.end_crit_edge

land.lhs.true3.land.end_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true9:                                   ; preds = %land.lhs.true3
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctrl_2, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool12.not = icmp eq i8 %18, 0
  br i1 %tobool12.not, label %land.rhs, label %land.lhs.true9.land.end_crit_edge

land.lhs.true9.land.end_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  %19 = lshr i8 %14, 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %20 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vR, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp = icmp ne i8 %19, %21
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true9.land.end_crit_edge, %land.lhs.true3.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %22 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true3.land.end_crit_edge ], [ 1, %land.lhs.true9.land.end_crit_edge ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_i_cmd_pbit_set_1(ptr noundef %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sk_backlog.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %6 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %truesize.i, align 8
  %add.i = add i32 %7, %5
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %8 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_rcvbuf.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %9)
  %cmp.i.not = icmp ult i32 %add.i, %9
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssap, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctrl_1, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %land.lhs.true9, label %land.lhs.true3.land.end_crit_edge

land.lhs.true3.land.end_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true9:                                   ; preds = %land.lhs.true3
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctrl_2, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool12.not = icmp eq i8 %18, 0
  br i1 %tobool12.not, label %land.lhs.true9.land.end_crit_edge, label %land.rhs

land.lhs.true9.land.end_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  %19 = lshr i8 %14, 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %20 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vR, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp = icmp ne i8 %19, %21
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true9.land.end_crit_edge, %land.lhs.true3.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %22 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true3.land.end_crit_edge ], [ 1, %land.lhs.true9.land.end_crit_edge ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_i_cmd_pbit_set_0_unexpd_ns(ptr nocapture noundef readonly %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %4 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vR, align 1
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrl_1, align 1
  %8 = lshr i8 %7, 1
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ssap, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %12 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  %or.cond = select i1 %tobool.not, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %land.lhs.true11, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true11:                                  ; preds = %entry
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctrl_2, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp ne i8 %15, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %5)
  %cmp.not = icmp eq i8 %8, %5
  %or.cond30 = select i1 %tobool14.not, i1 true, i1 %cmp.not
  br i1 %or.cond30, label %land.lhs.true11.land.end_crit_edge, label %land.rhs

land.lhs.true11.land.end_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  %rw = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 22
  %16 = ptrtoint ptr %rw to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rw, align 1
  %conv.i = zext i8 %5 to i16
  %conv1.i = zext i8 %17 to i16
  %add.i = add nsw i16 %conv.i, -1
  %sub.i = add nsw i16 %add.i, %conv1.i
  %rem5.i = srem i16 %sub.i, 128
  %conv2.i = trunc i16 %rem5.i to i8
  %call.i = tail call zeroext i8 @llc_circular_between(i8 noundef zeroext %5, i8 noundef zeroext %8, i8 noundef zeroext %conv2.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i = icmp eq i8 %call.i, 0
  %phi.cast = zext i1 %tobool.not.i to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true11.land.end_crit_edge, %entry.land.end_crit_edge
  %18 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true11.land.end_crit_edge ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_i_cmd_pbit_set_1_unexpd_ns(ptr nocapture noundef readonly %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %4 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vR, align 1
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrl_1, align 1
  %8 = lshr i8 %7, 1
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ssap, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %12 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  %or.cond = select i1 %tobool.not, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %land.lhs.true11, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true11:                                  ; preds = %entry
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctrl_2, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %5)
  %cmp.not = icmp eq i8 %8, %5
  %or.cond30 = select i1 %tobool14.not, i1 true, i1 %cmp.not
  br i1 %or.cond30, label %land.lhs.true11.land.end_crit_edge, label %land.rhs

land.lhs.true11.land.end_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  %rw = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 22
  %16 = ptrtoint ptr %rw to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rw, align 1
  %conv.i = zext i8 %5 to i16
  %conv1.i = zext i8 %17 to i16
  %add.i = add nsw i16 %conv.i, -1
  %sub.i = add nsw i16 %add.i, %conv1.i
  %rem5.i = srem i16 %sub.i, 128
  %conv2.i = trunc i16 %rem5.i to i8
  %call.i = tail call zeroext i8 @llc_circular_between(i8 noundef zeroext %5, i8 noundef zeroext %8, i8 noundef zeroext %conv2.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i = icmp eq i8 %call.i, 0
  %phi.cast = zext i1 %tobool.not.i to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true11.land.end_crit_edge, %entry.land.end_crit_edge
  %18 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true11.land.end_crit_edge ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_i_cmd_pbit_set_x_inval_ns(ptr nocapture noundef readonly %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %4 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vR, align 1
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrl_1, align 1
  %8 = lshr i8 %7, 1
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ssap, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp ne i8 %11, 0
  %12 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp ne i8 %12, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool8.not
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %5)
  %cmp.not = icmp eq i8 %8, %5
  %or.cond36 = select i1 %or.cond, i1 true, i1 %cmp.not
  br i1 %or.cond36, label %entry.if.end_crit_edge, label %land.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.end:                                         ; preds = %entry
  %rw = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 22
  %13 = ptrtoint ptr %rw to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rw, align 1
  %conv.i = zext i8 %5 to i16
  %conv1.i = zext i8 %14 to i16
  %add.i = add nsw i16 %conv.i, -1
  %sub.i = add nsw i16 %add.i, %conv1.i
  %rem5.i = srem i16 %sub.i, 128
  %conv2.i = trunc i16 %rem5.i to i8
  %call.i = tail call zeroext i8 @llc_circular_between(i8 noundef zeroext %5, i8 noundef zeroext %8, i8 noundef zeroext %conv2.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i.not = icmp eq i8 %call.i, 0
  br i1 %tobool.not.i.not, label %do.end, label %land.end.if.end_crit_edge

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 2
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %state, align 8
  %conv22 = zext i8 %16 to i32
  %conv23 = zext i8 %8 to i32
  %conv24 = zext i8 %5 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv22, i32 noundef %conv23, i32 noundef %conv24) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.end.if.end_crit_edge, %entry.if.end_crit_edge
  %17 = phi i32 [ 0, %do.end ], [ 1, %land.end.if.end_crit_edge ], [ 1, %entry.if.end_crit_edge ]
  ret i32 %17
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_i_rsp_fbit_set_0(ptr noundef %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sk_backlog.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %6 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %truesize.i, align 8
  %add.i = add i32 %7, %5
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %8 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_rcvbuf.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %9)
  %cmp.i.not = icmp ult i32 %add.i, %9
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssap, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %land.lhs.true.land.end_crit_edge, label %land.lhs.true3

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctrl_1, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %land.lhs.true9, label %land.lhs.true3.land.end_crit_edge

land.lhs.true3.land.end_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true9:                                   ; preds = %land.lhs.true3
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctrl_2, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool12.not = icmp eq i8 %18, 0
  br i1 %tobool12.not, label %land.rhs, label %land.lhs.true9.land.end_crit_edge

land.lhs.true9.land.end_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  %19 = lshr i8 %14, 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %20 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vR, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp = icmp ne i8 %19, %21
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true9.land.end_crit_edge, %land.lhs.true3.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %22 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true3.land.end_crit_edge ], [ 1, %land.lhs.true9.land.end_crit_edge ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_i_rsp_fbit_set_1(ptr nocapture noundef readonly %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %land.lhs.true6, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrl_2, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %tobool9.not, label %land.lhs.true6.land.end_crit_edge, label %land.rhs

land.lhs.true6.land.end_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  %13 = lshr i8 %8, 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %14 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vR, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp = icmp ne i8 %13, %15
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %16 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true6.land.end_crit_edge ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_i_rsp_fbit_set_x(ptr noundef %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sk_backlog.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %6 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %truesize.i, align 8
  %add.i = add i32 %7, %5
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %8 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_rcvbuf.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %9)
  %cmp.i.not = icmp ult i32 %add.i, %9
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssap, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %land.lhs.true.land.end_crit_edge, label %land.lhs.true3

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctrl_1, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %land.rhs, label %land.lhs.true3.land.end_crit_edge

land.lhs.true3.land.end_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  %16 = lshr i8 %14, 1
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %17 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vR, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp = icmp ne i8 %16, %18
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true3.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %19 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true3.land.end_crit_edge ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_i_rsp_fbit_set_0_unexpd_ns(ptr nocapture noundef readonly %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %4 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vR, align 1
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrl_1, align 1
  %8 = lshr i8 %7, 1
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ssap, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp ne i8 %11, 0
  %12 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  %or.cond = select i1 %tobool.not, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %land.lhs.true11, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true11:                                  ; preds = %entry
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctrl_2, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp ne i8 %15, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %5)
  %cmp.not = icmp eq i8 %8, %5
  %or.cond30 = select i1 %tobool14.not, i1 true, i1 %cmp.not
  br i1 %or.cond30, label %land.lhs.true11.land.end_crit_edge, label %land.rhs

land.lhs.true11.land.end_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  %rw = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 22
  %16 = ptrtoint ptr %rw to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rw, align 1
  %conv.i = zext i8 %5 to i16
  %conv1.i = zext i8 %17 to i16
  %add.i = add nsw i16 %conv.i, -1
  %sub.i = add nsw i16 %add.i, %conv1.i
  %rem5.i = srem i16 %sub.i, 128
  %conv2.i = trunc i16 %rem5.i to i8
  %call.i = tail call zeroext i8 @llc_circular_between(i8 noundef zeroext %5, i8 noundef zeroext %8, i8 noundef zeroext %conv2.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i = icmp eq i8 %call.i, 0
  %phi.cast = zext i1 %tobool.not.i to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true11.land.end_crit_edge, %entry.land.end_crit_edge
  %18 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true11.land.end_crit_edge ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_i_rsp_fbit_set_1_unexpd_ns(ptr nocapture noundef readonly %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %4 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vR, align 1
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrl_1, align 1
  %8 = lshr i8 %7, 1
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ssap, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp ne i8 %11, 0
  %12 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  %or.cond = select i1 %tobool.not, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %land.lhs.true11, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true11:                                  ; preds = %entry
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctrl_2, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %5)
  %cmp.not = icmp eq i8 %8, %5
  %or.cond30 = select i1 %tobool14.not, i1 true, i1 %cmp.not
  br i1 %or.cond30, label %land.lhs.true11.land.end_crit_edge, label %land.rhs

land.lhs.true11.land.end_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  %rw = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 22
  %16 = ptrtoint ptr %rw to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rw, align 1
  %conv.i = zext i8 %5 to i16
  %conv1.i = zext i8 %17 to i16
  %add.i = add nsw i16 %conv.i, -1
  %sub.i = add nsw i16 %add.i, %conv1.i
  %rem5.i = srem i16 %sub.i, 128
  %conv2.i = trunc i16 %rem5.i to i8
  %call.i = tail call zeroext i8 @llc_circular_between(i8 noundef zeroext %5, i8 noundef zeroext %8, i8 noundef zeroext %conv2.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i = icmp eq i8 %call.i, 0
  %phi.cast = zext i1 %tobool.not.i to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true11.land.end_crit_edge, %entry.land.end_crit_edge
  %18 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true11.land.end_crit_edge ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_i_rsp_fbit_set_x_unexpd_ns(ptr nocapture noundef readonly %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %4 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vR, align 1
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrl_1, align 1
  %8 = lshr i8 %7, 1
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ssap, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %12 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp ne i8 %12, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool8.not
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %5)
  %cmp.not = icmp eq i8 %8, %5
  %or.cond23 = select i1 %or.cond, i1 true, i1 %cmp.not
  br i1 %or.cond23, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rw = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 22
  %13 = ptrtoint ptr %rw to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rw, align 1
  %conv.i = zext i8 %5 to i16
  %conv1.i = zext i8 %14 to i16
  %add.i = add nsw i16 %conv.i, -1
  %sub.i = add nsw i16 %add.i, %conv1.i
  %rem5.i = srem i16 %sub.i, 128
  %conv2.i = trunc i16 %rem5.i to i8
  %call.i = tail call zeroext i8 @llc_circular_between(i8 noundef zeroext %5, i8 noundef zeroext %8, i8 noundef zeroext %conv2.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i = icmp eq i8 %call.i, 0
  %phi.cast = zext i1 %tobool.not.i to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %15 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_i_rsp_fbit_set_x_inval_ns(ptr nocapture noundef readonly %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %vR = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 18
  %4 = ptrtoint ptr %vR to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vR, align 1
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrl_1, align 1
  %8 = lshr i8 %7, 1
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ssap, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %12 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp ne i8 %12, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool8.not
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %5)
  %cmp.not = icmp eq i8 %8, %5
  %or.cond36 = select i1 %or.cond, i1 true, i1 %cmp.not
  br i1 %or.cond36, label %entry.if.end_crit_edge, label %land.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.end:                                         ; preds = %entry
  %rw = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 22
  %13 = ptrtoint ptr %rw to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rw, align 1
  %conv.i = zext i8 %5 to i16
  %conv1.i = zext i8 %14 to i16
  %add.i = add nsw i16 %conv.i, -1
  %sub.i = add nsw i16 %add.i, %conv1.i
  %rem5.i = srem i16 %sub.i, 128
  %conv2.i = trunc i16 %rem5.i to i8
  %call.i = tail call zeroext i8 @llc_circular_between(i8 noundef zeroext %5, i8 noundef zeroext %8, i8 noundef zeroext %conv2.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i.not = icmp eq i8 %call.i, 0
  br i1 %tobool.not.i.not, label %do.end, label %land.end.if.end_crit_edge

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 2
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %state, align 8
  %conv22 = zext i8 %16 to i32
  %conv23 = zext i8 %8 to i32
  %conv24 = zext i8 %5 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef %conv22, i32 noundef %conv23, i32 noundef %conv24) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.end.if.end_crit_edge, %entry.if.end_crit_edge
  %17 = phi i32 [ 0, %do.end ], [ 1, %land.end.if.end_crit_edge ], [ 1, %entry.if.end_crit_edge ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_rej_cmd_pbit_set_0(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp = icmp eq i32 %and2, 1
  br i1 %cmp, label %land.lhs.true6, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_2, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %land.rhs, label %land.lhs.true6.land.end_crit_edge

land.lhs.true6.land.end_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  %and14 = and i32 %conv1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and14)
  %cmp15 = icmp ne i32 %and14, 8
  %phi.cast = zext i1 %cmp15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true6.land.end_crit_edge ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_rej_cmd_pbit_set_1(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp = icmp eq i32 %and2, 1
  br i1 %cmp, label %land.lhs.true6, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_2, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %land.lhs.true6.land.end_crit_edge, label %land.rhs

land.lhs.true6.land.end_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  %and14 = and i32 %conv1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and14)
  %cmp15 = icmp ne i32 %and14, 8
  %phi.cast = zext i1 %cmp15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true6.land.end_crit_edge ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_rej_rsp_fbit_set_0(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp = icmp eq i32 %and2, 1
  br i1 %cmp, label %land.lhs.true6, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_2, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %land.rhs, label %land.lhs.true6.land.end_crit_edge

land.lhs.true6.land.end_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  %and14 = and i32 %conv1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and14)
  %cmp15 = icmp ne i32 %and14, 8
  %phi.cast = zext i1 %cmp15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true6.land.end_crit_edge ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_rej_rsp_fbit_set_1(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp = icmp eq i32 %and2, 1
  br i1 %cmp, label %land.lhs.true6, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_2, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %land.lhs.true6.land.end_crit_edge, label %land.rhs

land.lhs.true6.land.end_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  %and14 = and i32 %conv1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and14)
  %cmp15 = icmp ne i32 %and14, 8
  %phi.cast = zext i1 %cmp15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true6.land.end_crit_edge ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_rej_rsp_fbit_set_x(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %ssap = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssap, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp = icmp eq i32 %and2, 1
  br i1 %cmp, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %and8 = and i32 %conv1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and8)
  %cmp9 = icmp ne i32 %and8, 8
  %phi.cast = zext i1 %cmp9 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %9 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true.land.end_crit_edge ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_rnr_cmd_pbit_set_0(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp = icmp eq i32 %and2, 1
  br i1 %cmp, label %land.lhs.true6, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_2, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %land.rhs, label %land.lhs.true6.land.end_crit_edge

land.lhs.true6.land.end_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  %and14 = and i32 %conv1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and14)
  %cmp15 = icmp ne i32 %and14, 4
  %phi.cast = zext i1 %cmp15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true6.land.end_crit_edge ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_rnr_cmd_pbit_set_1(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp = icmp eq i32 %and2, 1
  br i1 %cmp, label %land.lhs.true6, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_2, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %land.lhs.true6.land.end_crit_edge, label %land.rhs

land.lhs.true6.land.end_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  %and14 = and i32 %conv1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and14)
  %cmp15 = icmp ne i32 %and14, 4
  %phi.cast = zext i1 %cmp15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true6.land.end_crit_edge ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_rnr_rsp_fbit_set_0(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp = icmp eq i32 %and2, 1
  br i1 %cmp, label %land.lhs.true6, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_2, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %land.rhs, label %land.lhs.true6.land.end_crit_edge

land.lhs.true6.land.end_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  %and14 = and i32 %conv1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and14)
  %cmp15 = icmp ne i32 %and14, 4
  %phi.cast = zext i1 %cmp15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true6.land.end_crit_edge ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_rnr_rsp_fbit_set_1(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp = icmp eq i32 %and2, 1
  br i1 %cmp, label %land.lhs.true6, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_2, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %land.lhs.true6.land.end_crit_edge, label %land.rhs

land.lhs.true6.land.end_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  %and14 = and i32 %conv1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and14)
  %cmp15 = icmp ne i32 %and14, 4
  %phi.cast = zext i1 %cmp15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true6.land.end_crit_edge ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_rr_cmd_pbit_set_0(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp = icmp eq i32 %and2, 1
  br i1 %cmp, label %land.lhs.true6, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_2, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %land.rhs, label %land.lhs.true6.land.end_crit_edge

land.lhs.true6.land.end_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  %and14 = and i32 %conv1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %cmp15 = icmp ne i32 %and14, 0
  %phi.cast = zext i1 %cmp15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true6.land.end_crit_edge ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_rr_cmd_pbit_set_1(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp = icmp eq i32 %and2, 1
  br i1 %cmp, label %land.lhs.true6, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_2, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %land.lhs.true6.land.end_crit_edge, label %land.rhs

land.lhs.true6.land.end_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  %and14 = and i32 %conv1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %cmp15 = icmp ne i32 %and14, 0
  %phi.cast = zext i1 %cmp15 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true6.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true6.land.end_crit_edge ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_rr_rsp_fbit_set_0(ptr noundef %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sk_backlog.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %6 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %truesize.i, align 8
  %add.i = add i32 %7, %5
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %8 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_rcvbuf.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %9)
  %cmp.i.not = icmp ult i32 %add.i, %9
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssap, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %land.lhs.true.land.end_crit_edge, label %land.lhs.true3

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctrl_1, align 1
  %conv4 = zext i8 %14 to i32
  %and5 = and i32 %conv4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5)
  %cmp = icmp eq i32 %and5, 1
  br i1 %cmp, label %land.lhs.true9, label %land.lhs.true3.land.end_crit_edge

land.lhs.true3.land.end_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true9:                                   ; preds = %land.lhs.true3
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ctrl_2, align 1
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not = icmp eq i8 %17, 0
  br i1 %tobool12.not, label %land.rhs, label %land.lhs.true9.land.end_crit_edge

land.lhs.true9.land.end_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  %and17 = and i32 %conv4, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18 = icmp ne i32 %and17, 0
  %phi.cast = zext i1 %cmp18 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true9.land.end_crit_edge, %land.lhs.true3.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %18 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true3.land.end_crit_edge ], [ 1, %land.lhs.true9.land.end_crit_edge ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_rr_rsp_fbit_set_1(ptr noundef %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sk_backlog.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %6 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %truesize.i, align 8
  %add.i = add i32 %7, %5
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %8 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sk_rcvbuf.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %9)
  %cmp.i.not = icmp ult i32 %add.i, %9
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ssap, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %land.lhs.true.land.end_crit_edge, label %land.lhs.true3

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ctrl_1, align 1
  %conv4 = zext i8 %14 to i32
  %and5 = and i32 %conv4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and5)
  %cmp = icmp eq i32 %and5, 1
  br i1 %cmp, label %land.lhs.true9, label %land.lhs.true3.land.end_crit_edge

land.lhs.true3.land.end_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true9:                                   ; preds = %land.lhs.true3
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ctrl_2, align 1
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not = icmp eq i8 %17, 0
  br i1 %tobool12.not, label %land.lhs.true9.land.end_crit_edge, label %land.rhs

land.lhs.true9.land.end_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  %and17 = and i32 %conv4, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18 = icmp ne i32 %and17, 0
  %phi.cast = zext i1 %cmp18 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true9.land.end_crit_edge, %land.lhs.true3.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %18 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ], [ 1, %land.lhs.true.land.end_crit_edge ], [ 1, %land.lhs.true3.land.end_crit_edge ], [ 1, %land.lhs.true9.land.end_crit_edge ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_sabme_cmd_pbit_set_x(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %ssap = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssap, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and2)
  %cmp = icmp eq i32 %and2, 3
  br i1 %cmp, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %and8 = and i32 %conv1, 236
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %and8)
  %cmp9 = icmp ne i32 %and8, 108
  %phi.cast = zext i1 %cmp9 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %9 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true.land.end_crit_edge ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_ua_rsp_fbit_set_x(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %ssap = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssap, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and2)
  %cmp = icmp eq i32 %and2, 3
  br i1 %cmp, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %and8 = and i32 %conv1, 236
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and8)
  %cmp9 = icmp ne i32 %and8, 96
  %phi.cast = zext i1 %cmp9 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %9 = phi i32 [ %phi.cast, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %land.lhs.true.land.end_crit_edge ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_xxx_cmd_pbit_set_1(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not, label %if.then, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then:                                          ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.then12_crit_edge, label %lor.lhs.false

if.then.if.then12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.then
  %and8 = and i32 %conv1, 3
  %9 = zext i32 %and8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and8, label %lor.lhs.false.if.end35_crit_edge [
    i32 1, label %lor.lhs.false.if.then12_crit_edge
    i32 3, label %land.lhs.true
  ]

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.then.if.then12_crit_edge
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctrl_2, align 1
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = zext i8 %13 to i32
  br label %if.end35

land.lhs.true:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %and28 = lshr i32 %conv1, 4
  %and28.lobit = and i32 %and28, 1
  %15 = xor i32 %and28.lobit, 1
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true, %if.then12, %lor.lhs.false.if.end35_crit_edge, %entry.if.end35_crit_edge
  %rc.0 = phi i32 [ 1, %entry.if.end35_crit_edge ], [ %14, %if.then12 ], [ 1, %lor.lhs.false.if.end35_crit_edge ], [ %15, %land.lhs.true ]
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_xxx_cmd_pbit_set_x(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %ssap = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssap, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then:                                          ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end25_crit_edge, label %lor.lhs.false

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

lor.lhs.false:                                    ; preds = %if.then
  %and8 = and i32 %conv1, 3
  %9 = zext i32 %and8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %and8, label %if.end25.fold.split [
    i32 1, label %lor.lhs.false.if.end25_crit_edge
    i32 3, label %if.then20
  ]

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then20:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %and23 = and i8 %8, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 108, i8 %and23)
  %switch.selectcmp.case1 = icmp ne i8 %and23, 108
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %and23)
  %switch.selectcmp.case2 = icmp ne i8 %and23, 64
  %not.switch.selectcmp = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %10 = zext i1 %not.switch.selectcmp to i32
  br label %if.end25

if.end25.fold.split:                              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end25:                                         ; preds = %if.end25.fold.split, %if.then20, %lor.lhs.false.if.end25_crit_edge, %if.then.if.end25_crit_edge, %entry.if.end25_crit_edge
  %rc.0 = phi i32 [ 1, %entry.if.end25_crit_edge ], [ 0, %lor.lhs.false.if.end25_crit_edge ], [ 0, %if.then.if.end25_crit_edge ], [ 1, %if.end25.fold.split ], [ %10, %if.then20 ]
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_xxx_rsp_fbit_set_x(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %ssap = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssap, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then:                                          ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_un, ptr %add.ptr.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl_1, align 1
  %conv1 = zext i8 %8 to i32
  %and2 = and i32 %conv1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end25_crit_edge, label %lor.lhs.false

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

lor.lhs.false:                                    ; preds = %if.then
  %and8 = and i32 %conv1, 3
  %9 = zext i32 %and8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %and8, label %if.end25.fold.split [
    i32 1, label %lor.lhs.false.if.end25_crit_edge
    i32 3, label %if.then20
  ]

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then20:                                        ; preds = %lor.lhs.false
  %and23 = and i8 %8, -20
  %10 = zext i8 %and23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %and23, label %if.then20.if.end25_crit_edge [
    i8 96, label %if.then20.sw.bb_crit_edge
    i8 12, label %if.then20.sw.bb_crit_edge31
    i8 -124, label %if.then20.sw.bb_crit_edge32
  ]

if.then20.sw.bb_crit_edge32:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.then20.sw.bb_crit_edge31:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.then20.sw.bb_crit_edge:                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

sw.bb:                                            ; preds = %if.then20.sw.bb_crit_edge, %if.then20.sw.bb_crit_edge31, %if.then20.sw.bb_crit_edge32
  br label %if.end25

if.end25.fold.split:                              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end25:                                         ; preds = %if.end25.fold.split, %sw.bb, %if.then20.if.end25_crit_edge, %lor.lhs.false.if.end25_crit_edge, %if.then.if.end25_crit_edge, %entry.if.end25_crit_edge
  %rc.0 = phi i32 [ 1, %if.then20.if.end25_crit_edge ], [ 0, %sw.bb ], [ 1, %entry.if.end25_crit_edge ], [ 0, %lor.lhs.false.if.end25_crit_edge ], [ 0, %if.then.if.end25_crit_edge ], [ 1, %if.end25.fold.split ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_zzz_cmd_pbit_set_x_inval_nr(ptr noundef %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %vS = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 17
  %4 = ptrtoint ptr %vS to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vS, align 8
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrl_2, align 1
  %8 = lshr i8 %7, 1
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ssap, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ctrl_1, align 1
  %conv5 = zext i8 %13 to i32
  %and6 = and i32 %conv5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %and12 = and i32 %conv5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and12)
  %cmp = icmp eq i32 %and12, 1
  %or.cond = or i1 %tobool7.not, %cmp
  br i1 %or.cond, label %land.lhs.true16, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true
  %conv17 = zext i8 %8 to i32
  %conv18 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %5)
  %cmp19.not = icmp eq i8 %8, %5
  br i1 %cmp19.not, label %land.lhs.true16.if.end_crit_edge, label %land.lhs.true21

land.lhs.true16.if.end_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true21:                                  ; preds = %land.lhs.true16
  %dev.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true21.if.end_crit_edge

land.lhs.true21.if.end_crit_edge:                 ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true21
  %pdu_unack_q.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 29
  %18 = ptrtoint ptr %pdu_unack_q.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdu_unack_q.i, align 4
  %cmp.i.i = icmp eq ptr %19, %pdu_unack_q.i
  br i1 %cmp.i.i, label %if.end.i.do.end_crit_edge, label %llc_util_nr_inside_tx_window.exit

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

llc_util_nr_inside_tx_window.exit:                ; preds = %if.end.i
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %23 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %conv.i.i.i
  %ctrl_1.i = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ctrl_1.i, align 1
  %26 = lshr i8 %25, 1
  %prev.i.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 29, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %prev.i.i, align 4
  %cmp.i29.i = icmp eq ptr %28, %pdu_unack_q.i
  %spec.store.select.i30.i = select i1 %cmp.i29.i, ptr null, ptr %28
  %head.i.i31.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i30.i, i32 0, i32 18
  %29 = ptrtoint ptr %head.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i31.i, align 8
  %network_header.i.i32.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i30.i, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i.i32.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i.i32.i, align 4
  %conv.i.i33.i = zext i16 %32 to i32
  %add.ptr.i.i34.i = getelementptr i8, ptr %30, i32 %conv.i.i33.i
  %ctrl_113.i = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i34.i, i32 0, i32 2
  %33 = ptrtoint ptr %ctrl_113.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ctrl_113.i, align 1
  %35 = lshr i8 %34, 1
  %narrow.i = add nuw i8 %35, 1
  %36 = and i8 %narrow.i, 127
  %call20.i = tail call zeroext i8 @llc_circular_between(i8 noundef zeroext %26, i8 noundef zeroext %8, i8 noundef zeroext %36) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call20.i)
  %tobool21.not.i.not = icmp eq i8 %call20.i, 0
  br i1 %tobool21.not.i.not, label %llc_util_nr_inside_tx_window.exit.do.end_crit_edge, label %llc_util_nr_inside_tx_window.exit.if.end_crit_edge

llc_util_nr_inside_tx_window.exit.if.end_crit_edge: ; preds = %llc_util_nr_inside_tx_window.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

llc_util_nr_inside_tx_window.exit.do.end_crit_edge: ; preds = %llc_util_nr_inside_tx_window.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %llc_util_nr_inside_tx_window.exit.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %state = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 2
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %state, align 8
  %conv26 = zext i8 %38 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %conv26, i32 noundef %conv18, i32 noundef %conv17) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %llc_util_nr_inside_tx_window.exit.if.end_crit_edge, %land.lhs.true21.if.end_crit_edge, %land.lhs.true16.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ 1, %entry.if.end_crit_edge ], [ 0, %do.end ], [ 1, %llc_util_nr_inside_tx_window.exit.if.end_crit_edge ], [ 1, %land.lhs.true16.if.end_crit_edge ], [ 1, %land.lhs.true.if.end_crit_edge ], [ 1, %land.lhs.true21.if.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_zzz_rsp_fbit_set_x_inval_nr(ptr noundef %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %vS = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 17
  %4 = ptrtoint ptr %vS to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vS, align 8
  %ctrl_2 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %ctrl_2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrl_2, align 1
  %8 = lshr i8 %7, 1
  %ssap = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ssap to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ssap, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ctrl_1 = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %ctrl_1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ctrl_1, align 1
  %conv5 = zext i8 %13 to i32
  %and6 = and i32 %conv5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %and12 = and i32 %conv5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and12)
  %cmp = icmp eq i32 %and12, 1
  %or.cond = or i1 %tobool7.not, %cmp
  br i1 %or.cond, label %land.lhs.true16, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true
  %conv17 = zext i8 %8 to i32
  %conv18 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %5)
  %cmp19.not = icmp eq i8 %8, %5
  br i1 %cmp19.not, label %land.lhs.true16.if.end_crit_edge, label %land.lhs.true21

land.lhs.true16.if.end_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true21:                                  ; preds = %land.lhs.true16
  %dev.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 6
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.lhs.true21.if.end_crit_edge

land.lhs.true21.if.end_crit_edge:                 ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true21
  %pdu_unack_q.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 29
  %18 = ptrtoint ptr %pdu_unack_q.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdu_unack_q.i, align 4
  %cmp.i.i = icmp eq ptr %19, %pdu_unack_q.i
  br i1 %cmp.i.i, label %if.end.i.if.then_crit_edge, label %llc_util_nr_inside_tx_window.exit

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

llc_util_nr_inside_tx_window.exit:                ; preds = %if.end.i
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %23 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %conv.i.i.i
  %ctrl_1.i = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %ctrl_1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ctrl_1.i, align 1
  %26 = lshr i8 %25, 1
  %prev.i.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 29, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %prev.i.i, align 4
  %cmp.i29.i = icmp eq ptr %28, %pdu_unack_q.i
  %spec.store.select.i30.i = select i1 %cmp.i29.i, ptr null, ptr %28
  %head.i.i31.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i30.i, i32 0, i32 18
  %29 = ptrtoint ptr %head.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i31.i, align 8
  %network_header.i.i32.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i30.i, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i.i32.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i.i32.i, align 4
  %conv.i.i33.i = zext i16 %32 to i32
  %add.ptr.i.i34.i = getelementptr i8, ptr %30, i32 %conv.i.i33.i
  %ctrl_113.i = getelementptr inbounds %struct.llc_pdu_sn, ptr %add.ptr.i.i34.i, i32 0, i32 2
  %33 = ptrtoint ptr %ctrl_113.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ctrl_113.i, align 1
  %35 = lshr i8 %34, 1
  %narrow.i = add nuw i8 %35, 1
  %36 = and i8 %narrow.i, 127
  %call20.i = tail call zeroext i8 @llc_circular_between(i8 noundef zeroext %26, i8 noundef zeroext %8, i8 noundef zeroext %36) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call20.i)
  %tobool21.not.i.not = icmp eq i8 %call20.i, 0
  br i1 %tobool21.not.i.not, label %llc_util_nr_inside_tx_window.exit.if.then_crit_edge, label %llc_util_nr_inside_tx_window.exit.if.end_crit_edge

llc_util_nr_inside_tx_window.exit.if.end_crit_edge: ; preds = %llc_util_nr_inside_tx_window.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

llc_util_nr_inside_tx_window.exit.if.then_crit_edge: ; preds = %llc_util_nr_inside_tx_window.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %llc_util_nr_inside_tx_window.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %state = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 2
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %state, align 8
  %conv26 = zext i8 %38 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, i32 noundef %conv26, i32 noundef %conv18, i32 noundef %conv17) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %llc_util_nr_inside_tx_window.exit.if.end_crit_edge, %land.lhs.true21.if.end_crit_edge, %land.lhs.true16.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rc.0 = phi i32 [ 0, %if.then ], [ 1, %llc_util_nr_inside_tx_window.exit.if.end_crit_edge ], [ 1, %land.lhs.true16.if.end_crit_edge ], [ 1, %entry.if.end_crit_edge ], [ 1, %land.lhs.true.if.end_crit_edge ], [ 1, %land.lhs.true21.if.end_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rx_any_frame(ptr nocapture noundef readnone %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_p_tmr_exp(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp = icmp ne i8 %1, 6
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_ack_tmr_exp(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp = icmp ne i8 %1, 5
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_rej_tmr_exp(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp = icmp ne i8 %1, 7
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_busy_tmr_exp(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp = icmp ne i8 %1, 8
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_init_p_f_cycle(ptr nocapture noundef readnone %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_tx_buffer_full(ptr nocapture noundef readnone %sk, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prim_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %prim_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prim_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %3)
  %cmp3 = icmp ne i8 %3, 59
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 1, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_data_flag_eq_1(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 26
  %0 = ptrtoint ptr %data_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ne i8 %1, 1
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_data_flag_eq_0(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 26
  %0 = ptrtoint ptr %data_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data_flag, align 1
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_data_flag_eq_2(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 26
  %0 = ptrtoint ptr %data_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ne i8 %1, 2
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_p_flag_eq_1(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %p_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 23
  %0 = ptrtoint ptr %p_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p_flag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ne i8 %1, 1
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_last_frame_eq_1(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 29, i32 1
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  %add = add i32 %1, 1
  %k = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 21
  %2 = ptrtoint ptr %k to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %k, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp ne i32 %add, %conv
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_last_frame_eq_0(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen.i = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 29, i32 1
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  %add = add i32 %1, 1
  %k = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 21
  %2 = ptrtoint ptr %k to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %k, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp eq i32 %add, %conv
  %conv3 = zext i1 %cmp to i32
  ret i32 %conv3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_p_flag_eq_0(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %p_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 23
  %0 = ptrtoint ptr %p_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p_flag, align 2
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_p_flag_eq_f(ptr nocapture noundef readonly %sk, ptr noundef %skb) local_unnamed_addr #4 align 64 {
entry:
  %f_bit = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %f_bit) #8
  %0 = ptrtoint ptr %f_bit to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %f_bit, align 1, !annotation !28
  call void @llc_pdu_decode_pf_bit(ptr noundef %skb, ptr noundef nonnull %f_bit) #8
  %p_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 23
  %1 = ptrtoint ptr %p_flag to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %p_flag, align 2
  %3 = ptrtoint ptr %f_bit to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %f_bit, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp = icmp ne i8 %2, %4
  %cond = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %f_bit) #8
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_pdu_decode_pf_bit(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_remote_busy_eq_0(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %remote_busy_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 27
  %0 = ptrtoint ptr %remote_busy_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %remote_busy_flag, align 2
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_remote_busy_eq_1(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %remote_busy_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 27
  %0 = ptrtoint ptr %remote_busy_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %remote_busy_flag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_retry_cnt_lt_n2(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %retry_count = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %retry_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %retry_count, align 4
  %conv = zext i8 %1 to i32
  %n2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 19
  %2 = ptrtoint ptr %n2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp ule i32 %3, %conv
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_retry_cnt_gte_n2(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %retry_count = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %retry_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %retry_count, align 4
  %conv = zext i8 %1 to i32
  %n2 = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 19
  %2 = ptrtoint ptr %n2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ugt i32 %3, %conv
  %lnot.ext = zext i1 %cmp.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_s_flag_eq_1(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %s_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %s_flag, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_s_flag_eq_0(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %s_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %s_flag, align 8
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_cause_flag_eq_1(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cause_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 28
  %0 = ptrtoint ptr %cause_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cause_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_cause_flag_eq_0(ptr nocapture noundef readonly %sk, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cause_flag = getelementptr inbounds %struct.llc_sock, ptr %sk, i32 0, i32 28
  %0 = ptrtoint ptr %cause_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cause_flag, align 1
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_set_status_conn(ptr nocapture noundef readnone %sk, ptr nocapture noundef writeonly %skb) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %status, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_set_status_disc(ptr nocapture noundef readnone %sk, ptr nocapture noundef writeonly %skb) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %status, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_set_status_failed(ptr nocapture noundef readnone %sk, ptr nocapture noundef writeonly %skb) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %status, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_set_status_remote_busy(ptr nocapture noundef readnone %sk, ptr nocapture noundef writeonly %skb) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 5, ptr %status, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_set_status_refuse(ptr nocapture noundef readnone %sk, ptr nocapture noundef writeonly %skb) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 6, ptr %status, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_set_status_conflict(ptr nocapture noundef readnone %sk, ptr nocapture noundef writeonly %skb) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 7, ptr %status, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @llc_conn_ev_qlfy_set_status_rst_done(ptr nocapture noundef readnone %sk, ptr nocapture noundef writeonly %skb) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %status, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @llc_circular_between(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/llc/llc_c_ev.c", i32 230, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @llc_conn_ev_rx_i_cmd_pbit_set_x_inval_ns._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @llc_conn_ev_rx_i_cmd_pbit_set_x_inval_ns._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/llc/llc_c_ev.c", i32 308, i32 3}
!8 = !{ptr @llc_conn_ev_rx_i_rsp_fbit_set_x_inval_ns._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @llc_conn_ev_rx_i_rsp_fbit_set_x_inval_ns._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/llc/llc_c_ev.c", i32 513, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @llc_conn_ev_rx_zzz_cmd_pbit_set_x_inval_nr._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @llc_conn_ev_rx_zzz_cmd_pbit_set_x_inval_nr._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/llc/llc_c_ev.c", i32 532, i32 3}
!17 = !{ptr @llc_conn_ev_rx_zzz_rsp_fbit_set_x_inval_nr._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @llc_conn_ev_rx_zzz_rsp_fbit_set_x_inval_nr._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
