; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_nat_sip.c_pt.bc'
source_filename = "../net/netfilter/nf_nat_sip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nf_conntrack_nat_helper = type { %struct.list_head, [16 x i8], ptr }
%struct.list_head = type { ptr, ptr }
%struct.nf_ct_helper_expectfn = type { %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nf_nat_sip_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nf_nat_range2 = type { i32, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.113, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.105 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%struct.anon.105 = type { %union.nf_inet_addr, %union.anon.106, i8, i8 }
%union.anon.106 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.113 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.nf_conntrack_expect = type { %struct.hlist_node, %struct.hlist_node, %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple_mask, ptr, ptr, ptr, %struct.timer_list, %struct.refcount_struct, i32, i32, %union.nf_inet_addr, %union.nf_conntrack_man_proto, i32, %struct.callback_head }
%struct.nf_conntrack_tuple_mask = type { %struct.anon.114 }
%struct.anon.114 = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.nf_conn_help = type { ptr, %struct.hlist_head, [4 x i8], [4 x i8], [32 x i8] }
%struct.hlist_head = type { ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }

@__UNIQUE_ID_file587 = internal constant [41 x i8] c"nf_nat_sip.file=net/netfilter/nf_nat_sip\00", section ".modinfo", align 1
@__UNIQUE_ID_license588 = internal constant [23 x i8] c"nf_nat_sip.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author589 = internal constant [64 x i8] c"nf_nat_sip.author=Christian Hentschel <chentschel@arnet.com.ar>\00", section ".modinfo", align 1
@__UNIQUE_ID_description590 = internal constant [38 x i8] c"nf_nat_sip.description=SIP NAT helper\00", section ".modinfo", align 1
@__UNIQUE_ID_alias591 = internal constant [28 x i8] c"nf_nat_sip.alias=ip_nat_sip\00", section ".modinfo", align 1
@nat_helper_sip = internal global { %struct.nf_conntrack_nat_helper, [36 x i8] } { %struct.nf_conntrack_nat_helper { %struct.list_head zeroinitializer, [16 x i8] c"ip_nat_sip\00\00\00\00\00\00", ptr null }, [36 x i8] zeroinitializer }, align 32
@nf_nat_sip_hooks = external dso_local global ptr, align 4
@sip_nat = internal global { %struct.nf_ct_helper_expectfn, [16 x i8] } { %struct.nf_ct_helper_expectfn { %struct.list_head zeroinitializer, ptr @.str, ptr @nf_nat_sip_expected }, [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_nf_nat_sip__594_687_nf_nat_sip_init6 = internal global ptr @nf_nat_sip_init, section ".initcall6.init", align 4
@__exitcall_nf_nat_sip_fini = internal global ptr @nf_nat_sip_fini, section ".exitcall.exit", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sip\00", [28 x i8] zeroinitializer }, align 32
@nf_conntrack_expect_lock = external dso_local global %struct.spinlock, align 4
@sip_hooks = internal constant { %struct.nf_nat_sip_hooks, [36 x i8] } { %struct.nf_nat_sip_hooks { ptr @nf_nat_sip, ptr @nf_nat_sip_seq_adjust, ptr @nf_nat_sip_expect, ptr @nf_nat_sdp_addr, ptr @nf_nat_sdp_port, ptr @nf_nat_sdp_session, ptr @nf_nat_sdp_media }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SIP/2.0\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot mangle SIP message\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot mangle Via header\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"maddr=\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cannot mangle maddr\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"received=\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot mangle received\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rport=\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cannot mangle rport\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot mangle contact\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot mangle SIP from/to\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot mangle packet\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%pI4:%u\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[%pI6c]:%u\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%pI6c]\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI6c\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"all ports in use for SIP\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"all ports in use for SDP media\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot mangle SDP message\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"nat_helper_sip\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 31, i32 39 }
@___asan_gen_.27 = private unnamed_addr constant [8 x i8] c"sip_nat\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 655, i32 37 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 656, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"sip_hooks\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 668, i32 38 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 160, i32 25 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 166, i32 30 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 202, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 211, i32 13 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 220, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 228, i32 13 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 237, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 245, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 250, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 253, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 270, i32 30 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 277, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 286, i32 30 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 87, i32 26 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 89, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 74, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 77, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 79, i32 27 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 427, i32 29 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 634, i32 29 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [30 x i8] c"../net/netfilter/nf_nat_sip.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 642, i32 29 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias591, ptr @__UNIQUE_ID_author589, ptr @__UNIQUE_ID_description590, ptr @__UNIQUE_ID_file587, ptr @__UNIQUE_ID_license588, ptr @__exitcall_nf_nat_sip_fini, ptr @__initcall__kmod_nf_nat_sip__594_687_nf_nat_sip_init6, ptr @nf_nat_sip_fini, ptr @nat_helper_sip, ptr @sip_nat, ptr @.str, ptr @sip_hooks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat_helper_sip to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sip_nat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sip_hooks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_nat_sip_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nf_nat_helper_unregister(ptr noundef nonnull @nat_helper_sip) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_sip_hooks to i32))
  store volatile ptr null, ptr @nf_nat_sip_hooks, align 4
  tail call void @nf_ct_helper_expectfn_unregister(ptr noundef nonnull @sip_nat) #6
  tail call void @synchronize_rcu() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_helper_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_expectfn_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_nat_sip_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_nat_sip_hooks to i32))
  %0 = load ptr, ptr @nf_nat_sip_hooks, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %do.end5, label %do.body2, !prof !72

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netfilter/nf_nat_sip.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 680, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nf_nat_helper_register(ptr noundef nonnull @nat_helper_sip) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_sip_hooks to i32))
  store volatile ptr @sip_hooks, ptr @nf_nat_sip_hooks, align 4
  tail call void @nf_ct_helper_expectfn_register(ptr noundef nonnull @sip_nat) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nf_nat_sip_expected(ptr noundef %ct, ptr nocapture noundef readonly %exp) #2 align 64 {
entry:
  %range = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 10
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfct_help.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.i.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfct_help.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i8 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  br label %nfct_help.exit

nfct_help.exit:                                   ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge, %entry.nfct_help.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help.exit_crit_edge ], [ null, %entry.nfct_help.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range) #6
  %6 = getelementptr inbounds i8, ptr %range, i32 40
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !74
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 8
  %and = and i32 %9, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !72

do.body3:                                         ; preds = %nfct_help.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netfilter/nf_nat_sip.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 327, 0\0A.popsection", ""() #6, !srcloc !75
  unreachable

do.end8:                                          ; preds = %nfct_help.exit
  %10 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %range, align 4
  %min_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %max_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 12
  %11 = ptrtoint ptr %saved_proto to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %saved_proto, align 4
  %13 = ptrtoint ptr %max_proto to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %max_proto, align 2
  %14 = ptrtoint ptr %min_proto to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %12, ptr %min_proto, align 4
  %min_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %max_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %saved_addr = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 11
  %15 = call ptr @memcpy(ptr %max_addr, ptr %saved_addr, i32 16)
  %16 = call ptr @memcpy(ptr %min_addr, ptr %saved_addr, i32 16)
  %call9 = call i32 @nf_nat_setup_info(ptr noundef %ct, ptr noundef nonnull %range, i32 noundef 1) #6
  %class = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 10
  %17 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %class, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  br i1 %cmp.not, label %do.end8.land.lhs.true69_crit_edge, label %if.then10

do.end8.land.lhs.true69_crit_edge:                ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true69

if.then10:                                        ; preds = %do.end8
  call void @_raw_spin_lock_bh(ptr noundef nonnull @nf_conntrack_expect_lock) #6
  %expectations = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %expectations to i32
  call void @__asan_load4_noabort(i32 %19)
  %pair_exp.0151 = load ptr, ptr %expectations, align 4
  %tobool13.not152 = icmp eq ptr %pair_exp.0151, null
  br i1 %tobool13.not152, label %if.then10.if.end67.thread146_crit_edge, label %for.body.lr.ph

if.then10.if.end67.thread146_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.thread146

for.body.lr.ph:                                   ; preds = %if.then10
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %l3num.i, align 2
  %protonum22 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %tuple20 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1
  %arrayidx2.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %arrayidx6.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %arrayidx9.i = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %u = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 1
  br label %for.body

if.end67.thread146:                               ; preds = %for.inc.if.end67.thread146_crit_edge, %if.then10.if.end67.thread146_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @nf_conntrack_expect_lock) #6
  br label %land.lhs.true69

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pair_exp.0153 = phi ptr [ %pair_exp.0151, %for.body.lr.ph ], [ %pair_exp.0, %for.inc.for.body_crit_edge ]
  %l3num = getelementptr inbounds %struct.nf_conntrack_expect, ptr %pair_exp.0153, i32 0, i32 2, i32 0, i32 2
  %22 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %l3num, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %21)
  %cmp16 = icmp eq i16 %23, %21
  br i1 %cmp16, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %protonum = getelementptr inbounds %struct.nf_conntrack_expect, ptr %pair_exp.0153, i32 0, i32 2, i32 1, i32 2
  %24 = ptrtoint ptr %protonum to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %protonum, align 2
  %26 = ptrtoint ptr %protonum22 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %protonum22, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp24 = icmp eq i8 %25, %27
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true26:                                  ; preds = %land.lhs.true
  %saved_addr31 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %pair_exp.0153, i32 0, i32 11
  %28 = ptrtoint ptr %tuple20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tuple20, align 4
  %30 = ptrtoint ptr %saved_addr31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %saved_addr31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.i = icmp eq i32 %29, %31
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true26.for.inc_crit_edge

land.lhs.true26.for.inc_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.i:                                  ; preds = %land.lhs.true26
  %32 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr %struct.nf_conntrack_expect, ptr %pair_exp.0153, i32 0, i32 11, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp4.i = icmp eq i32 %33, %35
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %36 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx6.i, align 4
  %arrayidx7.i = getelementptr %struct.nf_conntrack_expect, ptr %pair_exp.0153, i32 0, i32 11, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp8.i = icmp eq i32 %37, %39
  br i1 %cmp8.i, label %nf_inet_addr_cmp.exit, label %land.lhs.true5.i.for.inc_crit_edge

land.lhs.true5.i.for.inc_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

nf_inet_addr_cmp.exit:                            ; preds = %land.lhs.true5.i
  %40 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr %struct.nf_conntrack_expect, ptr %pair_exp.0153, i32 0, i32 11, i32 0, i32 3
  %42 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp11.i.not = icmp eq i32 %41, %43
  br i1 %cmp11.i.not, label %land.lhs.true34, label %nf_inet_addr_cmp.exit.for.inc_crit_edge

nf_inet_addr_cmp.exit.for.inc_crit_edge:          ; preds = %nf_inet_addr_cmp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true34:                                  ; preds = %nf_inet_addr_cmp.exit
  %44 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %u, align 8
  %saved_proto40 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %pair_exp.0153, i32 0, i32 12
  %46 = ptrtoint ptr %saved_proto40 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %saved_proto40, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %47)
  %cmp42 = icmp eq i16 %45, %47
  br i1 %cmp42, label %if.end67, label %land.lhs.true34.for.inc_crit_edge

land.lhs.true34.for.inc_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true34.for.inc_crit_edge, %nf_inet_addr_cmp.exit.for.inc_crit_edge, %land.lhs.true5.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %land.lhs.true26.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %48 = ptrtoint ptr %pair_exp.0153 to i32
  call void @__asan_load4_noabort(i32 %48)
  %pair_exp.0 = load ptr, ptr %pair_exp.0153, align 4
  %tobool13.not = icmp eq ptr %pair_exp.0, null
  br i1 %tobool13.not, label %for.inc.if.end67.thread146_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end67.thread146_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67.thread146

if.end67:                                         ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  %dst.le = getelementptr inbounds %struct.nf_conntrack_expect, ptr %pair_exp.0153, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %range, align 4
  %u48 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %pair_exp.0153, i32 0, i32 2, i32 1, i32 1
  %50 = ptrtoint ptr %u48 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %u48, align 4
  %52 = ptrtoint ptr %max_proto to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %max_proto, align 2
  %53 = ptrtoint ptr %min_proto to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %51, ptr %min_proto, align 4
  %54 = call ptr @memcpy(ptr %max_addr, ptr %dst.le, i32 16)
  %55 = call ptr @memcpy(ptr %min_addr, ptr %dst.le, i32 16)
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @nf_conntrack_expect_lock) #6
  br label %if.then99

land.lhs.true69:                                  ; preds = %if.end67.thread146, %do.end8.land.lhs.true69_crit_edge
  %tuple72 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1
  %56 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %master, align 4
  %dir = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 13
  %58 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dir, align 4
  %tuple78 = getelementptr %struct.nf_conn, ptr %57, i32 0, i32 4, i32 %59, i32 1
  %60 = ptrtoint ptr %tuple72 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tuple72, align 4
  %62 = ptrtoint ptr %tuple78 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tuple78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp.i128 = icmp eq i32 %61, %63
  br i1 %cmp.i128, label %land.lhs.true.i132, label %land.lhs.true69.if.end101_crit_edge

