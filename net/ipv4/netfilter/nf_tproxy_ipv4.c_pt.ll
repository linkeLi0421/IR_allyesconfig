; ModuleID = '/llk/IR_all_yes/net/ipv4/netfilter/nf_tproxy_ipv4.c_pt.bc'
source_filename = "../net/ipv4/netfilter/nf_tproxy_ipv4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_tproxy_handle_time_wait4\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_tproxy_handle_time_wait4\09\09\09\09"
module asm "\09.long\09__crc_nf_tproxy_handle_time_wait4\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_tproxy_handle_time_wait4:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_tproxy_handle_time_wait4\22\09\09\09\09\09"
module asm "__kstrtabns_nf_tproxy_handle_time_wait4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_tproxy_laddr4\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_tproxy_laddr4\09\09\09\09"
module asm "\09.long\09__crc_nf_tproxy_laddr4\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_tproxy_laddr4:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_tproxy_laddr4\22\09\09\09\09\09"
module asm "__kstrtabns_nf_tproxy_laddr4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_tproxy_get_sock_v4\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_tproxy_get_sock_v4\09\09\09\09"
module asm "\09.long\09__crc_nf_tproxy_get_sock_v4\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_tproxy_get_sock_v4:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_tproxy_get_sock_v4\22\09\09\09\09\09"
module asm "__kstrtabns_nf_tproxy_get_sock_v4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [92 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.37 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.37 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.atomic_t = type { i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.165, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.183, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.165 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.183 = type { ptr }
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
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.anon = type { i32, i32 }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }

@__kstrtab_nf_tproxy_handle_time_wait4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_tproxy_handle_time_wait4 = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_tproxy_handle_time_wait4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_tproxy_handle_time_wait4 to i32), ptr @__kstrtab_nf_tproxy_handle_time_wait4, ptr @__kstrtabns_nf_tproxy_handle_time_wait4 }, section "___ksymtab_gpl+nf_tproxy_handle_time_wait4", align 4
@nf_tproxy_laddr4.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"net/ipv4/netfilter/nf_tproxy_ipv4.c\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nf_tproxy_laddr4.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_nf_tproxy_laddr4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_tproxy_laddr4 = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_tproxy_laddr4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_tproxy_laddr4 to i32), ptr @__kstrtab_nf_tproxy_laddr4, ptr @__kstrtabns_nf_tproxy_laddr4 }, section "___ksymtab_gpl+nf_tproxy_laddr4", align 4
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 128
@nf_tproxy_get_sock_v4.__UNIQUE_ID_ddebug602 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nf_tproxy_ipv4\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nf_tproxy_get_sock_v4\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"tproxy socket lookup: proto %u %08x:%u -> %08x:%u, lookup type: %d, sock %p\0A\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab_nf_tproxy_get_sock_v4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_tproxy_get_sock_v4 = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_tproxy_get_sock_v4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_tproxy_get_sock_v4 to i32), ptr @__kstrtab_nf_tproxy_get_sock_v4, ptr @__kstrtabns_nf_tproxy_get_sock_v4 }, section "___ksymtab_gpl+nf_tproxy_get_sock_v4", align 4
@__UNIQUE_ID_file603 = internal constant [54 x i8] c"nf_tproxy_ipv4.file=net/ipv4/netfilter/nf_tproxy_ipv4\00", section ".modinfo", align 1
@__UNIQUE_ID_license604 = internal constant [27 x i8] c"nf_tproxy_ipv4.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author605 = internal constant [57 x i8] c"nf_tproxy_ipv4.author=Balazs Scheidler, Krisztian Kovacs\00", section ".modinfo", align 1
@__UNIQUE_ID_description606 = internal constant [68 x i8] c"nf_tproxy_ipv4.description=Netfilter IPv4 transparent proxy support\00", section ".modinfo", align 1
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 62, i32 2 }
@___asan_gen_.22 = private constant [39 x i8] c"../net/ipv4/netfilter/nf_tproxy_ipv4.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 145, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 232, i32 9 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author605, ptr @__UNIQUE_ID_description606, ptr @__UNIQUE_ID_file603, ptr @__UNIQUE_ID_license604, ptr @__ksymtab_nf_tproxy_get_sock_v4, ptr @__ksymtab_nf_tproxy_handle_time_wait4, ptr @__ksymtab_nf_tproxy_laddr4, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nf_tproxy_handle_time_wait4(ptr noundef %net, ptr noundef %skb, i32 noundef %laddr, i16 noundef zeroext %lport, ptr noundef %sk) #0 align 64 {
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
  %4 = call ptr @memset(ptr %_hdr, i32 255, i32 20)
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %6 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %6 to i32
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  %11 = add i32 %10, %mul.i
  %sub.i1.i = sub i32 %8, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 19
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !35

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %mul.i, ptr noundef nonnull %_hdr, i32 noundef 20) #4
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
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %13, i32 %mul.i
  %cmp = icmp eq ptr %add.ptr.i.i55, null
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
  %retval.0.i.i61 = phi ptr [ %add.ptr.i.i55, %skb_header_pointer.exit.if.end_crit_edge ], [ %_hdr, %lor.lhs.false.i.i.if.end_crit_edge ]
  %syn = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i61, i32 0, i32 4
  %14 = ptrtoint ptr %syn to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %syn, align 4
  %15 = and i16 %bf.load, 23
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %15)
  %16 = icmp eq i16 %15, 2
  br i1 %16, label %if.then17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then17:                                        ; preds = %if.end
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %protocol, align 1
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %laddr)
  %tobool18.not = icmp eq i32 %laddr, 0
  br i1 %tobool18.not, label %cond.false, label %if.then17.cond.end_crit_edge

