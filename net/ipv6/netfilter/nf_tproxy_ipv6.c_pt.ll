; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/nf_tproxy_ipv6.c_pt.bc'
source_filename = "../net/ipv6/netfilter/nf_tproxy_ipv6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_tproxy_laddr6\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_tproxy_laddr6\09\09\09\09"
module asm "\09.long\09__crc_nf_tproxy_laddr6\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_tproxy_laddr6:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_tproxy_laddr6\22\09\09\09\09\09"
module asm "__kstrtabns_nf_tproxy_laddr6:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_tproxy_handle_time_wait6\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_tproxy_handle_time_wait6\09\09\09\09"
module asm "\09.long\09__crc_nf_tproxy_handle_time_wait6\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_tproxy_handle_time_wait6:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_tproxy_handle_time_wait6\22\09\09\09\09\09"
module asm "__kstrtabns_nf_tproxy_handle_time_wait6:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_tproxy_get_sock_v6\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_tproxy_get_sock_v6\09\09\09\09"
module asm "\09.long\09__crc_nf_tproxy_get_sock_v6\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_tproxy_get_sock_v6:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_tproxy_get_sock_v6\22\09\09\09\09\09"
module asm "__kstrtabns_nf_tproxy_get_sock_v6:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [92 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.22 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.22 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.atomic_t = type { i32 }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.167, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.167 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.sk_buff = type { %union.anon.0, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.sock_common = type { %union.anon.137, %union.anon.139, %union.anon.140, i16, i8, i8, i32, %union.anon.142, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.145, [0 x i32], %union.anon.146, i16, i16, %union.anon.147, %struct.refcount_struct, [0 x i32], %union.anon.148 }
%union.anon.137 = type { i64 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { i32 }
%union.anon.142 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { %struct.hlist_node }
%union.anon.147 = type { i32 }
%union.anon.148 = type { i32 }

@__kstrtab_nf_tproxy_laddr6 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_tproxy_laddr6 = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_tproxy_laddr6 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_tproxy_laddr6 to i32), ptr @__kstrtab_nf_tproxy_laddr6, ptr @__kstrtabns_nf_tproxy_laddr6 }, section "___ksymtab_gpl+nf_tproxy_laddr6", align 4
@__kstrtab_nf_tproxy_handle_time_wait6 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_tproxy_handle_time_wait6 = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_tproxy_handle_time_wait6 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_tproxy_handle_time_wait6 to i32), ptr @__kstrtab_nf_tproxy_handle_time_wait6, ptr @__kstrtabns_nf_tproxy_handle_time_wait6 }, section "___ksymtab_gpl+nf_tproxy_handle_time_wait6", align 4
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 128
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"net/ipv6/netfilter/nf_tproxy_ipv6.c\00", [60 x i8] zeroinitializer }, align 32
@nf_tproxy_get_sock_v6.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nf_tproxy_ipv6\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nf_tproxy_get_sock_v6\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"tproxy socket lookup: proto %u %pI6:%u -> %pI6:%u, lookup type: %d, sock %p\0A\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab_nf_tproxy_get_sock_v6 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_tproxy_get_sock_v6 = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_tproxy_get_sock_v6 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_tproxy_get_sock_v6 to i32), ptr @__kstrtab_nf_tproxy_get_sock_v6, ptr @__kstrtabns_nf_tproxy_get_sock_v6 }, section "___ksymtab_gpl+nf_tproxy_get_sock_v6", align 4
@__UNIQUE_ID_file601 = internal constant [54 x i8] c"nf_tproxy_ipv6.file=net/ipv6/netfilter/nf_tproxy_ipv6\00", section ".modinfo", align 1
@__UNIQUE_ID_license602 = internal constant [27 x i8] c"nf_tproxy_ipv6.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author603 = internal constant [57 x i8] c"nf_tproxy_ipv6.author=Balazs Scheidler, Krisztian Kovacs\00", section ".modinfo", align 1
@__UNIQUE_ID_description604 = internal constant [68 x i8] c"nf_tproxy_ipv6.description=Netfilter IPv6 transparent proxy support\00", section ".modinfo", align 1
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 140, i32 3 }
@___asan_gen_.18 = private constant [39 x i8] c"../net/ipv6/netfilter/nf_tproxy_ipv6.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 144, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 313, i32 9 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author603, ptr @__UNIQUE_ID_description604, ptr @__UNIQUE_ID_file601, ptr @__UNIQUE_ID_license602, ptr @__ksymtab_nf_tproxy_get_sock_v6, ptr @__ksymtab_nf_tproxy_handle_time_wait6, ptr @__ksymtab_nf_tproxy_laddr6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nf_tproxy_laddr6(ptr nocapture noundef readonly %skb, ptr noundef readonly %user_laddr, ptr noundef readnone %daddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %user_laddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %user_laddr, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %user_laddr, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %3, %1
  %arrayidx4.i = getelementptr [4 x i32], ptr %user_laddr, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %5
  %arrayidx7.i = getelementptr [4 x i32], ptr %user_laddr, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 80
  %11 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #4
  br i1 %call.i, label %if.end.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.end.__in6_dev_get.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %call2.i = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 313, ptr noundef nonnull @.str.5) #4
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %if.end.__in6_dev_get.exit_crit_edge
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %__in6_dev_get.exit.if.end13_crit_edge, label %if.then2

