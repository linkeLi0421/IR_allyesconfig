; ModuleID = '/llk/IR_all_yes/net/ipv6/inet6_connection_sock.c_pt.bc'
source_filename = "../net/ipv6/inet6_connection_sock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+inet6_csk_route_req\22, \22a\22\09"
module asm "\09.weak\09__crc_inet6_csk_route_req\09\09\09\09"
module asm "\09.long\09__crc_inet6_csk_route_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_csk_route_req:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_csk_route_req\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_csk_route_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+inet6_csk_addr2sockaddr\22, \22a\22\09"
module asm "\09.weak\09__crc_inet6_csk_addr2sockaddr\09\09\09\09"
module asm "\09.long\09__crc_inet6_csk_addr2sockaddr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_csk_addr2sockaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_csk_addr2sockaddr\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_csk_addr2sockaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+inet6_csk_xmit\22, \22a\22\09"
module asm "\09.weak\09__crc_inet6_csk_xmit\09\09\09\09"
module asm "\09.long\09__crc_inet6_csk_xmit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_csk_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_csk_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_csk_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+inet6_csk_update_pmtu\22, \22a\22\09"
module asm "\09.weak\09__crc_inet6_csk_update_pmtu\09\09\09\09"
module asm "\09.long\09__crc_inet6_csk_update_pmtu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inet6_csk_update_pmtu:\09\09\09\09\09"
module asm "\09.asciz \09\22inet6_csk_update_pmtu\22\09\09\09\09\09"
module asm "__kstrtabns_inet6_csk_update_pmtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.145, [0 x i32], %union.anon.146, i16, i16, %union.anon.147, %struct.refcount_struct, [0 x i32], %union.anon.148 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { %struct.hlist_node }
%union.anon.147 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.148 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.149, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.150, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.151, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.149 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.150 = type { ptr }
%union.anon.151 = type { ptr }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.43 }
%union.anon.43 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.197, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.197 = type { %struct.anon.198 }
%struct.anon.198 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.195 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.195 = type { %struct.anon.196 }
%struct.anon.196 = type { ptr, ptr }
%struct.anon.7 = type { i16, i16 }
%struct.anon.44 = type { i16, i16 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.155, [48 x i8], %union.anon.156, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.158, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.155 = type { i64 }
%union.anon.156 = type { %struct.anon.157 }
%struct.anon.157 = type { i32, ptr }
%union.anon.158 = type { %struct.anon.159 }
%struct.anon.159 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.160, i32, i32, i32, i16, i16, %union.anon.162, i32, %union.anon.163, %union.anon.164, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.160 = type { i32 }
%union.anon.162 = type { i32 }
%union.anon.163 = type { i32 }
%union.anon.164 = type { i16 }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.54, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.54 = type { %struct.list_head }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.57, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.57 = type { %struct.in6_addr }
%struct.fib6_node = type { ptr, ptr, ptr, ptr, ptr, i16, i16, i32, ptr, %struct.callback_head }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }

@inet6_csk_route_req.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net/ipv6/inet6_connection_sock.c\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_inet6_csk_route_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_csk_route_req = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_csk_route_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_csk_route_req to i32), ptr @__kstrtab_inet6_csk_route_req, ptr @__kstrtabns_inet6_csk_route_req }, section "___ksymtab+inet6_csk_route_req", align 4
@__kstrtab_inet6_csk_addr2sockaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_csk_addr2sockaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_csk_addr2sockaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_csk_addr2sockaddr to i32), ptr @__kstrtab_inet6_csk_addr2sockaddr, ptr @__kstrtabns_inet6_csk_addr2sockaddr }, section "___ksymtab_gpl+inet6_csk_addr2sockaddr", align 4
@inet6_csk_xmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_inet6_csk_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_csk_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_csk_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_csk_xmit to i32), ptr @__kstrtab_inet6_csk_xmit, ptr @__kstrtabns_inet6_csk_xmit }, section "___ksymtab_gpl+inet6_csk_xmit", align 4
@__kstrtab_inet6_csk_update_pmtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_inet6_csk_update_pmtu = external dso_local constant [0 x i8], align 1
@__ksymtab_inet6_csk_update_pmtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inet6_csk_update_pmtu to i32), ptr @__kstrtab_inet6_csk_update_pmtu, ptr @__kstrtabns_inet6_csk_update_pmtu }, section "___ksymtab_gpl+inet6_csk_update_pmtu", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@inet6_csk_route_socket.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rt6_get_cookie.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/ip6_fib.h\00", [42 x i8] zeroinitializer }, align 32
@fib6_get_cookie_safe.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private constant [36 x i8] c"../net/ipv6/inet6_connection_sock.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 41, i32 32 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 695, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 723, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [25 x i8] c"../include/net/ip6_fib.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 306, i32 9 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 1043, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_inet6_csk_addr2sockaddr, ptr @__ksymtab_inet6_csk_route_req, ptr @__ksymtab_inet6_csk_update_pmtu, ptr @__ksymtab_inet6_csk_xmit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @inet6_csk_route_req(ptr noundef %sk, ptr noundef %fl6, ptr noundef %req, i8 noundef zeroext %proto) #0 align 64 {
entry:
  %final = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %final) #5
  %4 = call ptr @memset(ptr %final, i32 255, i32 16)
  %5 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %6 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %proto, ptr %flowic_proto, align 2
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 10
  %7 = call ptr @memcpy(ptr %daddr, ptr %skc_v6_daddr, i32 16)
  %8 = tail call i32 @llvm.read_register.i32(metadata !30) #5
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !40
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %inet6_sk.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

inet6_sk.exit.rcu_read_lock.exit_crit_edge:       ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %inet6_sk.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %inet6_sk.exit.rcu_read_lock.exit_crit_edge
  %opt = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 18
  %12 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %opt, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b56 = load i1, ptr @inet6_csk_route_req.__warned, align 1
  br i1 %.b56, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @inet6_csk_route_req.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 41, ptr noundef nonnull @.str.1) #5
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %call12 = call ptr @fl6_update_dst(ptr noundef %fl6, ptr noundef %13, ptr noundef nonnull %final) #5
  %call.i57 = call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i57, label %do.end10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i60

do.end10.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i60:                                ; preds = %do.end10
  %call1.i58 = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i62

land.lhs.true.i60.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i62:                               ; preds = %land.lhs.true.i60
  %.b4.i61 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61, label %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, label %if.then.i63