if.then17.cond.end_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %21 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %daddr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then17.cond.end_crit_edge
  %cond = phi i32 [ %22, %cond.false ], [ %laddr, %if.then17.cond.end_crit_edge ]
  %23 = ptrtoint ptr %retval.0.i.i61 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %retval.0.i.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %lport)
  %tobool20.not = icmp eq i16 %lport, 0
  br i1 %tobool20.not, label %cond.false23, label %cond.end.cond.end25_crit_edge

cond.end.cond.end25_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end25

cond.false23:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %dest = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i61, i32 0, i32 1
  %25 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %dest, align 2
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false23, %cond.end.cond.end25_crit_edge
  %cond26.in = phi i16 [ %26, %cond.false23 ], [ %lport, %cond.end.cond.end25_crit_edge ]
  %27 = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %call28 = call ptr @nf_tproxy_get_sock_v4(ptr noundef %net, ptr noundef %skb, i8 noundef zeroext %18, i32 noundef %20, i32 noundef %cond, i16 noundef zeroext %24, i16 noundef zeroext %cond26.in, ptr noundef %29, i32 noundef 0)
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %cond.end25.cleanup_crit_edge, label %if.then30

cond.end25.cleanup_crit_edge:                     ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then30:                                        ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #6
  call void @inet_twsk_deschedule_put(ptr noundef %sk) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %cond.end25.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %sk, %if.end.cleanup_crit_edge ], [ %call28, %if.then30 ], [ %sk, %cond.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_hdr) #4
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nf_tproxy_get_sock_v4(ptr noundef %net, ptr noundef %skb, i8 noundef zeroext %protocol, i32 noundef %saddr, i32 noundef %daddr, i16 noundef zeroext %sport, i16 noundef zeroext %dport, ptr nocapture noundef readonly %in, i32 noundef %lookup_type) #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  %_hdr = alloca %struct.tcphdr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %protocol to i32
  %0 = zext i8 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %protocol, label %do.end52 [
    i8 6, label %sw.bb
    i8 17, label %sw.bb17
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_hdr) #4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = call ptr @memset(ptr %_hdr, i32 255, i32 20)
  %2 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %conv.i.i.i
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %7 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %7 to i32
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %12 = add i32 %11, %mul.i
  %sub.i1.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 19
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !35

if.end.i.i:                                       ; preds = %sw.bb
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %mul.i, ptr noundef nonnull %_hdr, i32 noundef 20) #4
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
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %mul.i
  %cmp = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp, label %skb_header_pointer.exit.cleanup.thread_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

skb_header_pointer.exit.cleanup.thread_crit_edge: ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i136 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end_crit_edge ], [ %_hdr, %lor.lhs.false.i.i.if.end_crit_edge ]
  %15 = zext i32 %lookup_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %lookup_type, label %do.body [
    i32 0, label %sw.bb3
    i32 1, label %sw.bb10
  ]