land.lhs.true69.if.end101_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

land.lhs.true.i132:                               ; preds = %land.lhs.true69
  %arrayidx2.i129 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %64 = ptrtoint ptr %arrayidx2.i129 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx2.i129, align 4
  %arrayidx3.i130 = getelementptr [4 x i32], ptr %tuple78, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx3.i130 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx3.i130, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp4.i131 = icmp eq i32 %65, %67
  br i1 %cmp4.i131, label %land.lhs.true5.i136, label %land.lhs.true.i132.if.end101_crit_edge

land.lhs.true.i132.if.end101_crit_edge:           ; preds = %land.lhs.true.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

land.lhs.true5.i136:                              ; preds = %land.lhs.true.i132
  %arrayidx6.i133 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %68 = ptrtoint ptr %arrayidx6.i133 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx6.i133, align 4
  %arrayidx7.i134 = getelementptr [4 x i32], ptr %tuple78, i32 0, i32 2
  %70 = ptrtoint ptr %arrayidx7.i134 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx7.i134, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %cmp8.i135 = icmp eq i32 %69, %71
  br i1 %cmp8.i135, label %nf_inet_addr_cmp.exit142, label %land.lhs.true5.i136.if.end101_crit_edge

land.lhs.true5.i136.if.end101_crit_edge:          ; preds = %land.lhs.true5.i136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

nf_inet_addr_cmp.exit142:                         ; preds = %land.lhs.true5.i136
  %arrayidx9.i137 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %72 = ptrtoint ptr %arrayidx9.i137 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx9.i137, align 4
  %arrayidx10.i138 = getelementptr [4 x i32], ptr %tuple78, i32 0, i32 3
  %74 = ptrtoint ptr %arrayidx10.i138 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx10.i138, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp11.i139.not = icmp eq i32 %73, %75
  br i1 %cmp11.i139.not, label %if.then83, label %nf_inet_addr_cmp.exit142.if.end101_crit_edge

nf_inet_addr_cmp.exit142.if.end101_crit_edge:     ; preds = %nf_inet_addr_cmp.exit142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then83:                                        ; preds = %nf_inet_addr_cmp.exit142
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %range, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool90.not = icmp eq i32 %59, 0
  %lnot.ext92 = zext i1 %tobool90.not to i32
  %dst95 = getelementptr %struct.nf_conn, ptr %57, i32 0, i32 4, i32 %lnot.ext92, i32 1, i32 1
  %77 = call ptr @memcpy(ptr %max_addr, ptr %dst95, i32 16)
  %78 = call ptr @memmove(ptr %min_addr, ptr %dst95, i32 16)
  br label %if.then99

if.then99:                                        ; preds = %if.then83, %if.end67
  %call100 = call i32 @nf_nat_setup_info(ptr noundef %ct, ptr noundef nonnull %range, i32 noundef 0) #6
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %nf_inet_addr_cmp.exit142.if.end101_crit_edge, %land.lhs.true5.i136.if.end101_crit_edge, %land.lhs.true.i132.if.end101_crit_edge, %land.lhs.true69.if.end101_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_setup_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_helper_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_expectfn_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_nat_sip(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr nocapture noundef %dptr, ptr nocapture noundef %datalen) #2 align 64 {
entry:
  %matchlen.i440 = alloca i32, align 4
  %matchoff.i441 = alloca i32, align 4
  %addr.i442 = alloca %union.nf_inet_addr, align 4
  %port.i443 = alloca i16, align 2
  %matchlen.i = alloca i32, align 4
  %matchoff.i = alloca i32, align 4
  %addr.i = alloca %union.nf_inet_addr, align 4
  %port.i = alloca i16, align 2
  %coff = alloca i32, align 4
  %matchoff = alloca i32, align 4
  %matchlen = alloca i32, align 4
  %addr = alloca %union.nf_inet_addr, align 4
  %port = alloca i16, align 2
  %in_header = alloca i32, align 4
  %poff = alloca i32, align 4
  %plen = alloca i32, align 4
  %n = alloca i32, align 4
  %buffer = alloca [57 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and.i = and i32 %1, 7
  %and1.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 2
  %cond = zext i1 %cmp to i32
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help_data.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help_data.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfct_help_data.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.i.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfct_help_data.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i8 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  br label %nfct_help_data.exit

nfct_help_data.exit:                              ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, %entry.nfct_help_data.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge ], [ null, %entry.nfct_help_data.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %coff) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matchoff) #6
  %7 = ptrtoint ptr %matchoff to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %matchoff, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matchlen) #6
  %8 = ptrtoint ptr %matchlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %matchlen, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #6
  %9 = getelementptr inbounds [4 x i32], ptr %addr, i32 0, i32 1
  %10 = getelementptr inbounds [4 x i32], ptr %addr, i32 0, i32 2
  %11 = getelementptr inbounds [4 x i32], ptr %addr, i32 0, i32 3
  %12 = call ptr @memset(ptr %addr, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port) #6
  %13 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %port, align 2, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in_header) #6
  %14 = ptrtoint ptr %dptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dptr, align 4
  %call2 = tail call i32 @strncasecmp(ptr noundef %15, ptr noundef nonnull @.str.1, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %nfct_help_data.exit.if.end8_crit_edge, label %if.then

nfct_help_data.exit.if.end8_crit_edge:            ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %nfct_help_data.exit
  %16 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %datalen, align 4
  %call4 = call i32 @ct_sip_parse_request(ptr noundef %2, ptr noundef %15, i32 noundef %17, ptr noundef nonnull %matchoff, ptr noundef nonnull %matchlen, ptr noundef nonnull %addr, ptr noundef nonnull %port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %land.lhs.true, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true:                                    ; preds = %if.then
  %18 = ptrtoint ptr %matchoff to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %matchoff, align 4
  %20 = ptrtoint ptr %matchlen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %matchlen, align 4
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %port, align 2
  %call6 = call fastcc i32 @map_addr(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr noundef %dptr, ptr noundef %datalen, i32 noundef %19, i32 noundef %21, ptr noundef nonnull %addr, i16 noundef zeroext %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %2, ptr noundef nonnull @.str.2) #6
  br label %cleanup226

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.then.if.end8_crit_edge, %nfct_help_data.exit.if.end8_crit_edge
  %protonum.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %24 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %protonum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %25)
  %cmp10 = icmp eq i8 %25, 6
  %. = select i1 %cmp10, i32 5, i32 4
  %26 = ptrtoint ptr %dptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dptr, align 4
  %28 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %datalen, align 4
  %call15 = call i32 @ct_sip_parse_header_uri(ptr noundef %2, ptr noundef %27, ptr noundef null, i32 noundef %29, i32 noundef %., ptr noundef null, ptr noundef nonnull %matchoff, ptr noundef nonnull %matchlen, ptr noundef nonnull %addr, ptr noundef nonnull %port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp sgt i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %if.end8.next_crit_edge

if.end8.next_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %next

if.then18:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %poff) #6
  %30 = ptrtoint ptr %poff to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %poff, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plen) #6
  %31 = ptrtoint ptr %plen to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %plen, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %32 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %n, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 57, ptr nonnull %buffer) #6
  %33 = call ptr @memset(ptr %buffer, i32 255, i32 57)
  br i1 %cmp3.not, label %if.else34, label %if.then20

if.then20:                                        ; preds = %if.then18
  %tuple = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1
  %34 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr, align 4
  %36 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tuple, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp.i = icmp eq i32 %35, %37
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then20.cleanup184.thread_crit_edge

if.then20.cleanup184.thread_crit_edge:            ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184.thread

land.lhs.true.i:                                  ; preds = %if.then20
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %9, align 4
  %arrayidx3.i = getelementptr [4 x i32], ptr %tuple, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp4.i = icmp eq i32 %39, %41
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.cleanup184.thread_crit_edge

land.lhs.true.i.cleanup184.thread_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184.thread

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %42 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %10, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr %tuple, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx7.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp8.i = icmp eq i32 %43, %45
  br i1 %cmp8.i, label %nf_inet_addr_cmp.exit, label %land.lhs.true5.i.cleanup184.thread_crit_edge

land.lhs.true5.i.cleanup184.thread_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184.thread

nf_inet_addr_cmp.exit:                            ; preds = %land.lhs.true5.i
  %46 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %11, align 4
  %arrayidx10.i = getelementptr [4 x i32], ptr %tuple, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp11.i.not = icmp eq i32 %47, %49
  br i1 %cmp11.i.not, label %lor.lhs.false, label %nf_inet_addr_cmp.exit.cleanup184.thread_crit_edge

nf_inet_addr_cmp.exit.cleanup184.thread_crit_edge: ; preds = %nf_inet_addr_cmp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184.thread

lor.lhs.false:                                    ; preds = %nf_inet_addr_cmp.exit
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %port, align 2
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %52 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %u, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %53)
  %cmp30.not = icmp eq i16 %51, %53
  br i1 %cmp30.not, label %lor.lhs.false.if.end54_crit_edge, label %lor.lhs.false.cleanup184.thread_crit_edge

lor.lhs.false.cleanup184.thread_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184.thread

lor.lhs.false.if.end54_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.else34:                                        ; preds = %if.then18
  %dst = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1, i32 1
  %54 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr, align 4
  %56 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp.i359 = icmp eq i32 %55, %57
  br i1 %cmp.i359, label %land.lhs.true.i363, label %if.else34.cleanup184.thread_crit_edge

if.else34.cleanup184.thread_crit_edge:            ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184.thread

land.lhs.true.i363:                               ; preds = %if.else34
  %58 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %9, align 4
  %arrayidx3.i361 = getelementptr [4 x i32], ptr %dst, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx3.i361 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx3.i361, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp4.i362 = icmp eq i32 %59, %61
  br i1 %cmp4.i362, label %land.lhs.true5.i367, label %land.lhs.true.i363.cleanup184.thread_crit_edge

land.lhs.true.i363.cleanup184.thread_crit_edge:   ; preds = %land.lhs.true.i363
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184.thread

land.lhs.true5.i367:                              ; preds = %land.lhs.true.i363
  %62 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %10, align 4
  %arrayidx7.i365 = getelementptr [4 x i32], ptr %dst, i32 0, i32 2
  %64 = ptrtoint ptr %arrayidx7.i365 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx7.i365, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp8.i366 = icmp eq i32 %63, %65
  br i1 %cmp8.i366, label %nf_inet_addr_cmp.exit373, label %land.lhs.true5.i367.cleanup184.thread_crit_edge

land.lhs.true5.i367.cleanup184.thread_crit_edge:  ; preds = %land.lhs.true5.i367
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184.thread

nf_inet_addr_cmp.exit373:                         ; preds = %land.lhs.true5.i367
  %66 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %11, align 4
  %arrayidx10.i369 = getelementptr [4 x i32], ptr %dst, i32 0, i32 3
  %68 = ptrtoint ptr %arrayidx10.i369 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx10.i369, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp11.i370.not = icmp eq i32 %67, %69
  br i1 %cmp11.i370.not, label %lor.lhs.false41, label %nf_inet_addr_cmp.exit373.cleanup184.thread_crit_edge

nf_inet_addr_cmp.exit373.cleanup184.thread_crit_edge: ; preds = %nf_inet_addr_cmp.exit373
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184.thread

lor.lhs.false41:                                  ; preds = %nf_inet_addr_cmp.exit373
  %70 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %port, align 2
  %u47 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1, i32 1, i32 1
  %72 = ptrtoint ptr %u47 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %u47, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %73)
  %cmp50.not = icmp eq i16 %71, %73
  br i1 %cmp50.not, label %lor.lhs.false41.if.end54_crit_edge, label %lor.lhs.false41.cleanup184.thread_crit_edge

lor.lhs.false41.cleanup184.thread_crit_edge:      ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184.thread

lor.lhs.false41.if.end54_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.end54:                                         ; preds = %lor.lhs.false41.if.end54_crit_edge, %lor.lhs.false.if.end54_crit_edge
  %74 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %datalen, align 4
  %76 = ptrtoint ptr %matchoff to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %matchoff, align 4
  %78 = ptrtoint ptr %matchlen to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %matchlen, align 4
  %80 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %port, align 2
  %call55 = call fastcc i32 @map_addr(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr noundef %dptr, ptr noundef %datalen, i32 noundef %77, i32 noundef %79, ptr noundef nonnull %addr, i16 noundef zeroext %81)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end54.cleanup184_crit_edge, label %if.end58

if.end54.cleanup184_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184

