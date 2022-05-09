; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_vegas.c_pt.bc'
source_filename = "../net/ipv4/tcp_vegas.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tcp_vegas_init\22, \22a\22\09"
module asm "\09.weak\09__crc_tcp_vegas_init\09\09\09\09"
module asm "\09.long\09__crc_tcp_vegas_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_vegas_init:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_vegas_init\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_vegas_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tcp_vegas_pkts_acked\22, \22a\22\09"
module asm "\09.weak\09__crc_tcp_vegas_pkts_acked\09\09\09\09"
module asm "\09.long\09__crc_tcp_vegas_pkts_acked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_vegas_pkts_acked:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_vegas_pkts_acked\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_vegas_pkts_acked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tcp_vegas_state\22, \22a\22\09"
module asm "\09.weak\09__crc_tcp_vegas_state\09\09\09\09"
module asm "\09.long\09__crc_tcp_vegas_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_vegas_state:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_vegas_state\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_vegas_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tcp_vegas_cwnd_event\22, \22a\22\09"
module asm "\09.weak\09__crc_tcp_vegas_cwnd_event\09\09\09\09"
module asm "\09.long\09__crc_tcp_vegas_cwnd_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_vegas_cwnd_event:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_vegas_cwnd_event\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_vegas_cwnd_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tcp_vegas_get_info\22, \22a\22\09"
module asm "\09.weak\09__crc_tcp_vegas_get_info\09\09\09\09"
module asm "\09.long\09__crc_tcp_vegas_get_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_vegas_get_info:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_vegas_get_info\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_vegas_get_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.164 }
%union.anon.164 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tcp_congestion_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.list_head, i32, i32, ptr, ptr, [40 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.192, %struct.anon.193, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.81, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.118, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.119, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.73, [0 x i32], %union.anon.74, i16, i16, %union.anon.75, %struct.refcount_struct, [0 x i32], %union.anon.76 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.81 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.118 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.119 = type { ptr }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.122 }
%union.anon.122 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.192 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.193 = type { i32, i32, i32, i32 }
%struct.vegas = type { i32, i32, i32, i8, i16, i32, i32 }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.194 = type { i32, i32, i64 }
%struct.anon.195 = type { i32, i32, i64 }
%struct.anon.196 = type { i32, i32 }
%struct.ack_sample = type { i32, i32, i32 }
%struct.tcpvegas_info = type { i32, i32, i32, i32 }