__in6_dev_get.exit.if.end13_crit_edge:            ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then2:                                         ; preds = %__in6_dev_get.exit
  %lock = getelementptr inbounds %struct.inet6_dev, ptr %12, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #4
  %addr_list = getelementptr inbounds %struct.inet6_dev, ptr %12, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then2
  %.pn.in = phi ptr [ %addr_list, %if.then2 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %13 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %addr_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %flags = getelementptr i8, ptr %.pn, i32 -144
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 96
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %for.end.split.loop.exit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.end.split.loop.exit:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %ifa.0.le = getelementptr i8, ptr %.pn, i32 -228
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %for.cond.for.end_crit_edge
  %laddr.0 = phi ptr [ %ifa.0.le, %for.end.split.loop.exit ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #4
  br label %if.end13

if.end13:                                         ; preds = %for.end, %__in6_dev_get.exit.if.end13_crit_edge
  %laddr.1 = phi ptr [ %laddr.0, %for.end ], [ null, %__in6_dev_get.exit.if.end13_crit_edge ]
  %tobool14.not = icmp eq ptr %laddr.1, null
  %daddr.laddr.1 = select i1 %tobool14.not, ptr %daddr, ptr %laddr.1
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %daddr.laddr.1, %if.end13 ], [ %user_laddr, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nf_tproxy_handle_time_wait6(ptr noundef %skb, i32 noundef %tproto, i32 noundef %thoff, ptr noundef %net, ptr noundef %laddr, i16 noundef zeroext %lport, ptr noundef %sk) #0 align 64 {
entry:
  %_hdr = alloca %struct.tcphdr, align 4
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_hdr) #4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = call ptr @memset(ptr %_hdr, i32 255, i32 20)
  %5 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  %9 = add i32 %8, %thoff
  %sub.i1.i = sub i32 %6, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 19
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !33

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %thoff, ptr noundef nonnull %_hdr, i32 noundef 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.lhs.false.i.i.if.then_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %11, i32 %thoff
  %cmp = icmp eq ptr %add.ptr.i.i50, null
  br i1 %cmp, label %skb_header_pointer.exit.if.then_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

skb_header_pointer.exit.if.then_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %skb_header_pointer.exit.if.then_crit_edge, %lor.lhs.false.i.i.if.then_crit_edge, %if.end.i.i.if.then_crit_edge
  call void @inet_twsk_put(ptr noundef %sk) #4
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i56 = phi ptr [ %add.ptr.i.i50, %skb_header_pointer.exit.if.end_crit_edge ], [ %_hdr, %lor.lhs.false.i.i.if.end_crit_edge ]
  %syn = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i56, i32 0, i32 4
  %12 = ptrtoint ptr %syn to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %syn, align 4
  %13 = and i16 %bf.load, 23
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %13)
  %14 = icmp eq i16 %13, 2
  br i1 %14, label %if.then16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then16:                                        ; preds = %if.end
  %conv17 = trunc i32 %tproto to i8
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %call18 = call ptr @nf_tproxy_laddr6(ptr noundef %skb, ptr noundef %laddr, ptr noundef %daddr)
  %15 = ptrtoint ptr %retval.0.i.i56 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %retval.0.i.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %lport)
  %tobool20.not = icmp eq i16 %lport, 0
  br i1 %tobool20.not, label %cond.false, label %if.then16.cond.end_crit_edge