if.end58:                                         ; preds = %if.end54
  %82 = ptrtoint ptr %matchoff to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %matchoff, align 4
  %84 = ptrtoint ptr %matchlen to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %matchlen, align 4
  %86 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %datalen, align 4
  %add = sub i32 %83, %75
  %add59 = add i32 %add, %85
  %sub = add i32 %add59, %87
  %88 = ptrtoint ptr %dptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dptr, align 4
  %call60 = call i32 @ct_sip_parse_address_param(ptr noundef %2, ptr noundef %89, i32 noundef %sub, i32 noundef %87, ptr noundef nonnull @.str.4, ptr noundef nonnull %poff, ptr noundef nonnull %plen, ptr noundef nonnull %addr, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp sgt i32 %call60, 0
  br i1 %cmp61, label %land.lhs.true63, label %if.end58.if.end95_crit_edge

if.end58.if.end95_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

land.lhs.true63:                                  ; preds = %if.end58
  %tuple66 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1
  %90 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %addr, align 4
  %92 = ptrtoint ptr %tuple66 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tuple66, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp.i374 = icmp eq i32 %91, %93
  br i1 %cmp.i374, label %land.lhs.true.i378, label %land.lhs.true63.if.end95_crit_edge

land.lhs.true63.if.end95_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

land.lhs.true.i378:                               ; preds = %land.lhs.true63
  %94 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %9, align 4
  %arrayidx3.i376 = getelementptr [4 x i32], ptr %tuple66, i32 0, i32 1
  %96 = ptrtoint ptr %arrayidx3.i376 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx3.i376, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp4.i377 = icmp eq i32 %95, %97
  br i1 %cmp4.i377, label %land.lhs.true5.i382, label %land.lhs.true.i378.if.end95_crit_edge

land.lhs.true.i378.if.end95_crit_edge:            ; preds = %land.lhs.true.i378
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

land.lhs.true5.i382:                              ; preds = %land.lhs.true.i378
  %98 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %10, align 4
  %arrayidx7.i380 = getelementptr [4 x i32], ptr %tuple66, i32 0, i32 2
  %100 = ptrtoint ptr %arrayidx7.i380 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx7.i380, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %101)
  %cmp8.i381 = icmp eq i32 %99, %101
  br i1 %cmp8.i381, label %nf_inet_addr_cmp.exit388, label %land.lhs.true5.i382.if.end95_crit_edge

land.lhs.true5.i382.if.end95_crit_edge:           ; preds = %land.lhs.true5.i382
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

nf_inet_addr_cmp.exit388:                         ; preds = %land.lhs.true5.i382
  %102 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %11, align 4
  %arrayidx10.i384 = getelementptr [4 x i32], ptr %tuple66, i32 0, i32 3
  %104 = ptrtoint ptr %arrayidx10.i384 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx10.i384, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %105)
  %cmp11.i385.not = icmp eq i32 %103, %105
  br i1 %cmp11.i385.not, label %land.lhs.true71, label %nf_inet_addr_cmp.exit388.if.end95_crit_edge

nf_inet_addr_cmp.exit388.if.end95_crit_edge:      ; preds = %nf_inet_addr_cmp.exit388
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

land.lhs.true71:                                  ; preds = %nf_inet_addr_cmp.exit388
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %dst76 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %lnot.ext, i32 1, i32 1
  %106 = ptrtoint ptr %dst76 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dst76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %107)
  %cmp.i389 = icmp eq i32 %91, %107
  br i1 %cmp.i389, label %land.lhs.true.i393, label %land.lhs.true71.if.then80_crit_edge

land.lhs.true71.if.then80_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then80

land.lhs.true.i393:                               ; preds = %land.lhs.true71
  %108 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %9, align 4
  %arrayidx3.i391 = getelementptr [4 x i32], ptr %dst76, i32 0, i32 1
  %110 = ptrtoint ptr %arrayidx3.i391 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx3.i391, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %111)
  %cmp4.i392 = icmp eq i32 %109, %111
  br i1 %cmp4.i392, label %land.lhs.true5.i397, label %land.lhs.true.i393.if.then80_crit_edge

land.lhs.true.i393.if.then80_crit_edge:           ; preds = %land.lhs.true.i393
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then80

land.lhs.true5.i397:                              ; preds = %land.lhs.true.i393
  %112 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %10, align 4
  %arrayidx7.i395 = getelementptr [4 x i32], ptr %dst76, i32 0, i32 2
  %114 = ptrtoint ptr %arrayidx7.i395 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx7.i395, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %115)
  %cmp8.i396 = icmp eq i32 %113, %115
  br i1 %cmp8.i396, label %nf_inet_addr_cmp.exit403, label %land.lhs.true5.i397.if.then80_crit_edge

land.lhs.true5.i397.if.then80_crit_edge:          ; preds = %land.lhs.true5.i397
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then80

nf_inet_addr_cmp.exit403:                         ; preds = %land.lhs.true5.i397
  %116 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %11, align 4
  %arrayidx10.i399 = getelementptr [4 x i32], ptr %dst76, i32 0, i32 3
  %118 = ptrtoint ptr %arrayidx10.i399 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx10.i399, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %cmp11.i400.not = icmp eq i32 %117, %119
  br i1 %cmp11.i400.not, label %nf_inet_addr_cmp.exit403.if.end95_crit_edge, label %nf_inet_addr_cmp.exit403.if.then80_crit_edge

nf_inet_addr_cmp.exit403.if.then80_crit_edge:     ; preds = %nf_inet_addr_cmp.exit403
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then80

nf_inet_addr_cmp.exit403.if.end95_crit_edge:      ; preds = %nf_inet_addr_cmp.exit403
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then80:                                        ; preds = %nf_inet_addr_cmp.exit403.if.then80_crit_edge, %land.lhs.true5.i397.if.then80_crit_edge, %land.lhs.true.i393.if.then80_crit_edge, %land.lhs.true71.if.then80_crit_edge
  %l3num.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %120 = ptrtoint ptr %l3num.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %l3num.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %121)
  %cmp.i404 = icmp eq i16 %121, 2
  %.str.18.sink.i = select i1 %cmp.i404, ptr @.str.16, ptr @.str.17
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull %.str.18.sink.i, ptr noundef %dst76) #6
  %122 = ptrtoint ptr %poff to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %poff, align 4
  %124 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %plen, align 4
  %call91 = call fastcc i32 @mangle_packet(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr noundef %dptr, ptr noundef %datalen, i32 noundef %123, i32 noundef %125, ptr noundef nonnull %buffer, i32 noundef %call6.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then80.cleanup184_crit_edge, label %if.then80.if.end95_crit_edge

if.then80.if.end95_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then80.cleanup184_crit_edge:                   ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184

if.end95:                                         ; preds = %if.then80.if.end95_crit_edge, %nf_inet_addr_cmp.exit403.if.end95_crit_edge, %nf_inet_addr_cmp.exit388.if.end95_crit_edge, %land.lhs.true5.i382.if.end95_crit_edge, %land.lhs.true.i378.if.end95_crit_edge, %land.lhs.true63.if.end95_crit_edge, %if.end58.if.end95_crit_edge
  %126 = ptrtoint ptr %dptr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dptr, align 4
  %128 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %datalen, align 4
  %call96 = call i32 @ct_sip_parse_address_param(ptr noundef %2, ptr noundef %127, i32 noundef %sub, i32 noundef %129, ptr noundef nonnull @.str.6, ptr noundef nonnull %poff, ptr noundef nonnull %plen, ptr noundef nonnull %addr, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp sgt i32 %call96, 0
  br i1 %cmp97, label %land.lhs.true99, label %if.end95.if.end134_crit_edge

if.end95.if.end134_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

land.lhs.true99:                                  ; preds = %if.end95
  %dst103 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1, i32 1
  %130 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %addr, align 4
  %132 = ptrtoint ptr %dst103 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %dst103, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %133)
  %cmp.i405 = icmp eq i32 %131, %133
  br i1 %cmp.i405, label %land.lhs.true.i409, label %land.lhs.true99.if.end134_crit_edge

land.lhs.true99.if.end134_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

land.lhs.true.i409:                               ; preds = %land.lhs.true99
  %134 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %9, align 4
  %arrayidx3.i407 = getelementptr [4 x i32], ptr %dst103, i32 0, i32 1
  %136 = ptrtoint ptr %arrayidx3.i407 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx3.i407, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %137)
  %cmp4.i408 = icmp eq i32 %135, %137
  br i1 %cmp4.i408, label %land.lhs.true5.i413, label %land.lhs.true.i409.if.end134_crit_edge

land.lhs.true.i409.if.end134_crit_edge:           ; preds = %land.lhs.true.i409
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

land.lhs.true5.i413:                              ; preds = %land.lhs.true.i409
  %138 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %10, align 4
  %arrayidx7.i411 = getelementptr [4 x i32], ptr %dst103, i32 0, i32 2
  %140 = ptrtoint ptr %arrayidx7.i411 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx7.i411, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %141)
  %cmp8.i412 = icmp eq i32 %139, %141
  br i1 %cmp8.i412, label %nf_inet_addr_cmp.exit419, label %land.lhs.true5.i413.if.end134_crit_edge

land.lhs.true5.i413.if.end134_crit_edge:          ; preds = %land.lhs.true5.i413
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

nf_inet_addr_cmp.exit419:                         ; preds = %land.lhs.true5.i413
  %142 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %11, align 4
  %arrayidx10.i415 = getelementptr [4 x i32], ptr %dst103, i32 0, i32 3
  %144 = ptrtoint ptr %arrayidx10.i415 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx10.i415, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %145)
  %cmp11.i416.not = icmp eq i32 %143, %145
  br i1 %cmp11.i416.not, label %land.lhs.true107, label %nf_inet_addr_cmp.exit419.if.end134_crit_edge

nf_inet_addr_cmp.exit419.if.end134_crit_edge:     ; preds = %nf_inet_addr_cmp.exit419
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

land.lhs.true107:                                 ; preds = %nf_inet_addr_cmp.exit419
  %lnot110 = xor i1 %cmp, true
  %lnot.ext111 = zext i1 %lnot110 to i32
  %tuple113 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %lnot.ext111, i32 1
  %146 = ptrtoint ptr %tuple113 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tuple113, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %147)
  %cmp.i420 = icmp eq i32 %131, %147
  br i1 %cmp.i420, label %land.lhs.true.i424, label %land.lhs.true107.if.then118_crit_edge

land.lhs.true107.if.then118_crit_edge:            ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then118

land.lhs.true.i424:                               ; preds = %land.lhs.true107
  %148 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %9, align 4
  %arrayidx3.i422 = getelementptr [4 x i32], ptr %tuple113, i32 0, i32 1
  %150 = ptrtoint ptr %arrayidx3.i422 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx3.i422, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %151)
  %cmp4.i423 = icmp eq i32 %149, %151
  br i1 %cmp4.i423, label %land.lhs.true5.i428, label %land.lhs.true.i424.if.then118_crit_edge

land.lhs.true.i424.if.then118_crit_edge:          ; preds = %land.lhs.true.i424
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then118

land.lhs.true5.i428:                              ; preds = %land.lhs.true.i424
  %152 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %10, align 4
  %arrayidx7.i426 = getelementptr [4 x i32], ptr %tuple113, i32 0, i32 2
  %154 = ptrtoint ptr %arrayidx7.i426 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx7.i426, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %155)
  %cmp8.i427 = icmp eq i32 %153, %155
  br i1 %cmp8.i427, label %nf_inet_addr_cmp.exit434, label %land.lhs.true5.i428.if.then118_crit_edge

land.lhs.true5.i428.if.then118_crit_edge:         ; preds = %land.lhs.true5.i428
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then118

nf_inet_addr_cmp.exit434:                         ; preds = %land.lhs.true5.i428
  %156 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %11, align 4
  %arrayidx10.i430 = getelementptr [4 x i32], ptr %tuple113, i32 0, i32 3
  %158 = ptrtoint ptr %arrayidx10.i430 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx10.i430, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %159)
  %cmp11.i431.not = icmp eq i32 %157, %159
  br i1 %cmp11.i431.not, label %nf_inet_addr_cmp.exit434.if.end134_crit_edge, label %nf_inet_addr_cmp.exit434.if.then118_crit_edge

nf_inet_addr_cmp.exit434.if.then118_crit_edge:    ; preds = %nf_inet_addr_cmp.exit434
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then118

nf_inet_addr_cmp.exit434.if.end134_crit_edge:     ; preds = %nf_inet_addr_cmp.exit434
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.then118:                                       ; preds = %nf_inet_addr_cmp.exit434.if.then118_crit_edge, %land.lhs.true5.i428.if.then118_crit_edge, %land.lhs.true.i424.if.then118_crit_edge, %land.lhs.true107.if.then118_crit_edge
  %l3num.i.i435 = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %160 = ptrtoint ptr %l3num.i.i435 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %l3num.i.i435, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %161)
  %cmp.i436 = icmp eq i16 %161, 2
  %.str.18.sink.i437 = select i1 %cmp.i436, ptr @.str.16, ptr @.str.18
  %call6.i438 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull %.str.18.sink.i437, ptr noundef %tuple113) #6
  %162 = ptrtoint ptr %poff to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %poff, align 4
  %164 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %plen, align 4
  %call130 = call fastcc i32 @mangle_packet(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr noundef %dptr, ptr noundef %datalen, i32 noundef %163, i32 noundef %165, ptr noundef nonnull %buffer, i32 noundef %call6.i438)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then118.cleanup184_crit_edge, label %if.then118.if.end134_crit_edge