@__param_str_alpha = internal constant [16 x i8] c"tcp_vegas.alpha\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@alpha = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_alpha = internal constant %struct.kernel_param { ptr @__param_str_alpha, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @alpha } }, section "__param", align 4
@__UNIQUE_ID_alphatype593 = internal constant [29 x i8] c"tcp_vegas.parmtype=alpha:int\00", section ".modinfo", align 1
@__UNIQUE_ID_alpha594 = internal constant [55 x i8] c"tcp_vegas.parm=alpha:lower bound of packets in network\00", section ".modinfo", align 1
@__param_str_beta = internal constant [15 x i8] c"tcp_vegas.beta\00", align 1
@beta = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_beta = internal constant %struct.kernel_param { ptr @__param_str_beta, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @beta } }, section "__param", align 4
@__UNIQUE_ID_betatype595 = internal constant [28 x i8] c"tcp_vegas.parmtype=beta:int\00", section ".modinfo", align 1
@__UNIQUE_ID_beta596 = internal constant [54 x i8] c"tcp_vegas.parm=beta:upper bound of packets in network\00", section ".modinfo", align 1
@__param_str_gamma = internal constant [16 x i8] c"tcp_vegas.gamma\00", align 1
@gamma = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_gamma = internal constant %struct.kernel_param { ptr @__param_str_gamma, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.164 { ptr @gamma } }, section "__param", align 4
@__UNIQUE_ID_gammatype597 = internal constant [29 x i8] c"tcp_vegas.parmtype=gamma:int\00", section ".modinfo", align 1
@__UNIQUE_ID_gamma598 = internal constant [52 x i8] c"tcp_vegas.parm=gamma:limit on increase (scale by 2)\00", section ".modinfo", align 1
@__kstrtab_tcp_vegas_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_vegas_init = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_vegas_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_vegas_init to i32), ptr @__kstrtab_tcp_vegas_init, ptr @__kstrtabns_tcp_vegas_init }, section "___ksymtab_gpl+tcp_vegas_init", align 4
@__kstrtab_tcp_vegas_pkts_acked = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_vegas_pkts_acked = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_vegas_pkts_acked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_vegas_pkts_acked to i32), ptr @__kstrtab_tcp_vegas_pkts_acked, ptr @__kstrtabns_tcp_vegas_pkts_acked }, section "___ksymtab_gpl+tcp_vegas_pkts_acked", align 4
@__kstrtab_tcp_vegas_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_vegas_state = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_vegas_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_vegas_state to i32), ptr @__kstrtab_tcp_vegas_state, ptr @__kstrtabns_tcp_vegas_state }, section "___ksymtab_gpl+tcp_vegas_state", align 4
@__kstrtab_tcp_vegas_cwnd_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_vegas_cwnd_event = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_vegas_cwnd_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_vegas_cwnd_event to i32), ptr @__kstrtab_tcp_vegas_cwnd_event, ptr @__kstrtabns_tcp_vegas_cwnd_event }, section "___ksymtab_gpl+tcp_vegas_cwnd_event", align 4
@__kstrtab_tcp_vegas_get_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_vegas_get_info = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_vegas_get_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_vegas_get_info to i32), ptr @__kstrtab_tcp_vegas_get_info, ptr @__kstrtabns_tcp_vegas_get_info }, section "___ksymtab_gpl+tcp_vegas_get_info", align 4
@tcp_vegas = internal global %struct.tcp_congestion_ops { ptr @tcp_reno_ssthresh, ptr @tcp_vegas_cong_avoid, ptr @tcp_vegas_state, ptr @tcp_vegas_cwnd_event, ptr null, ptr @tcp_vegas_pkts_acked, ptr null, ptr null, ptr @tcp_reno_undo_cwnd, ptr null, ptr @tcp_vegas_get_info, [16 x i8] c"vegas\00\00\00\00\00\00\00\00\00\00\00", ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, ptr @tcp_vegas_init, ptr null, [40 x i8] undef }, section ".data..read_mostly", align 128
@__initcall__kmod_tcp_vegas__606_334_tcp_vegas_register6 = internal global ptr @tcp_vegas_register, section ".initcall6.init", align 4
@__exitcall_tcp_vegas_unregister = internal global ptr @tcp_vegas_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author607 = internal constant [35 x i8] c"tcp_vegas.author=Stephen Hemminger\00", section ".modinfo", align 1
@__UNIQUE_ID_file608 = internal constant [34 x i8] c"tcp_vegas.file=net/ipv4/tcp_vegas\00", section ".modinfo", align 1
@__UNIQUE_ID_license609 = internal constant [22 x i8] c"tcp_vegas.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description610 = internal constant [32 x i8] c"tcp_vegas.description=TCP Vegas\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 44, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [5 x i8] c"beta\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 45, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@___asan_gen_.8 = private constant [24 x i8] c"../net/ipv4/tcp_vegas.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 46, i32 12 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_alpha594, ptr @__UNIQUE_ID_alphatype593, ptr @__UNIQUE_ID_author607, ptr @__UNIQUE_ID_beta596, ptr @__UNIQUE_ID_betatype595, ptr @__UNIQUE_ID_description610, ptr @__UNIQUE_ID_file608, ptr @__UNIQUE_ID_gamma598, ptr @__UNIQUE_ID_gammatype597, ptr @__UNIQUE_ID_license609, ptr @__exitcall_tcp_vegas_unregister, ptr @__initcall__kmod_tcp_vegas__606_334_tcp_vegas_register6, ptr @__ksymtab_tcp_vegas_cwnd_event, ptr @__ksymtab_tcp_vegas_get_info, ptr @__ksymtab_tcp_vegas_init, ptr @__ksymtab_tcp_vegas_pkts_acked, ptr @__ksymtab_tcp_vegas_state, ptr @__param_alpha, ptr @__param_beta, ptr @__param_gamma, ptr @tcp_vegas_unregister, ptr @alpha, ptr @beta, ptr @gamma], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alpha to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @beta to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamma to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tcp_vegas_init(ptr nocapture noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %baseRTT = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i, i32 0, i32 6
  %0 = ptrtoint ptr %baseRTT to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2147483647, ptr %baseRTT, align 4
  %doing_vegas_now.i = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i, i32 0, i32 3
  %1 = ptrtoint ptr %doing_vegas_now.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %doing_vegas_now.i, align 4
  %snd_nxt.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %2 = ptrtoint ptr %snd_nxt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_nxt.i, align 4
  %4 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %icsk_ca_priv.i, align 4
  %cntRTT.i = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i, i32 0, i32 4
  %5 = ptrtoint ptr %cntRTT.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %cntRTT.i, align 2
  %minRTT.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %6 = ptrtoint ptr %minRTT.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2147483647, ptr %minRTT.i, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tcp_vegas_pkts_acked(ptr nocapture noundef %sk, ptr nocapture noundef readonly %sample) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %rtt_us = getelementptr inbounds %struct.ack_sample, ptr %sample, i32 0, i32 1
  %0 = ptrtoint ptr %rtt_us to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rtt_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add nuw i32 %1, 1
  %baseRTT = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i, i32 0, i32 6
  %2 = ptrtoint ptr %baseRTT to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %baseRTT, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp2 = icmp ult i32 %add, %3
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %baseRTT to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %baseRTT, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %minRTT = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %5 = ptrtoint ptr %minRTT to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %minRTT, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %add)
  %8 = ptrtoint ptr %minRTT to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %minRTT, align 4
  %cntRTT = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i, i32 0, i32 4
  %9 = ptrtoint ptr %cntRTT to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %cntRTT, align 2
  %inc = add i16 %10, 1
  store i16 %inc, ptr %cntRTT, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tcp_vegas_state(ptr nocapture noundef %sk, i8 noundef zeroext %ca_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ca_state)
  %cmp = icmp eq i8 %ca_state, 0
  %icsk_ca_priv.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %doing_vegas_now.i = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i.i, i32 0, i32 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %doing_vegas_now.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %doing_vegas_now.i, align 4
  %snd_nxt.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %1 = ptrtoint ptr %snd_nxt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %snd_nxt.i, align 4
  %3 = ptrtoint ptr %icsk_ca_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %icsk_ca_priv.i.i, align 4
  %cntRTT.i = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %cntRTT.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %cntRTT.i, align 2
  %minRTT.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %5 = ptrtoint ptr %minRTT.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2147483647, ptr %minRTT.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %doing_vegas_now.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %doing_vegas_now.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tcp_vegas_cwnd_event(ptr nocapture noundef %sk, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %switch = icmp ult i32 %event, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %icsk_ca_priv.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %baseRTT.i = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i.i, i32 0, i32 6
  %0 = ptrtoint ptr %baseRTT.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2147483647, ptr %baseRTT.i, align 4
  %doing_vegas_now.i.i = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %doing_vegas_now.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %doing_vegas_now.i.i, align 4
  %snd_nxt.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %2 = ptrtoint ptr %snd_nxt.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_nxt.i.i, align 4
  %4 = ptrtoint ptr %icsk_ca_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %icsk_ca_priv.i.i, align 4
  %cntRTT.i.i = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %cntRTT.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %cntRTT.i.i, align 2
  %minRTT.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %6 = ptrtoint ptr %minRTT.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2147483647, ptr %minRTT.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tcp_vegas_get_info(ptr nocapture noundef readonly %sk, i32 noundef %ext, ptr nocapture noundef writeonly %attr, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ext, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %doing_vegas_now = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i, i32 0, i32 3
  %0 = ptrtoint ptr %doing_vegas_now to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %doing_vegas_now, align 4
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %info, align 4
  %cntRTT = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i, i32 0, i32 4
  %3 = ptrtoint ptr %cntRTT to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cntRTT, align 2
  %conv1 = zext i16 %4 to i32
  %tcpv_rttcnt = getelementptr inbounds %struct.tcpvegas_info, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %tcpv_rttcnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv1, ptr %tcpv_rttcnt, align 4
  %baseRTT = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i, i32 0, i32 6
  %6 = ptrtoint ptr %baseRTT to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %baseRTT, align 4
  %tcpv_rtt = getelementptr inbounds %struct.tcpvegas_info, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %tcpv_rtt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tcpv_rtt, align 4
  %minRTT = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %9 = ptrtoint ptr %minRTT to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %minRTT, align 4
  %tcpv_minrtt = getelementptr inbounds %struct.tcpvegas_info, ptr %info, i32 0, i32 3
  %11 = ptrtoint ptr %tcpv_minrtt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tcpv_minrtt, align 4
  %12 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %attr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 16, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcp_vegas_unregister() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tcp_unregister_congestion_control(ptr noundef nonnull @tcp_vegas) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_unregister_congestion_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_vegas_register() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcp_register_congestion_control(ptr noundef nonnull @tcp_vegas) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_ssthresh(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcp_vegas_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ca_priv.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28
  %doing_vegas_now = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i, i32 0, i32 3
  %0 = ptrtoint ptr %doing_vegas_now to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %doing_vegas_now, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tcp_reno_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %icsk_ca_priv.i, align 4
  %sub.i = sub i32 %3, %ack
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then3, label %if.else261

if.then3:                                         ; preds = %if.end
  %snd_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %4 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %snd_nxt, align 4
  %6 = ptrtoint ptr %icsk_ca_priv.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %icsk_ca_priv.i, align 4
  %cntRTT = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i, i32 0, i32 4
  %7 = ptrtoint ptr %cntRTT to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cntRTT, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %8)
  %cmp = icmp ult i16 %8, 3
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tcp_reno_cong_avoid(ptr noundef %sk, i32 noundef %ack, i32 noundef %acked) #5
  br label %if.end258

if.else:                                          ; preds = %if.then3
  %minRTT = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %9 = ptrtoint ptr %minRTT to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %minRTT, align 4
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %11 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %snd_cwnd, align 8
  %conv7 = zext i32 %12 to i64
  %baseRTT = getelementptr inbounds %struct.vegas, ptr %icsk_ca_priv.i, i32 0, i32 6
  %13 = ptrtoint ptr %baseRTT to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %baseRTT, align 4
  %conv8 = zext i32 %14 to i64
  %mul = mul nuw i64 %conv8, %conv7
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp181 = icmp ult i64 %mul, 4294967296
  br i1 %cmp181, label %if.then185, label %if.else191, !prof !56

if.then185:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %conv186 = trunc i64 %mul to i32
  %div189 = udiv i32 %conv186, %10
  br label %if.end195

if.else191:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %mul) #8, !srcloc !57
  %asmresult1.i = extractvalue { i64, i64 } %15, 1
  %extract.t434 = trunc i64 %asmresult1.i to i32
  br label %if.end195

if.end195:                                        ; preds = %if.else191, %if.then185
  %target_cwnd.0.off0 = phi i32 [ %div189, %if.then185 ], [ %extract.t434, %if.else191 ]
  %sub199 = sub i32 %10, %14
  %mul200 = mul i32 %sub199, %12
  %div202 = udiv i32 %mul200, %14
  %16 = load i32, ptr @gamma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div202, i32 %16)
  %cmp203 = icmp ugt i32 %div202, %16
  br i1 %cmp203, label %land.lhs.true205, label %if.end195.if.else221_crit_edge

