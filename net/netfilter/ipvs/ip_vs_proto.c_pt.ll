; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_proto.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_proto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ip_vs_proto_get\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_vs_proto_get\09\09\09\09"
module asm "\09.long\09__crc_ip_vs_proto_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_vs_proto_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_vs_proto_get\22\09\09\09\09\09"
module asm "__kstrtabns_ip_vs_proto_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_vs_proto_data_get\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_vs_proto_data_get\09\09\09\09"
module asm "\09.long\09__crc_ip_vs_proto_data_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_vs_proto_data_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_vs_proto_data_get\22\09\09\09\09\09"
module asm "__kstrtabns_ip_vs_proto_data_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ip_vs_protocol = type { ptr, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.netns_ipvs = type { i32, i32, [16 x %struct.hlist_head], %struct.list_head, [32 x ptr], [16 x %struct.list_head], [16 x %struct.list_head], [16 x %struct.list_head], %struct.atomic_t, %struct.ip_vs_stats, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.delayed_work, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.spinlock, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.mutex, %struct.ipvs_sync_daemon_cfg, %struct.ipvs_sync_daemon_cfg, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.ip_vs_stats = type { %struct.ip_vs_kstats, %struct.ip_vs_estimator, ptr, %struct.spinlock, %struct.ip_vs_kstats }
%struct.ip_vs_estimator = type { %struct.list_head, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ip_vs_kstats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ipvs_sync_daemon_cfg = type { %union.nf_inet_addr, i32, i16, i16, i8, i8, [16 x i8] }
%union.nf_inet_addr = type { [4 x i32] }
%struct.ip_vs_proto_data = type { ptr, ptr, ptr, %struct.atomic_t, ptr }
%struct.ip_vs_conn = type { %struct.hlist_node, i16, i16, i16, i16, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, i32, i16, i16, ptr, %struct.refcount_struct, %struct.timer_list, i32, %struct.spinlock, i16, i16, i32, i32, ptr, %struct.atomic_t, ptr, %struct.atomic_t, ptr, ptr, ptr, %struct.ip_vs_seq, %struct.ip_vs_seq, ptr, ptr, i8, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ip_vs_seq = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.4 }
%union.anon.4 = type { [4 x i32] }
%struct.sk_buff = type { %union.anon.83, %union.anon.159, %union.anon.160, [48 x i8], %union.anon.161, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.163, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { ptr, ptr, %union.anon.85 }
%union.anon.85 = type { ptr }
%union.anon.159 = type { ptr }
%union.anon.160 = type { i64 }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { i32, ptr }
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.165, i32, i32, i32, i16, i16, %union.anon.167, i32, %union.anon.168, %union.anon.169, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.165 = type { i32 }
%union.anon.167 = type { i32 }
%union.anon.168 = type { i32 }
%union.anon.169 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@ip_vs_proto_table = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@__kstrtab_ip_vs_proto_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_vs_proto_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_vs_proto_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_vs_proto_get to i32), ptr @__kstrtab_ip_vs_proto_get, ptr @__kstrtabns_ip_vs_proto_get }, section "___ksymtab+ip_vs_proto_get", align 4
@__kstrtab_ip_vs_proto_data_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_vs_proto_data_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_vs_proto_data_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_vs_proto_data_get to i32), ptr @__kstrtab_ip_vs_proto_data_get, ptr @__kstrtabns_ip_vs_proto_data_get }, section "___ksymtab+ip_vs_proto_data_get", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ERR!\00", [27 x i8] zeroinitializer }, align 32
@ip_vs_ctpl_state_name_table = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.2, ptr @.str.7], [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@ip_vs_protocol_net_init.protos = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @ip_vs_protocol_tcp, ptr @ip_vs_protocol_udp, ptr @ip_vs_protocol_sctp, ptr @ip_vs_protocol_ah, ptr @ip_vs_protocol_esp], [44 x i8] zeroinitializer }, align 32
@ip_vs_protocol_tcp = external dso_local global %struct.ip_vs_protocol, align 4
@ip_vs_protocol_udp = external dso_local global %struct.ip_vs_protocol, align 4
@ip_vs_protocol_sctp = external dso_local global %struct.ip_vs_protocol, align 4
@ip_vs_protocol_ah = external dso_local global %struct.ip_vs_protocol, align 4
@ip_vs_protocol_esp = external dso_local global %struct.ip_vs_protocol, align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@ip_vs_protocol_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016IPVS: Registered protocols (%s)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip_vs_protocol_init\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net/netfilter/ipvs/ip_vs_proto.c\00", [63 x i8] zeroinitializer }, align 32
@ip_vs_protocol_init._entry_ptr = internal global ptr @ip_vs_protocol_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ASSURED\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TRUNCATED\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%pI6c->%pI6c frag\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TRUNCATED %pI6c->%pI6c\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%pI6c:%u->%pI6c:%u\00", [45 x i8] zeroinitializer }, align 32
@ip_vs_tcpudp_debug_packet_v6.__UNIQUE_ID_ddebug693 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.6, ptr @.str.14, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ip_vs\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ip_vs_tcpudp_debug_packet_v6\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: %s %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IPVS: %s: %s %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%pI4->%pI4 frag\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TRUNCATED %pI4->%pI4\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%pI4:%u->%pI4:%u\00", [47 x i8] zeroinitializer }, align 32
@ip_vs_tcpudp_debug_packet_v4.__UNIQUE_ID_ddebug692 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.19, ptr @.str.6, ptr @.str.14, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ip_vs_tcpudp_debug_packet_v4\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"ip_vs_proto_table\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 38, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 204, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"ip_vs_ctpl_state_name_table\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 41, i32 20 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 209, i32 41 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"protos\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 299, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 354, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 368, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 43, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 257, i32 16 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 259, i32 16 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 266, i32 17 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 269, i32 17 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 274, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 227, i32 16 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 234, i32 17 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 237, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [36 x i8] c"../net/netfilter/ipvs/ip_vs_proto.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 242, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab_ip_vs_proto_data_get, ptr @__ksymtab_ip_vs_proto_get, ptr @ip_vs_protocol_init._entry, ptr @ip_vs_protocol_init._entry_ptr, ptr @register_ip_vs_protocol, ptr @ip_vs_proto_table, ptr @.str, ptr @ip_vs_ctpl_state_name_table, ptr @.str.2, ptr @ip_vs_protocol_net_init.protos, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_proto_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_ctpl_state_name_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_protocol_net_init.protos to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_protocol_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @register_ip_vs_protocol(ptr noundef %pp) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 2
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 4
  %2 = and i16 %1, 31
  %and = zext i16 %2 to i32
  %arrayidx = getelementptr [32 x ptr], ptr @ip_vs_proto_table, i32 0, i32 %and
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %pp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %pp, align 4
  store ptr %pp, ptr %arrayidx, align 4
  %init = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 5
  %6 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %7(ptr noundef %pp) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip_vs_proto_get(i16 noundef zeroext %proto) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %proto, 31
  %and = zext i16 %0 to i32
  %arrayidx = getelementptr [32 x ptr], ptr @ip_vs_proto_table, i32 0, i32 %and
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %pp.0.in = phi ptr [ %arrayidx, %entry ], [ %pp.0, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %pp.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %pp.0 = load ptr, ptr %pp.0.in, align 4
  %tobool.not = icmp eq ptr %pp.0, null
  br i1 %tobool.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %protocol = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp.0, i32 0, i32 2
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol, align 4
  %cmp = icmp eq i16 %3, %proto
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  ret ptr %pp.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip_vs_proto_data_get(ptr nocapture noundef readonly %ipvs, i16 noundef zeroext %proto) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %proto, 31
  %and = zext i16 %0 to i32
  %arrayidx = getelementptr %struct.netns_ipvs, ptr %ipvs, i32 0, i32 4, i32 %and
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %pd.0.in = phi ptr [ %arrayidx, %entry ], [ %pd.0, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %pd.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %pd.0 = load ptr, ptr %pd.0.in, align 4
  %tobool.not = icmp eq ptr %pd.0, null
  br i1 %tobool.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %pp = getelementptr inbounds %struct.ip_vs_proto_data, ptr %pd.0, i32 0, i32 1
  %2 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pp, align 4
  %protocol = getelementptr inbounds %struct.ip_vs_protocol, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol, align 4
  %cmp = icmp eq i16 %5, %proto
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  ret ptr %pd.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_protocol_timeout_change(ptr nocapture noundef readonly %ipvs, i32 noundef %flags) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc6.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %for.inc6.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.netns_ipvs, ptr %ipvs, i32 0, i32 4, i32 %i.017
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %pd.014 = load ptr, ptr %arrayidx, align 4
  %tobool.not15 = icmp eq ptr %pd.014, null
  br i1 %tobool.not15, label %for.body.for.inc6_crit_edge, label %for.body.for.body2_crit_edge

for.body.for.body2_crit_edge:                     ; preds = %for.body
  br label %for.body2

for.body.for.inc6_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc6

for.body2:                                        ; preds = %for.inc.for.body2_crit_edge, %for.body.for.body2_crit_edge
  %pd.016 = phi ptr [ %pd.0, %for.inc.for.body2_crit_edge ], [ %pd.014, %for.body.for.body2_crit_edge ]
  %pp = getelementptr inbounds %struct.ip_vs_proto_data, ptr %pd.016, i32 0, i32 1
  %1 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pp, align 4
  %timeout_change = getelementptr inbounds %struct.ip_vs_protocol, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %timeout_change to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timeout_change, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %for.body2.for.inc_crit_edge, label %if.then

for.body2.for.inc_crit_edge:                      ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %4(ptr noundef nonnull %pd.016, i32 noundef %flags) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body2.for.inc_crit_edge
  %5 = ptrtoint ptr %pd.016 to i32
  call void @__asan_load4_noabort(i32 %5)
  %pd.0 = load ptr, ptr %pd.016, align 4
  %tobool.not = icmp eq ptr %pd.0, null
  br i1 %tobool.not, label %for.inc.for.inc6_crit_edge, label %for.inc.for.body2_crit_edge

for.inc.for.body2_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body2

for.inc.for.inc6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc6

for.inc6:                                         ; preds = %for.inc.for.inc6_crit_edge, %for.body.for.inc6_crit_edge
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end7, label %for.inc6.for.body_crit_edge

for.inc6.for.body_crit_edge:                      ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end7:                                         ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip_vs_create_timeout_table(ptr noundef %table, i32 noundef %size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef %table, i32 noundef %size, i32 noundef 3264) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip_vs_state_name(ptr noundef %cp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 16
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load volatile i16, ptr %state1, align 4
  %conv = zext i16 %1 to i32
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp = icmp ugt i16 %1, 1
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [2 x ptr], ptr @ip_vs_ctpl_state_name_table, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  br label %cleanup

if.end5:                                          ; preds = %entry
  %protocol = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 9
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol, align 4
  %8 = and i16 %7, 31
  %and.i = zext i16 %8 to i32
  %arrayidx.i = getelementptr [32 x ptr], ptr @ip_vs_proto_table, i32 0, i32 %and.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end5
  %pp.0.in.i = phi ptr [ %arrayidx.i, %if.end5 ], [ %pp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %pp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %pp.0.i = load ptr, ptr %pp.0.in.i, align 4
  %tobool.not.i = icmp eq ptr %pp.0.i, null
  br i1 %tobool.not.i, label %for.cond.i.if.then10_crit_edge, label %for.body.i

for.cond.i.if.then10_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

for.body.i:                                       ; preds = %for.cond.i
  %protocol.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %protocol.i, align 4
  %cmp.i = icmp eq i16 %11, %7
  br i1 %cmp.i, label %lor.lhs.false, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

lor.lhs.false:                                    ; preds = %for.body.i
  %state_name = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp.0.i, i32 0, i32 14
  %12 = ptrtoint ptr %state_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state_name, align 4
  %cmp8 = icmp eq ptr %13, null
  br i1 %cmp8, label %lor.lhs.false.if.then10_crit_edge, label %if.end16

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %for.cond.i.if.then10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp13 = icmp eq i16 %7, 0
  %cond15 = select i1 %cmp13, ptr @.str.2, ptr @.str
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call ptr %13(i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then10, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.end ], [ %cond15, %if.then10 ], [ %call18, %if.end16 ], [ @.str, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_tcpudp_debug_packet(i32 noundef %af, ptr nocapture noundef readonly %pp, ptr noundef %skb, i32 noundef %offset, ptr noundef %msg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %af)
  %cmp = icmp eq i32 %af, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ip_vs_tcpudp_debug_packet_v6(ptr noundef %pp, ptr noundef %skb, i32 noundef %offset, ptr noundef %msg)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ip_vs_tcpudp_debug_packet_v4(ptr noundef %pp, ptr noundef %skb, i32 noundef %offset, ptr noundef %msg)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_vs_tcpudp_debug_packet_v6(ptr nocapture noundef readonly %pp, ptr noundef %skb, i32 noundef %offset, ptr noundef %msg) unnamed_addr #3 align 64 {
entry:
  %buf = alloca [192 x i8], align 1
  %_iph = alloca %struct.ipv6hdr, align 4
  %_ports = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %buf) #10
  %0 = call ptr @memset(ptr %buf, i32 255, i32 192)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_iph) #10
  %1 = call ptr @memset(ptr %_iph, i32 255, i32 40)
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  %6 = add i32 %5, %offset
  %sub.i4.i = sub i32 %3, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 40
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !58

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef nonnull %_iph, i32 noundef 40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then_crit_edge, label %lor.lhs.false.i.i.if.else_crit_edge

lor.lhs.false.i.i.if.else_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

lor.lhs.false.i.i.if.then_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %offset
  %cmp = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp, label %skb_header_pointer.exit.if.then_crit_edge, label %skb_header_pointer.exit.if.else_crit_edge

skb_header_pointer.exit.if.else_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

skb_header_pointer.exit.if.then_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %skb_header_pointer.exit.if.then_crit_edge, %lor.lhs.false.i.i.if.then_crit_edge, %if.end.i.i.if.then_crit_edge
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.8, i32 10)
  br label %do.body

if.else:                                          ; preds = %skb_header_pointer.exit.if.else_crit_edge, %lor.lhs.false.i.i.if.else_crit_edge
  %retval.0.i.i64 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.else_crit_edge ], [ %_iph, %lor.lhs.false.i.i.if.else_crit_edge ]
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i64, i32 0, i32 3
  %10 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nexthdr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %11)
  %cmp2 = icmp eq i8 %11, 44
  br i1 %cmp2, label %if.then4, label %if.else7

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i64, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i64, i32 0, i32 6
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.9, ptr noundef %saddr, ptr noundef %daddr)
  br label %do.body