sw.bb3:                                           ; preds = %if.end
  %16 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i.i, align 8
  %18 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i121 = zext i16 %19 to i32
  %add.ptr.i.i.i122 = getelementptr i8, ptr %17, i32 %conv.i.i.i121
  %20 = ptrtoint ptr %add.ptr.i.i.i122 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i123 = load i8, ptr %add.ptr.i.i.i122, align 4
  %bf.clear.i124 = shl i8 %bf.load.i123, 2
  %21 = and i8 %bf.clear.i124, 60
  %mul.i125 = zext i8 %21 to i32
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i136, i32 0, i32 4
  %22 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i126 = load i16, ptr %doff.i, align 4
  %23 = lshr i16 %bf.load.i126, 10
  %24 = and i16 %23, 60
  %mul.i127 = zext i16 %24 to i32
  %add = add nuw nsw i32 %mul.i127, %mul.i125
  %ifindex = getelementptr inbounds %struct.net_device, ptr %in, i32 0, i32 17
  %25 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ifindex, align 4
  %call.i = call ptr @__inet_lookup_listener(ptr noundef %net, ptr noundef nonnull @tcp_hashinfo, ptr noundef %skb, i32 noundef %add, i32 noundef %saddr, i16 noundef zeroext %sport, i32 noundef %daddr, i16 noundef zeroext %dport, i32 noundef %26, i32 noundef 0) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %sw.bb3.cleanup.thread141_crit_edge, label %land.lhs.true

sw.bb3.cleanup.thread141_crit_edge:               ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread141

land.lhs.true:                                    ; preds = %sw.bb3
  %skc_refcnt = getelementptr inbounds %struct.sock_common, ptr %call.i, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #4
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt, i32 noundef 4) #4
  %27 = ptrtoint ptr %skc_refcnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %skc_refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true
  %29 = phi i32 [ %28, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %30 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %29, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #4
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #4
  %31 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #4
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %33 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 %32, i32 %add.i.i.i, ptr elementtype(i32) %skc_refcnt) #4, !srcloc !36
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %32
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !35

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %34 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %35, 1
  %36 = or i32 %add5.i.i.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %.not.i.i.i = icmp sgt i32 %36, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !35

if.end4.i.i.i.cleanup_crit_edge:                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 0) #4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %ifindex11 = getelementptr inbounds %struct.net_device, ptr %in, i32 0, i32 17
  %37 = ptrtoint ptr %ifindex11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ifindex11, align 4
  %call.i128 = call ptr @__inet_lookup_established(ptr noundef %net, ptr noundef nonnull @tcp_hashinfo, i32 noundef %saddr, i16 noundef zeroext %sport, i32 noundef %daddr, i16 noundef zeroext %dport, i32 noundef %38, i32 noundef 0) #4
  br label %cleanup.thread141

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_tproxy_ipv4.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #4, !srcloc !37
  unreachable

cleanup.thread:                                   ; preds = %skb_header_pointer.exit.cleanup.thread_crit_edge, %lor.lhs.false.i.i.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_hdr) #4
  br label %cleanup83

cleanup.thread141:                                ; preds = %sw.bb10, %sw.bb3.cleanup.thread141_crit_edge
  %sk.1.ph = phi ptr [ null, %sw.bb3.cleanup.thread141_crit_edge ], [ %call.i128, %sw.bb10 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_hdr) #4
  br label %do.body66

cleanup:                                          ; preds = %if.then10.i.i.i, %if.end4.i.i.i.cleanup_crit_edge
  %39 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool12.i.i.i.not = icmp eq i32 %40, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #4
  %spec.select = select i1 %tobool12.i.i.i.not, ptr null, ptr %call.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_hdr) #4
  br label %do.body66

sw.bb17:                                          ; preds = %entry
  %ifindex18 = getelementptr inbounds %struct.net_device, ptr %in, i32 0, i32 17
  %41 = ptrtoint ptr %ifindex18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ifindex18, align 4
  %call19 = tail call ptr @udp4_lib_lookup(ptr noundef %net, i32 noundef %saddr, i16 noundef zeroext %sport, i32 noundef %daddr, i16 noundef zeroext %dport, i32 noundef %42) #4
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %sw.bb17.do.body66_crit_edge, label %if.then21

sw.bb17.do.body66_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body66

if.then21:                                        ; preds = %sw.bb17
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %call19, i32 0, i32 4
  %43 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp24 = icmp eq i8 %44, 1
  %45 = zext i32 %lookup_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %lookup_type, label %if.then21.do.body66_crit_edge [
    i32 1, label %land.lhs.true33
    i32 0, label %land.lhs.true39
  ]

if.then21.do.body66_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body66