land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i63:                                      ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i63, %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, %do.end10.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !41
  %14 = call i32 @llvm.read_register.i32(metadata !30) #5
  %and.i.i.i.i.i64 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i64 to ptr
  %preempt_count.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i65, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i65, align 4
  call void @rcu_read_unlock_strict() #5
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 11
  %18 = call ptr @memcpy(ptr %saddr, ptr %skc_v6_rcv_saddr, i32 16)
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 6
  %19 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %skc_bound_dev_if, align 4
  %21 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %fl6, align 8
  %ir_mark = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 2
  %22 = ptrtoint ptr %ir_mark to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ir_mark, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %24 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %flowic_mark, align 8
  %25 = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 4
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %28 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %uli, align 4
  %skc_num = getelementptr inbounds %struct.anon.7, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %skc_num, align 2
  %sport = getelementptr inbounds %struct.anon.44, ptr %uli, i32 0, i32 1
  %31 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %sport, align 2
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 8
  %sk_uid = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 55
  %32 = ptrtoint ptr %sk_uid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sk_uid, align 4
  %34 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %flowic_uid, align 4
  call void @security_req_classify_flow(ptr noundef %req, ptr noundef %fl6) #5
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %35 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %skc_net.i, align 4
  %call27 = call ptr @ip6_dst_lookup_flow(ptr noundef %36, ptr noundef %sk, ptr noundef %fl6, ptr noundef %call12) #5
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  %.call27 = select i1 %cmp.i, ptr null, ptr %call27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %final) #5
  ret ptr %.call27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fl6_update_dst(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_req_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_dst_lookup_flow(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inet6_csk_addr2sockaddr(ptr nocapture noundef readonly %sk, ptr noundef %uaddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 10, ptr %uaddr, align 4
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %1 = call ptr @memcpy(ptr %sin6_addr, ptr %skc_v6_daddr, i32 16)
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 1
  %5 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %sin6_port, align 2
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 2
  %6 = ptrtoint ptr %sin6_flowinfo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %sin6_flowinfo, align 4
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %7 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %skc_bound_dev_if, align 4
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #5
  %and.i.i = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %entry.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge

entry.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__ipv6_addr_needs_scope_id.exit.thread.i

lor.rhs.i.i:                                      ; preds = %entry
  %and1.i.i = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp ne i32 %and1.i.i, 0
  %and3.i.i = and i32 %call.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.i.i = icmp ne i32 %and3.i.i, 0
  %or.cond.i = and i1 %tobool2.not.i.i, %tobool4.i.i
  br i1 %or.cond.i, label %lor.rhs.i.i.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge, label %lor.rhs.i.i.ipv6_iface_scope_id.exit_crit_edge

lor.rhs.i.i.ipv6_iface_scope_id.exit_crit_edge:   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipv6_iface_scope_id.exit

lor.rhs.i.i.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__ipv6_addr_needs_scope_id.exit.thread.i

__ipv6_addr_needs_scope_id.exit.thread.i:         ; preds = %lor.rhs.i.i.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge, %entry.__ipv6_addr_needs_scope_id.exit.thread.i_crit_edge
  br label %ipv6_iface_scope_id.exit

ipv6_iface_scope_id.exit:                         ; preds = %__ipv6_addr_needs_scope_id.exit.thread.i, %lor.rhs.i.i.ipv6_iface_scope_id.exit_crit_edge
  %9 = phi i32 [ %8, %__ipv6_addr_needs_scope_id.exit.thread.i ], [ 0, %lor.rhs.i.i.ipv6_iface_scope_id.exit_crit_edge ]
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 4
  %10 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sin6_scope_id, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inet6_csk_xmit(ptr noundef %sk, ptr noundef %skb, ptr nocapture readnone %fl_unused) #0 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #5
  %4 = call ptr @memset(ptr %fl6, i32 255, i32 88)
  %call1 = call fastcc ptr @inet6_csk_route_socket(ptr noundef %sk, ptr noundef nonnull %fl6)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call1 to i32
  %sub = sub i32 0, %5
  %sk_err_soft = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 52
  %6 = ptrtoint ptr %sk_err_soft to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %sk_err_soft, align 8
  %sk_route_caps = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 38
  %7 = ptrtoint ptr %sk_route_caps to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %sk_route_caps, align 8
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

if.end:                                           ; preds = %inet6_sk.exit
  %8 = call i32 @llvm.read_register.i32(metadata !30) #5
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !40
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call.i34 = call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %land.rhs.i, label %rcu_read_lock.exit.skb_dst_set_noref.exit_crit_edge

rcu_read_lock.exit.skb_dst_set_noref.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst_set_noref.exit

land.rhs.i:                                       ; preds = %rcu_read_lock.exit
  %call1.i36 = call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool2.not.i = icmp eq i32 %call1.i36, 0
  br i1 %tobool2.not.i, label %do.end.i, label %land.rhs.i.skb_dst_set_noref.exit_crit_edge, !prof !42

land.rhs.i.skb_dst_set_noref.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst_set_noref.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1043, i32 noundef 9, ptr noundef null) #5
  br label %skb_dst_set_noref.exit

skb_dst_set_noref.exit:                           ; preds = %do.end.i, %land.rhs.i.skb_dst_set_noref.exit_crit_edge, %rcu_read_lock.exit.skb_dst_set_noref.exit_crit_edge
  %tobool23.not.i = icmp eq ptr %call1, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %12 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool23.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear30.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear30.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %13 = ptrtoint ptr %call1 to i32
  %or31.i = or i32 %13, 1
  %14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or31.i, ptr %14, align 8
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %16 = call ptr @memcpy(ptr %daddr, ptr %skc_v6_daddr, i32 16)
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %17 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_mark, align 8
  %opt = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 18
  %19 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %opt, align 4
  %call6 = call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.lhs.true, label %skb_dst_set_noref.exit.do.end14_crit_edge

skb_dst_set_noref.exit.do.end14_crit_edge:        ; preds = %skb_dst_set_noref.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

land.lhs.true:                                    ; preds = %skb_dst_set_noref.exit
  %call7 = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @inet6_csk_xmit.__warned, align 1
  br i1 %.b33, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @inet6_csk_xmit.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 135, ptr noundef nonnull @.str.1) #5
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %skb_dst_set_noref.exit.do.end14_crit_edge
  %tclass = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 12
  %21 = ptrtoint ptr %tclass to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tclass, align 1
  %conv = zext i8 %22 to i32
  %sk_priority = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 33
  %23 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sk_priority, align 4
  %call16 = call i32 @ip6_xmit(ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull %fl6, i32 noundef %18, ptr noundef %20, i32 noundef %conv, i32 noundef %24) #5
  %call.i37 = call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i37, label %do.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i40

do.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i40:                                ; preds = %do.end14
  %call1.i38 = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %tobool.not.i39, label %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i42

land.lhs.true.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i42:                               ; preds = %land.lhs.true.i40
  %.b4.i41 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41, label %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, label %if.then.i43

land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i43:                                      ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i43, %land.lhs.true2.i42.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i40.rcu_read_unlock.exit_crit_edge, %do.end14.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !41
  %25 = call i32 @llvm.read_register.i32(metadata !30) #5
  %and.i.i.i.i.i44 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i44 to ptr
  %preempt_count.i.i.i.i45 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i45, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i45, align 4
  call void @rcu_read_unlock_strict() #5
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %call16, %rcu_read_unlock.exit ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @inet6_csk_route_socket(ptr noundef %sk, ptr noundef %fl6) unnamed_addr #0 align 64 {
entry:
  %final = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.inet6_sk.exit_crit_edge, label %cond.true.i

entry.inet6_sk.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %inet6_sk.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pinet6.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %pinet6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pinet6.i, align 8
  br label %inet6_sk.exit

inet6_sk.exit:                                    ; preds = %cond.true.i, %entry.inet6_sk.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.inet6_sk.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %final) #5
  %4 = call ptr @memset(ptr %final, i32 255, i32 16)
  %5 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %6 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sk_protocol, align 4
  %conv = trunc i16 %7 to i8
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %8 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %flowic_proto, align 2
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %9 = call ptr @memcpy(ptr %daddr, ptr %skc_v6_daddr, i32 16)
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %saddr, ptr %cond.i, i32 16)
  %flow_label = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 4
  %11 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flow_label, align 4
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %13 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %flowlabel, align 8
  %14 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i73 = zext i8 %15 to i32
  %shl.i.i74 = shl nuw i32 1, %conv.i.i73
  %and.i.i75 = and i32 %shl.i.i74, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i75)
  %tobool.i.not.i76 = icmp eq i32 %and.i.i75, 0
  br i1 %tobool.i.not.i76, label %inet6_sk.exit.inet6_sk.exit80_crit_edge, label %cond.true.i78