if.else7:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ports) #10
  %12 = ptrtoint ptr %_ports to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %_ports, align 2, !annotation !59
  %13 = getelementptr inbounds [2 x i16], ptr %_ports, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %13, align 2, !annotation !59
  %add = add i32 %offset, 40
  %15 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i.i, align 4
  %17 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i, align 8
  %19 = add i32 %16, -40
  %20 = add i32 %18, %offset
  %sub.i4.i46 = sub i32 %19, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i46)
  %cmp.not.i.i47 = icmp slt i32 %sub.i4.i46, 4
  br i1 %cmp.not.i.i47, label %if.end.i.i52, label %skb_header_pointer.exit58, !prof !58

if.end.i.i52:                                     ; preds = %if.else7
  %tobool2.not.i.i51 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i51, label %if.end.i.i52.if.then12_crit_edge, label %lor.lhs.false.i.i56

if.end.i.i52.if.then12_crit_edge:                 ; preds = %if.end.i.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

lor.lhs.false.i.i56:                              ; preds = %if.end.i.i52
  %call.i.i53 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %_ports, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53)
  %cmp3.i.i54 = icmp slt i32 %call.i.i53, 0
  br i1 %cmp3.i.i54, label %lor.lhs.false.i.i56.if.then12_crit_edge, label %lor.lhs.false.i.i56.if.else17_crit_edge