land.lhs.true33:                                  ; preds = %if.then21
  %skc_rcv_saddr = getelementptr inbounds %struct.anon, ptr %call19, i32 0, i32 1
  %46 = ptrtoint ptr %skc_rcv_saddr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %skc_rcv_saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp29 = icmp eq i32 %47, 0
  %cmp24.not = xor i1 %cmp24, true
  %brmerge = select i1 %cmp24.not, i1 true, i1 %cmp29
  br i1 %brmerge, label %land.lhs.true33.if.then41_crit_edge, label %land.lhs.true33.do.body66_crit_edge

land.lhs.true33.do.body66_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body66

land.lhs.true33.if.then41_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then41

land.lhs.true39:                                  ; preds = %if.then21
  br i1 %cmp24, label %land.lhs.true39.if.then41_crit_edge, label %land.lhs.true39.do.body66_crit_edge

land.lhs.true39.do.body66_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body66

land.lhs.true39.if.then41_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then41

if.then41:                                        ; preds = %land.lhs.true39.if.then41_crit_edge, %land.lhs.true33.if.then41_crit_edge
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call19, i32 0, i32 19
  %call.i.i.i.i.i.i129 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #4
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #4, !srcloc !39
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.do.body66_crit_edge, label %if.then10.i.i.i.i, !prof !35

if.end5.i.i.i.i.do.body66_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body66

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #4
  br label %do.body66

if.then.i:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @sk_free(ptr noundef nonnull %call19) #4
  br label %do.body66

do.end52:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 9, ptr noundef null) #4
  br label %do.body66

do.body66:                                        ; preds = %do.end52, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.do.body66_crit_edge, %land.lhs.true39.do.body66_crit_edge, %land.lhs.true33.do.body66_crit_edge, %if.then21.do.body66_crit_edge, %sw.bb17.do.body66_crit_edge, %cleanup, %cleanup.thread141
  %sk.3 = phi ptr [ null, %do.end52 ], [ null, %sw.bb17.do.body66_crit_edge ], [ %spec.select, %cleanup ], [ %call19, %land.lhs.true39.do.body66_crit_edge ], [ %call19, %if.then21.do.body66_crit_edge ], [ %sk.1.ph, %cleanup.thread141 ], [ null, %if.end5.i.i.i.i.do.body66_crit_edge ], [ null, %if.then10.i.i.i.i ], [ null, %if.then.i ], [ %call19, %land.lhs.true33.do.body66_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nf_tproxy_get_sock_v4.__UNIQUE_ID_ddebug602, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nf_tproxy_get_sock_v4, %if.then76)) #4
          to label %cleanup83 [label %if.then76], !srcloc !41

if.then76:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #6
  %conv78 = zext i16 %sport to i32
  %conv79 = zext i16 %dport to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nf_tproxy_get_sock_v4.__UNIQUE_ID_ddebug602, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %saddr, i32 noundef %conv78, i32 noundef %daddr, i32 noundef %conv79, i32 noundef %lookup_type, ptr noundef %sk.3) #4
  br label %cleanup83

cleanup83:                                        ; preds = %if.then76, %do.body66, %cleanup.thread
  %retval.1 = phi ptr [ %sk.3, %if.then76 ], [ null, %cleanup.thread ], [ %sk.3, %do.body66 ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_deschedule_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_tproxy_laddr4(ptr nocapture noundef readonly %skb, i32 noundef %user_laddr, i32 noundef %daddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %user_laddr)
  %tobool.not = icmp eq i32 %user_laddr, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 78
  %3 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.__in_dev_get_rcu.exit_crit_edge

if.end.__in_dev_get_rcu.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %__in_dev_get_rcu.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__in_dev_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 232, ptr noundef nonnull @.str.1) #4
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, %if.end.__in_dev_get_rcu.exit_crit_edge
  %ifa_list = getelementptr inbounds %struct.in_device, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ifa_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %ifa_list, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %__in_dev_get_rcu.exit.do.end11_crit_edge

__in_dev_get_rcu.exit.do.end11_crit_edge:         ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

land.lhs.true:                                    ; preds = %__in_dev_get_rcu.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b44 = load i1, ptr @nf_tproxy_laddr4.__warned, align 1
  br i1 %.b44, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nf_tproxy_laddr4.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 62, ptr noundef nonnull @.str.1) #4
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %__in_dev_get_rcu.exit.do.end11_crit_edge
  %tobool13.not48 = icmp eq ptr %6, null
  br i1 %tobool13.not48, label %do.end11.for.end.thread_crit_edge, label %do.end11.for.body_crit_edge

do.end11.for.body_crit_edge:                      ; preds = %do.end11
  br label %for.body