if.then118.if.end134_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.then118.cleanup184_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184

if.end134:                                        ; preds = %if.then118.if.end134_crit_edge, %nf_inet_addr_cmp.exit434.if.end134_crit_edge, %nf_inet_addr_cmp.exit419.if.end134_crit_edge, %land.lhs.true5.i413.if.end134_crit_edge, %land.lhs.true.i409.if.end134_crit_edge, %land.lhs.true99.if.end134_crit_edge, %if.end95.if.end134_crit_edge
  %166 = ptrtoint ptr %dptr to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dptr, align 4
  %168 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %datalen, align 4
  %call135 = call i32 @ct_sip_parse_numerical_param(ptr noundef %2, ptr noundef %167, i32 noundef %sub, i32 noundef %169, ptr noundef nonnull @.str.8, ptr noundef nonnull %poff, ptr noundef nonnull %plen, ptr noundef nonnull %n) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp136 = icmp sgt i32 %call135, 0
  br i1 %cmp136, label %land.lhs.true138, label %if.end134.cleanup184.thread_crit_edge

if.end134.cleanup184.thread_crit_edge:            ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184.thread

land.lhs.true138:                                 ; preds = %if.end134
  %170 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %n, align 4
  %u145 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1, i32 1, i32 1
  %172 = ptrtoint ptr %u145 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %u145, align 4
  %174 = trunc i32 %171 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %173, i16 %174)
  %cmp148 = icmp eq i16 %173, %174
  br i1 %cmp148, label %land.lhs.true150, label %land.lhs.true138.cleanup184.thread_crit_edge

land.lhs.true138.cleanup184.thread_crit_edge:     ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184.thread

land.lhs.true150:                                 ; preds = %land.lhs.true138
  %conv140 = and i32 %171, 65535
  %lnot155 = xor i1 %cmp, true
  %lnot.ext156 = zext i1 %lnot155 to i32
  %u160 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %lnot.ext156, i32 1, i32 0, i32 1
  %175 = ptrtoint ptr %u160 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %u160, align 8
  %conv162 = zext i16 %176 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv140, i32 %conv162)
  %cmp163.not = icmp eq i32 %conv140, %conv162
  br i1 %cmp163.not, label %land.lhs.true150.cleanup184.thread_crit_edge, label %if.then165

land.lhs.true150.cleanup184.thread_crit_edge:     ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184.thread

if.then165:                                       ; preds = %land.lhs.true150
  %call177 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull @.str.9, i32 noundef %conv162)
  %177 = ptrtoint ptr %poff to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %poff, align 4
  %179 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %plen, align 4
  %call179 = call fastcc i32 @mangle_packet(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr noundef %dptr, ptr noundef %datalen, i32 noundef %178, i32 noundef %180, ptr noundef nonnull %buffer, i32 noundef %call177)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.then165.cleanup184_crit_edge, label %if.then165.cleanup184.thread_crit_edge

if.then165.cleanup184.thread_crit_edge:           ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184.thread

if.then165.cleanup184_crit_edge:                  ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup184

cleanup184.thread:                                ; preds = %if.then165.cleanup184.thread_crit_edge, %land.lhs.true150.cleanup184.thread_crit_edge, %land.lhs.true138.cleanup184.thread_crit_edge, %if.end134.cleanup184.thread_crit_edge, %lor.lhs.false41.cleanup184.thread_crit_edge, %nf_inet_addr_cmp.exit373.cleanup184.thread_crit_edge, %land.lhs.true5.i367.cleanup184.thread_crit_edge, %land.lhs.true.i363.cleanup184.thread_crit_edge, %if.else34.cleanup184.thread_crit_edge, %lor.lhs.false.cleanup184.thread_crit_edge, %nf_inet_addr_cmp.exit.cleanup184.thread_crit_edge, %land.lhs.true5.i.cleanup184.thread_crit_edge, %land.lhs.true.i.cleanup184.thread_crit_edge, %if.then20.cleanup184.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 57, ptr nonnull %buffer) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plen) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poff) #6
  br label %next

cleanup184:                                       ; preds = %if.then165.cleanup184_crit_edge, %if.then118.cleanup184_crit_edge, %if.then80.cleanup184_crit_edge, %if.end54.cleanup184_crit_edge
  %.str.10.sink = phi ptr [ @.str.3, %if.end54.cleanup184_crit_edge ], [ @.str.5, %if.then80.cleanup184_crit_edge ], [ @.str.7, %if.then118.cleanup184_crit_edge ], [ @.str.10, %if.then165.cleanup184_crit_edge ]
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %2, ptr noundef nonnull %.str.10.sink) #6
  call void @llvm.lifetime.end.p0(i64 57, ptr nonnull %buffer) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plen) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %poff) #6
  br label %cleanup226

next:                                             ; preds = %cleanup184.thread, %if.end8.next_crit_edge
  %181 = ptrtoint ptr %coff to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %coff, align 4
  %182 = ptrtoint ptr %in_header to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %in_header, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %next
  %183 = ptrtoint ptr %dptr to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dptr, align 4
  %185 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %datalen, align 4
  %call194 = call i32 @ct_sip_parse_header_uri(ptr noundef %2, ptr noundef %184, ptr noundef nonnull %coff, i32 noundef %186, i32 noundef 3, ptr noundef nonnull %in_header, ptr noundef nonnull %matchoff, ptr noundef nonnull %matchlen, ptr noundef nonnull %addr, ptr noundef nonnull %port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %cmp195 = icmp sgt i32 %call194, 0
  br i1 %cmp195, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %187 = ptrtoint ptr %matchoff to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %matchoff, align 4
  %189 = ptrtoint ptr %matchlen to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %matchlen, align 4
  %191 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %port, align 2
  %call197 = call fastcc i32 @map_addr(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr noundef %dptr, ptr noundef %datalen, i32 noundef %188, i32 noundef %190, ptr noundef nonnull %addr, i16 noundef zeroext %192)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %if.then199, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.then199:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %2, ptr noundef nonnull @.str.11) #6
  br label %cleanup226

while.end:                                        ; preds = %while.cond
  %193 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %_nfct.i.i, align 8
  %and1.i.i = and i32 %194, -8
  %195 = inttoptr i32 %and1.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matchlen.i) #6
  %196 = ptrtoint ptr %matchlen.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 -1, ptr %matchlen.i, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matchoff.i) #6
  %197 = ptrtoint ptr %matchoff.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 -1, ptr %matchoff.i, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr.i) #6
  %198 = call ptr @memset(ptr %addr.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port.i) #6
  %199 = ptrtoint ptr %port.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 -1, ptr %port.i, align 2, !annotation !74
  %200 = ptrtoint ptr %dptr to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dptr, align 4
  %202 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %datalen, align 4
  %call1.i = call i32 @ct_sip_parse_header_uri(ptr noundef %195, ptr noundef %201, ptr noundef null, i32 noundef %203, i32 noundef 1, ptr noundef null, ptr noundef nonnull %matchoff.i, ptr noundef nonnull %matchlen.i, ptr noundef nonnull %addr.i, ptr noundef nonnull %port.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i)
  %cmp.i439 = icmp slt i32 %call1.i, 1
  br i1 %cmp.i439, label %map_sip_addr.exit.thread, label %map_sip_addr.exit

map_sip_addr.exit.thread:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchoff.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchlen.i) #6
  br label %lor.lhs.false203

map_sip_addr.exit:                                ; preds = %while.end
  %204 = ptrtoint ptr %matchoff.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %matchoff.i, align 4
  %206 = ptrtoint ptr %matchlen.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %matchlen.i, align 4
  %208 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %port.i, align 2
  %call2.i = call fastcc i32 @map_addr(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr noundef %dptr, ptr noundef %datalen, i32 noundef %205, i32 noundef %207, ptr noundef nonnull %addr.i, i16 noundef zeroext %209) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchoff.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchlen.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool202.not = icmp eq i32 %call2.i, 0
  br i1 %tobool202.not, label %map_sip_addr.exit.if.then206_crit_edge, label %map_sip_addr.exit.lor.lhs.false203_crit_edge

map_sip_addr.exit.lor.lhs.false203_crit_edge:     ; preds = %map_sip_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false203

map_sip_addr.exit.if.then206_crit_edge:           ; preds = %map_sip_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then206

lor.lhs.false203:                                 ; preds = %map_sip_addr.exit.lor.lhs.false203_crit_edge, %map_sip_addr.exit.thread
  %210 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %_nfct.i.i, align 8
  %and1.i.i445 = and i32 %211, -8
  %212 = inttoptr i32 %and1.i.i445 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matchlen.i440) #6
  %213 = ptrtoint ptr %matchlen.i440 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 -1, ptr %matchlen.i440, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matchoff.i441) #6
  %214 = ptrtoint ptr %matchoff.i441 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 -1, ptr %matchoff.i441, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr.i442) #6
  %215 = call ptr @memset(ptr %addr.i442, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port.i443) #6
  %216 = ptrtoint ptr %port.i443 to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 -1, ptr %port.i443, align 2, !annotation !74
  %217 = ptrtoint ptr %dptr to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dptr, align 4
  %219 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %datalen, align 4
  %call1.i446 = call i32 @ct_sip_parse_header_uri(ptr noundef %212, ptr noundef %218, ptr noundef null, i32 noundef %220, i32 noundef 2, ptr noundef null, ptr noundef nonnull %matchoff.i441, ptr noundef nonnull %matchlen.i440, ptr noundef nonnull %addr.i442, ptr noundef nonnull %port.i443) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1.i446)
  %cmp.i447 = icmp slt i32 %call1.i446, 1
  br i1 %cmp.i447, label %map_sip_addr.exit451.thread, label %map_sip_addr.exit451

map_sip_addr.exit451.thread:                      ; preds = %lor.lhs.false203
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port.i443) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr.i442) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchoff.i441) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchlen.i440) #6
  br label %if.end207

map_sip_addr.exit451:                             ; preds = %lor.lhs.false203
  %221 = ptrtoint ptr %matchoff.i441 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %matchoff.i441, align 4
  %223 = ptrtoint ptr %matchlen.i440 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %matchlen.i440, align 4
  %225 = ptrtoint ptr %port.i443 to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %port.i443, align 2
  %call2.i448 = call fastcc i32 @map_addr(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr noundef %dptr, ptr noundef %datalen, i32 noundef %222, i32 noundef %224, ptr noundef nonnull %addr.i442, i16 noundef zeroext %226) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port.i443) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr.i442) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchoff.i441) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchlen.i440) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i448)
  %tobool205.not = icmp eq i32 %call2.i448, 0
  br i1 %tobool205.not, label %map_sip_addr.exit451.if.then206_crit_edge, label %map_sip_addr.exit451.if.end207_crit_edge

map_sip_addr.exit451.if.end207_crit_edge:         ; preds = %map_sip_addr.exit451
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

map_sip_addr.exit451.if.then206_crit_edge:        ; preds = %map_sip_addr.exit451
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then206

if.then206:                                       ; preds = %map_sip_addr.exit451.if.then206_crit_edge, %map_sip_addr.exit.if.then206_crit_edge
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %2, ptr noundef nonnull @.str.12) #6
  br label %cleanup226

if.end207:                                        ; preds = %map_sip_addr.exit451.if.end207_crit_edge, %map_sip_addr.exit451.thread
  br i1 %cmp, label %land.lhs.true210, label %if.end207.cleanup226_crit_edge

if.end207.cleanup226_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup226

land.lhs.true210:                                 ; preds = %if.end207
  %forced_dport = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 8
  %227 = ptrtoint ptr %forced_dport to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %forced_dport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %228)
  %tobool212.not = icmp eq i16 %228, 0
  br i1 %tobool212.not, label %land.lhs.true210.cleanup226_crit_edge, label %if.then213

land.lhs.true210.cleanup226_crit_edge:            ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup226

if.then213:                                       ; preds = %land.lhs.true210
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %229 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %len, align 4
  %call214 = call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %230) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %if.end217, label %if.then216

if.then216:                                       ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %2, ptr noundef nonnull @.str.13) #6
  br label %cleanup226

if.end217:                                        ; preds = %if.then213
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %231 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %232, i32 %protoff
  %233 = ptrtoint ptr %forced_dport to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %forced_dport, align 4
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 1
  %235 = ptrtoint ptr %dest to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 %234, ptr %dest, align 2
  %call219 = call zeroext i1 @nf_nat_mangle_udp_packet(ptr noundef %skb, ptr noundef %2, i32 noundef %and.i, i32 noundef %protoff, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  br i1 %call219, label %if.end217.cleanup226_crit_edge, label %if.then220

if.end217.cleanup226_crit_edge:                   ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup226

if.then220:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %2, ptr noundef nonnull @.str.13) #6
  br label %cleanup226