inet6_sk.exit.inet6_sk.exit80_crit_edge:          ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %inet6_sk.exit80

cond.true.i78:                                    ; preds = %inet6_sk.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pinet6.i77 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %16 = ptrtoint ptr %pinet6.i77 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pinet6.i77, align 8
  br label %inet6_sk.exit80

inet6_sk.exit80:                                  ; preds = %cond.true.i78, %inet6_sk.exit.inet6_sk.exit80_crit_edge
  %cond.i79 = phi ptr [ %17, %cond.true.i78 ], [ null, %inet6_sk.exit.inet6_sk.exit80_crit_edge ]
  %tclass = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i79, i32 0, i32 12
  %18 = ptrtoint ptr %tclass to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tclass, align 1
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %inet6_sk.exit80.do.end_crit_edge, label %if.then

inet6_sk.exit80.do.end_crit_edge:                 ; preds = %inet6_sk.exit80
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %inet6_sk.exit80
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %12, 2097152
  %21 = ptrtoint ptr %flowlabel to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %flowlabel, align 8
  br label %do.end

do.end:                                           ; preds = %if.then, %inet6_sk.exit80.do.end_crit_edge
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %22 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %skc_bound_dev_if, align 4
  %24 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %fl6, align 8
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %25 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sk_mark, align 8
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %27 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %flowic_mark, align 8
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %28 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %inet_sport, align 8
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 4
  %sport = getelementptr inbounds %struct.anon.44, ptr %uli, i32 0, i32 1
  %30 = ptrtoint ptr %sport to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %sport, align 2
  %31 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %31, align 4
  %34 = ptrtoint ptr %uli to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %uli, align 4
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 8
  %sk_uid = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 55
  %35 = ptrtoint ptr %sk_uid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sk_uid, align 4
  %37 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %flowic_uid, align 4
  tail call void @security_sk_classify_flow(ptr noundef %sk, ptr noundef %fl6) #5
  %38 = tail call i32 @llvm.read_register.i32(metadata !30) #5
  %and.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %41, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !40
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %do.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end.rcu_read_lock.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end.rcu_read_lock.exit_crit_edge
  %opt = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 18
  %42 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %opt, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end27_crit_edge