lor.lhs.false.i.i56.if.else17_crit_edge:          ; preds = %lor.lhs.false.i.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else17

lor.lhs.false.i.i56.if.then12_crit_edge:          ; preds = %lor.lhs.false.i.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

skb_header_pointer.exit58:                        ; preds = %if.else7
  %data.i48 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i48, align 4
  %add.ptr.i.i49 = getelementptr i8, ptr %22, i32 %add
  %cmp10 = icmp eq ptr %add.ptr.i.i49, null
  br i1 %cmp10, label %skb_header_pointer.exit58.if.then12_crit_edge, label %skb_header_pointer.exit58.if.else17_crit_edge

skb_header_pointer.exit58.if.else17_crit_edge:    ; preds = %skb_header_pointer.exit58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else17

skb_header_pointer.exit58.if.then12_crit_edge:    ; preds = %skb_header_pointer.exit58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.then12:                                        ; preds = %skb_header_pointer.exit58.if.then12_crit_edge, %lor.lhs.false.i.i56.if.then12_crit_edge, %if.end.i.i52.if.then12_crit_edge
  %saddr14 = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i64, i32 0, i32 5
  %daddr15 = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i64, i32 0, i32 6
  %call16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.10, ptr noundef %saddr14, ptr noundef %daddr15)
  br label %if.end