if.end195.if.else221_crit_edge:                   ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else221

land.lhs.true205:                                 ; preds = %if.end195
  %snd_ssthresh.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %17 = ptrtoint ptr %snd_ssthresh.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %snd_ssthresh.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %18)
  %cmp.i398 = icmp ult i32 %12, %18
  br i1 %cmp.i398, label %if.then208, label %land.lhs.true205.if.else221_crit_edge

land.lhs.true205.if.else221_crit_edge:            ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else221

if.then208:                                       ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #7
  %add211 = add i32 %target_cwnd.0.off0, 1
  %19 = tail call i32 @llvm.umin.i32(i32 %12, i32 %add211)
  %20 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %snd_cwnd, align 8
  %21 = tail call i32 @llvm.umin.i32(i32 %18, i32 %19) #5
  %22 = ptrtoint ptr %snd_ssthresh.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %snd_ssthresh.i, align 4
  br label %if.end241

if.else221:                                       ; preds = %land.lhs.true205.if.else221_crit_edge, %if.end195.if.else221_crit_edge
  %snd_ssthresh.i402 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %23 = ptrtoint ptr %snd_ssthresh.i402 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %snd_ssthresh.i402, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %24)
  %cmp.i403 = icmp ult i32 %12, %24
  br i1 %cmp.i403, label %if.then223, label %if.else225

