; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_rate.c_pt.bc'
source_filename = "../net/ipv4/tcp_rate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tcp_rate_check_app_limited\22, \22a\22\09"
module asm "\09.weak\09__crc_tcp_rate_check_app_limited\09\09\09\09"
module asm "\09.long\09__crc_tcp_rate_check_app_limited\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_rate_check_app_limited:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_rate_check_app_limited\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_rate_check_app_limited:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.192, %struct.anon.193, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
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
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
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
%struct.list_head = type { ptr, ptr }
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
%struct.rate_sample = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }

@tcp_rate_gen.__UNIQUE_ID_ddebug595 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcp_rate\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tcp_rate_gen\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/ipv4/tcp_rate.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tcp rate: %ld %d %u %u %u\0A\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_tcp_rate_check_app_limited = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_rate_check_app_limited = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_rate_check_app_limited = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_rate_check_app_limited to i32), ptr @__kstrtab_tcp_rate_check_app_limited, ptr @__kstrtabns_tcp_rate_check_app_limited }, section "___ksymtab_gpl+tcp_rate_check_app_limited", align 4
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [23 x i8] c"../net/ipv4/tcp_rate.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 170, i32 4 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_tcp_rate_check_app_limited, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_rate_skb_sent(ptr nocapture noundef %sk, ptr nocapture noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %packets_out = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 51
  %0 = ptrtoint ptr %packets_out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %packets_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #7, !srcloc !17
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #7, !srcloc !18
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %first_tx_mstamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 75
  %7 = ptrtoint ptr %first_tx_mstamp to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %div1581.i.i.i, ptr %first_tx_mstamp, align 8
  %delivered_mstamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 76
  %8 = ptrtoint ptr %delivered_mstamp to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %div1581.i.i.i, ptr %delivered_mstamp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %first_tx_mstamp2 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 75
  %9 = ptrtoint ptr %first_tx_mstamp2 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %first_tx_mstamp2, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %first_tx_mstamp3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %12 = ptrtoint ptr %first_tx_mstamp3 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %10, ptr %first_tx_mstamp3, align 8
  %delivered_mstamp4 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 76
  %13 = ptrtoint ptr %delivered_mstamp4 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %delivered_mstamp4, align 8
  %delivered_mstamp7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %15 = ptrtoint ptr %delivered_mstamp7 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %delivered_mstamp7, align 8
  %delivered = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %16 = ptrtoint ptr %delivered to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %delivered, align 8
  %delivered10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %18 = ptrtoint ptr %delivered10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %delivered10, align 4
  %delivered_ce = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 72
  %19 = ptrtoint ptr %delivered_ce to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %delivered_ce, align 4
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load = load i32, ptr %11, align 8
  %bf.value = shl i32 %20, 11
  %bf.shl = and i32 %bf.value, 2147481600
  %bf.clear = and i32 %bf.load, -2147481601
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %11, align 8
  %app_limited = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 74
  %22 = ptrtoint ptr %app_limited to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %app_limited, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool13.not.not = icmp eq i32 %23, 0
  %bf.shl18 = select i1 %tobool13.not.not, i32 0, i32 -2147483648
  %bf.clear19 = and i32 %bf.set, 2147483647
  %bf.set20 = or i32 %bf.shl18, %bf.clear19
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %bf.set20, ptr %11, align 8
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_rate_skb_delivered(ptr nocapture noundef writeonly %sk, ptr nocapture noundef %skb, ptr nocapture noundef %rs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %delivered_mstamp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %1 = ptrtoint ptr %delivered_mstamp to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %delivered_mstamp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %prior_delivered = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 1
  %3 = ptrtoint ptr %prior_delivered to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prior_delivered, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.end.if.then4_crit_edge, label %lor.lhs.false

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %delivered = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %5 = ptrtoint ptr %delivered to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delivered, align 4
  %sub.i = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %lor.lhs.false.if.then4_crit_edge, label %lor.lhs.false.if.end17_crit_edge

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load = load i32, ptr %0, align 8
  %bf.lshr = lshr i32 %bf.load, 11
  %bf.clear = and i32 %bf.lshr, 1048575
  %prior_delivered_ce = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 2
  %8 = ptrtoint ptr %prior_delivered_ce to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %bf.clear, ptr %prior_delivered_ce, align 4
  %delivered5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %9 = ptrtoint ptr %delivered5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delivered5, align 4
  %11 = ptrtoint ptr %prior_delivered to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %prior_delivered, align 8
  %12 = ptrtoint ptr %delivered_mstamp to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %delivered_mstamp, align 8
  %14 = ptrtoint ptr %rs to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %rs, align 8
  %bf.load8 = load i32, ptr %0, align 8
  %is_app_limited = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 12
  %bf.load8.lobit = lshr i32 %bf.load8, 31
  %15 = trunc i32 %bf.load8.lobit to i8
  %16 = ptrtoint ptr %is_app_limited to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %is_app_limited, align 4
  %sacked = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %17 = ptrtoint ptr %sacked to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sacked, align 1
  %19 = and i8 %18, -110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool11 = icmp ne i8 %19, 0
  %is_retrans = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 13
  %frombool12 = zext i1 %tobool11 to i8
  %20 = ptrtoint ptr %is_retrans to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool12, ptr %is_retrans, align 1
  %21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %21, align 8
  %24 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %23, i32 0) #7, !srcloc !17
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %24, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %24, 1
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %23, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #7, !srcloc !18
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %25, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %first_tx_mstamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 75
  %26 = ptrtoint ptr %first_tx_mstamp to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %div1581.i.i.i, ptr %first_tx_mstamp, align 8
  %first_tx_mstamp15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %27 = ptrtoint ptr %first_tx_mstamp15 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %first_tx_mstamp15, align 8
  %sub.i44 = sub i64 %div1581.i.i.i, %28
  %29 = tail call i64 @llvm.smax.i64(i64 %sub.i44, i64 0) #4
  %30 = trunc i64 %29 to i32
  %interval_us = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 5
  %31 = ptrtoint ptr %interval_us to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %interval_us, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then4, %lor.lhs.false.if.end17_crit_edge
  %sacked18 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %32 = ptrtoint ptr %sacked18 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sacked18, align 1
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool21.not = icmp eq i8 %34, 0
  br i1 %tobool21.not, label %if.end17.cleanup_crit_edge, label %if.then22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %delivered_mstamp to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %delivered_mstamp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_rate_gen(ptr nocapture noundef %sk, i32 noundef %delivered, i32 noundef %lost, i1 noundef zeroext %is_sack_reneg, ptr nocapture noundef %rs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %app_limited = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 74
  %0 = ptrtoint ptr %app_limited to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %app_limited, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %delivered2 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %2 = ptrtoint ptr %delivered2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delivered2, align 8
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %app_limited to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %app_limited, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delivered)
  %tobool5.not = icmp eq i32 %delivered, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %tcp_mstamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 44
  %5 = ptrtoint ptr %tcp_mstamp to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tcp_mstamp, align 8
  %delivered_mstamp = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 76
  %7 = ptrtoint ptr %delivered_mstamp to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %delivered_mstamp, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %acked_sacked = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 10
  %8 = ptrtoint ptr %acked_sacked to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %delivered, ptr %acked_sacked, align 4
  %losses = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 9
  %9 = ptrtoint ptr %losses to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %lost, ptr %losses, align 8
  %10 = ptrtoint ptr %rs to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rs, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool8.not = icmp eq i64 %11, 0
  %brmerge = or i1 %tobool8.not, %is_sack_reneg
  br i1 %brmerge, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %delivered11 = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 3
  %12 = ptrtoint ptr %delivered11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %delivered11, align 8
  %interval_us = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 5
  %13 = ptrtoint ptr %interval_us to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %interval_us, align 8
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %delivered13 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %14 = ptrtoint ptr %delivered13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %delivered13, align 8
  %prior_delivered = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 1
  %16 = ptrtoint ptr %prior_delivered to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prior_delivered, align 8
  %sub = sub i32 %15, %17
  %delivered14 = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 3
  %18 = ptrtoint ptr %delivered14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %delivered14, align 8
  %delivered_ce = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 72
  %19 = ptrtoint ptr %delivered_ce to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %delivered_ce, align 4
  %prior_delivered_ce = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 2
  %21 = ptrtoint ptr %prior_delivered_ce to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prior_delivered_ce, align 4
  %sub15 = sub i32 %20, %22
  %delivered_ce16 = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 4
  %and = and i32 %sub15, 1048575
  %23 = ptrtoint ptr %delivered_ce16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and, ptr %delivered_ce16, align 4
  %interval_us18 = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 5
  %24 = ptrtoint ptr %interval_us18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %interval_us18, align 8
  %tcp_mstamp19 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 44
  %26 = ptrtoint ptr %tcp_mstamp19 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tcp_mstamp19, align 8
  %sub.i125 = sub i64 %27, %11
  %28 = tail call i64 @llvm.smax.i64(i64 %sub.i125, i64 0) #4
  %29 = trunc i64 %28 to i32
  %30 = tail call i32 @llvm.umax.i32(i32 %25, i32 %29)
  %31 = ptrtoint ptr %interval_us18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %interval_us18, align 8
  %snd_interval_us = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 6
  %32 = ptrtoint ptr %snd_interval_us to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %25, ptr %snd_interval_us, align 4
  %rcv_interval_us = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 7
  %33 = ptrtoint ptr %rcv_interval_us to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %29, ptr %rcv_interval_us, align 8
  %v.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 50, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %v.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %35)
  %cmp25 = icmp ult i32 %30, %35
  br i1 %cmp25, label %if.then28, label %if.end52, !prof !19