if.else17:                                        ; preds = %skb_header_pointer.exit58.if.else17_crit_edge, %lor.lhs.false.i.i56.if.else17_crit_edge
  %retval.0.i.i5771 = phi ptr [ %add.ptr.i.i49, %skb_header_pointer.exit58.if.else17_crit_edge ], [ %_ports, %lor.lhs.false.i.i56.if.else17_crit_edge ]
  %saddr19 = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i64, i32 0, i32 5
  %23 = ptrtoint ptr %retval.0.i.i5771 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %retval.0.i.i5771, align 2
  %conv20 = zext i16 %24 to i32
  %daddr21 = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i64, i32 0, i32 6
  %arrayidx22 = getelementptr i16, ptr %retval.0.i.i5771, i32 1
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx22, align 2
  %conv23 = zext i16 %26 to i32
  %call24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.11, ptr noundef %saddr19, i32 noundef %conv20, ptr noundef %daddr21, i32 noundef %conv23)
  br label %if.end

if.end:                                           ; preds = %if.else17, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports) #10
  br label %do.body

do.body:                                          ; preds = %if.end, %if.then4, %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ip_vs_tcpudp_debug_packet_v6.__UNIQUE_ID_ddebug693, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ip_vs_tcpudp_debug_packet_v6, %if.then30)) #10
          to label %do.end [label %if.then30], !srcloc !60

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 1
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ip_vs_tcpudp_debug_packet_v6.__UNIQUE_ID_ddebug693, ptr noundef nonnull @.str.15, ptr noundef %msg, ptr noundef %28, ptr noundef nonnull %buf) #10
  br label %do.end

do.end:                                           ; preds = %if.then30, %do.body
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_iph) #10
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %buf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_vs_tcpudp_debug_packet_v4(ptr nocapture noundef readonly %pp, ptr noundef %skb, i32 noundef %offset, ptr noundef %msg) unnamed_addr #3 align 64 {
entry:
  %buf = alloca [128 x i8], align 1
  %_iph = alloca %struct.iphdr, align 4
  %_ports = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #10
  %0 = call ptr @memset(ptr %buf, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph) #10
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = call ptr @memset(ptr %_iph, i32 255, i32 20)
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  %6 = add i32 %5, %offset
  %sub.i4.i = sub i32 %3, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !58

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef nonnull %_iph, i32 noundef 20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then_crit_edge, label %lor.lhs.false.i.i.if.else_crit_edge

lor.lhs.false.i.i.if.else_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

lor.lhs.false.i.i.if.then_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %offset
  %cmp = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp, label %skb_header_pointer.exit.if.then_crit_edge, label %skb_header_pointer.exit.if.else_crit_edge

skb_header_pointer.exit.if.else_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

skb_header_pointer.exit.if.then_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %skb_header_pointer.exit.if.then_crit_edge, %lor.lhs.false.i.i.if.then_crit_edge, %if.end.i.i.if.then_crit_edge
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.8, i32 10)
  br label %do.body

if.else:                                          ; preds = %skb_header_pointer.exit.if.else_crit_edge, %lor.lhs.false.i.i.if.else_crit_edge
  %retval.0.i.i65 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.else_crit_edge ], [ %_iph, %lor.lhs.false.i.i.if.else_crit_edge ]
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i65, i32 0, i32 4
  %10 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %frag_off, align 2
  %12 = and i16 %11, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %if.else5, label %if.then2

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %saddr = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i65, i32 0, i32 8
  %daddr = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i65, i32 0, i32 9
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.16, ptr noundef %saddr, ptr noundef %daddr)
  br label %do.body

if.else5:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ports) #10
  %13 = ptrtoint ptr %_ports to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %_ports, align 2, !annotation !59
  %14 = getelementptr inbounds [2 x i16], ptr %_ports, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %14, align 2, !annotation !59
  %16 = ptrtoint ptr %retval.0.i.i65 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %retval.0.i.i65, align 4
  %bf.clear = shl i8 %bf.load, 2
  %17 = and i8 %bf.clear, 60
  %mul = zext i8 %17 to i32
  %add = add i32 %mul, %offset
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i, align 4
  %20 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i, align 8
  %22 = add i32 %21, %add
  %sub.i4.i47 = sub i32 %19, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i47)
  %cmp.not.i.i48 = icmp slt i32 %sub.i4.i47, 4
  br i1 %cmp.not.i.i48, label %if.end.i.i53, label %skb_header_pointer.exit59, !prof !58

if.end.i.i53:                                     ; preds = %if.else5
  %tobool2.not.i.i52 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i52, label %if.end.i.i53.if.then11_crit_edge, label %lor.lhs.false.i.i57

if.end.i.i53.if.then11_crit_edge:                 ; preds = %if.end.i.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

lor.lhs.false.i.i57:                              ; preds = %if.end.i.i53
  %call.i.i54 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %_ports, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54)
  %cmp3.i.i55 = icmp slt i32 %call.i.i54, 0
  br i1 %cmp3.i.i55, label %lor.lhs.false.i.i57.if.then11_crit_edge, label %lor.lhs.false.i.i57.if.else16_crit_edge

lor.lhs.false.i.i57.if.else16_crit_edge:          ; preds = %lor.lhs.false.i.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else16

lor.lhs.false.i.i57.if.then11_crit_edge:          ; preds = %lor.lhs.false.i.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

skb_header_pointer.exit59:                        ; preds = %if.else5
  %data.i49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %23 = ptrtoint ptr %data.i49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i49, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %24, i32 %add
  %cmp9 = icmp eq ptr %add.ptr.i.i50, null
  br i1 %cmp9, label %skb_header_pointer.exit59.if.then11_crit_edge, label %skb_header_pointer.exit59.if.else16_crit_edge

skb_header_pointer.exit59.if.else16_crit_edge:    ; preds = %skb_header_pointer.exit59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else16

skb_header_pointer.exit59.if.then11_crit_edge:    ; preds = %skb_header_pointer.exit59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %skb_header_pointer.exit59.if.then11_crit_edge, %lor.lhs.false.i.i57.if.then11_crit_edge, %if.end.i.i53.if.then11_crit_edge
  %saddr13 = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i65, i32 0, i32 8
  %daddr14 = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i65, i32 0, i32 9
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.17, ptr noundef %saddr13, ptr noundef %daddr14)
  br label %if.end