if.then16.cond.end_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  %dest = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i56, i32 0, i32 1
  %17 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dest, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then16.cond.end_crit_edge
  %cond.in = phi i16 [ %18, %cond.false ], [ %lport, %if.then16.cond.end_crit_edge ]
  %19 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %call24 = call ptr @nf_tproxy_get_sock_v6(ptr noundef %net, ptr noundef %skb, i32 noundef %thoff, i8 noundef zeroext %conv17, ptr noundef %saddr, ptr noundef %call18, i16 noundef zeroext %16, i16 noundef zeroext %cond.in, ptr noundef %21, i32 noundef 0)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %cond.end.cleanup_crit_edge, label %if.then26

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then26:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @inet_twsk_deschedule_put(ptr noundef %sk) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %cond.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %sk, %if.end.cleanup_crit_edge ], [ %call24, %if.then26 ], [ %sk, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_hdr) #4
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nf_tproxy_get_sock_v6(ptr noundef %net, ptr noundef %skb, i32 noundef %thoff, i8 noundef zeroext %protocol, ptr noundef %saddr, ptr noundef %daddr, i16 noundef zeroext %sport, i16 noundef zeroext %dport, ptr nocapture noundef readonly %in, i32 noundef %lookup_type) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  %_hdr = alloca %struct.tcphdr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %protocol to i32
  %0 = zext i8 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %protocol, label %do.end48 [
    i8 6, label %sw.bb
    i8 17, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_hdr) #4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = call ptr @memset(ptr %_hdr, i32 255, i32 20)
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  %6 = add i32 %5, %thoff
  %sub.i1.i = sub i32 %3, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 19
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !33

if.end.i.i:                                       ; preds = %sw.bb
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %thoff, ptr noundef nonnull %_hdr, i32 noundef 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

lor.lhs.false.i.i.cleanup.thread_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

skb_header_pointer.exit:                          ; preds = %sw.bb
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %thoff
  %cmp = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp, label %skb_header_pointer.exit.cleanup.thread_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

skb_header_pointer.exit.cleanup.thread_crit_edge: ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i121 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end_crit_edge ], [ %_hdr, %lor.lhs.false.i.i.if.end_crit_edge ]
  %9 = zext i32 %lookup_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %lookup_type, label %do.body [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb8
  ]

sw.bb2:                                           ; preds = %if.end
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i121, i32 0, i32 4
  %10 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %11 = lshr i16 %bf.load.i, 10
  %12 = and i16 %11, 60
  %mul.i = zext i16 %12 to i32
  %add = add i32 %mul.i, %thoff
  %ifindex = getelementptr inbounds %struct.net_device, ptr %in, i32 0, i32 17
  %13 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex, align 4
  %call4 = call ptr @inet6_lookup_listener(ptr noundef %net, ptr noundef nonnull @tcp_hashinfo, ptr noundef %skb, i32 noundef %add, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i16 noundef zeroext %dport, i32 noundef %14, i32 noundef 0) #4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %sw.bb2.cleanup.thread126_crit_edge, label %land.lhs.true

sw.bb2.cleanup.thread126_crit_edge:               ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread126

land.lhs.true:                                    ; preds = %sw.bb2
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %call4, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #4
  %15 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %skc_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true
  %17 = phi i32 [ %16, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %18 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %17, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #4
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #4
  %19 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #4
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %21 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 %20, i32 %add.i.i.i, ptr elementtype(i32) %skc_refcnt) #4, !srcloc !34
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %20
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !33

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %22 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %23, 1
  %24 = or i32 %add5.i.i.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !33