if.then28:                                        ; preds = %if.end12
  %is_retrans = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 13
  %36 = ptrtoint ptr %is_retrans to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_retrans, align 1, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool29.not = icmp eq i8 %37, 0
  br i1 %tobool29.not, label %do.body, label %if.then28.if.end50_crit_edge

if.then28.if.end50_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

do.body:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tcp_rate_gen.__UNIQUE_ID_ddebug595, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tcp_rate_gen, %if.then41)) #4
          to label %if.end50 [label %if.then41], !srcloc !21

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %interval_us18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %interval_us18, align 8
  %40 = ptrtoint ptr %delivered14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %delivered14, align 8
  %icsk_ca_state = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 17
  %42 = ptrtoint ptr %icsk_ca_state to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load = load i8, ptr %icsk_ca_state, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %conv = zext i8 %bf.lshr to i32
  %sack_ok = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 61, i32 4
  %43 = ptrtoint ptr %sack_ok to i32
  call void @__asan_loadN_noabort(i32 %43, i32 3)
  %bf.load45 = load i24, ptr %sack_ok, align 4
  %bf.lshr46 = lshr i24 %bf.load45, 17
  %44 = and i24 %bf.lshr46, 7
  %bf.cast = zext i24 %44 to i32
  %45 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %v.i.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tcp_rate_gen.__UNIQUE_ID_ddebug595, ptr noundef nonnull @.str.3, i32 noundef %39, i32 noundef %41, i32 noundef %conv, i32 noundef %bf.cast, i32 noundef %46) #4
  br label %if.end50