cleanup226:                                       ; preds = %if.then220, %if.end217.cleanup226_crit_edge, %if.then216, %land.lhs.true210.cleanup226_crit_edge, %if.end207.cleanup226_crit_edge, %if.then206, %if.then199, %cleanup184, %if.then7
  %retval.5 = phi i32 [ 0, %cleanup184 ], [ 0, %if.then199 ], [ 0, %if.then206 ], [ 0, %if.then7 ], [ 0, %if.then220 ], [ 0, %if.then216 ], [ 1, %if.end217.cleanup226_crit_edge ], [ 1, %land.lhs.true210.cleanup226_crit_edge ], [ 1, %if.end207.cleanup226_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_header) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchlen) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchoff) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coff) #6
  ret i32 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nf_nat_sip_seq_adjust(ptr nocapture noundef readonly %skb, i32 noundef %protoff, i16 noundef signext %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i to ptr
  %protonum.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %3 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %protonum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cmp.not = icmp ne i8 %4, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %off)
  %cmp4 = icmp eq i16 %off, 0
  %or.cond = or i1 %cmp4, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %1, 7
  %conv3 = sext i16 %off to i32
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %protoff
  %seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 2
  %7 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %seq, align 4
  %call7 = tail call i32 @nf_ct_seqadj_set(ptr noundef %2, i32 noundef %and.i, i32 noundef %8, i32 noundef %conv3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_nat_sip_expect(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr nocapture noundef writeonly %dptr, ptr nocapture noundef %datalen, ptr noundef %exp, i32 noundef %matchoff, i32 noundef %matchlen) #2 align 64 {
entry:
  %newaddr = alloca %union.nf_inet_addr, align 4
  %buffer = alloca [57 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and.i = and i32 %1, 7
  %and1.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 2
  %cond = zext i1 %cmp to i32
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help_data.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help_data.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfct_help_data.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.i.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfct_help_data.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i8 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  br label %nfct_help_data.exit

nfct_help_data.exit:                              ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, %entry.nfct_help_data.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge ], [ null, %entry.nfct_help_data.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %newaddr) #6
  call void @llvm.lifetime.start.p0(i64 57, ptr nonnull %buffer) #6
  %7 = call ptr @memset(ptr %buffer, i32 255, i32 57)
  %tuple = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %dst = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %lnot.ext, i32 1, i32 1
  %8 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tuple, align 8
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i = icmp eq i32 %9, %11
  br i1 %cmp.i, label %land.lhs.true.i, label %nfct_help_data.exit.if.end_crit_edge

nfct_help_data.exit.if.end_crit_edge:             ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i:                                  ; preds = %nfct_help_data.exit
  %arrayidx2.i = getelementptr [4 x i32], ptr %tuple, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr [4 x i32], ptr %dst, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp4.i = icmp eq i32 %13, %15
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %arrayidx6.i = getelementptr [4 x i32], ptr %tuple, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i, align 8
  %arrayidx7.i = getelementptr [4 x i32], ptr %dst, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp8.i = icmp eq i32 %17, %19
  br i1 %cmp8.i, label %nf_inet_addr_cmp.exit, label %land.lhs.true5.i.if.end_crit_edge

land.lhs.true5.i.if.end_crit_edge:                ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

nf_inet_addr_cmp.exit:                            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx9.i = getelementptr [4 x i32], ptr %tuple, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr [4 x i32], ptr %dst, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx10.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp11.i.not = icmp eq i32 %21, %23
  %dst9 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1
  %spec.select = select i1 %cmp11.i.not, ptr %dst9, ptr %dst
  br label %if.end

if.end:                                           ; preds = %nf_inet_addr_cmp.exit, %land.lhs.true5.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %nfct_help_data.exit.if.end_crit_edge
  %dst.sink = phi ptr [ %dst, %nfct_help_data.exit.if.end_crit_edge ], [ %dst, %land.lhs.true.i.if.end_crit_edge ], [ %dst, %land.lhs.true5.i.if.end_crit_edge ], [ %spec.select, %nf_inet_addr_cmp.exit ]
  %24 = call ptr @memcpy(ptr %newaddr, ptr %dst.sink, i32 16)
  %forced_dport = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 8
  %25 = ptrtoint ptr %forced_dport to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %forced_dport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool19.not = icmp eq i16 %26, 0
  br i1 %tobool19.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %27 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %u, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond26.in = phi i16 [ %28, %cond.false ], [ %26, %if.end.cond.end_crit_edge ]
  %dst29 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1
  %u30 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1, i32 1
  %29 = ptrtoint ptr %u30 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %u30, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %cond26.in)
  %cmp34 = icmp eq i16 %30, %cond26.in
  br i1 %cmp34, label %if.then36, label %cond.end.if.end51_crit_edge

cond.end.if.end51_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then36:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %u44 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %lnot.ext, i32 1, i32 1, i32 1
  %31 = ptrtoint ptr %u44 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %u44, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then36, %cond.end.if.end51_crit_edge
  %port.0 = phi i16 [ %32, %if.then36 ], [ %30, %cond.end.if.end51_crit_edge ]
  %saved_addr = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 11
  %33 = call ptr @memcpy(ptr %saved_addr, ptr %dst29, i32 16)
  %34 = call ptr @memcpy(ptr %dst29, ptr %newaddr, i32 16)
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 12
  %35 = ptrtoint ptr %saved_proto to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %30, ptr %saved_proto, align 4
  %dir66 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 13
  %36 = ptrtoint ptr %dir66 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %lnot.ext, ptr %dir66, align 4
  %expectfn = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 4
  %37 = ptrtoint ptr %expectfn to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @nf_nat_sip_expected, ptr %expectfn, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %port.0)
  %cmp68.not191 = icmp eq i16 %port.0, 0
  br i1 %cmp68.not191, label %if.end51.if.then87_crit_edge, label %if.end51.for.body_crit_edge

if.end51.for.body_crit_edge:                      ; preds = %if.end51
  br label %for.body

if.end51.if.then87_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then87

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end51.for.body_crit_edge
  %port.1192 = phi i16 [ %inc, %for.inc.for.body_crit_edge ], [ %port.0, %if.end51.for.body_crit_edge ]
  %38 = ptrtoint ptr %u30 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %port.1192, ptr %u30, align 4
  %call.i = tail call i32 @nf_ct_expect_related_report(ptr noundef %exp, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  %39 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %for.body.if.then87_crit_edge [
    i32 0, label %if.end88
    i32 -16, label %for.inc
  ]

for.body.if.then87_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then87

for.inc:                                          ; preds = %for.body
  %inc = add i16 %port.1192, 1
  %cmp68.not = icmp eq i16 %inc, 0
  br i1 %cmp68.not, label %for.inc.if.then87_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.then87_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then87

if.then87:                                        ; preds = %for.inc.if.then87_crit_edge, %for.body.if.then87_crit_edge, %if.end51.if.then87_crit_edge
  tail call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %2, ptr noundef nonnull @.str.19) #6
  br label %cleanup113

if.end88:                                         ; preds = %for.body
  %40 = ptrtoint ptr %dst29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dst29, align 4
  %42 = ptrtoint ptr %saved_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %saved_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp.i159 = icmp eq i32 %41, %43
  br i1 %cmp.i159, label %land.lhs.true.i163, label %if.end88.if.then105_crit_edge

if.end88.if.then105_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then105

land.lhs.true.i163:                               ; preds = %if.end88
  %arrayidx2.i160 = getelementptr %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx2.i160 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx2.i160, align 4
  %arrayidx3.i161 = getelementptr %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 11, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx3.i161 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx3.i161, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp4.i162 = icmp eq i32 %45, %47
  br i1 %cmp4.i162, label %land.lhs.true5.i167, label %land.lhs.true.i163.if.then105_crit_edge

land.lhs.true.i163.if.then105_crit_edge:          ; preds = %land.lhs.true.i163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then105

land.lhs.true5.i167:                              ; preds = %land.lhs.true.i163
  %arrayidx6.i164 = getelementptr %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1, i32 0, i32 0, i32 2
  %48 = ptrtoint ptr %arrayidx6.i164 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx6.i164, align 4
  %arrayidx7.i165 = getelementptr %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 11, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx7.i165 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx7.i165, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp8.i166 = icmp eq i32 %49, %51
  br i1 %cmp8.i166, label %nf_inet_addr_cmp.exit173, label %land.lhs.true5.i167.if.then105_crit_edge

land.lhs.true5.i167.if.then105_crit_edge:         ; preds = %land.lhs.true5.i167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then105

nf_inet_addr_cmp.exit173:                         ; preds = %land.lhs.true5.i167
  %arrayidx9.i168 = getelementptr %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1, i32 0, i32 0, i32 3
  %52 = ptrtoint ptr %arrayidx9.i168 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx9.i168, align 4
  %arrayidx10.i169 = getelementptr %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 11, i32 0, i32 3
  %54 = ptrtoint ptr %arrayidx10.i169 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx10.i169, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp11.i170.not = icmp eq i32 %53, %55
  br i1 %cmp11.i170.not, label %lor.lhs.false, label %nf_inet_addr_cmp.exit173.if.then105_crit_edge

nf_inet_addr_cmp.exit173.if.then105_crit_edge:    ; preds = %nf_inet_addr_cmp.exit173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then105

lor.lhs.false:                                    ; preds = %nf_inet_addr_cmp.exit173
  %56 = ptrtoint ptr %u30 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %u30, align 4
  %58 = ptrtoint ptr %saved_proto to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %saved_proto, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %59)
  %cmp103.not = icmp eq i16 %57, %59
  br i1 %cmp103.not, label %lor.lhs.false.cleanup113_crit_edge, label %lor.lhs.false.if.then105_crit_edge

lor.lhs.false.if.then105_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then105

lor.lhs.false.cleanup113_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup113

if.then105:                                       ; preds = %lor.lhs.false.if.then105_crit_edge, %nf_inet_addr_cmp.exit173.if.then105_crit_edge, %land.lhs.true5.i167.if.then105_crit_edge, %land.lhs.true.i163.if.then105_crit_edge, %if.end88.if.then105_crit_edge
  %l3num.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %60 = ptrtoint ptr %l3num.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %l3num.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %61)
  %cmp.i174 = icmp eq i16 %61, 2
  %conv2.i = zext i16 %port.1192 to i32
  %.str.14..str.15.i = select i1 %cmp.i174, ptr @.str.14, ptr @.str.15
  %call5.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull %.str.14..str.15.i, ptr noundef nonnull %newaddr, i32 noundef %conv2.i) #6
  %62 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i = and i32 %63, 7
  %and1.i.i = and i32 %63, -8
  %64 = inttoptr i32 %and1.i.i to ptr
  %protonum.i.i = getelementptr inbounds %struct.nf_conn, ptr %64, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %65 = ptrtoint ptr %protonum.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %protonum.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %66)
  %cmp.i175 = icmp eq i8 %66, 6
  br i1 %cmp.i175, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then105
  %data.i176 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %67 = ptrtoint ptr %data.i176 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i176, align 4
  %add.ptr.i = getelementptr i8, ptr %68, i32 %protoff
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i, i32 0, i32 4
  %69 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %70 = lshr i16 %bf.load.i, 10
  %71 = and i16 %70, 60
  %mul.i = zext i16 %71 to i32
  %.neg = add i32 %matchoff, %dataoff
  %72 = add i32 %mul.i, %protoff
  %add4.i = sub i32 %.neg, %72
  %call5.i177 = call zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef %skb, ptr noundef %64, i32 noundef %and.i.i, i32 noundef %protoff, i32 noundef %add4.i, i32 noundef %matchlen, ptr noundef nonnull %buffer, i32 noundef %call5.i, i1 noundef zeroext false) #6
  br i1 %call5.i177, label %if.then.i.mangle_packet.exit_crit_edge, label %if.then.i.if.then110_crit_edge

if.then.i.if.then110_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then110

if.then.i.mangle_packet.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mangle_packet.exit

if.else.i:                                        ; preds = %if.then105
  %add7.neg.i = add i32 %matchoff, %dataoff
  %sub8.i = add i32 %add7.neg.i, -8
  %add9.i = sub i32 %sub8.i, %protoff
  %call10.i = call zeroext i1 @nf_nat_mangle_udp_packet(ptr noundef %skb, ptr noundef %64, i32 noundef %and.i.i, i32 noundef %protoff, i32 noundef %add9.i, i32 noundef %matchlen, ptr noundef nonnull %buffer, i32 noundef %call5.i) #6
  br i1 %call10.i, label %if.else.i.mangle_packet.exit_crit_edge, label %if.else.i.if.then110_crit_edge

if.else.i.if.then110_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then110

if.else.i.mangle_packet.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mangle_packet.exit