do.end11.for.end.thread_crit_edge:                ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

for.body:                                         ; preds = %do.end32.for.body_crit_edge, %do.end11.for.body_crit_edge
  %ifa.049 = phi ptr [ %10, %do.end32.for.body_crit_edge ], [ %6, %do.end11.for.body_crit_edge ]
  %ifa_flags = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.049, i32 0, i32 11
  %7 = ptrtoint ptr %ifa_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ifa_flags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %ifa_next = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.049, i32 0, i32 1
  %9 = ptrtoint ptr %ifa_next to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %ifa_next, align 4
  %call22 = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %for.inc.do.end32_crit_edge

for.inc.do.end32_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end32

land.lhs.true24:                                  ; preds = %for.inc
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true24.do.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %.b4243 = load i1, ptr @nf_tproxy_laddr4.__warned.2, align 1
  br i1 %.b4243, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nf_tproxy_laddr4.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 62, ptr noundef nonnull @.str.1) #4
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true24.do.end32_crit_edge, %for.inc.do.end32_crit_edge
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %do.end32.for.end.thread_crit_edge, label %do.end32.for.body_crit_edge

do.end32.for.body_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end32.for.end.thread_crit_edge:                ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

for.end:                                          ; preds = %for.body
  %ifa_local = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.049, i32 0, i32 4
  %11 = ptrtoint ptr %ifa_local to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ifa_local, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool34.not = icmp eq i32 %12, 0
  br i1 %tobool34.not, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %do.end32.for.end.thread_crit_edge, %do.end11.for.end.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end.thread, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %user_laddr, %entry.cleanup_crit_edge ], [ %daddr, %for.end.thread ], [ %12, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udp4_lib_lookup(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet_lookup_listener(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet_lookup_established(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !12, !13, !14, !16, !18, !19, !21, !23, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__ksymtab_nf_tproxy_handle_time_wait4, !1, !"__ksymtab_nf_tproxy_handle_time_wait4", i1 false, i1 false}
!1 = !{!"../net/ipv4/netfilter/nf_tproxy_ipv4.c", i32 48, i32 1}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/ipv4/netfilter/nf_tproxy_ipv4.c", i32 62, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!7 = !{ptr @__ksymtab_nf_tproxy_laddr4, !8, !"__ksymtab_nf_tproxy_laddr4", i1 false, i1 false}
!8 = !{!"../net/ipv4/netfilter/nf_tproxy_ipv4.c", i32 72, i32 1}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/ipv4/netfilter/nf_tproxy_ipv4.c", i32 145, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nf_tproxy_get_sock_v4.__UNIQUE_ID_ddebug602, !10, !"__UNIQUE_ID_ddebug602", i1 false, i1 false}
!14 = !{ptr @__ksymtab_nf_tproxy_get_sock_v4, !15, !"__ksymtab_nf_tproxy_get_sock_v4", i1 false, i1 false}
!15 = !{!"../net/ipv4/netfilter/nf_tproxy_ipv4.c", i32 150, i32 1}
!16 = !{ptr @__UNIQUE_ID_file603, !17, !"__UNIQUE_ID_file603", i1 false, i1 false}
!17 = !{!"../net/ipv4/netfilter/nf_tproxy_ipv4.c", i32 152, i32 1}
!18 = !{ptr @__UNIQUE_ID_license604, !17, !"__UNIQUE_ID_license604", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_author605, !20, !"__UNIQUE_ID_author605", i1 false, i1 false}
!20 = !{!"../net/ipv4/netfilter/nf_tproxy_ipv4.c", i32 153, i32 1}
!21 = !{ptr @__UNIQUE_ID_description606, !22, !"__UNIQUE_ID_description606", i1 false, i1 false}
!22 = !{!"../net/ipv4/netfilter/nf_tproxy_ipv4.c", i32 154, i32 1}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 1024887, i64 1024911, i64 1024932, i64 1024949, i64 1024966}
!37 = !{i64 2158672691, i64 2158673191, i64 2158672728, i64 2158672784, i64 2158672818, i64 2158672842, i64 2158672883, i64 2158672904, i64 2158672932, i64 2158672966}
!38 = !{i64 2148630706}
!39 = !{i64 2148545146, i64 2148545178, i64 2148545207, i64 2148545241, i64 2148545272, i64 2148545295}
!40 = !{i64 2150618562}
!41 = !{i64 2149023026, i64 2149023031, i64 2149023044, i64 2149023088, i64 2149023122, i64 2149023143}