if.else16:                                        ; preds = %skb_header_pointer.exit59.if.else16_crit_edge, %lor.lhs.false.i.i57.if.else16_crit_edge
  %retval.0.i.i5872 = phi ptr [ %add.ptr.i.i50, %skb_header_pointer.exit59.if.else16_crit_edge ], [ %_ports, %lor.lhs.false.i.i57.if.else16_crit_edge ]
  %saddr18 = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i65, i32 0, i32 8
  %25 = ptrtoint ptr %retval.0.i.i5872 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %retval.0.i.i5872, align 2
  %conv19 = zext i16 %26 to i32
  %daddr20 = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i65, i32 0, i32 9
  %arrayidx21 = getelementptr i16, ptr %retval.0.i.i5872, i32 1
  %27 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %28 to i32
  %call23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.18, ptr noundef %saddr18, i32 noundef %conv19, ptr noundef %daddr20, i32 noundef %conv22)
  br label %if.end

if.end:                                           ; preds = %if.else16, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports) #10
  br label %do.body

do.body:                                          ; preds = %if.end, %if.then2, %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ip_vs_tcpudp_debug_packet_v4.__UNIQUE_ID_ddebug692, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ip_vs_tcpudp_debug_packet_v4, %if.then30)) #10
          to label %do.end [label %if.then30], !srcloc !60

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.ip_vs_protocol, ptr %pp, i32 0, i32 1
  %29 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ip_vs_tcpudp_debug_packet_v4.__UNIQUE_ID_ddebug692, ptr noundef nonnull @.str.15, ptr noundef %msg, ptr noundef %30, ptr noundef nonnull %buf) #10
  br label %do.end