mangle_packet.exit:                               ; preds = %if.else.i.mangle_packet.exit_crit_edge, %if.then.i.mangle_packet.exit_crit_edge
  %data14.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %73 = ptrtoint ptr %data14.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data14.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %74, i32 %dataoff
  %75 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr15.i, ptr %dptr, align 4
  %sub16.i = sub i32 %call5.i, %matchlen
  %76 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %datalen, align 4
  %add17.i = add i32 %sub16.i, %77
  store i32 %add17.i, ptr %datalen, align 4
  br label %cleanup113

if.then110:                                       ; preds = %if.else.i.if.then110_crit_edge, %if.then.i.if.then110_crit_edge
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %2, ptr noundef nonnull @.str.13) #6
  call void @nf_ct_unexpect_related(ptr noundef %exp) #6
  br label %cleanup113

cleanup113:                                       ; preds = %if.then110, %mangle_packet.exit, %lor.lhs.false.cleanup113_crit_edge, %if.then87
  %retval.0 = phi i32 [ 0, %if.then87 ], [ 0, %if.then110 ], [ 1, %mangle_packet.exit ], [ 1, %lor.lhs.false.cleanup113_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 57, ptr nonnull %buffer) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %newaddr) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_nat_sdp_addr(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr nocapture noundef %dptr, ptr nocapture noundef %datalen, i32 noundef %sdpoff, i32 noundef %type, i32 noundef %term, ptr noundef %addr) #2 align 64 {
entry:
  %buffer = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i to ptr
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %buffer) #6
  %3 = call ptr @memset(ptr %buffer, i32 255, i32 48)
  %l3num.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %l3num.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %l3num.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp.i = icmp eq i16 %5, 2
  %.str.18.sink.i = select i1 %cmp.i, ptr @.str.16, ptr @.str.18
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull %.str.18.sink.i, ptr noundef %addr) #6
  %call3 = call fastcc i32 @mangle_sdp_packet(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr noundef %dptr, ptr noundef %datalen, i32 noundef %sdpoff, i32 noundef %type, i32 noundef %term, ptr noundef nonnull %buffer, i32 noundef %call6.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = call fastcc i32 @mangle_content_len(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr noundef %dptr, ptr noundef %datalen)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_nat_sdp_port(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr nocapture noundef %dptr, ptr nocapture noundef %datalen, i32 noundef %matchoff, i32 noundef %matchlen, i16 noundef zeroext %port) #2 align 64 {
entry:
  %buffer = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buffer) #6
  %conv = zext i16 %port to i32
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 6)
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull @.str.9, i32 noundef %conv)
  %_nfct.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %1 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %_nfct.i.i.i, align 8
  %and.i.i = and i32 %2, 7
  %and1.i.i = and i32 %2, -8
  %3 = inttoptr i32 %and1.i.i to ptr
  %protonum.i.i = getelementptr inbounds %struct.nf_conn, ptr %3, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %4 = ptrtoint ptr %protonum.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protonum.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %5)
  %cmp.i = icmp eq i8 %5, 6
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %protoff
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i, i32 0, i32 4
  %8 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %9 = lshr i16 %bf.load.i, 10
  %10 = and i16 %9, 60
  %mul.i = zext i16 %10 to i32
  %.neg = add i32 %matchoff, %dataoff
  %11 = add i32 %mul.i, %protoff
  %add4.i = sub i32 %.neg, %11
  %call5.i = call zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef %skb, ptr noundef %3, i32 noundef %and.i.i, i32 noundef %protoff, i32 noundef %add4.i, i32 noundef %matchlen, ptr noundef nonnull %buffer, i32 noundef %call, i1 noundef zeroext false) #6
  br i1 %call5.i, label %if.then.i.if.end_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else.i:                                        ; preds = %entry
  %add7.neg.i = add i32 %matchoff, %dataoff
  %sub8.i = add i32 %add7.neg.i, -8
  %add9.i = sub i32 %sub8.i, %protoff
  %call10.i = call zeroext i1 @nf_nat_mangle_udp_packet(ptr noundef %skb, ptr noundef %3, i32 noundef %and.i.i, i32 noundef %protoff, i32 noundef %add9.i, i32 noundef %matchlen, ptr noundef nonnull %buffer, i32 noundef %call) #6
  br i1 %call10.i, label %if.else.i.if.end_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %if.else.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %data14.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data14.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %13, i32 %dataoff
  %14 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr15.i, ptr %dptr, align 4
  %sub16.i = sub i32 %call, %matchlen
  %15 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %datalen, align 4
  %add17.i = add i32 %sub16.i, %16
  store i32 %add17.i, ptr %datalen, align 4
  %call3 = call fastcc i32 @mangle_content_len(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr noundef %dptr, ptr noundef %datalen)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_nat_sdp_session(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr nocapture noundef %dptr, ptr nocapture noundef %datalen, i32 noundef %sdpoff, ptr noundef %addr) #2 align 64 {
entry:
  %buffer = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i to ptr
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %buffer) #6
  %3 = call ptr @memset(ptr %buffer, i32 255, i32 48)
  %l3num.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %l3num.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %l3num.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp.i = icmp eq i16 %5, 2
  %.str.18.sink.i = select i1 %cmp.i, ptr @.str.16, ptr @.str.18
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull %.str.18.sink.i, ptr noundef %addr) #6
  %call3 = call fastcc i32 @mangle_sdp_packet(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr noundef %dptr, ptr noundef %datalen, i32 noundef %sdpoff, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %buffer, i32 noundef %call6.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call fastcc i32 @mangle_sdp_packet(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr noundef %dptr, ptr noundef %datalen, i32 noundef %sdpoff, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %buffer, i32 noundef %call6.i)
  %6 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call5, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 -2, label %if.end.sw.epilog_crit_edge23
  ]

if.end.sw.epilog_crit_edge23:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge23
  %call6 = call fastcc i32 @mangle_content_len(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr noundef %dptr, ptr noundef %datalen)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_nat_sdp_media(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr nocapture noundef %dptr, ptr nocapture noundef %datalen, ptr noundef %rtp_exp, ptr noundef %rtcp_exp, i32 noundef %mediaoff, i32 noundef %medialen, ptr nocapture noundef %rtp_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and.i = and i32 %1, 7
  %and1.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 2
  %cond = zext i1 %cmp to i32
  %tuple = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %dst = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %lnot.ext, i32 1, i32 1
  %3 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tuple, align 8
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp eq i32 %4, %6
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr [4 x i32], ptr %tuple, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr [4 x i32], ptr %dst, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp4.i = icmp eq i32 %8, %10
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %arrayidx6.i = getelementptr [4 x i32], ptr %tuple, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6.i, align 8
  %arrayidx7.i = getelementptr [4 x i32], ptr %dst, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp8.i = icmp eq i32 %12, %14
  br i1 %cmp8.i, label %nf_inet_addr_cmp.exit, label %land.lhs.true5.i.if.end_crit_edge

land.lhs.true5.i.if.end_crit_edge:                ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

nf_inet_addr_cmp.exit:                            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx9.i = getelementptr [4 x i32], ptr %tuple, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr [4 x i32], ptr %dst, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx10.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp11.i.not = icmp eq i32 %16, %18
  %dst8 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtp_exp, i32 0, i32 2, i32 1
  %spec.select = select i1 %cmp11.i.not, ptr %dst8, ptr %dst
  br label %if.end

if.end:                                           ; preds = %nf_inet_addr_cmp.exit, %land.lhs.true5.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dst.sink = phi ptr [ %dst, %entry.if.end_crit_edge ], [ %dst, %land.lhs.true.i.if.end_crit_edge ], [ %dst, %land.lhs.true5.i.if.end_crit_edge ], [ %spec.select, %nf_inet_addr_cmp.exit ]
  %19 = call ptr @memcpy(ptr %rtp_addr, ptr %dst.sink, i32 16)
  %saved_addr = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtp_exp, i32 0, i32 11
  %dst19 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtp_exp, i32 0, i32 2, i32 1
  %20 = call ptr @memcpy(ptr %saved_addr, ptr %dst19, i32 16)
  %21 = call ptr @memcpy(ptr %dst19, ptr %rtp_addr, i32 16)
  %u = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtp_exp, i32 0, i32 2, i32 1, i32 1
  %22 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %u, align 4
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtp_exp, i32 0, i32 12
  %24 = ptrtoint ptr %saved_proto to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %saved_proto, align 4
  %dir31 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtp_exp, i32 0, i32 13
  %25 = ptrtoint ptr %dir31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %lnot.ext, ptr %dir31, align 4
  %expectfn = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtp_exp, i32 0, i32 4
  %26 = ptrtoint ptr %expectfn to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @nf_nat_sip_expected, ptr %expectfn, align 4
  %saved_addr32 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtcp_exp, i32 0, i32 11
  %dst34 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtcp_exp, i32 0, i32 2, i32 1
  %27 = call ptr @memcpy(ptr %saved_addr32, ptr %dst34, i32 16)
  %28 = call ptr @memcpy(ptr %dst34, ptr %rtp_addr, i32 16)
  %u41 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtcp_exp, i32 0, i32 2, i32 1, i32 1
  %29 = ptrtoint ptr %u41 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %u41, align 4
  %saved_proto43 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtcp_exp, i32 0, i32 12
  %31 = ptrtoint ptr %saved_proto43 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %saved_proto43, align 4
  %dir48 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtcp_exp, i32 0, i32 13
  %32 = ptrtoint ptr %dir48 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %lnot.ext, ptr %dir48, align 4
  %expectfn49 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtcp_exp, i32 0, i32 4
  %33 = ptrtoint ptr %expectfn49 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @nf_nat_sip_expected, ptr %expectfn49, align 4
  %34 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp54.not177 = icmp eq i16 %34, 0
  br i1 %cmp54.not177, label %if.end.if.then97_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.then97_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then97

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %port.0178 = phi i16 [ %add92, %for.inc.for.body_crit_edge ], [ %34, %if.end.for.body_crit_edge ]
  %35 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %port.0178, ptr %u, align 4
  %call.i = tail call i32 @nf_ct_expect_related_report(ptr noundef %rtp_exp, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i)
  %cmp61 = icmp eq i32 %call.i, -16
  br i1 %cmp61, label %for.body.for.inc_crit_edge, label %if.else64

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else64:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp65 = icmp slt i32 %call.i, 0
  br i1 %cmp65, label %if.else64.if.then97_crit_edge, label %if.end69

if.else64.if.then97_crit_edge:                    ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then97

if.end69:                                         ; preds = %if.else64
  %add = add i16 %port.0178, 1
  %36 = ptrtoint ptr %u41 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %add, ptr %u41, align 4
  %call.i164 = tail call i32 @nf_ct_expect_related_report(ptr noundef %rtcp_exp, i32 noundef 0, i32 noundef 0, i32 noundef 1) #6
  %37 = zext i32 %call.i164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call.i164, label %if.else84 [
    i32 0, label %if.end98
    i32 -16, label %if.then83
  ]

if.then83:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nf_ct_unexpect_related(ptr noundef %rtp_exp) #6
  br label %for.inc

if.else84:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %cmp85 = icmp slt i32 %call.i164, 0
  br i1 %cmp85, label %if.then87, label %if.else84.for.inc_crit_edge

if.else84.for.inc_crit_edge:                      ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then87:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nf_ct_unexpect_related(ptr noundef %rtp_exp) #6
  br label %if.then97

for.inc:                                          ; preds = %if.else84.for.inc_crit_edge, %if.then83, %for.body.for.inc_crit_edge
  %add92 = add i16 %port.0178, 2
  %cmp54.not = icmp eq i16 %add92, 0
  br i1 %cmp54.not, label %for.inc.if.then97_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.then97_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then97

if.then97:                                        ; preds = %for.inc.if.then97_crit_edge, %if.then87, %if.else64.if.then97_crit_edge, %if.end.if.then97_crit_edge
  tail call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %2, ptr noundef nonnull @.str.20) #6
  br label %cleanup113

if.end98:                                         ; preds = %if.end69
  %38 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %u, align 4
  %40 = ptrtoint ptr %saved_proto to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %saved_proto, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %41)
  %cmp107.not = icmp eq i16 %39, %41
  br i1 %cmp107.not, label %if.end98.cleanup113_crit_edge, label %land.lhs.true

if.end98.cleanup113_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup113

land.lhs.true:                                    ; preds = %if.end98
  %call109 = tail call i32 @nf_nat_sdp_port(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr noundef %dptr, ptr noundef %datalen, i32 noundef %mediaoff, i32 noundef %medialen, i16 noundef zeroext %port.0178)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then111, label %land.lhs.true.cleanup113_crit_edge

land.lhs.true.cleanup113_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup113

if.then111:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %2, ptr noundef nonnull @.str.21) #6
  tail call void @nf_ct_unexpect_related(ptr noundef %rtp_exp) #6
  tail call void @nf_ct_unexpect_related(ptr noundef %rtcp_exp) #6
  br label %cleanup113