rcu_read_lock.exit.do.end27_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end27

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true.do.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true
  %.b71 = load i1, ptr @inet6_csk_route_socket.__warned, align 1
  br i1 %.b71, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @inet6_csk_route_socket.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 101, ptr noundef nonnull @.str.1) #5
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true.do.end27_crit_edge, %rcu_read_lock.exit.do.end27_crit_edge
  %call29 = call ptr @fl6_update_dst(ptr noundef %fl6, ptr noundef %43, ptr noundef nonnull %final) #5
  %call.i81 = call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i81, label %do.end27.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i84

do.end27.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i84:                                ; preds = %do.end27
  %call1.i82 = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool.not.i83, label %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i86

land.lhs.true.i84.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i86:                               ; preds = %land.lhs.true.i84
  %.b4.i85 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i85, label %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, label %if.then.i87

land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i87:                                      ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i87, %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, %do.end27.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !41
  %44 = call i32 @llvm.read_register.i32(metadata !30) #5
  %and.i.i.i.i.i88 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i88 to ptr
  %preempt_count.i.i.i.i89 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i89, align 4
  %sub.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i89, align 4
  call void @rcu_read_unlock_strict() #5
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  %dst_cookie = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i, i32 0, i32 14
  %48 = ptrtoint ptr %dst_cookie to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dst_cookie, align 4
  %call.i90 = call ptr @__sk_dst_check(ptr noundef %sk, i32 noundef %49) #5
  %tobool31.not = icmp eq ptr %call.i90, null
  br i1 %tobool31.not, label %if.then32, label %rcu_read_unlock.exit.if.end38_crit_edge

rcu_read_unlock.exit.if.end38_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then32:                                        ; preds = %rcu_read_unlock.exit
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %50 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %skc_net.i, align 4
  %call34 = call ptr @ip6_dst_lookup_flow(ptr noundef %51, ptr noundef %sk, ptr noundef %fl6, ptr noundef %call29) #5
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then32.if.end38_crit_edge, label %if.then36

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then36:                                        ; preds = %if.then32
  %52 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load volatile i8, ptr %skc_state.i.i, align 2
  %conv.i.i.i = zext i8 %53 to i32
  %shl.i.i.i = shl nuw i32 1, %conv.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then36.inet6_sk.exit.i_crit_edge, label %cond.true.i.i

if.then36.inet6_sk.exit.i_crit_edge:              ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  br label %inet6_sk.exit.i

cond.true.i.i:                                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  %pinet6.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 1
  %54 = ptrtoint ptr %pinet6.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pinet6.i.i, align 8
  br label %inet6_sk.exit.i

inet6_sk.exit.i:                                  ; preds = %cond.true.i.i, %if.then36.inet6_sk.exit.i_crit_edge
  %cond.i.i = phi ptr [ %55, %cond.true.i.i ], [ null, %if.then36.inet6_sk.exit.i_crit_edge ]
  %sernum.i.i = getelementptr inbounds %struct.rt6_info, ptr %call34, i32 0, i32 2
  %56 = ptrtoint ptr %sernum.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sernum.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %inet6_sk.exit.i.ip6_dst_store.exit_crit_edge

inet6_sk.exit.i.ip6_dst_store.exit_crit_edge:     ; preds = %inet6_sk.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ip6_dst_store.exit