if.then223:                                       ; preds = %if.else221
  call void @__sanitizer_cov_trace_pc() #7
  %call224 = tail call i32 @tcp_slow_start(ptr noundef %sk, i32 noundef %acked) #5
  br label %if.end241thread-pre-split

if.else225:                                       ; preds = %if.else221
  %25 = load i32, ptr @beta, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div202, i32 %25)
  %cmp226 = icmp ugt i32 %div202, %25
  br i1 %cmp226, label %if.then228, label %if.else232

if.then228:                                       ; preds = %if.else225
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add i32 %12, -1
  %26 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %dec, ptr %snd_cwnd, align 8
  %27 = tail call i32 @llvm.umin.i32(i32 %24, i32 %dec) #5
  %28 = ptrtoint ptr %snd_ssthresh.i402 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %snd_ssthresh.i402, align 4
  br label %if.end241

if.else232:                                       ; preds = %if.else225
  %29 = load i32, ptr @alpha, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div202, i32 %29)
  %cmp233 = icmp ult i32 %div202, %29
  br i1 %cmp233, label %if.then235, label %if.else232.if.end241thread-pre-split_crit_edge

if.else232.if.end241thread-pre-split_crit_edge:   ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end241thread-pre-split

if.then235:                                       ; preds = %if.else232
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add i32 %12, 1
  %30 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %inc, ptr %snd_cwnd, align 8
  br label %if.end241