cleanup113:                                       ; preds = %if.then111, %land.lhs.true.cleanup113_crit_edge, %if.end98.cleanup113_crit_edge, %if.then97
  %retval.0 = phi i32 [ 1, %land.lhs.true.cleanup113_crit_edge ], [ 1, %if.end98.cleanup113_crit_edge ], [ 0, %if.then111 ], [ 0, %if.then97 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ct_sip_parse_request(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @map_addr(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr nocapture noundef writeonly %dptr, ptr nocapture noundef %datalen, i32 noundef %matchoff, i32 noundef %matchlen, ptr nocapture noundef readonly %addr, i16 noundef zeroext %port) unnamed_addr #2 align 64 {
entry:
  %buffer = alloca [57 x i8], align 1
  %newaddr = alloca %union.nf_inet_addr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and.i = and i32 %1, 7
  %and1.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 2
  %cond = zext i1 %cmp to i32
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help_data.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help_data.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfct_help_data.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.i.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfct_help_data.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i8 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  br label %nfct_help_data.exit

nfct_help_data.exit:                              ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, %entry.nfct_help_data.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge ], [ null, %entry.nfct_help_data.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 57, ptr nonnull %buffer) #6
  %7 = call ptr @memset(ptr %buffer, i32 255, i32 57)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %newaddr) #6
  %8 = getelementptr inbounds [4 x i32], ptr %newaddr, i32 0, i32 1
  %9 = getelementptr inbounds [4 x i32], ptr %newaddr, i32 0, i32 2
  %10 = getelementptr inbounds [4 x i32], ptr %newaddr, i32 0, i32 3
  %tuple = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1
  %11 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tuple, align 8
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i = icmp eq i32 %12, %14
  br i1 %cmp.i, label %land.lhs.true.i, label %nfct_help_data.exit.if.else_crit_edge

nfct_help_data.exit.if.else_crit_edge:            ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true.i:                                  ; preds = %nfct_help_data.exit
  %arrayidx2.i = getelementptr [4 x i32], ptr %tuple, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp4.i = icmp eq i32 %16, %18
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %arrayidx6.i = getelementptr [4 x i32], ptr %tuple, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx6.i, align 8
  %arrayidx7.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp8.i = icmp eq i32 %20, %22
  br i1 %cmp8.i, label %nf_inet_addr_cmp.exit, label %land.lhs.true5.i.if.else_crit_edge

land.lhs.true5.i.if.else_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

nf_inet_addr_cmp.exit:                            ; preds = %land.lhs.true5.i
  %arrayidx9.i = getelementptr [4 x i32], ptr %tuple, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp11.i.not = icmp eq i32 %24, %26
  br i1 %cmp11.i.not, label %land.lhs.true, label %nf_inet_addr_cmp.exit.if.else_crit_edge

nf_inet_addr_cmp.exit.if.else_crit_edge:          ; preds = %nf_inet_addr_cmp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %nf_inet_addr_cmp.exit
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %27 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %u, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %port)
  %cmp9 = icmp eq i16 %28, %port
  br i1 %cmp9, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %dst = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %lnot.ext, i32 1, i32 1
  %29 = call ptr @memcpy(ptr %newaddr, ptr %dst, i32 16)
  %u23 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %lnot.ext, i32 1, i32 1, i32 1
  %30 = ptrtoint ptr %u23 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %u23, align 4
  br label %if.end67

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %nf_inet_addr_cmp.exit.if.else_crit_edge, %land.lhs.true5.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %nfct_help_data.exit.if.else_crit_edge
  %dst28 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1, i32 1
  %32 = ptrtoint ptr %dst28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dst28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %14)
  %cmp.i109 = icmp eq i32 %33, %14
  br i1 %cmp.i109, label %land.lhs.true.i113, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i113:                               ; preds = %if.else
  %arrayidx2.i110 = getelementptr [4 x i32], ptr %dst28, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx2.i110 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx2.i110, align 8
  %arrayidx3.i111 = getelementptr [4 x i32], ptr %addr, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx3.i111 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx3.i111, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp4.i112 = icmp eq i32 %35, %37
  br i1 %cmp4.i112, label %land.lhs.true5.i117, label %land.lhs.true.i113.cleanup_crit_edge

land.lhs.true.i113.cleanup_crit_edge:             ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true5.i117:                              ; preds = %land.lhs.true.i113
  %arrayidx6.i114 = getelementptr [4 x i32], ptr %dst28, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx6.i114 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx6.i114, align 4
  %arrayidx7.i115 = getelementptr [4 x i32], ptr %addr, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx7.i115 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx7.i115, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp8.i116 = icmp eq i32 %39, %41
  br i1 %cmp8.i116, label %nf_inet_addr_cmp.exit123, label %land.lhs.true5.i117.cleanup_crit_edge

land.lhs.true5.i117.cleanup_crit_edge:            ; preds = %land.lhs.true5.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nf_inet_addr_cmp.exit123:                         ; preds = %land.lhs.true5.i117
  %arrayidx9.i118 = getelementptr [4 x i32], ptr %dst28, i32 0, i32 3
  %42 = ptrtoint ptr %arrayidx9.i118 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx9.i118, align 8
  %arrayidx10.i119 = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  %44 = ptrtoint ptr %arrayidx10.i119 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx10.i119, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp11.i120.not = icmp eq i32 %43, %45
  br i1 %cmp11.i120.not, label %land.lhs.true32, label %nf_inet_addr_cmp.exit123.cleanup_crit_edge

nf_inet_addr_cmp.exit123.cleanup_crit_edge:       ; preds = %nf_inet_addr_cmp.exit123
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true32:                                  ; preds = %nf_inet_addr_cmp.exit123
  %u37 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %cond, i32 1, i32 1, i32 1
  %46 = ptrtoint ptr %u37 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %u37, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %port)
  %cmp41 = icmp eq i16 %47, %port
  br i1 %cmp41, label %if.then43, label %land.lhs.true32.cleanup_crit_edge

land.lhs.true32.cleanup_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then43:                                        ; preds = %land.lhs.true32
  %lnot46 = xor i1 %cmp, true
  %lnot.ext47 = zext i1 %lnot46 to i32
  %tuple49 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 %lnot.ext47, i32 1
  %48 = call ptr @memcpy(ptr %newaddr, ptr %tuple49, i32 16)
  %forced_dport = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 8
  %49 = ptrtoint ptr %forced_dport to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %forced_dport, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool53.not = icmp eq i16 %50, 0
  br i1 %tobool53.not, label %cond.false, label %if.then43.if.end67_crit_edge

if.then43.if.end67_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

cond.false:                                       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  %u61 = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple49, i32 0, i32 1
  %51 = ptrtoint ptr %u61 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %u61, align 8
  br label %if.end67

if.end67:                                         ; preds = %cond.false, %if.then43.if.end67_crit_edge, %if.then
  %newport.0 = phi i16 [ %31, %if.then ], [ %52, %cond.false ], [ %50, %if.then43.if.end67_crit_edge ]
  %53 = ptrtoint ptr %newaddr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %newaddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %14)
  %cmp.i124 = icmp eq i32 %54, %14
  br i1 %cmp.i124, label %land.lhs.true.i128, label %if.end67.if.end76_crit_edge

if.end67.if.end76_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

land.lhs.true.i128:                               ; preds = %if.end67
  %55 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %8, align 4
  %arrayidx3.i126 = getelementptr [4 x i32], ptr %addr, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx3.i126 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx3.i126, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp4.i127 = icmp eq i32 %56, %58
  br i1 %cmp4.i127, label %land.lhs.true5.i132, label %land.lhs.true.i128.if.end76_crit_edge

land.lhs.true.i128.if.end76_crit_edge:            ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

land.lhs.true5.i132:                              ; preds = %land.lhs.true.i128
  %59 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %9, align 4
  %arrayidx7.i130 = getelementptr [4 x i32], ptr %addr, i32 0, i32 2
  %61 = ptrtoint ptr %arrayidx7.i130 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx7.i130, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp8.i131 = icmp eq i32 %60, %62
  br i1 %cmp8.i131, label %nf_inet_addr_cmp.exit138, label %land.lhs.true5.i132.if.end76_crit_edge

land.lhs.true5.i132.if.end76_crit_edge:           ; preds = %land.lhs.true5.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

nf_inet_addr_cmp.exit138:                         ; preds = %land.lhs.true5.i132
  %63 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %10, align 4
  %arrayidx10.i134 = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  %65 = ptrtoint ptr %arrayidx10.i134 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx10.i134, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp11.i135 = icmp eq i32 %64, %66
  call void @__sanitizer_cov_trace_cmp2(i16 %newport.0, i16 %port)
  %cmp73 = icmp eq i16 %newport.0, %port
  %or.cond = select i1 %cmp11.i135, i1 %cmp73, i1 false
  br i1 %or.cond, label %nf_inet_addr_cmp.exit138.cleanup_crit_edge, label %nf_inet_addr_cmp.exit138.if.end76_crit_edge

nf_inet_addr_cmp.exit138.if.end76_crit_edge:      ; preds = %nf_inet_addr_cmp.exit138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