if.end4.i.i.i.cleanup_crit_edge:                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 0) #4
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %ifindex9 = getelementptr inbounds %struct.net_device, ptr %in, i32 0, i32 17
  %25 = ptrtoint ptr %ifindex9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ifindex9, align 4
  %call10 = call ptr @__inet6_lookup_established(ptr noundef %net, ptr noundef nonnull @tcp_hashinfo, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i16 noundef zeroext %dport, i32 noundef %26, i32 noundef 0) #4
  br label %cleanup.thread126

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv6/netfilter/nf_tproxy_ipv6.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #4, !srcloc !35
  unreachable

cleanup.thread:                                   ; preds = %skb_header_pointer.exit.cleanup.thread_crit_edge, %lor.lhs.false.i.i.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_hdr) #4
  br label %cleanup79

cleanup.thread126:                                ; preds = %sw.bb8, %sw.bb2.cleanup.thread126_crit_edge
  %sk.1.ph = phi ptr [ null, %sw.bb2.cleanup.thread126_crit_edge ], [ %call10, %sw.bb8 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_hdr) #4
  br label %do.body62

cleanup:                                          ; preds = %if.then10.i.i.i, %if.end4.i.i.i.cleanup_crit_edge
  %27 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool12.i.i.i.not = icmp eq i32 %28, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #4
  %spec.select = select i1 %tobool12.i.i.i.not, ptr null, ptr %call4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_hdr) #4
  br label %do.body62

sw.bb15:                                          ; preds = %entry
  %ifindex16 = getelementptr inbounds %struct.net_device, ptr %in, i32 0, i32 17
  %29 = ptrtoint ptr %ifindex16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ifindex16, align 4
  %call17 = tail call ptr @udp6_lib_lookup(ptr noundef %net, ptr noundef %saddr, i16 noundef zeroext %sport, ptr noundef %daddr, i16 noundef zeroext %dport, i32 noundef %30) #4
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %sw.bb15.do.body62_crit_edge, label %if.then19

sw.bb15.do.body62_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

if.then19:                                        ; preds = %sw.bb15
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call17, i32 0, i32 4
  %31 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp22 = icmp eq i8 %32, 1
  %33 = zext i32 %lookup_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %lookup_type, label %if.then19.do.body62_crit_edge [
    i32 1, label %land.lhs.true29
    i32 0, label %land.lhs.true35
  ]

if.then19.do.body62_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

land.lhs.true29:                                  ; preds = %if.then19
  %arrayidx2.i = getelementptr %struct.sock_common, ptr %call17, i32 0, i32 11, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx2.i, align 4
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %call17, i32 0, i32 11
  %36 = ptrtoint ptr %skc_v6_rcv_saddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %skc_v6_rcv_saddr, align 4
  %or.i = or i32 %37, %35
  %arrayidx4.i = getelementptr %struct.sock_common, ptr %call17, i32 0, i32 11, i32 0, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %39
  %arrayidx7.i = getelementptr %struct.sock_common, ptr %call17, i32 0, i32 11, i32 0, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  %cmp22.not = xor i1 %cmp22, true
  %brmerge = select i1 %cmp22.not, i1 true, i1 %cmp.i
  br i1 %brmerge, label %land.lhs.true29.if.then37_crit_edge, label %land.lhs.true29.do.body62_crit_edge

land.lhs.true29.do.body62_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

land.lhs.true29.if.then37_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

land.lhs.true35:                                  ; preds = %if.then19
  br i1 %cmp22, label %land.lhs.true35.if.then37_crit_edge, label %land.lhs.true35.do.body62_crit_edge

land.lhs.true35.do.body62_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

land.lhs.true35.if.then37_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.then37:                                        ; preds = %land.lhs.true35.if.then37_crit_edge, %land.lhs.true29.if.then37_crit_edge
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call17, i32 0, i32 19
  %call.i.i.i.i.i.i114 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #4
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #4, !srcloc !37
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.do.body62_crit_edge, label %if.then10.i.i.i.i, !prof !33

if.end5.i.i.i.i.do.body62_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #4
  br label %do.body62

if.then.i:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @sk_free(ptr noundef nonnull %call17) #4
  br label %do.body62

do.end48:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef null) #4
  br label %do.body62