if.end241thread-pre-split:                        ; preds = %if.else232.if.end241thread-pre-split_crit_edge, %if.then223
  %31 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %snd_cwnd, align 8
  br label %if.end241

if.end241:                                        ; preds = %if.end241thread-pre-split, %if.then235, %if.then228, %if.then208
  %32 = phi i32 [ %.pr, %if.end241thread-pre-split ], [ %inc, %if.then235 ], [ %dec, %if.then228 ], [ %19, %if.then208 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp243 = icmp ult i32 %32, 2
  br i1 %cmp243, label %if.end241.if.end255.sink.split_crit_edge, label %if.else247

if.end241.if.end255.sink.split_crit_edge:         ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end255.sink.split

if.else247:                                       ; preds = %if.end241
  %snd_cwnd_clamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 65
  %33 = ptrtoint ptr %snd_cwnd_clamp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %snd_cwnd_clamp, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp249 = icmp ugt i32 %32, %34
  br i1 %cmp249, label %if.else247.if.end255.sink.split_crit_edge, label %if.else247.if.end255_crit_edge

if.else247.if.end255_crit_edge:                   ; preds = %if.else247
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end255

if.else247.if.end255.sink.split_crit_edge:        ; preds = %if.else247
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end255.sink.split

if.end255.sink.split:                             ; preds = %if.else247.if.end255.sink.split_crit_edge, %if.end241.if.end255.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.end241.if.end255.sink.split_crit_edge ], [ %34, %if.else247.if.end255.sink.split_crit_edge ]
  %35 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %snd_cwnd, align 8
  br label %if.end255