if.end.i.i:                                       ; preds = %inet6_sk.exit.i
  %58 = call i32 @llvm.read_register.i32(metadata !30) #5
  %and.i.i.i.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %61, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !40
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i.i.i, label %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #5
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge
  %from2.i.i = getelementptr inbounds %struct.rt6_info, ptr %call34, i32 0, i32 1
  %62 = ptrtoint ptr %from2.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %from2.i.i, align 4
  %call.i.i = call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b23.i.i = load i1, ptr @rt6_get_cookie.__warned, align 1
  br i1 %.b23.i.i, label %land.lhs.true7.i.i.do.end12.i.i_crit_edge, label %if.then9.i.i

land.lhs.true7.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rt6_get_cookie.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 306, ptr noundef nonnull @.str.1) #5
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then9.i.i, %land.lhs.true7.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge
  %tobool14.not.i.i = icmp eq ptr %63, null
  br i1 %tobool14.not.i.i, label %do.end12.i.i.if.end17.i.i_crit_edge, label %if.then15.i.i

do.end12.i.i.if.end17.i.i_crit_edge:              ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.i

if.then15.i.i:                                    ; preds = %do.end12.i.i
  %fib6_node.i.i.i = getelementptr inbounds %struct.fib6_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %fib6_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %fib6_node.i.i.i, align 4
  %call.i24.i.i = call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i.i)
  %tobool.not.i25.i.i = icmp eq i32 %call.i24.i.i, 0
  br i1 %tobool.not.i25.i.i, label %land.lhs.true.i26.i.i, label %if.then15.i.i.do.end7.i.i.i_crit_edge

if.then15.i.i.do.end7.i.i.i_crit_edge:            ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i.i.i

land.lhs.true.i26.i.i:                            ; preds = %if.then15.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i26.i.i.do.end7.i.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i26.i.i.do.end7.i.i.i_crit_edge:    ; preds = %land.lhs.true.i26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i26.i.i
  %.b1.i.i.i = load i1, ptr @fib6_get_cookie_safe.__warned, align 1
  br i1 %.b1.i.i.i, label %land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge, label %if.then.i27.i.i

land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge:     ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i.i.i

if.then.i27.i.i:                                  ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @fib6_get_cookie_safe.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 284, ptr noundef nonnull @.str.1) #5
  br label %do.end7.i.i.i

do.end7.i.i.i:                                    ; preds = %if.then.i27.i.i, %land.lhs.true4.i.i.i.do.end7.i.i.i_crit_edge, %land.lhs.true.i26.i.i.do.end7.i.i.i_crit_edge, %if.then15.i.i.do.end7.i.i.i_crit_edge
  %tobool9.not.i.i.i = icmp eq ptr %65, null
  br i1 %tobool9.not.i.i.i, label %do.end7.i.i.i.if.end17.i.i_crit_edge, label %do.end13.i.i.i

do.end7.i.i.i.if.end17.i.i_crit_edge:             ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.i

do.end13.i.i.i:                                   ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %fn_sernum.i.i.i = getelementptr inbounds %struct.fib6_node, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %fn_sernum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %fn_sernum.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !43
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %do.end13.i.i.i, %do.end7.i.i.i.if.end17.i.i_crit_edge, %do.end12.i.i.if.end17.i.i_crit_edge
  %cookie.1.i.i = phi i32 [ 0, %do.end12.i.i.if.end17.i.i_crit_edge ], [ 0, %do.end7.i.i.i.if.end17.i.i_crit_edge ], [ %67, %do.end13.i.i.i ]
  %call.i28.i.i = call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i28.i.i, label %if.end17.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i31.i.i

if.end17.i.i.rcu_read_unlock.exit.i.i_crit_edge:  ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i31.i.i:                            ; preds = %if.end17.i.i
  %call1.i29.i.i = call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29.i.i)
  %tobool.not.i30.i.i = icmp eq i32 %call1.i29.i.i, 0
  br i1 %tobool.not.i30.i.i, label %land.lhs.true.i31.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i33.i.i

land.lhs.true.i31.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i31.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i33.i.i:                           ; preds = %land.lhs.true.i31.i.i
  %.b4.i32.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32.i.i, label %land.lhs.true2.i33.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i34.i.i

land.lhs.true2.i33.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i33.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit.i.i