do.body62:                                        ; preds = %do.end48, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.do.body62_crit_edge, %land.lhs.true35.do.body62_crit_edge, %land.lhs.true29.do.body62_crit_edge, %if.then19.do.body62_crit_edge, %sw.bb15.do.body62_crit_edge, %cleanup, %cleanup.thread126
  %sk.3 = phi ptr [ null, %do.end48 ], [ null, %sw.bb15.do.body62_crit_edge ], [ %spec.select, %cleanup ], [ %call17, %land.lhs.true35.do.body62_crit_edge ], [ %call17, %if.then19.do.body62_crit_edge ], [ %sk.1.ph, %cleanup.thread126 ], [ null, %if.end5.i.i.i.i.do.body62_crit_edge ], [ null, %if.then10.i.i.i.i ], [ null, %if.then.i ], [ %call17, %land.lhs.true29.do.body62_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_tproxy_get_sock_v6.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_tproxy_get_sock_v6, %if.then72)) #4
          to label %cleanup79 [label %if.then72], !srcloc !39

if.then72:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  %conv74 = zext i16 %sport to i32
  %conv75 = zext i16 %dport to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_tproxy_get_sock_v6.__UNIQUE_ID_ddebug600, ptr noundef nonnull @.str.3, i32 noundef %conv, ptr noundef %saddr, i32 noundef %conv74, ptr noundef %daddr, i32 noundef %conv75, i32 noundef %lookup_type, ptr noundef %sk.3) #4
  br label %cleanup79

cleanup79:                                        ; preds = %if.then72, %do.body62, %cleanup.thread
  %retval.1 = phi ptr [ %sk.3, %if.then72 ], [ null, %cleanup.thread ], [ %sk.3, %do.body62 ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_deschedule_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet6_lookup_listener(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet6_lookup_established(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udp6_lib_lookup(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !15, !16, !18, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__ksymtab_nf_tproxy_laddr6, !1, !"__ksymtab_nf_tproxy_laddr6", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/nf_tproxy_ipv6.c", i32 36, i32 1}
!2 = !{ptr @__ksymtab_nf_tproxy_handle_time_wait6, !3, !"__ksymtab_nf_tproxy_handle_time_wait6", i1 false, i1 false}
!3 = !{!"../net/ipv6/netfilter/nf_tproxy_ipv6.c", i32 73, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ipv6/netfilter/nf_tproxy_ipv6.c", i32 140, i32 3}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ipv6/netfilter/nf_tproxy_ipv6.c", i32 144, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nf_tproxy_get_sock_v6.__UNIQUE_ID_ddebug600, !7, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!11 = !{ptr @__ksymtab_nf_tproxy_get_sock_v6, !12, !"__ksymtab_nf_tproxy_get_sock_v6", i1 false, i1 false}
!12 = !{!"../net/ipv6/netfilter/nf_tproxy_ipv6.c", i32 149, i32 1}
!13 = !{ptr @__UNIQUE_ID_file601, !14, !"__UNIQUE_ID_file601", i1 false, i1 false}
!14 = !{!"../net/ipv6/netfilter/nf_tproxy_ipv6.c", i32 151, i32 1}
!15 = !{ptr @__UNIQUE_ID_license602, !14, !"__UNIQUE_ID_license602", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_author603, !17, !"__UNIQUE_ID_author603", i1 false, i1 false}
!17 = !{!"../net/ipv6/netfilter/nf_tproxy_ipv6.c", i32 152, i32 1}
!18 = !{ptr @__UNIQUE_ID_description604, !19, !"__UNIQUE_ID_description604", i1 false, i1 false}
!19 = !{!"../net/ipv6/netfilter/nf_tproxy_ipv6.c", i32 153, i32 1}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 1024984, i64 1025008, i64 1025029, i64 1025046, i64 1025063}
!35 = !{i64 2158683018, i64 2158683518, i64 2158683055, i64 2158683111, i64 2158683145, i64 2158683169, i64 2158683210, i64 2158683231, i64 2158683259, i64 2158683293}
!36 = !{i64 2148630803}
!37 = !{i64 2148545243, i64 2148545275, i64 2148545304, i64 2148545338, i64 2148545369, i64 2148545392}
!38 = !{i64 2150618659}
!39 = !{i64 2149023123, i64 2149023128, i64 2149023141, i64 2149023185, i64 2149023219, i64 2149023240}