if.end255:                                        ; preds = %if.end255.sink.split, %if.else247.if.end255_crit_edge
  %icsk_ca_state.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 17
  %36 = ptrtoint ptr %icsk_ca_state.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i.i = load i8, ptr %icsk_ca_state.i.i, align 4
  %bf.lshr.i.i = lshr i8 %bf.load.i.i, 3
  %conv.i.i = zext i8 %bf.lshr.i.i to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %snd_ssthresh2.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %37 = ptrtoint ptr %snd_ssthresh2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %snd_ssthresh2.i, align 4
  br i1 %tobool.i.not.i, label %if.else.i407, label %if.end255.tcp_current_ssthresh.exit_crit_edge

if.end255.tcp_current_ssthresh.exit_crit_edge:    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #7
  br label %tcp_current_ssthresh.exit

if.else.i407:                                     ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %snd_cwnd, align 8
  %shr.i = lshr i32 %40, 1
  %shr4.i = lshr i32 %40, 2
  %add.i = add nuw i32 %shr.i, %shr4.i
  %41 = tail call i32 @llvm.umax.i32(i32 %38, i32 %add.i) #5
  br label %tcp_current_ssthresh.exit

tcp_current_ssthresh.exit:                        ; preds = %if.else.i407, %if.end255.tcp_current_ssthresh.exit_crit_edge
  %retval.0.i = phi i32 [ %41, %if.else.i407 ], [ %38, %if.end255.tcp_current_ssthresh.exit_crit_edge ]
  %42 = ptrtoint ptr %snd_ssthresh2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i, ptr %snd_ssthresh2.i, align 4
  br label %if.end258

if.end258:                                        ; preds = %tcp_current_ssthresh.exit, %if.then6
  %43 = ptrtoint ptr %cntRTT to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %cntRTT, align 2
  %minRTT260 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 28, i32 2
  %44 = ptrtoint ptr %minRTT260 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2147483647, ptr %minRTT260, align 4
  br label %cleanup

if.else261:                                       ; preds = %if.end
  %snd_cwnd.i408 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %45 = ptrtoint ptr %snd_cwnd.i408 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %snd_cwnd.i408, align 8
  %snd_ssthresh.i409 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 62
  %47 = ptrtoint ptr %snd_ssthresh.i409 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %snd_ssthresh.i409, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp.i410 = icmp ult i32 %46, %48
  br i1 %cmp.i410, label %if.then263, label %if.else261.cleanup_crit_edge