do.end:                                           ; preds = %if.then30, %do.body
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_protocol_net_init(ptr noundef %ipvs) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x ptr], ptr @ip_vs_protocol_net_init.protos, i32 0, i32 %i.017
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %protocol.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 20) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %if.end.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %5 = and i16 %3, 31
  %and.i = zext i16 %5 to i32
  %pp1.i = getelementptr inbounds %struct.ip_vs_proto_data, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %pp1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %pp1.i, align 4
  %arrayidx.i = getelementptr %struct.netns_ipvs, ptr %ipvs, i32 0, i32 4, i32 %and.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %call7.i.i.i, align 8
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %appcnt.i = getelementptr inbounds %struct.ip_vs_proto_data, ptr %call7.i.i.i, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %appcnt.i, i32 noundef 4) #10
  %10 = ptrtoint ptr %appcnt.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %appcnt.i, align 4
  %init_netns.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %init_netns.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_netns.i, align 4
  %cmp.not.i = icmp eq ptr %12, null
  br i1 %cmp.not.i, label %if.end.i.for.inc_crit_edge, label %if.then5.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then5.i:                                       ; preds = %if.end.i
  %call7.i = tail call i32 %12(ptr noundef %ipvs, ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then5.i.for.inc_crit_edge, label %register_ip_vs_proto_netns.exit

if.then5.i.for.inc_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

register_ip_vs_proto_netns.exit:                  ; preds = %if.then5.i
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i.i, align 8
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp1 = icmp slt i32 %call7.i, 0
  br i1 %cmp1, label %register_ip_vs_proto_netns.exit.cleanup_crit_edge, label %register_ip_vs_proto_netns.exit.for.inc_crit_edge

register_ip_vs_proto_netns.exit.for.inc_crit_edge: ; preds = %register_ip_vs_proto_netns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

register_ip_vs_proto_netns.exit.cleanup_crit_edge: ; preds = %register_ip_vs_proto_netns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %register_ip_vs_proto_netns.exit.for.inc_crit_edge, %if.then5.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.inc.cleanup2_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup2_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup2

cleanup:                                          ; preds = %register_ip_vs_proto_netns.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.1.i14 = phi i32 [ %call7.i, %register_ip_vs_proto_netns.exit.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.inc.i.while.cond.preheader.i_crit_edge, %cleanup
  %i.07.i = phi i32 [ 0, %cleanup ], [ %inc.i, %for.inc.i.while.cond.preheader.i_crit_edge ]
  %arrayidx.i8 = getelementptr %struct.netns_ipvs, ptr %ipvs, i32 0, i32 4, i32 %i.07.i
  %16 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i8, align 4
  %cmp1.not6.i = icmp eq ptr %17, null
  br i1 %cmp1.not6.i, label %while.cond.preheader.i.for.inc.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.for.inc.i_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

while.body.i:                                     ; preds = %unregister_ip_vs_proto_netns.exit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %18 = phi ptr [ %34, %unregister_ip_vs_proto_netns.exit.i.while.body.i_crit_edge ], [ %17, %while.cond.preheader.i.while.body.i_crit_edge ]
  %pp.i.i = getelementptr inbounds %struct.ip_vs_proto_data, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pp.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pp.i.i, align 4
  %protocol.i.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %protocol.i.i, align 4
  %23 = and i16 %22, 31
  %and.i.i = zext i16 %23 to i32
  %arrayidx.i.i = getelementptr %struct.netns_ipvs, ptr %ipvs, i32 0, i32 4, i32 %and.i.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %while.body.i
  %pd_p.0.i.i = phi ptr [ %arrayidx.i.i, %while.body.i ], [ %25, %for.body.i.i.for.cond.i.i_crit_edge ]
  %24 = ptrtoint ptr %pd_p.0.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pd_p.0.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %for.cond.i.i.unregister_ip_vs_proto_netns.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.unregister_ip_vs_proto_netns.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unregister_ip_vs_proto_netns.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %cmp.i.i = icmp eq ptr %25, %18
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %18, align 4
  %28 = ptrtoint ptr %pd_p.0.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %pd_p.0.i.i, align 4
  %29 = ptrtoint ptr %pp.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pp.i.i, align 4
  %exit_netns.i.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %exit_netns.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %exit_netns.i.i, align 4
  %cmp3.not.i.i = icmp eq ptr %32, null
  br i1 %cmp3.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then5.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %32(ptr noundef %ipvs, ptr noundef nonnull %18) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then5.i.i, %if.then.i.i.if.end.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %18) #10
  br label %unregister_ip_vs_proto_netns.exit.i

unregister_ip_vs_proto_netns.exit.i:              ; preds = %if.end.i.i, %for.cond.i.i.unregister_ip_vs_proto_netns.exit.i_crit_edge
  %33 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i8, align 4
  %cmp1.not.i = icmp eq ptr %34, null
  br i1 %cmp1.not.i, label %unregister_ip_vs_proto_netns.exit.i.for.inc.i_crit_edge, label %unregister_ip_vs_proto_netns.exit.i.while.body.i_crit_edge

unregister_ip_vs_proto_netns.exit.i.while.body.i_crit_edge: ; preds = %unregister_ip_vs_proto_netns.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

unregister_ip_vs_proto_netns.exit.i.for.inc.i_crit_edge: ; preds = %unregister_ip_vs_proto_netns.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %unregister_ip_vs_proto_netns.exit.i.for.inc.i_crit_edge, %while.cond.preheader.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup2_crit_edge, label %for.inc.i.while.cond.preheader.i_crit_edge

for.inc.i.while.cond.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader.i

for.inc.i.cleanup2_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup2

cleanup2:                                         ; preds = %for.inc.i.cleanup2_crit_edge, %for.inc.cleanup2_crit_edge
  %retval.0 = phi i32 [ %retval.1.i14, %for.inc.i.cleanup2_crit_edge ], [ 0, %for.inc.cleanup2_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_protocol_net_cleanup(ptr noundef %ipvs) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.netns_ipvs, ptr %ipvs, i32 0, i32 4, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1.not6 = icmp eq ptr %1, null
  br i1 %cmp1.not6, label %while.cond.preheader.for.inc_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.body:                                       ; preds = %unregister_ip_vs_proto_netns.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %2 = phi ptr [ %18, %unregister_ip_vs_proto_netns.exit.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %pp.i = getelementptr inbounds %struct.ip_vs_proto_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %pp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pp.i, align 4
  %protocol.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol.i, align 4
  %7 = and i16 %6, 31
  %and.i = zext i16 %7 to i32
  %arrayidx.i = getelementptr %struct.netns_ipvs, ptr %ipvs, i32 0, i32 4, i32 %and.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %while.body
  %pd_p.0.i = phi ptr [ %arrayidx.i, %while.body ], [ %9, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %pd_p.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pd_p.0.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.cond.i.unregister_ip_vs_proto_netns.exit_crit_edge, label %for.body.i

for.cond.i.unregister_ip_vs_proto_netns.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unregister_ip_vs_proto_netns.exit

for.body.i:                                       ; preds = %for.cond.i
  %cmp.i = icmp eq ptr %9, %2
  br i1 %cmp.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %12 = ptrtoint ptr %pd_p.0.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %pd_p.0.i, align 4
  %13 = ptrtoint ptr %pp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pp.i, align 4
  %exit_netns.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %exit_netns.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %exit_netns.i, align 4
  %cmp3.not.i = icmp eq ptr %16, null
  br i1 %cmp3.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then5.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %16(ptr noundef %ipvs, ptr noundef nonnull %2) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %if.then.i.if.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %2) #10
  br label %unregister_ip_vs_proto_netns.exit

unregister_ip_vs_proto_netns.exit:                ; preds = %if.end.i, %for.cond.i.unregister_ip_vs_proto_netns.exit_crit_edge
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %cmp1.not = icmp eq ptr %18, null
  br i1 %cmp1.not, label %unregister_ip_vs_proto_netns.exit.for.inc_crit_edge, label %unregister_ip_vs_proto_netns.exit.while.body_crit_edge

unregister_ip_vs_proto_netns.exit.while.body_crit_edge: ; preds = %unregister_ip_vs_proto_netns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

unregister_ip_vs_proto_netns.exit.for.inc_crit_edge: ; preds = %unregister_ip_vs_proto_netns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %unregister_ip_vs_proto_netns.exit.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_vs_protocol_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %protocols = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %protocols) #10
  %0 = getelementptr inbounds i8, ptr %protocols, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 63)
  %2 = ptrtoint ptr %protocols to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %protocols, align 1
  %arrayidx1 = getelementptr inbounds [64 x i8], ptr %protocols, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx1, align 1
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_tcp, i32 0, i32 2) to i32))
  %4 = load i16, ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_tcp, i32 0, i32 2), align 4
  %5 = and i16 %4, 31
  %and.i = zext i16 %5 to i32
  %arrayidx.i = getelementptr [32 x ptr], ptr @ip_vs_proto_table, i32 0, i32 %and.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @ip_vs_protocol_tcp to i32))
  store ptr %7, ptr @ip_vs_protocol_tcp, align 4
  store ptr @ip_vs_protocol_tcp, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_tcp, i32 0, i32 5) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_tcp, i32 0, i32 5), align 4
  %cmp.not.i = icmp eq ptr %8, null
  br i1 %cmp.not.i, label %entry.register_ip_vs_protocol.exit_crit_edge, label %if.then.i

entry.register_ip_vs_protocol.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %register_ip_vs_protocol.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %8(ptr noundef nonnull @ip_vs_protocol_tcp) #10
  br label %register_ip_vs_protocol.exit

register_ip_vs_protocol.exit:                     ; preds = %if.then.i, %entry.register_ip_vs_protocol.exit_crit_edge
  %strlen = call i32 @strlen(ptr noundef nonnull %protocols) #14
  %endptr = getelementptr i8, ptr %protocols, i32 %strlen
  %9 = call ptr @memcpy(ptr %endptr, ptr @.str.3, i32 3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_tcp, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_tcp, i32 0, i32 1), align 4
  %call4 = call ptr @strcat(ptr noundef nonnull %protocols, ptr noundef %10)
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_udp, i32 0, i32 2) to i32))
  %11 = load i16, ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_udp, i32 0, i32 2), align 4
  %12 = and i16 %11, 31
  %and.i50 = zext i16 %12 to i32
  %arrayidx.i51 = getelementptr [32 x ptr], ptr @ip_vs_proto_table, i32 0, i32 %and.i50
  %13 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i51, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @ip_vs_protocol_udp to i32))
  store ptr %14, ptr @ip_vs_protocol_udp, align 4
  store ptr @ip_vs_protocol_udp, ptr %arrayidx.i51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_udp, i32 0, i32 5) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_udp, i32 0, i32 5), align 4
  %cmp.not.i52 = icmp eq ptr %15, null
  br i1 %cmp.not.i52, label %register_ip_vs_protocol.exit.register_ip_vs_protocol.exit54_crit_edge, label %if.then.i53