nf_inet_addr_cmp.exit138.cleanup_crit_edge:       ; preds = %nf_inet_addr_cmp.exit138
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end76:                                         ; preds = %nf_inet_addr_cmp.exit138.if.end76_crit_edge, %land.lhs.true5.i132.if.end76_crit_edge, %land.lhs.true.i128.if.end76_crit_edge, %if.end67.if.end76_crit_edge
  %l3num.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %67 = ptrtoint ptr %l3num.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %l3num.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %68)
  %cmp.i139 = icmp eq i16 %68, 2
  %conv2.i = zext i16 %newport.0 to i32
  %.str.14..str.15.i = select i1 %cmp.i139, ptr @.str.14, ptr @.str.15
  %call5.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull %.str.14..str.15.i, ptr noundef nonnull %newaddr, i32 noundef %conv2.i) #6
  %69 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i = and i32 %70, 7
  %and1.i.i = and i32 %70, -8
  %71 = inttoptr i32 %and1.i.i to ptr
  %protonum.i.i = getelementptr inbounds %struct.nf_conn, ptr %71, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %72 = ptrtoint ptr %protonum.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %protonum.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %73)
  %cmp.i140 = icmp eq i8 %73, 6
  br i1 %cmp.i140, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end76
  %data.i141 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %74 = ptrtoint ptr %data.i141 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i141, align 4
  %add.ptr.i = getelementptr i8, ptr %75, i32 %protoff
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i, i32 0, i32 4
  %76 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %77 = lshr i16 %bf.load.i, 10
  %78 = and i16 %77, 60
  %mul.i = zext i16 %78 to i32
  %.neg = add i32 %matchoff, %dataoff
  %79 = add i32 %mul.i, %protoff
  %add4.i = sub i32 %.neg, %79
  %call5.i142 = call zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef %skb, ptr noundef %71, i32 noundef %and.i.i, i32 noundef %protoff, i32 noundef %add4.i, i32 noundef %matchlen, ptr noundef nonnull %buffer, i32 noundef %call5.i, i1 noundef zeroext false) #6
  br i1 %call5.i142, label %if.then.i.if.end13.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end13.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end76
  %add7.neg.i = add i32 %matchoff, %dataoff
  %sub8.i = add i32 %add7.neg.i, -8
  %add9.i = sub i32 %sub8.i, %protoff
  %call10.i = call zeroext i1 @nf_nat_mangle_udp_packet(ptr noundef %skb, ptr noundef %71, i32 noundef %and.i.i, i32 noundef %protoff, i32 noundef %add9.i, i32 noundef %matchlen, ptr noundef nonnull %buffer, i32 noundef %call5.i) #6
  br i1 %call10.i, label %if.else.i.if.end13.i_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i.if.end13.i_crit_edge, %if.then.i.if.end13.i_crit_edge
  %data14.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %80 = ptrtoint ptr %data14.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data14.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %81, i32 %dataoff
  %82 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %add.ptr15.i, ptr %dptr, align 4
  %sub16.i = sub i32 %call5.i, %matchlen
  %83 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %datalen, align 4
  %add17.i = add i32 %sub16.i, %84
  store i32 %add17.i, ptr %datalen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13.i, %if.else.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %nf_inet_addr_cmp.exit138.cleanup_crit_edge, %land.lhs.true32.cleanup_crit_edge, %nf_inet_addr_cmp.exit123.cleanup_crit_edge, %land.lhs.true5.i117.cleanup_crit_edge, %land.lhs.true.i113.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true32.cleanup_crit_edge ], [ 1, %nf_inet_addr_cmp.exit123.cleanup_crit_edge ], [ 1, %nf_inet_addr_cmp.exit138.cleanup_crit_edge ], [ 1, %if.end13.i ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ], [ 1, %land.lhs.true5.i117.cleanup_crit_edge ], [ 1, %land.lhs.true.i113.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %newaddr) #6
  call void @llvm.lifetime.end.p0(i64 57, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_log(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ct_sip_parse_header_uri(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ct_sip_parse_address_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mangle_packet(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr nocapture noundef writeonly %dptr, ptr nocapture noundef %datalen, i32 noundef %matchoff, i32 noundef %matchlen, ptr noundef %buffer, i32 noundef %buflen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and.i = and i32 %1, 7
  %and1.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i to ptr
  %protonum.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %3 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %protonum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cmp = icmp eq i8 %4, 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %protoff
  %doff = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 4
  %7 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %doff, align 4
  %8 = lshr i16 %bf.load, 10
  %9 = and i16 %8, 60
  %mul = zext i16 %9 to i32
  %10 = add i32 %dataoff, %matchoff
  %11 = add i32 %mul, %protoff
  %add4 = sub i32 %10, %11
  %call5 = tail call zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef %skb, ptr noundef %2, i32 noundef %and.i, i32 noundef %protoff, i32 noundef %add4, i32 noundef %matchlen, ptr noundef %buffer, i32 noundef %buflen, i1 noundef zeroext false) #6
  br i1 %call5, label %if.then.if.end13_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.else:                                          ; preds = %entry
  %add7.neg = sub i32 -8, %protoff
  %sub8 = add i32 %add7.neg, %dataoff
  %add9 = add i32 %sub8, %matchoff
  %call10 = tail call zeroext i1 @nf_nat_mangle_udp_packet(ptr noundef %skb, ptr noundef %2, i32 noundef %and.i, i32 noundef %protoff, i32 noundef %add9, i32 noundef %matchlen, ptr noundef %buffer, i32 noundef %buflen) #6
  br i1 %call10, label %if.else.if.end13_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %data14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data14, align 4
  %add.ptr15 = getelementptr i8, ptr %13, i32 %dataoff
  %14 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr15, ptr %dptr, align 4
  %sub16 = sub i32 %buflen, %matchlen
  %15 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %datalen, align 4
  %add17 = add i32 %sub16, %16
  store i32 %add17, ptr %datalen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end13 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ct_sip_parse_numerical_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_nat_mangle_udp_packet(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_seqadj_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_unexpect_related(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_expect_related_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mangle_sdp_packet(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr nocapture noundef %dptr, ptr nocapture noundef %datalen, i32 noundef %sdpoff, i32 noundef %type, i32 noundef %term, ptr noundef %buffer, i32 noundef %buflen) unnamed_addr #2 align 64 {
entry:
  %matchlen = alloca i32, align 4
  %matchoff = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matchlen) #6
  %3 = ptrtoint ptr %matchlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %matchlen, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matchoff) #6
  %4 = ptrtoint ptr %matchoff to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %matchoff, align 4, !annotation !74
  %5 = ptrtoint ptr %dptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dptr, align 4
  %7 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %datalen, align 4
  %call1 = call i32 @ct_sip_get_sdp_header(ptr noundef %2, ptr noundef %6, i32 noundef %sdpoff, i32 noundef %8, i32 noundef %type, i32 noundef %term, ptr noundef nonnull %matchoff, ptr noundef nonnull %matchlen) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %matchoff to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %matchoff, align 4
  %11 = ptrtoint ptr %matchlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %matchlen, align 4
  %13 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i = and i32 %14, 7
  %and1.i.i = and i32 %14, -8
  %15 = inttoptr i32 %and1.i.i to ptr
  %protonum.i.i = getelementptr inbounds %struct.nf_conn, ptr %15, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %16 = ptrtoint ptr %protonum.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %protonum.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %17)
  %cmp.i = icmp eq i8 %17, 6
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %protoff
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i, i32 0, i32 4
  %20 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %21 = lshr i16 %bf.load.i, 10
  %22 = and i16 %21, 60
  %mul.i = zext i16 %22 to i32
  %.neg = add i32 %10, %dataoff
  %23 = add i32 %mul.i, %protoff
  %add4.i = sub i32 %.neg, %23
  %call5.i = call zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef %skb, ptr noundef %15, i32 noundef %and.i.i, i32 noundef %protoff, i32 noundef %add4.i, i32 noundef %12, ptr noundef %buffer, i32 noundef %buflen, i1 noundef zeroext false) #6
  br i1 %call5.i, label %if.then.i.mangle_packet.exit_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.mangle_packet.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mangle_packet.exit

if.else.i:                                        ; preds = %if.end
  %add7.neg.i = add i32 %10, %dataoff
  %sub8.i = add i32 %add7.neg.i, -8
  %add9.i = sub i32 %sub8.i, %protoff
  %call10.i = call zeroext i1 @nf_nat_mangle_udp_packet(ptr noundef %skb, ptr noundef %15, i32 noundef %and.i.i, i32 noundef %protoff, i32 noundef %add9.i, i32 noundef %12, ptr noundef %buffer, i32 noundef %buflen) #6
  br i1 %call10.i, label %if.else.i.mangle_packet.exit_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i.mangle_packet.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mangle_packet.exit

mangle_packet.exit:                               ; preds = %if.else.i.mangle_packet.exit_crit_edge, %if.then.i.mangle_packet.exit_crit_edge
  %data14.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %24 = ptrtoint ptr %data14.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data14.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %25, i32 %dataoff
  %26 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr15.i, ptr %dptr, align 4
  %sub16.i = sub i32 %buflen, %12
  %27 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %datalen, align 4
  %add17.i = add i32 %sub16.i, %28
  store i32 %add17.i, ptr %datalen, align 4
  br label %cleanup

cleanup:                                          ; preds = %mangle_packet.exit, %if.else.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %mangle_packet.exit ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchoff) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchlen) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mangle_content_len(ptr noundef %skb, i32 noundef %protoff, i32 noundef %dataoff, ptr nocapture noundef %dptr, ptr nocapture noundef %datalen) unnamed_addr #2 align 64 {
entry:
  %matchoff = alloca i32, align 4
  %matchlen = alloca i32, align 4
  %buffer = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matchoff) #6
  %3 = ptrtoint ptr %matchoff to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %matchoff, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matchlen) #6
  %4 = ptrtoint ptr %matchlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %matchlen, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buffer) #6
  %5 = call ptr @memset(ptr %buffer, i32 255, i32 6)
  %6 = ptrtoint ptr %dptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dptr, align 4
  %8 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %datalen, align 4
  %call1 = call i32 @ct_sip_get_sdp_header(ptr noundef %2, ptr noundef %7, i32 noundef 0, i32 noundef %9, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %matchoff, ptr noundef nonnull %matchlen) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %datalen, align 4
  %12 = ptrtoint ptr %matchoff to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %matchoff, align 4
  %14 = ptrtoint ptr %dptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dptr, align 4
  %call2 = call i32 @ct_sip_get_header(ptr noundef %2, ptr noundef %15, i32 noundef 0, i32 noundef %11, i32 noundef 7, ptr noundef nonnull %matchoff, ptr noundef nonnull %matchlen) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 1
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sub = add i32 %11, 2
  %add = sub i32 %sub, %13
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer, ptr noundef nonnull @.str.9, i32 noundef %add)
  %16 = ptrtoint ptr %matchoff to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %matchoff, align 4
  %18 = ptrtoint ptr %matchlen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %matchlen, align 4
  %20 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i = and i32 %21, 7
  %and1.i.i = and i32 %21, -8
  %22 = inttoptr i32 %and1.i.i to ptr
  %protonum.i.i = getelementptr inbounds %struct.nf_conn, ptr %22, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %23 = ptrtoint ptr %protonum.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %protonum.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %24)
  %cmp.i = icmp eq i8 %24, 6
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %protoff
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i, i32 0, i32 4
  %27 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %28 = lshr i16 %bf.load.i, 10
  %29 = and i16 %28, 60
  %mul.i = zext i16 %29 to i32
  %.neg22 = add i32 %17, %dataoff
  %30 = add i32 %mul.i, %protoff
  %add4.i = sub i32 %.neg22, %30
  %call5.i = call zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef %skb, ptr noundef %22, i32 noundef %and.i.i, i32 noundef %protoff, i32 noundef %add4.i, i32 noundef %19, ptr noundef nonnull %buffer, i32 noundef %call6, i1 noundef zeroext false) #6
  br i1 %call5.i, label %if.then.i.if.end13.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end13.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end5
  %add7.neg.i = add i32 %17, %dataoff
  %sub8.i = add i32 %add7.neg.i, -8
  %add9.i = sub i32 %sub8.i, %protoff
  %call10.i = call zeroext i1 @nf_nat_mangle_udp_packet(ptr noundef %skb, ptr noundef %22, i32 noundef %and.i.i, i32 noundef %protoff, i32 noundef %add9.i, i32 noundef %19, ptr noundef nonnull %buffer, i32 noundef %call6) #6
  br i1 %call10.i, label %if.else.i.if.end13.i_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i.if.end13.i_crit_edge, %if.then.i.if.end13.i_crit_edge
  %data14.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %31 = ptrtoint ptr %data14.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data14.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %32, i32 %dataoff
  %33 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr15.i, ptr %dptr, align 4
  %sub16.i = sub i32 %call6, %19
  %34 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %datalen, align 4
  %add17.i = add i32 %sub16.i, %35
  store i32 %add17.i, ptr %datalen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13.i, %if.else.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end13.i ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buffer) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchlen) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchoff) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ct_sip_get_sdp_header(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ct_sip_get_header(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__UNIQUE_ID_file587, !1, !"__UNIQUE_ID_file587", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_nat_sip.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_license588, !1, !"__UNIQUE_ID_license588", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author589, !4, !"__UNIQUE_ID_author589", i1 false, i1 false}
!4 = !{!"../net/netfilter/nf_nat_sip.c", i32 27, i32 1}
!5 = !{ptr @__UNIQUE_ID_description590, !6, !"__UNIQUE_ID_description590", i1 false, i1 false}
!6 = !{!"../net/netfilter/nf_nat_sip.c", i32 28, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias591, !8, !"__UNIQUE_ID_alias591", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_nat_sip.c", i32 29, i32 1}
!9 = !{ptr @__initcall__kmod_nf_nat_sip__594_687_nf_nat_sip_init6, !10, !"__initcall__kmod_nf_nat_sip__594_687_nf_nat_sip_init6", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_nat_sip.c", i32 687, i32 1}
!11 = !{ptr @__exitcall_nf_nat_sip_fini, !12, !"__exitcall_nf_nat_sip_fini", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_nat_sip.c", i32 688, i32 1}
!13 = !{ptr @nat_helper_sip, !14, !"nat_helper_sip", i1 false, i1 false}
!14 = !{!"../net/netfilter/nf_nat_sip.c", i32 31, i32 39}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/nf_nat_sip.c", i32 656, i32 11}
!17 = !{ptr @sip_nat, !18, !"sip_nat", i1 false, i1 false}
!18 = !{!"../net/netfilter/nf_nat_sip.c", i32 655, i32 37}
!19 = !{ptr @sip_hooks, !20, !"sip_hooks", i1 false, i1 false}
!20 = !{!"../net/netfilter/nf_nat_sip.c", i32 668, i32 38}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/nf_nat_sip.c", i32 160, i32 25}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/nf_nat_sip.c", i32 166, i32 30}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/nf_nat_sip.c", i32 202, i32 30}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/netfilter/nf_nat_sip.c", i32 211, i32 13}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/netfilter/nf_nat_sip.c", i32 220, i32 31}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/netfilter/nf_nat_sip.c", i32 228, i32 13}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/netfilter/nf_nat_sip.c", i32 237, i32 31}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/netfilter/nf_nat_sip.c", i32 245, i32 8}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/netfilter/nf_nat_sip.c", i32 250, i32 29}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/netfilter/nf_nat_sip.c", i32 253, i32 31}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/netfilter/nf_nat_sip.c", i32 270, i32 30}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/netfilter/nf_nat_sip.c", i32 277, i32 29}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/netfilter/nf_nat_sip.c", i32 286, i32 30}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/netfilter/nf_nat_sip.c", i32 87, i32 26}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/netfilter/nf_nat_sip.c", i32 89, i32 26}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/netfilter/nf_nat_sip.c", i32 74, i32 26}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/netfilter/nf_nat_sip.c", i32 77, i32 27}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/netfilter/nf_nat_sip.c", i32 79, i32 27}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/netfilter/nf_nat_sip.c", i32 427, i32 29}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/netfilter/nf_nat_sip.c", i32 634, i32 29}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/netfilter/nf_nat_sip.c", i32 642, i32 29}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2158078030, i64 2158078521, i64 2158078067, i64 2158078123, i64 2158078157, i64 2158078181, i64 2158078222, i64 2158078243, i64 2158078271, i64 2158078305}
!74 = !{!"auto-init"}
!75 = !{i64 2158069292, i64 2158069783, i64 2158069329, i64 2158069385, i64 2158069419, i64 2158069443, i64 2158069484, i64 2158069505, i64 2158069533, i64 2158069567}