if.end50:                                         ; preds = %if.then41, %do.body, %if.then28.if.end50_crit_edge
  %47 = ptrtoint ptr %interval_us18 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %interval_us18, align 8
  br label %cleanup

if.end52:                                         ; preds = %if.end12
  %is_app_limited = getelementptr inbounds %struct.rate_sample, ptr %rs, i32 0, i32 12
  %48 = ptrtoint ptr %is_app_limited to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_app_limited, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool53.not = icmp eq i8 %49, 0
  br i1 %tobool53.not, label %if.end52.if.then64_crit_edge, label %lor.lhs.false54

if.end52.if.then64_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64

lor.lhs.false54:                                  ; preds = %if.end52
  %conv56 = sext i32 %sub to i64
  %rate_interval_us = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 78
  %50 = ptrtoint ptr %rate_interval_us to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rate_interval_us, align 4
  %conv57 = zext i32 %51 to i64
  %mul = mul nsw i64 %conv57, %conv56
  %rate_delivered = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 77
  %52 = ptrtoint ptr %rate_delivered to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rate_delivered, align 8
  %conv58 = zext i32 %53 to i64
  %conv60 = sext i32 %30 to i64
  %mul61 = mul nsw i64 %conv58, %conv60
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %mul61)
  %cmp62.not = icmp ult i64 %mul, %mul61
  br i1 %cmp62.not, label %lor.lhs.false54.cleanup_crit_edge, label %lor.lhs.false54.if.then64_crit_edge