register_ip_vs_protocol.exit.register_ip_vs_protocol.exit54_crit_edge: ; preds = %register_ip_vs_protocol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %register_ip_vs_protocol.exit54

if.then.i53:                                      ; preds = %register_ip_vs_protocol.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void %15(ptr noundef nonnull @ip_vs_protocol_udp) #10
  br label %register_ip_vs_protocol.exit54

register_ip_vs_protocol.exit54:                   ; preds = %if.then.i53, %register_ip_vs_protocol.exit.register_ip_vs_protocol.exit54_crit_edge
  %strlen42 = call i32 @strlen(ptr noundef nonnull %protocols) #14
  %endptr43 = getelementptr i8, ptr %protocols, i32 %strlen42
  %16 = call ptr @memcpy(ptr %endptr43, ptr @.str.3, i32 3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_udp, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_udp, i32 0, i32 1), align 4
  %call10 = call ptr @strcat(ptr noundef nonnull %protocols, ptr noundef %17)
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_sctp, i32 0, i32 2) to i32))
  %18 = load i16, ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_sctp, i32 0, i32 2), align 4
  %19 = and i16 %18, 31
  %and.i55 = zext i16 %19 to i32
  %arrayidx.i56 = getelementptr [32 x ptr], ptr @ip_vs_proto_table, i32 0, i32 %and.i55
  %20 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i56, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @ip_vs_protocol_sctp to i32))
  store ptr %21, ptr @ip_vs_protocol_sctp, align 4
  store ptr @ip_vs_protocol_sctp, ptr %arrayidx.i56, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_sctp, i32 0, i32 5) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_sctp, i32 0, i32 5), align 4
  %cmp.not.i57 = icmp eq ptr %22, null
  br i1 %cmp.not.i57, label %register_ip_vs_protocol.exit54.register_ip_vs_protocol.exit59_crit_edge, label %if.then.i58

register_ip_vs_protocol.exit54.register_ip_vs_protocol.exit59_crit_edge: ; preds = %register_ip_vs_protocol.exit54
  call void @__sanitizer_cov_trace_pc() #12
  br label %register_ip_vs_protocol.exit59

if.then.i58:                                      ; preds = %register_ip_vs_protocol.exit54
  call void @__sanitizer_cov_trace_pc() #12
  call void %22(ptr noundef nonnull @ip_vs_protocol_sctp) #10
  br label %register_ip_vs_protocol.exit59

register_ip_vs_protocol.exit59:                   ; preds = %if.then.i58, %register_ip_vs_protocol.exit54.register_ip_vs_protocol.exit59_crit_edge
  %strlen44 = call i32 @strlen(ptr noundef nonnull %protocols) #14
  %endptr45 = getelementptr i8, ptr %protocols, i32 %strlen44
  %23 = call ptr @memcpy(ptr %endptr45, ptr @.str.3, i32 3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_sctp, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_sctp, i32 0, i32 1), align 4
  %call18 = call ptr @strcat(ptr noundef nonnull %protocols, ptr noundef %24)
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_ah, i32 0, i32 2) to i32))
  %25 = load i16, ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_ah, i32 0, i32 2), align 4
  %26 = and i16 %25, 31
  %and.i60 = zext i16 %26 to i32
  %arrayidx.i61 = getelementptr [32 x ptr], ptr @ip_vs_proto_table, i32 0, i32 %and.i60
  %27 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i61, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @ip_vs_protocol_ah to i32))
  store ptr %28, ptr @ip_vs_protocol_ah, align 4
  store ptr @ip_vs_protocol_ah, ptr %arrayidx.i61, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_ah, i32 0, i32 5) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_ah, i32 0, i32 5), align 4
  %cmp.not.i62 = icmp eq ptr %29, null
  br i1 %cmp.not.i62, label %register_ip_vs_protocol.exit59.register_ip_vs_protocol.exit64_crit_edge, label %if.then.i63

register_ip_vs_protocol.exit59.register_ip_vs_protocol.exit64_crit_edge: ; preds = %register_ip_vs_protocol.exit59
  call void @__sanitizer_cov_trace_pc() #12
  br label %register_ip_vs_protocol.exit64

if.then.i63:                                      ; preds = %register_ip_vs_protocol.exit59
  call void @__sanitizer_cov_trace_pc() #12
  call void %29(ptr noundef nonnull @ip_vs_protocol_ah) #10
  br label %register_ip_vs_protocol.exit64

register_ip_vs_protocol.exit64:                   ; preds = %if.then.i63, %register_ip_vs_protocol.exit59.register_ip_vs_protocol.exit64_crit_edge
  %strlen46 = call i32 @strlen(ptr noundef nonnull %protocols) #14
  %endptr47 = getelementptr i8, ptr %protocols, i32 %strlen46
  %30 = call ptr @memcpy(ptr %endptr47, ptr @.str.3, i32 3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_ah, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_ah, i32 0, i32 1), align 4
  %call26 = call ptr @strcat(ptr noundef nonnull %protocols, ptr noundef %31)
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_esp, i32 0, i32 2) to i32))
  %32 = load i16, ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_esp, i32 0, i32 2), align 4
  %33 = and i16 %32, 31
  %and.i65 = zext i16 %33 to i32
  %arrayidx.i66 = getelementptr [32 x ptr], ptr @ip_vs_proto_table, i32 0, i32 %and.i65
  %34 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i66, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @ip_vs_protocol_esp to i32))
  store ptr %35, ptr @ip_vs_protocol_esp, align 4
  store ptr @ip_vs_protocol_esp, ptr %arrayidx.i66, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_esp, i32 0, i32 5) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_esp, i32 0, i32 5), align 4
  %cmp.not.i67 = icmp eq ptr %36, null
  br i1 %cmp.not.i67, label %register_ip_vs_protocol.exit64.register_ip_vs_protocol.exit69_crit_edge, label %if.then.i68