if.else261.cleanup_crit_edge:                     ; preds = %if.else261
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then263:                                       ; preds = %if.else261
  call void @__sanitizer_cov_trace_pc() #7
  %call264 = tail call i32 @tcp_slow_start(ptr noundef %sk, i32 noundef %acked) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then263, %if.else261.cleanup_crit_edge, %if.end258, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_reno_undo_cwnd(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_reno_cong_avoid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_slow_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_register_congestion_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__param_alpha, !1, !"__param_alpha", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_vegas.c", i32 48, i32 1}
!2 = !{ptr @__UNIQUE_ID_alphatype593, !1, !"__UNIQUE_ID_alphatype593", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alpha594, !4, !"__UNIQUE_ID_alpha594", i1 false, i1 false}
!4 = !{!"../net/ipv4/tcp_vegas.c", i32 49, i32 1}
!5 = !{ptr @__param_beta, !6, !"__param_beta", i1 false, i1 false}
!6 = !{!"../net/ipv4/tcp_vegas.c", i32 50, i32 1}
!7 = !{ptr @__UNIQUE_ID_betatype595, !6, !"__UNIQUE_ID_betatype595", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_beta596, !9, !"__UNIQUE_ID_beta596", i1 false, i1 false}
!9 = !{!"../net/ipv4/tcp_vegas.c", i32 51, i32 1}
!10 = !{ptr @__param_gamma, !11, !"__param_gamma", i1 false, i1 false}
!11 = !{!"../net/ipv4/tcp_vegas.c", i32 52, i32 1}
!12 = !{ptr @__UNIQUE_ID_gammatype597, !11, !"__UNIQUE_ID_gammatype597", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_gamma598, !14, !"__UNIQUE_ID_gamma598", i1 false, i1 false}
!14 = !{!"../net/ipv4/tcp_vegas.c", i32 53, i32 1}
!15 = !{ptr @__ksymtab_tcp_vegas_init, !16, !"__ksymtab_tcp_vegas_init", i1 false, i1 false}
!16 = !{!"../net/ipv4/tcp_vegas.c", i32 101, i32 1}
!17 = !{ptr @__ksymtab_tcp_vegas_pkts_acked, !18, !"__ksymtab_tcp_vegas_pkts_acked", i1 false, i1 false}
!18 = !{!"../net/ipv4/tcp_vegas.c", i32 132, i32 1}
!19 = !{ptr @__ksymtab_tcp_vegas_state, !20, !"__ksymtab_tcp_vegas_state", i1 false, i1 false}
!20 = !{!"../net/ipv4/tcp_vegas.c", i32 141, i32 1}
!21 = !{ptr @__ksymtab_tcp_vegas_cwnd_event, !22, !"__ksymtab_tcp_vegas_cwnd_event", i1 false, i1 false}
!22 = !{!"../net/ipv4/tcp_vegas.c", i32 158, i32 1}
!23 = !{ptr @__ksymtab_tcp_vegas_get_info, !24, !"__ksymtab_tcp_vegas_get_info", i1 false, i1 false}
!24 = !{!"../net/ipv4/tcp_vegas.c", i32 306, i32 1}
!25 = !{ptr @__initcall__kmod_tcp_vegas__606_334_tcp_vegas_register6, !26, !"__initcall__kmod_tcp_vegas__606_334_tcp_vegas_register6", i1 false, i1 false}
!26 = !{!"../net/ipv4/tcp_vegas.c", i32 334, i32 1}
!27 = !{ptr @__exitcall_tcp_vegas_unregister, !28, !"__exitcall_tcp_vegas_unregister", i1 false, i1 false}
!28 = !{!"../net/ipv4/tcp_vegas.c", i32 335, i32 1}
!29 = !{ptr @__UNIQUE_ID_author607, !30, !"__UNIQUE_ID_author607", i1 false, i1 false}
!30 = !{!"../net/ipv4/tcp_vegas.c", i32 337, i32 1}
!31 = !{ptr @__UNIQUE_ID_file608, !32, !"__UNIQUE_ID_file608", i1 false, i1 false}
!32 = !{!"../net/ipv4/tcp_vegas.c", i32 338, i32 1}
!33 = !{ptr @__UNIQUE_ID_license609, !32, !"__UNIQUE_ID_license609", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_description610, !35, !"__UNIQUE_ID_description610", i1 false, i1 false}
!35 = !{!"../net/ipv4/tcp_vegas.c", i32 339, i32 1}
!36 = !{ptr @__param_str_alpha, !1, !"__param_str_alpha", i1 false, i1 false}
!37 = !{ptr @alpha, !38, !"alpha", i1 false, i1 false}
!38 = !{!"../net/ipv4/tcp_vegas.c", i32 44, i32 12}
!39 = !{ptr @__param_str_beta, !6, !"__param_str_beta", i1 false, i1 false}
!40 = !{ptr @beta, !41, !"beta", i1 false, i1 false}
!41 = !{!"../net/ipv4/tcp_vegas.c", i32 45, i32 12}
!42 = !{ptr @__param_str_gamma, !11, !"__param_str_gamma", i1 false, i1 false}
!43 = !{ptr @gamma, !44, !"gamma", i1 false, i1 false}
!44 = !{!"../net/ipv4/tcp_vegas.c", i32 46, i32 12}
!45 = !{ptr @tcp_vegas, !46, !"tcp_vegas", i1 false, i1 false}
!46 = !{!"../net/ipv4/tcp_vegas.c", i32 308, i32 34}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 2148522970, i64 2148523250, i64 2148523584, i64 2148523918}