if.then.i34.i.i:                                  ; preds = %land.lhs.true2.i33.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #5
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i34.i.i, %land.lhs.true2.i33.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i31.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.end17.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !41
  %68 = call i32 @llvm.read_register.i32(metadata !30) #5
  %and.i.i.i.i.i35.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i35.i.i to ptr
  %preempt_count.i.i.i.i36.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i36.i.i, align 4
  %sub.i.i.i.i.i = add i32 %71, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i36.i.i, align 4
  call void @rcu_read_unlock_strict() #5
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  br label %ip6_dst_store.exit

ip6_dst_store.exit:                               ; preds = %rcu_read_unlock.exit.i.i, %inet6_sk.exit.i.ip6_dst_store.exit_crit_edge
  %retval.0.i.i = phi i32 [ %cookie.1.i.i, %rcu_read_unlock.exit.i.i ], [ %57, %inet6_sk.exit.i.ip6_dst_store.exit_crit_edge ]
  %dst_cookie.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 14
  %72 = ptrtoint ptr %dst_cookie.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %retval.0.i.i, ptr %dst_cookie.i, align 4
  call void @sk_setup_caps(ptr noundef %sk, ptr noundef %call34) #5
  %daddr_cache.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 2
  %73 = ptrtoint ptr %daddr_cache.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %daddr_cache.i, align 4
  %saddr_cache.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i, i32 0, i32 3
  %74 = ptrtoint ptr %saddr_cache.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %saddr_cache.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %ip6_dst_store.exit, %if.then32.if.end38_crit_edge, %rcu_read_unlock.exit.if.end38_crit_edge
  %dst.0 = phi ptr [ %call.i90, %rcu_read_unlock.exit.if.end38_crit_edge ], [ %call34, %if.then32.if.end38_crit_edge ], [ %call34, %ip6_dst_store.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %final) #5
  ret ptr %dst.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_xmit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @inet6_csk_update_pmtu(ptr noundef %sk, i32 noundef %mtu) #0 align 64 {
entry:
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #5
  %0 = call ptr @memset(ptr %fl6, i32 255, i32 88)
  %call = call fastcc ptr @inet6_csk_route_socket(ptr noundef %sk, ptr noundef nonnull %fl6)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ops = getelementptr inbounds %struct.dst_entry, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %update_pmtu = getelementptr inbounds %struct.dst_ops, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %update_pmtu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %update_pmtu, align 4
  call void %4(ptr noundef %call, ptr noundef %sk, ptr noundef null, i32 noundef %mtu, i1 noundef zeroext true) #5
  %call2 = call fastcc ptr @inet6_csk_route_socket(ptr noundef %sk, ptr noundef nonnull %fl6)
  %cmp.i11 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i11, ptr null, ptr %call2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #5
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__sk_dst_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_setup_caps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20, !21, !23, !25, !26, !28}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/ipv6/inet6_connection_sock.c", i32 41, i32 32}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_inet6_csk_route_req, !5, !"__ksymtab_inet6_csk_route_req", i1 false, i1 false}
!5 = !{!"../net/ipv6/inet6_connection_sock.c", i32 57, i32 1}
!6 = !{ptr @__ksymtab_inet6_csk_addr2sockaddr, !7, !"__ksymtab_inet6_csk_addr2sockaddr", i1 false, i1 false}
!7 = !{!"../net/ipv6/inet6_connection_sock.c", i32 71, i32 1}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/ipv6/inet6_connection_sock.c", i32 135, i32 45}
!10 = !{ptr @__ksymtab_inet6_csk_xmit, !11, !"__ksymtab_inet6_csk_xmit", i1 false, i1 false}
!11 = !{!"../net/ipv6/inet6_connection_sock.c", i32 140, i32 1}
!12 = !{ptr @__ksymtab_inet6_csk_update_pmtu, !13, !"__ksymtab_inet6_csk_update_pmtu", i1 false, i1 false}
!13 = !{!"../net/ipv6/inet6_connection_sock.c", i32 154, i32 1}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/ipv6/inet6_connection_sock.c", i32 101, i32 32}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/net/ip6_fib.h", i32 306, i32 9}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/net/ip6_fib.h", i32 284, i32 7}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/skbuff.h", i32 1043, i32 2}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2149358493}
!41 = !{i64 2149358759}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 2157630806}