register_ip_vs_protocol.exit64.register_ip_vs_protocol.exit69_crit_edge: ; preds = %register_ip_vs_protocol.exit64
  call void @__sanitizer_cov_trace_pc() #12
  br label %register_ip_vs_protocol.exit69

if.then.i68:                                      ; preds = %register_ip_vs_protocol.exit64
  call void @__sanitizer_cov_trace_pc() #12
  call void %36(ptr noundef nonnull @ip_vs_protocol_esp) #10
  br label %register_ip_vs_protocol.exit69

register_ip_vs_protocol.exit69:                   ; preds = %if.then.i68, %register_ip_vs_protocol.exit64.register_ip_vs_protocol.exit69_crit_edge
  %strlen48 = call i32 @strlen(ptr noundef nonnull %protocols) #14
  %endptr49 = getelementptr i8, ptr %protocols, i32 %strlen48
  %37 = call ptr @memcpy(ptr %endptr49, ptr @.str.3, i32 3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_esp, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.ip_vs_protocol, ptr @ip_vs_protocol_esp, i32 0, i32 1), align 4
  %call34 = call ptr @strcat(ptr noundef nonnull %protocols, ptr noundef %38)
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %arrayidx1) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %protocols) #10
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_vs_protocol_cleanup() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @ip_vs_proto_table, i32 0, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1.not5 = icmp eq ptr %1, null
  br i1 %cmp1.not5, label %while.cond.preheader.for.inc_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.body:                                       ; preds = %unregister_ip_vs_protocol.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %2 = phi ptr [ %14, %unregister_ip_vs_protocol.exit.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %protocol.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %protocol.i, align 4
  %5 = and i16 %4, 31
  %and.i = zext i16 %5 to i32
  %arrayidx.i = getelementptr [32 x ptr], ptr @ip_vs_proto_table, i32 0, i32 %and.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %while.body
  %pp_p.0.i = phi ptr [ %arrayidx.i, %while.body ], [ %7, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %pp_p.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp_p.0.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.cond.i.unregister_ip_vs_protocol.exit_crit_edge, label %for.body.i

for.cond.i.unregister_ip_vs_protocol.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unregister_ip_vs_protocol.exit

for.body.i:                                       ; preds = %for.cond.i
  %cmp.i = icmp eq ptr %7, %2
  br i1 %cmp.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %10 = ptrtoint ptr %pp_p.0.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pp_p.0.i, align 4
  %exit.i = getelementptr inbounds %struct.ip_vs_protocol, ptr %2, i32 0, i32 6
  %11 = ptrtoint ptr %exit.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %exit.i, align 4
  %cmp2.not.i = icmp eq ptr %12, null
  br i1 %cmp2.not.i, label %if.then.i.unregister_ip_vs_protocol.exit_crit_edge, label %if.then4.i

if.then.i.unregister_ip_vs_protocol.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unregister_ip_vs_protocol.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %12(ptr noundef nonnull %2) #10
  br label %unregister_ip_vs_protocol.exit

unregister_ip_vs_protocol.exit:                   ; preds = %if.then4.i, %if.then.i.unregister_ip_vs_protocol.exit_crit_edge, %for.cond.i.unregister_ip_vs_protocol.exit_crit_edge
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %cmp1.not = icmp eq ptr %14, null
  br i1 %cmp1.not, label %unregister_ip_vs_protocol.exit.for.inc_crit_edge, label %unregister_ip_vs_protocol.exit.while.body_crit_edge

unregister_ip_vs_protocol.exit.while.body_crit_edge: ; preds = %unregister_ip_vs_protocol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

unregister_ip_vs_protocol.exit.for.inc_crit_edge: ; preds = %unregister_ip_vs_protocol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %unregister_ip_vs_protocol.exit.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__ksymtab_ip_vs_proto_get, !1, !"__ksymtab_ip_vs_proto_get", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 152, i32 1}
!2 = !{ptr @__ksymtab_ip_vs_proto_data_get, !3, !"__ksymtab_ip_vs_proto_data_get", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 170, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 204, i32 11}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 205, i32 49}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 209, i32 41}
!10 = !{ptr @ip_vs_protocol_net_init.protos, !11, !"protos", i1 false, i1 false}
!11 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 299, i32 32}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 354, i32 2}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 368, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ip_vs_protocol_init._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @ip_vs_protocol_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @ip_vs_proto_table, !21, !"ip_vs_proto_table", i1 false, i1 false}
!21 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 38, i32 31}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 43, i32 29}
!24 = !{ptr @ip_vs_ctpl_state_name_table, !25, !"ip_vs_ctpl_state_name_table", i1 false, i1 false}
!25 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 41, i32 20}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 257, i32 16}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 259, i32 16}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 266, i32 17}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 269, i32 17}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 274, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ip_vs_tcpudp_debug_packet_v6.__UNIQUE_ID_ddebug693, !35, !"__UNIQUE_ID_ddebug693", i1 false, i1 false}
!39 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 227, i32 16}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 234, i32 17}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 237, i32 17}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/netfilter/ipvs/ip_vs_proto.c", i32 242, i32 2}
!48 = !{ptr @ip_vs_tcpudp_debug_packet_v4.__UNIQUE_ID_ddebug692, !47, !"__UNIQUE_ID_ddebug692", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{!"auto-init"}
!60 = !{i64 2148960031, i64 2148960036, i64 2148960049, i64 2148960093, i64 2148960127, i64 2148960148}