lor.lhs.false54.if.then64_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then64

lor.lhs.false54.cleanup_crit_edge:                ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then64:                                        ; preds = %lor.lhs.false54.if.then64_crit_edge, %if.end52.if.then64_crit_edge
  %rate_delivered66 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 77
  %54 = ptrtoint ptr %rate_delivered66 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub, ptr %rate_delivered66, align 8
  %55 = ptrtoint ptr %interval_us18 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %interval_us18, align 8
  %rate_interval_us68 = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 78
  %57 = ptrtoint ptr %rate_interval_us68 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %rate_interval_us68, align 4
  %58 = ptrtoint ptr %is_app_limited to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %is_app_limited, align 4, !range !20
  %rate_app_limited = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 37
  %60 = zext i8 %59 to i16
  %61 = ptrtoint ptr %rate_app_limited to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load72 = load i16, ptr %rate_app_limited, align 4
  %bf.shl = shl nuw nsw i16 %60, 13
  %bf.clear73 = and i16 %bf.load72, -8193
  %bf.set = or i16 %bf.clear73, %bf.shl
  store i16 %bf.set, ptr %rate_app_limited, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %lor.lhs.false54.cleanup_crit_edge, %if.end50, %if.then10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tcp_rate_check_app_limited(ptr noundef %sk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %write_seq = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 80
  %0 = ptrtoint ptr %write_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %write_seq, align 4
  %snd_nxt = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 10
  %2 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_nxt, align 4
  %sub = sub i32 %1, %3
  %mss_cache = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 28
  %4 = ptrtoint ptr %mss_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mss_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %5)
  %cmp = icmp ult i32 %sub, %5
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #4
  %6 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %sub.i)
  %cmp2 = icmp ult i32 %sub.i, 513
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %packets_out.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 51
  %8 = ptrtoint ptr %packets_out.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %packets_out.i, align 4
  %sacked_out.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 84
  %10 = ptrtoint ptr %sacked_out.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sacked_out.i.i, align 4
  %lost_out.i.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 83
  %12 = ptrtoint ptr %lost_out.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lost_out.i.i, align 8
  %retrans_out.i = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 52
  %14 = ptrtoint ptr %retrans_out.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %retrans_out.i, align 8
  %16 = add i32 %11, %13
  %sub.i19 = sub i32 %9, %16
  %add.i = add i32 %sub.i19, %15
  %snd_cwnd = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 63
  %17 = ptrtoint ptr %snd_cwnd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %snd_cwnd, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %18)
  %cmp5 = icmp uge i32 %add.i, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp7.not = icmp ugt i32 %13, %15
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp7.not
  br i1 %or.cond, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  %delivered = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 71
  %19 = ptrtoint ptr %delivered to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %delivered, align 8
  %add = add i32 %20, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  %add. = select i1 %tobool.not, i32 1, i32 %add
  %app_limited = getelementptr inbounds %struct.tcp_sock, ptr %sk, i32 0, i32 74
  %21 = ptrtoint ptr %app_limited to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add., ptr %app_limited, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_rate.c", i32 170, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tcp_rate_gen.__UNIQUE_ID_ddebug595, !1, !"__UNIQUE_ID_ddebug595", i1 false, i1 false}
!6 = !{ptr @__ksymtab_tcp_rate_check_app_limited, !7, !"__ksymtab_tcp_rate_check_app_limited", i1 false, i1 false}
!7 = !{!"../net/ipv4/tcp_rate.c", i32 204, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 1446271, i64 1446298, i64 1446320, i64 1446348}
!18 = !{i64 1446679, i64 1446706, i64 1446739, i64 1446760, i64 1446787, i64 1446813}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i8 0, i8 2}
!21 = !{i64 2149023096, i64 2149023101, i64 2149023114, i64 2149023158, i64 2149023192, i64 2149023213}
