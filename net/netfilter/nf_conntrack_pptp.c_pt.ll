; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_pptp.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_pptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_nat_pptp_hook_outbound\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_pptp_hook_outbound\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_pptp_hook_outbound\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_pptp_hook_outbound:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_pptp_hook_outbound\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_pptp_hook_outbound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_nat_pptp_hook_inbound\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_pptp_hook_inbound\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_pptp_hook_inbound\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_pptp_hook_inbound:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_pptp_hook_inbound\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_pptp_hook_inbound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_nat_pptp_hook_exp_gre\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_pptp_hook_exp_gre\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_pptp_hook_exp_gre\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_pptp_hook_exp_gre:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_pptp_hook_exp_gre\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_pptp_hook_exp_gre:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_nat_pptp_hook_expectfn\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_pptp_hook_expectfn\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_pptp_hook_expectfn\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_pptp_hook_expectfn:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_pptp_hook_expectfn\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_pptp_hook_expectfn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pptp_msg_name\22, \22a\22\09"
module asm "\09.weak\09__crc_pptp_msg_name\09\09\09\09"
module asm "\09.long\09__crc_pptp_msg_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pptp_msg_name:\09\09\09\09\09"
module asm "\09.asciz \09\22pptp_msg_name\22\09\09\09\09\09"
module asm "__kstrtabns_pptp_msg_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nf_conntrack_expect_policy = type { i32, i32, [16 x i8] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.nf_inet_addr = type { [4 x i32] }
%struct.anon.105 = type { i16 }
%struct.anon.111 = type { %union.nf_inet_addr, %union.anon.112, i8, i8 }
%union.anon.112 = type { i16 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.pptp_pkt_hdr = type { i16, i16, i32 }
%struct.PptpControlHeader = type { i16, i16 }
%union.pptp_ctrl_union = type { %struct.PptpInCallRequest }
%struct.PptpInCallRequest = type { i16, i16, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8] }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.166, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.111 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_conntrack_man_proto = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.anon.166 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.nf_conn_help = type { ptr, %struct.hlist_head, [4 x i8], [4 x i8], [32 x i8] }
%struct.hlist_head = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.149, %union.anon.150, [48 x i8], %union.anon.151, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.153, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.149 = type { ptr }
%union.anon.150 = type { i64 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, ptr }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.155, i32, i32, i32, i16, i16, %union.anon.157, i32, %union.anon.158, %union.anon.159, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i16 }
%struct.PptpInCallReply = type { i16, i16, i8, i8, i16, i16, i16 }
%struct.PptpStartSessionReply = type { i16, i8, i8, i32, i32, i16, i16, [64 x i8], [64 x i8] }
%struct.PptpOutCallReply = type { i16, i16, i8, i8, i16, i32, i16, i16, i32 }
%struct.nf_conntrack_expect = type { %struct.hlist_node, %struct.hlist_node, %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple_mask, ptr, ptr, ptr, %struct.timer_list, %struct.refcount_struct, i32, i32, %union.nf_inet_addr, %union.nf_conntrack_man_proto, i32, %struct.callback_head }
%struct.nf_conntrack_tuple_mask = type { %struct.anon.119 }
%struct.anon.119 = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }

@__UNIQUE_ID_file587 = internal constant [55 x i8] c"nf_conntrack_pptp.file=net/netfilter/nf_conntrack_pptp\00", section ".modinfo", align 1
@__UNIQUE_ID_license588 = internal constant [30 x i8] c"nf_conntrack_pptp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author589 = internal constant [61 x i8] c"nf_conntrack_pptp.author=Harald Welte <laforge@gnumonks.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description590 = internal constant [83 x i8] c"nf_conntrack_pptp.description=Netfilter connection tracking helper module for PPTP\00", section ".modinfo", align 1
@__UNIQUE_ID_alias591 = internal constant [42 x i8] c"nf_conntrack_pptp.alias=ip_conntrack_pptp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias592 = internal constant [41 x i8] c"nf_conntrack_pptp.alias=nfct-helper-pptp\00", section ".modinfo", align 1
@nf_nat_pptp_hook_outbound = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_nf_nat_pptp_hook_outbound = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_pptp_hook_outbound = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_pptp_hook_outbound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_pptp_hook_outbound to i32), ptr @__kstrtab_nf_nat_pptp_hook_outbound, ptr @__kstrtabns_nf_nat_pptp_hook_outbound }, section "___ksymtab_gpl+nf_nat_pptp_hook_outbound", align 4
@nf_nat_pptp_hook_inbound = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_nf_nat_pptp_hook_inbound = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_pptp_hook_inbound = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_pptp_hook_inbound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_pptp_hook_inbound to i32), ptr @__kstrtab_nf_nat_pptp_hook_inbound, ptr @__kstrtabns_nf_nat_pptp_hook_inbound }, section "___ksymtab_gpl+nf_nat_pptp_hook_inbound", align 4
@nf_nat_pptp_hook_exp_gre = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_nf_nat_pptp_hook_exp_gre = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_pptp_hook_exp_gre = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_pptp_hook_exp_gre = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_pptp_hook_exp_gre to i32), ptr @__kstrtab_nf_nat_pptp_hook_exp_gre, ptr @__kstrtabns_nf_nat_pptp_hook_exp_gre }, section "___ksymtab_gpl+nf_nat_pptp_hook_exp_gre", align 4
@nf_nat_pptp_hook_expectfn = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_nf_nat_pptp_hook_expectfn = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_pptp_hook_expectfn = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_pptp_hook_expectfn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_pptp_hook_expectfn to i32), ptr @__kstrtab_nf_nat_pptp_hook_expectfn, ptr @__kstrtabns_nf_nat_pptp_hook_expectfn }, section "___ksymtab_gpl+nf_nat_pptp_hook_expectfn", align 4
@pptp_msg_name_array = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], [32 x i8] zeroinitializer }, align 32
@__kstrtab_pptp_msg_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_pptp_msg_name = external dso_local constant [0 x i8], align 1
@__ksymtab_pptp_msg_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pptp_msg_name to i32), ptr @__kstrtab_pptp_msg_name, ptr @__kstrtabns_pptp_msg_name }, section "___ksymtab+pptp_msg_name", align 4
@__initcall__kmod_nf_conntrack_pptp__624_636_nf_conntrack_pptp_init6 = internal global ptr @nf_conntrack_pptp_init, section ".initcall6.init", align 4
@__exitcall_nf_conntrack_pptp_fini = internal global ptr @nf_conntrack_pptp_fini, section ".exitcall.exit", align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"UNKNOWN_MESSAGE\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"START_SESSION_REQUEST\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"START_SESSION_REPLY\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"STOP_SESSION_REQUEST\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"STOP_SESSION_REPLY\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ECHO_REQUEST\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ECHO_REPLY\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OUT_CALL_REQUEST\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OUT_CALL_REPLY\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IN_CALL_REQUEST\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IN_CALL_REPLY\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IN_CALL_CONNECT\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CALL_CLEAR_REQUEST\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CALL_DISCONNECT_NOTIFY\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WAN_ERROR_NOTIFY\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SET_LINK_INFO\00", [18 x i8] zeroinitializer }, align 32
@pptp_exp_policy = internal constant { %struct.nf_conntrack_expect_policy, [40 x i8] } { %struct.nf_conntrack_expect_policy { i32 2, i32 300, [16 x i8] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@pptp = internal global { %struct.hlist_node, [16 x i8], %struct.refcount_struct, ptr, ptr, { { %union.nf_inet_addr, { %struct.anon.105 }, i16 }, %struct.anon.111 }, ptr, ptr, ptr, ptr, i32, i32, i32, i16, [16 x i8] } { %struct.hlist_node zeroinitializer, [16 x i8] c"pptp\00\00\00\00\00\00\00\00\00\00\00\00", %struct.refcount_struct zeroinitializer, ptr null, ptr @pptp_exp_policy, { { %union.nf_inet_addr, { %struct.anon.105 }, i16 }, %struct.anon.111 } { { %union.nf_inet_addr, { %struct.anon.105 }, i16 } { %union.nf_inet_addr zeroinitializer, { %struct.anon.105 } { %struct.anon.105 { i16 1723 } }, i16 2 }, %struct.anon.111 { %union.nf_inet_addr zeroinitializer, %union.anon.112 zeroinitializer, i8 6, i8 0 } }, ptr @conntrack_pptp_help, ptr @pptp_destroy_siblings, ptr null, ptr null, i32 0, i32 0, i32 0, i16 0, [16 x i8] zeroinitializer }, section ".data..read_mostly", align 4
@conntrack_pptp_help.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nf_conntrack_pptp\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"conntrack_pptp_help\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"net/netfilter/nf_conntrack_pptp.c\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no full PPTP header, can't track\0A\00", [62 x i8] zeroinitializer }, align 32
@conntrack_pptp_help.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"not a control packet\0A\00", [42 x i8] zeroinitializer }, align 32
@pptp_msg_size = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 144, i32 144, i32 4, i32 4, i32 0, i32 0, i32 156, i32 20, i32 208, i32 12, i32 16, i32 4, i32 136, i32 28, i32 12], [32 x i8] zeroinitializer }, align 32
@nf_pptp_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@conntrack_pptp_help.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.22, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sstate: %d->%d, cstate: %d->%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nf_pptp_lock\00", [19 x i8] zeroinitializer }, align 32
@pptp_outbound_pkt.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.24, ptr @.str.19, ptr @.str.25, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pptp_outbound_pkt\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"outbound control message %s\0A\00", [35 x i8] zeroinitializer }, align 32
@pptp_outbound_pkt.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.24, ptr @.str.19, ptr @.str.26, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s, CID=%X\0A\00", [20 x i8] zeroinitializer }, align 32
@pptp_outbound_pkt.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.24, ptr @.str.19, ptr @.str.27, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s, CID=%X PCID=%X\0A\00", [44 x i8] zeroinitializer }, align 32
@pptp_outbound_pkt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@pptp_outbound_pkt.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.24, ptr @.str.19, ptr @.str.29, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"invalid %s: type=%d cid=%u pcid=%u cstate=%d sstate=%d pns_cid=%u pac_cid=%u\0A\00", [50 x i8] zeroinitializer }, align 32
@pptp_inbound_pkt.__UNIQUE_ID_ddebug606 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.30, ptr @.str.19, ptr @.str.31, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pptp_inbound_pkt\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"inbound control message %s\0A\00", [36 x i8] zeroinitializer }, align 32
@pptp_inbound_pkt.__UNIQUE_ID_ddebug607 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.30, ptr @.str.19, ptr @.str.32, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s, CID=%X, PCID=%X\0A\00", [43 x i8] zeroinitializer }, align 32
@pptp_inbound_pkt.__UNIQUE_ID_ddebug608 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.30, ptr @.str.19, ptr @.str.26, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pptp_inbound_pkt.__UNIQUE_ID_ddebug609 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.30, ptr @.str.19, ptr @.str.33, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s, PCID=%X\0A\00", [19 x i8] zeroinitializer }, align 32
@pptp_inbound_pkt.__UNIQUE_ID_ddebug610 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.30, ptr @.str.19, ptr @.str.26, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pptp_inbound_pkt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@pptp_inbound_pkt.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.30, ptr @.str.19, ptr @.str.29, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@exp_gre.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@pptp_expectfn.__UNIQUE_ID_ddebug593 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.34, ptr @.str.19, ptr @.str.35, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pptp_expectfn\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"increasing timeouts\0A\00", [43 x i8] zeroinitializer }, align 32
@pptp_expectfn.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@pptp_expectfn.__UNIQUE_ID_ddebug596 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.34, ptr @.str.19, ptr @.str.36, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"trying to unexpect other dir: \00", [33 x i8] zeroinitializer }, align 32
@pptp_expectfn.__UNIQUE_ID_ddebug597 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.34, ptr @.str.19, ptr @.str.37, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"found\0A\00", [25 x i8] zeroinitializer }, align 32
@pptp_expectfn.__UNIQUE_ID_ddebug598 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.34, ptr @.str.19, ptr @.str.38, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"not found\0A\00", [21 x i8] zeroinitializer }, align 32
@pptp_destroy_siblings.__UNIQUE_ID_ddebug602 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.39, ptr @.str.19, ptr @.str.40, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pptp_destroy_siblings\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to timeout original pns->pac ct/exp\0A\00", [52 x i8] zeroinitializer }, align 32
@pptp_destroy_siblings.__UNIQUE_ID_ddebug603 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.39, ptr @.str.19, ptr @.str.41, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to timeout reply pac->pns ct/exp\0A\00", [55 x i8] zeroinitializer }, align 32
@destroy_sibling_or_exp.__UNIQUE_ID_ddebug599 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.42, ptr @.str.19, ptr @.str.43, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"destroy_sibling_or_exp\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"trying to timeout ct or exp for tuple \00", [57 x i8] zeroinitializer }, align 32
@destroy_sibling_or_exp.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.42, ptr @.str.19, ptr @.str.44, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"setting timeout of conntrack %p to 0\0A\00", [58 x i8] zeroinitializer }, align 32
@destroy_sibling_or_exp.__UNIQUE_ID_ddebug601 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.42, ptr @.str.19, ptr @.str.45, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unexpect_related of expect %p\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [10 x i64] [i64 8, i64 16, i64 1, i64 3, i64 5, i64 6, i64 7, i64 10, i64 12, i64 15]
@__sancov_gen_cov_switch_values.47 = internal global [12 x i64] [i64 10, i64 16, i64 2, i64 4, i64 5, i64 6, i64 8, i64 9, i64 11, i64 13, i64 14, i64 15]
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"pptp_msg_name_array\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 75, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 76, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 77, i32 33 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 78, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 79, i32 32 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 80, i32 30 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 81, i32 25 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 82, i32 23 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 83, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 84, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 85, i32 28 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 86, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 87, i32 28 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 88, i32 30 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 89, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 90, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 91, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"pptp_exp_policy\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 607, i32 48 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 555, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 564, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [14 x i8] c"pptp_msg_size\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 497, i32 27 }
@___asan_gen_.120 = private unnamed_addr constant [13 x i8] c"nf_pptp_lock\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 600, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 46, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 415, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 437, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 451, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 482, i32 25 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 489, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 287, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 322, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 358, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 116, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 134, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 140, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 144, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 197, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 205, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 157, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 164, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private constant [37 x i8] c"../net/netfilter/nf_conntrack_pptp.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 173, i32 4 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_alias591, ptr @__UNIQUE_ID_alias592, ptr @__UNIQUE_ID_author589, ptr @__UNIQUE_ID_description590, ptr @__UNIQUE_ID_file587, ptr @__UNIQUE_ID_license588, ptr @__exitcall_nf_conntrack_pptp_fini, ptr @__initcall__kmod_nf_conntrack_pptp__624_636_nf_conntrack_pptp_init6, ptr @__ksymtab_nf_nat_pptp_hook_exp_gre, ptr @__ksymtab_nf_nat_pptp_hook_expectfn, ptr @__ksymtab_nf_nat_pptp_hook_inbound, ptr @__ksymtab_nf_nat_pptp_hook_outbound, ptr @__ksymtab_pptp_msg_name, ptr @nf_conntrack_pptp_fini, ptr @pptp_msg_name_array, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @pptp_exp_policy, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @pptp_msg_size, ptr @nf_pptp_lock, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pptp_msg_name_array to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pptp_exp_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pptp_msg_size to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_pptp_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @pptp_msg_name(i16 noundef zeroext %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %msg)
  %cmp = icmp ugt i16 %msg, 15
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %msg to i32
  %arrayidx = getelementptr [16 x ptr], ptr @pptp_msg_name_array, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ @.str, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_conntrack_pptp_fini() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nf_conntrack_helper_unregister(ptr noundef nonnull @pptp) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_helper_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_conntrack_pptp_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nf_conntrack_helper_register(ptr noundef nonnull @pptp) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conntrack_pptp_help(ptr noundef %skb, i32 noundef %protoff, ptr noundef %ct, i32 noundef %ctinfo) #3 align 64 {
entry:
  %_tcph = alloca %struct.tcphdr, align 4
  %_pptph = alloca %struct.pptp_pkt_hdr, align 8
  %_ctlh = alloca %struct.PptpControlHeader, align 2
  %_pptpReq = alloca %union.pptp_ctrl_union, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ctinfo)
  %cmp = icmp ult i32 %ctinfo, 3
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help_data.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help_data.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfct_help_data.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfct_help_data.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  br label %nfct_help_data.exit

nfct_help_data.exit:                              ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, %entry.nfct_help_data.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge ], [ null, %entry.nfct_help_data.exit_crit_edge ]
  %data.i = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #7
  %4 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_pptph) #7
  %5 = ptrtoint ptr %_pptph to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %_pptph, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ctlh) #7
  %6 = ptrtoint ptr %_ctlh to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %_ctlh, align 2, !annotation !165
  %7 = getelementptr inbounds %struct.PptpControlHeader, ptr %_ctlh, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %7, align 2, !annotation !165
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %_pptpReq) #7
  %9 = call ptr @memset(ptr %_pptpReq, i32 255, i32 208)
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %12 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %status.i, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp ne i32 %14, 0
  %and = and i32 %13, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %or.cond262 = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond262, label %nfct_help_data.exit.if.end9_crit_edge, label %if.then

nfct_help_data.exit.if.end9_crit_edge:            ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %nfct_help_data.exit
  br i1 %tobool.not.i.i.i, label %if.then.land.lhs.true5_crit_edge, label %nf_ct_ext_exist.exit.i

if.then.land.lhs.true5_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true5

nf_ct_ext_exist.exit.i:                           ; preds = %if.then
  %arrayidx.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.i.i.not.i = icmp eq i8 %16, 0
  %conv.i = zext i8 %16 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %tobool4.not = icmp eq ptr %add.ptr.i, null
  %or.cond263 = select i1 %tobool.i.i.not.i, i1 true, i1 %tobool4.not
  br i1 %or.cond263, label %nf_ct_ext_exist.exit.i.land.lhs.true5_crit_edge, label %nf_ct_ext_exist.exit.i.if.end9_crit_edge

nf_ct_ext_exist.exit.i.if.end9_crit_edge:         ; preds = %nf_ct_ext_exist.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

nf_ct_ext_exist.exit.i.land.lhs.true5_crit_edge:  ; preds = %nf_ct_ext_exist.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true5

land.lhs.true5:                                   ; preds = %nf_ct_ext_exist.exit.i.land.lhs.true5_crit_edge, %if.then.land.lhs.true5_crit_edge
  %call6 = tail call ptr @nf_ct_ext_add(ptr noundef %ct, i32 noundef 1, i32 noundef 2592) #7
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %land.lhs.true5.cleanup110_crit_edge, label %land.lhs.true5.if.end9_crit_edge

land.lhs.true5.if.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true5.cleanup110_crit_edge:              ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

if.end9:                                          ; preds = %land.lhs.true5.if.end9_crit_edge, %nf_ct_ext_exist.exit.i.if.end9_crit_edge, %nfct_help_data.exit.if.end9_crit_edge
  %17 = zext i32 %ctinfo to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ctinfo, label %if.end9.cleanup110_crit_edge [
    i32 0, label %if.end9.if.end14_crit_edge
    i32 3, label %if.end9.if.end14_crit_edge271
  ]

if.end9.if.end14_crit_edge271:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end9.cleanup110_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

if.end14:                                         ; preds = %if.end9.if.end14_crit_edge, %if.end9.if.end14_crit_edge271
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %20 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i, align 8
  %22 = add i32 %21, %protoff
  %sub.i4.i = sub i32 %19, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i183, label %skb_header_pointer.exit, !prof !166

if.end.i.i183:                                    ; preds = %if.end14
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i183.cleanup110_crit_edge, label %lor.lhs.false.i.i

if.end.i.i183.cleanup110_crit_edge:               ; preds = %if.end.i.i183
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

lor.lhs.false.i.i:                                ; preds = %if.end.i.i183
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %protoff, ptr noundef nonnull %_tcph, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup110_crit_edge, label %lor.lhs.false.i.i.if.end18_crit_edge

lor.lhs.false.i.i.if.end18_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

lor.lhs.false.i.i.cleanup110_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

skb_header_pointer.exit:                          ; preds = %if.end14
  %data.i181 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %23 = ptrtoint ptr %data.i181 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i181, align 4
  %add.ptr.i.i182 = getelementptr i8, ptr %24, i32 %protoff
  %tobool16.not = icmp eq ptr %add.ptr.i.i182, null
  br i1 %tobool16.not, label %skb_header_pointer.exit.cleanup110_crit_edge, label %skb_header_pointer.exit.if.end18_crit_edge

skb_header_pointer.exit.if.end18_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

skb_header_pointer.exit.cleanup110_crit_edge:     ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

if.end18:                                         ; preds = %skb_header_pointer.exit.if.end18_crit_edge, %lor.lhs.false.i.i.if.end18_crit_edge
  %retval.0.i.i184237 = phi ptr [ %add.ptr.i.i182, %skb_header_pointer.exit.if.end18_crit_edge ], [ %_tcph, %lor.lhs.false.i.i.if.end18_crit_edge ]
  %doff = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i184237, i32 0, i32 4
  %25 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load = load i16, ptr %doff, align 4
  %26 = lshr i16 %bf.load, 10
  %27 = and i16 %26, 60
  %mul = zext i16 %27 to i32
  %add = add i32 %mul, %protoff
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %30 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_len.i.i, align 8
  %32 = add i32 %31, %add
  %sub.i4.i187 = sub i32 %29, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i187)
  %cmp.not.i.i188 = icmp slt i32 %sub.i4.i187, 8
  br i1 %cmp.not.i.i188, label %if.end.i.i193, label %skb_header_pointer.exit199, !prof !166

if.end.i.i193:                                    ; preds = %if.end18
  %tobool2.not.i.i192 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i192, label %if.end.i.i193.do.body_crit_edge, label %lor.lhs.false.i.i197

if.end.i.i193.do.body_crit_edge:                  ; preds = %if.end.i.i193
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false.i.i197:                             ; preds = %if.end.i.i193
  %call.i.i194 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %_pptph, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i194)
  %cmp3.i.i195 = icmp slt i32 %call.i.i194, 0
  br i1 %cmp3.i.i195, label %lor.lhs.false.i.i197.do.body_crit_edge, label %lor.lhs.false.i.i197.if.end34_crit_edge

lor.lhs.false.i.i197.if.end34_crit_edge:          ; preds = %lor.lhs.false.i.i197
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

lor.lhs.false.i.i197.do.body_crit_edge:           ; preds = %lor.lhs.false.i.i197
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

skb_header_pointer.exit199:                       ; preds = %if.end18
  %data.i189 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %33 = ptrtoint ptr %data.i189 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i189, align 4
  %add.ptr.i.i190 = getelementptr i8, ptr %34, i32 %add
  %tobool26.not = icmp eq ptr %add.ptr.i.i190, null
  br i1 %tobool26.not, label %skb_header_pointer.exit199.do.body_crit_edge, label %skb_header_pointer.exit199.if.end34_crit_edge

skb_header_pointer.exit199.if.end34_crit_edge:    ; preds = %skb_header_pointer.exit199
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

skb_header_pointer.exit199.do.body_crit_edge:     ; preds = %skb_header_pointer.exit199
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %skb_header_pointer.exit199.do.body_crit_edge, %lor.lhs.false.i.i197.do.body_crit_edge, %if.end.i.i193.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @conntrack_pptp_help.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@conntrack_pptp_help, %if.then32)) #7
          to label %cleanup110 [label %if.then32], !srcloc !167

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @conntrack_pptp_help.__UNIQUE_ID_ddebug620, ptr noundef nonnull @.str.20) #7
  br label %cleanup110

if.end34:                                         ; preds = %skb_header_pointer.exit199.if.end34_crit_edge, %lor.lhs.false.i.i197.if.end34_crit_edge
  %retval.0.i.i198244 = phi ptr [ %add.ptr.i.i190, %skb_header_pointer.exit199.if.end34_crit_edge ], [ %_pptph, %lor.lhs.false.i.i197.if.end34_crit_edge ]
  %sub24 = sub i32 %11, %add
  %add35 = add i32 %add, 8
  %packetType = getelementptr inbounds %struct.pptp_pkt_hdr, ptr %retval.0.i.i198244, i32 0, i32 1
  %35 = ptrtoint ptr %packetType to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %packetType, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %36)
  %cmp38.not = icmp eq i16 %36, 1
  br i1 %cmp38.not, label %lor.lhs.false, label %if.end34.do.body43_crit_edge

if.end34.do.body43_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43

lor.lhs.false:                                    ; preds = %if.end34
  %magicCookie = getelementptr inbounds %struct.pptp_pkt_hdr, ptr %retval.0.i.i198244, i32 0, i32 2
  %37 = ptrtoint ptr %magicCookie to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %magicCookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 439041101, i32 %38)
  %cmp40.not = icmp eq i32 %38, 439041101
  br i1 %cmp40.not, label %if.end59, label %lor.lhs.false.do.body43_crit_edge

lor.lhs.false.do.body43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43

do.body43:                                        ; preds = %lor.lhs.false.do.body43_crit_edge, %if.end34.do.body43_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @conntrack_pptp_help.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@conntrack_pptp_help, %if.then55)) #7
          to label %cleanup110 [label %if.then55], !srcloc !167

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @conntrack_pptp_help.__UNIQUE_ID_ddebug621, ptr noundef nonnull @.str.21) #7
  br label %cleanup110

if.end59:                                         ; preds = %lor.lhs.false
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  %41 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_len.i.i, align 8
  %43 = add i32 %40, -8
  %44 = add i32 %add, %42
  %sub.i4.i202 = sub i32 %43, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i202)
  %cmp.not.i.i203 = icmp slt i32 %sub.i4.i202, 4
  br i1 %cmp.not.i.i203, label %if.end.i.i208, label %skb_header_pointer.exit214, !prof !166

if.end.i.i208:                                    ; preds = %if.end59
  %tobool2.not.i.i207 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i207, label %if.end.i.i208.cleanup110_crit_edge, label %lor.lhs.false.i.i212

if.end.i.i208.cleanup110_crit_edge:               ; preds = %if.end.i.i208
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

lor.lhs.false.i.i212:                             ; preds = %if.end.i.i208
  %call.i.i209 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add35, ptr noundef nonnull %_ctlh, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i209)
  %cmp3.i.i210 = icmp slt i32 %call.i.i209, 0
  br i1 %cmp3.i.i210, label %lor.lhs.false.i.i212.cleanup110_crit_edge, label %lor.lhs.false.i.i212.if.end63_crit_edge

lor.lhs.false.i.i212.if.end63_crit_edge:          ; preds = %lor.lhs.false.i.i212
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

lor.lhs.false.i.i212.cleanup110_crit_edge:        ; preds = %lor.lhs.false.i.i212
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

skb_header_pointer.exit214:                       ; preds = %if.end59
  %data.i204 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %45 = ptrtoint ptr %data.i204 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i204, align 4
  %add.ptr.i.i205 = getelementptr i8, ptr %46, i32 %add35
  %tobool61.not = icmp eq ptr %add.ptr.i.i205, null
  br i1 %tobool61.not, label %skb_header_pointer.exit214.cleanup110_crit_edge, label %skb_header_pointer.exit214.if.end63_crit_edge

skb_header_pointer.exit214.if.end63_crit_edge:    ; preds = %skb_header_pointer.exit214
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

skb_header_pointer.exit214.cleanup110_crit_edge:  ; preds = %skb_header_pointer.exit214
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

if.end63:                                         ; preds = %skb_header_pointer.exit214.if.end63_crit_edge, %lor.lhs.false.i.i212.if.end63_crit_edge
  %retval.0.i.i213253 = phi ptr [ %add.ptr.i.i205, %skb_header_pointer.exit214.if.end63_crit_edge ], [ %_ctlh, %lor.lhs.false.i.i212.if.end63_crit_edge ]
  %add64 = add i32 %add, 12
  %sub65 = add i32 %sub24, -12
  %47 = ptrtoint ptr %retval.0.i.i213253 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %retval.0.i.i213253, align 2
  %49 = add i16 %48, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %49)
  %50 = icmp ult i16 %49, 15
  br i1 %50, label %land.lhs.true73, label %if.end63.if.end77_crit_edge

if.end63.if.end77_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

land.lhs.true73:                                  ; preds = %if.end63
  %conv66 = zext i16 %48 to i32
  %arrayidx = getelementptr [16 x i32], ptr @pptp_msg_size, i32 0, i32 %conv66
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub65, i32 %52)
  %cmp74 = icmp ult i32 %sub65, %52
  br i1 %cmp74, label %land.lhs.true73.cleanup110_crit_edge, label %land.lhs.true73.if.end77_crit_edge

land.lhs.true73.if.end77_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

land.lhs.true73.cleanup110_crit_edge:             ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

if.end77:                                         ; preds = %land.lhs.true73.if.end77_crit_edge, %if.end63.if.end77_crit_edge
  %53 = call i32 @llvm.umin.i32(i32 %sub65, i32 208)
  %54 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len, align 4
  %56 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data_len.i.i, align 8
  %58 = add i32 %55, -12
  %59 = add i32 %add, %57
  %sub.i4.i217 = sub i32 %58, %59
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i217, i32 %53)
  %cmp.not.i.i218 = icmp slt i32 %sub.i4.i217, %53
  br i1 %cmp.not.i.i218, label %if.end.i.i223, label %skb_header_pointer.exit229, !prof !166

if.end.i.i223:                                    ; preds = %if.end77
  %tobool2.not.i.i222 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i222, label %if.end.i.i223.cleanup110_crit_edge, label %lor.lhs.false.i.i227

if.end.i.i223.cleanup110_crit_edge:               ; preds = %if.end.i.i223
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

lor.lhs.false.i.i227:                             ; preds = %if.end.i.i223
  %call.i.i224 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add64, ptr noundef nonnull %_pptpReq, i32 noundef %53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i224)
  %cmp3.i.i225 = icmp slt i32 %call.i.i224, 0
  br i1 %cmp3.i.i225, label %lor.lhs.false.i.i227.cleanup110_crit_edge, label %lor.lhs.false.i.i227.if.end85_crit_edge

lor.lhs.false.i.i227.if.end85_crit_edge:          ; preds = %lor.lhs.false.i.i227
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

lor.lhs.false.i.i227.cleanup110_crit_edge:        ; preds = %lor.lhs.false.i.i227
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

skb_header_pointer.exit229:                       ; preds = %if.end77
  %data.i219 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %60 = ptrtoint ptr %data.i219 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i219, align 4
  %add.ptr.i.i220 = getelementptr i8, ptr %61, i32 %add64
  %tobool83.not = icmp eq ptr %add.ptr.i.i220, null
  br i1 %tobool83.not, label %skb_header_pointer.exit229.cleanup110_crit_edge, label %skb_header_pointer.exit229.if.end85_crit_edge

skb_header_pointer.exit229.if.end85_crit_edge:    ; preds = %skb_header_pointer.exit229
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

skb_header_pointer.exit229.cleanup110_crit_edge:  ; preds = %skb_header_pointer.exit229
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

if.end85:                                         ; preds = %skb_header_pointer.exit229.if.end85_crit_edge, %lor.lhs.false.i.i227.if.end85_crit_edge
  %retval.0.i.i228260 = phi ptr [ %add.ptr.i.i220, %skb_header_pointer.exit229.if.end85_crit_edge ], [ %_pptpReq, %lor.lhs.false.i.i227.if.end85_crit_edge ]
  %62 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data.i, align 4
  %cstate = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 4
  %64 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cstate, align 4
  call void @_raw_spin_lock_bh(ptr noundef nonnull @nf_pptp_lock) #7
  br i1 %cmp, label %if.then88, label %if.else

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %call89 = call fastcc i32 @pptp_outbound_pkt(ptr noundef %skb, i32 noundef %protoff, ptr noundef nonnull %retval.0.i.i213253, ptr noundef nonnull %retval.0.i.i228260, ptr noundef %ct, i32 noundef %ctinfo)
  br label %do.body92

if.else:                                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %call90 = call fastcc i32 @pptp_inbound_pkt(ptr noundef %skb, i32 noundef %protoff, ptr noundef nonnull %retval.0.i.i213253, ptr noundef nonnull %retval.0.i.i228260, ptr noundef %ct, i32 noundef %ctinfo)
  br label %do.body92

do.body92:                                        ; preds = %if.else, %if.then88
  %ret.0 = phi i32 [ %call89, %if.then88 ], [ %call90, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @conntrack_pptp_help.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@conntrack_pptp_help, %if.then104)) #7
          to label %do.end109 [label %if.then104], !srcloc !167

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %data.i, align 4
  %68 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cstate, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @conntrack_pptp_help.__UNIQUE_ID_ddebug622, ptr noundef nonnull @.str.22, i32 noundef %63, i32 noundef %67, i32 noundef %65, i32 noundef %69) #7
  br label %do.end109

do.end109:                                        ; preds = %if.then104, %do.body92
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @nf_pptp_lock) #7
  br label %cleanup110

cleanup110:                                       ; preds = %do.end109, %skb_header_pointer.exit229.cleanup110_crit_edge, %lor.lhs.false.i.i227.cleanup110_crit_edge, %if.end.i.i223.cleanup110_crit_edge, %land.lhs.true73.cleanup110_crit_edge, %skb_header_pointer.exit214.cleanup110_crit_edge, %lor.lhs.false.i.i212.cleanup110_crit_edge, %if.end.i.i208.cleanup110_crit_edge, %if.then55, %do.body43, %if.then32, %do.body, %skb_header_pointer.exit.cleanup110_crit_edge, %lor.lhs.false.i.i.cleanup110_crit_edge, %if.end.i.i183.cleanup110_crit_edge, %if.end9.cleanup110_crit_edge, %land.lhs.true5.cleanup110_crit_edge
  %retval.1 = phi i32 [ %ret.0, %do.end109 ], [ 0, %land.lhs.true5.cleanup110_crit_edge ], [ 1, %if.end9.cleanup110_crit_edge ], [ 1, %skb_header_pointer.exit.cleanup110_crit_edge ], [ 1, %if.then32 ], [ 1, %if.then55 ], [ 1, %skb_header_pointer.exit214.cleanup110_crit_edge ], [ 1, %land.lhs.true73.cleanup110_crit_edge ], [ 1, %skb_header_pointer.exit229.cleanup110_crit_edge ], [ 1, %do.body ], [ 1, %do.body43 ], [ 1, %if.end.i.i183.cleanup110_crit_edge ], [ 1, %lor.lhs.false.i.i.cleanup110_crit_edge ], [ 1, %if.end.i.i208.cleanup110_crit_edge ], [ 1, %lor.lhs.false.i.i212.cleanup110_crit_edge ], [ 1, %if.end.i.i223.cleanup110_crit_edge ], [ 1, %lor.lhs.false.i.i227.cleanup110_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %_pptpReq) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ctlh) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_pptph) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pptp_destroy_siblings(ptr noundef %ct) #3 align 64 {
entry:
  %t = alloca %struct.nf_conntrack_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %0 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_net.i, align 4
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %2 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help_data.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help_data.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfct_help_data.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.i.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfct_help_data.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i8 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  br label %nfct_help_data.exit

nfct_help_data.exit:                              ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, %entry.nfct_help_data.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge ], [ null, %entry.nfct_help_data.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %t) #7
  tail call void @nf_ct_gre_keymap_destroy(ptr noundef %ct) #7
  %tuple = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %t, ptr %tuple, i32 40)
  %protonum = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %t, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %protonum to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 47, ptr %protonum, align 2
  %pns_call_id = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 10
  %8 = ptrtoint ptr %pns_call_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pns_call_id, align 2
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %t, i32 0, i32 1
  %10 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %u, align 4
  %pac_call_id = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %pac_call_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pac_call_id, align 4
  %u3 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %t, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %u3 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %u3, align 4
  %call5 = call fastcc i32 @destroy_sibling_or_exp(ptr noundef %1, ptr noundef %ct, ptr noundef nonnull %t)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %do.body, label %nfct_help_data.exit.if.end11_crit_edge

nfct_help_data.exit.if.end11_crit_edge:           ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.body:                                          ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_destroy_siblings.__UNIQUE_ID_ddebug602, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_destroy_siblings, %if.then10)) #7
          to label %if.end11 [label %if.then10], !srcloc !167

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_destroy_siblings.__UNIQUE_ID_ddebug602, ptr noundef nonnull @.str.40) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.body, %nfct_help_data.exit.if.end11_crit_edge
  %tuple14 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1
  %14 = call ptr @memcpy(ptr %t, ptr %tuple14, i32 40)
  %15 = ptrtoint ptr %protonum to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 47, ptr %protonum, align 2
  %16 = ptrtoint ptr %pac_call_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pac_call_id, align 4
  %18 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %u, align 4
  %19 = ptrtoint ptr %pns_call_id to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pns_call_id, align 2
  %21 = ptrtoint ptr %u3 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %u3, align 4
  %call25 = call fastcc i32 @destroy_sibling_or_exp(ptr noundef %1, ptr noundef %ct, ptr noundef nonnull %t)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.body28, label %if.end11.if.end44_crit_edge

if.end11.if.end44_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

do.body28:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_destroy_siblings.__UNIQUE_ID_ddebug603, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_destroy_siblings, %if.then40)) #7
          to label %if.end44 [label %if.then40], !srcloc !167

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_destroy_siblings.__UNIQUE_ID_ddebug603, ptr noundef nonnull @.str.41) #7
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %do.body28, %if.end11.if.end44_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %t) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_ext_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pptp_outbound_pkt(ptr noundef %skb, i32 noundef %protoff, ptr noundef %ctlh, ptr noundef %pptpReq, ptr noundef %ct, i32 noundef %ctinfo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help_data.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help_data.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfct_help_data.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfct_help_data.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  br label %nfct_help_data.exit

nfct_help_data.exit:                              ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, %entry.nfct_help_data.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge ], [ null, %entry.nfct_help_data.exit_crit_edge ]
  %data.i = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %ctlh to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ctlh, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_outbound_pkt.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_outbound_pkt, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %5)
  %cmp.i = icmp ugt i16 %5, 15
  br i1 %cmp.i, label %if.then.pptp_msg_name.exit_crit_edge, label %if.end.i

if.then.pptp_msg_name.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %pptp_msg_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %5 to i32
  %arrayidx.i = getelementptr [16 x ptr], ptr @pptp_msg_name_array, i32 0, i32 %conv.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  br label %pptp_msg_name.exit

pptp_msg_name.exit:                               ; preds = %if.end.i, %if.then.pptp_msg_name.exit_crit_edge
  %retval.0.i11 = phi ptr [ %7, %if.end.i ], [ @.str, %if.then.pptp_msg_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_outbound_pkt.__UNIQUE_ID_ddebug614, ptr noundef nonnull @.str.25, ptr noundef %retval.0.i11) #7
  br label %do.end

do.end:                                           ; preds = %pptp_msg_name.exit, %nfct_help_data.exit
  %conv = zext i16 %5 to i32
  %8 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %5, label %do.end.do.body109_crit_edge [
    i16 1, label %sw.bb
    i16 3, label %sw.bb9
    i16 7, label %sw.bb11
    i16 10, label %sw.bb35
    i16 12, label %sw.bb78
    i16 15, label %do.end.sw.epilog_crit_edge
    i16 5, label %do.end.sw.epilog_crit_edge34
    i16 6, label %do.end.sw.epilog_crit_edge35
  ]

do.end.sw.epilog_crit_edge35:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.sw.epilog_crit_edge34:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.do.body109_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body109

sw.bb:                                            ; preds = %do.end
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %if.end7, label %sw.bb.do.body109_crit_edge

sw.bb.do.body109_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body109

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %data.i, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %data.i, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp13.not = icmp eq i32 %14, 4
  br i1 %cmp13.not, label %if.end16, label %sw.bb11.do.body109_crit_edge

sw.bb11.do.body109_crit_edge:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body109

if.end16:                                         ; preds = %sw.bb11
  %cstate = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %cstate to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %cstate, align 4
  %16 = ptrtoint ptr %pptpReq to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pptpReq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_outbound_pkt.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_outbound_pkt, %pptp_msg_name.exit17)) #7
          to label %do.end34 [label %pptp_msg_name.exit17], !srcloc !167

pptp_msg_name.exit17:                             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i14 = getelementptr [16 x ptr], ptr @pptp_msg_name_array, i32 0, i32 %conv
  %18 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i14, align 4
  %conv31 = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_outbound_pkt.__UNIQUE_ID_ddebug615, ptr noundef nonnull @.str.26, ptr noundef %19, i32 noundef %conv31) #7
  br label %do.end34

do.end34:                                         ; preds = %pptp_msg_name.exit17, %if.end16
  %pns_call_id = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 10
  %20 = ptrtoint ptr %pns_call_id to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %17, ptr %pns_call_id, align 2
  br label %sw.epilog

sw.bb35:                                          ; preds = %do.end
  %cstate36 = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 4
  %21 = ptrtoint ptr %cstate36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cstate36, align 4
  %23 = and i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %switch = icmp eq i32 %23, 4
  br i1 %switch, label %if.end43, label %sw.bb35.do.body109_crit_edge

sw.bb35.do.body109_crit_edge:                     ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body109

if.end43:                                         ; preds = %sw.bb35
  %24 = ptrtoint ptr %pptpReq to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pptpReq, align 4
  %peersCallID = getelementptr inbounds %struct.PptpInCallReply, ptr %pptpReq, i32 0, i32 1
  %26 = ptrtoint ptr %peersCallID to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %peersCallID, align 2
  %pac_call_id = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 8
  %28 = ptrtoint ptr %pac_call_id to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pac_call_id, align 4
  %conv46 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %27)
  %cmp47.not = icmp eq i16 %29, %27
  br i1 %cmp47.not, label %do.body51, label %if.end43.do.body109_crit_edge

if.end43.do.body109_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body109

do.body51:                                        ; preds = %if.end43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_outbound_pkt.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_outbound_pkt, %pptp_msg_name.exit23)) #7
          to label %do.end69 [label %pptp_msg_name.exit23], !srcloc !167

pptp_msg_name.exit23:                             ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i20 = getelementptr [16 x ptr], ptr @pptp_msg_name_array, i32 0, i32 %conv
  %30 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i20, align 4
  %conv65 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_outbound_pkt.__UNIQUE_ID_ddebug616, ptr noundef nonnull @.str.27, ptr noundef %31, i32 noundef %conv65, i32 noundef %conv46) #7
  br label %do.end69

do.end69:                                         ; preds = %pptp_msg_name.exit23, %do.body51
  %resultCode = getelementptr inbounds %struct.PptpInCallReply, ptr %pptpReq, i32 0, i32 2
  %32 = ptrtoint ptr %resultCode to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %resultCode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp71 = icmp eq i8 %33, 1
  br i1 %cmp71, label %if.then73, label %if.else

if.then73:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %cstate36 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 5, ptr %cstate36, align 4
  %pns_call_id75 = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 10
  %35 = ptrtoint ptr %pns_call_id75 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %25, ptr %pns_call_id75, align 2
  br label %sw.epilog

if.else:                                          ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %cstate36 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %cstate36, align 4
  br label %sw.epilog

sw.bb78:                                          ; preds = %do.end
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp80.not = icmp eq i32 %38, 4
  br i1 %cmp80.not, label %if.end83, label %sw.bb78.do.body109_crit_edge

sw.bb78.do.body109_crit_edge:                     ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body109

if.end83:                                         ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #9
  %cstate84 = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 4
  %39 = ptrtoint ptr %cstate84 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 7, ptr %cstate84, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end83, %if.else, %if.then73, %do.end34, %sw.bb9, %if.end7, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge34, %do.end.sw.epilog_crit_edge35
  %40 = load volatile ptr, ptr @nf_nat_pptp_hook_outbound, align 4
  %call91 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %land.lhs.true93, label %sw.epilog.do.end101_crit_edge

sw.epilog.do.end101_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end101

land.lhs.true93:                                  ; preds = %sw.epilog
  %call94 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %land.lhs.true93.do.end101_crit_edge, label %land.lhs.true96

land.lhs.true93.do.end101_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end101

land.lhs.true96:                                  ; preds = %land.lhs.true93
  %.b1 = load i1, ptr @pptp_outbound_pkt.__warned, align 1
  br i1 %.b1, label %land.lhs.true96.do.end101_crit_edge, label %if.then98

land.lhs.true96.do.end101_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end101

if.then98:                                        ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pptp_outbound_pkt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 482, ptr noundef nonnull @.str.28) #7
  br label %do.end101

do.end101:                                        ; preds = %if.then98, %land.lhs.true96.do.end101_crit_edge, %land.lhs.true93.do.end101_crit_edge, %sw.epilog.do.end101_crit_edge
  %tobool103.not = icmp eq ptr %40, null
  br i1 %tobool103.not, label %do.end101.cleanup_crit_edge, label %land.lhs.true104

do.end101.cleanup_crit_edge:                      ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true104:                                 ; preds = %do.end101
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %41 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %status, align 8
  %and = and i32 %42, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool105.not = icmp eq i32 %and, 0
  br i1 %tobool105.not, label %land.lhs.true104.cleanup_crit_edge, label %if.then106

land.lhs.true104.cleanup_crit_edge:               ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then106:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #9
  %call107 = tail call i32 %40(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %protoff, ptr noundef %ctlh, ptr noundef %pptpReq) #7
  br label %cleanup

do.body109:                                       ; preds = %sw.bb78.do.body109_crit_edge, %if.end43.do.body109_crit_edge, %sw.bb35.do.body109_crit_edge, %sw.bb11.do.body109_crit_edge, %sw.bb.do.body109_crit_edge, %do.end.do.body109_crit_edge
  %pcid.0 = phi i16 [ 0, %do.end.do.body109_crit_edge ], [ 0, %sw.bb78.do.body109_crit_edge ], [ %27, %if.end43.do.body109_crit_edge ], [ 0, %sw.bb11.do.body109_crit_edge ], [ 0, %sw.bb.do.body109_crit_edge ], [ 0, %sw.bb35.do.body109_crit_edge ]
  %cid.0 = phi i16 [ 0, %do.end.do.body109_crit_edge ], [ 0, %sw.bb78.do.body109_crit_edge ], [ %25, %if.end43.do.body109_crit_edge ], [ 0, %sw.bb11.do.body109_crit_edge ], [ 0, %sw.bb.do.body109_crit_edge ], [ 0, %sw.bb35.do.body109_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_outbound_pkt.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_outbound_pkt, %if.then121)) #7
          to label %cleanup [label %if.then121], !srcloc !167

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %5)
  %cmp.i24 = icmp ugt i16 %5, 15
  br i1 %cmp.i24, label %if.then121.pptp_msg_name.exit29_crit_edge, label %if.end.i27

if.then121.pptp_msg_name.exit29_crit_edge:        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #9
  br label %pptp_msg_name.exit29

if.end.i27:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i26 = getelementptr [16 x ptr], ptr @pptp_msg_name_array, i32 0, i32 %conv
  %43 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i26, align 4
  br label %pptp_msg_name.exit29

pptp_msg_name.exit29:                             ; preds = %if.end.i27, %if.then121.pptp_msg_name.exit29_crit_edge
  %retval.0.i28 = phi ptr [ %44, %if.end.i27 ], [ @.str, %if.then121.pptp_msg_name.exit29_crit_edge ]
  %conv124 = zext i16 %cid.0 to i32
  %conv125 = zext i16 %pcid.0 to i32
  %cstate126 = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 4
  %45 = ptrtoint ptr %cstate126 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cstate126, align 4
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data.i, align 4
  %pns_call_id128 = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 10
  %49 = ptrtoint ptr %pns_call_id128 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %pns_call_id128, align 2
  %conv129 = zext i16 %50 to i32
  %pac_call_id130 = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 8
  %51 = ptrtoint ptr %pac_call_id130 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %pac_call_id130, align 4
  %conv131 = zext i16 %52 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_outbound_pkt.__UNIQUE_ID_ddebug619, ptr noundef nonnull @.str.29, ptr noundef %retval.0.i28, i32 noundef %conv, i32 noundef %conv124, i32 noundef %conv125, i32 noundef %46, i32 noundef %48, i32 noundef %conv129, i32 noundef %conv131) #7
  br label %cleanup

cleanup:                                          ; preds = %pptp_msg_name.exit29, %do.body109, %if.then106, %land.lhs.true104.cleanup_crit_edge, %do.end101.cleanup_crit_edge
  %retval.0 = phi i32 [ %call107, %if.then106 ], [ 1, %land.lhs.true104.cleanup_crit_edge ], [ 1, %do.end101.cleanup_crit_edge ], [ 1, %pptp_msg_name.exit29 ], [ 1, %do.body109 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pptp_inbound_pkt(ptr noundef %skb, i32 noundef %protoff, ptr noundef %ctlh, ptr noundef %pptpReq, ptr noundef %ct, i32 noundef %ctinfo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help_data.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help_data.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfct_help_data.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfct_help_data.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  br label %nfct_help_data.exit

nfct_help_data.exit:                              ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, %entry.nfct_help_data.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge ], [ null, %entry.nfct_help_data.exit_crit_edge ]
  %data.i = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %ctlh to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ctlh, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_inbound_pkt.__UNIQUE_ID_ddebug606, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_inbound_pkt, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %5)
  %cmp.i = icmp ugt i16 %5, 15
  br i1 %cmp.i, label %if.then.pptp_msg_name.exit_crit_edge, label %if.end.i

if.then.pptp_msg_name.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %pptp_msg_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %5 to i32
  %arrayidx.i = getelementptr [16 x ptr], ptr @pptp_msg_name_array, i32 0, i32 %conv.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  br label %pptp_msg_name.exit

pptp_msg_name.exit:                               ; preds = %if.end.i, %if.then.pptp_msg_name.exit_crit_edge
  %retval.0.i19 = phi ptr [ %7, %if.end.i ], [ @.str, %if.then.pptp_msg_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_inbound_pkt.__UNIQUE_ID_ddebug606, ptr noundef nonnull @.str.31, ptr noundef %retval.0.i19) #7
  br label %do.end

do.end:                                           ; preds = %pptp_msg_name.exit, %nfct_help_data.exit
  %conv = zext i16 %5 to i32
  %8 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %5, label %do.end.do.body194_crit_edge [
    i16 2, label %sw.bb
    i16 4, label %sw.bb15
    i16 8, label %sw.bb30
    i16 9, label %sw.bb78
    i16 11, label %sw.bb105
    i16 13, label %sw.bb149
    i16 14, label %do.end.sw.epilog_crit_edge
    i16 15, label %do.end.sw.epilog_crit_edge56
    i16 5, label %do.end.sw.epilog_crit_edge57
    i16 6, label %do.end.sw.epilog_crit_edge58
  ]

do.end.sw.epilog_crit_edge58:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.sw.epilog_crit_edge57:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.sw.epilog_crit_edge56:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.do.body194_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body194

sw.bb:                                            ; preds = %do.end
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp = icmp ult i32 %10, 3
  br i1 %cmp, label %sw.bb.do.body194_crit_edge, label %if.end7

sw.bb.do.body194_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body194

if.end7:                                          ; preds = %sw.bb
  %resultCode = getelementptr inbounds %struct.PptpStartSessionReply, ptr %pptpReq, i32 0, i32 1
  %11 = ptrtoint ptr %resultCode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %resultCode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp9 = icmp eq i8 %12, 1
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %data.i, align 4
  br label %sw.epilog

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %data.i, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.end
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp17 = icmp ugt i32 %16, 2
  br i1 %cmp17, label %sw.bb15.do.body194_crit_edge, label %if.end20

sw.bb15.do.body194_crit_edge:                     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body194

if.end20:                                         ; preds = %sw.bb15
  %17 = ptrtoint ptr %pptpReq to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pptpReq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp23 = icmp eq i8 %18, 1
  br i1 %cmp23, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %data.i, align 4
  br label %sw.epilog

if.else27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %data.i, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %do.end
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp32.not = icmp eq i32 %22, 4
  br i1 %cmp32.not, label %if.end35, label %sw.bb30.do.body194_crit_edge

sw.bb30.do.body194_crit_edge:                     ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body194

if.end35:                                         ; preds = %sw.bb30
  %cstate = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %cstate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cstate, align 4
  %25 = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %switch = icmp eq i32 %25, 2
  br i1 %switch, label %if.end42, label %if.end35.do.body194_crit_edge

if.end35.do.body194_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body194

if.end42:                                         ; preds = %if.end35
  %26 = ptrtoint ptr %pptpReq to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pptpReq, align 4
  %peersCallID = getelementptr inbounds %struct.PptpOutCallReply, ptr %pptpReq, i32 0, i32 1
  %28 = ptrtoint ptr %peersCallID to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %peersCallID, align 2
  %pns_call_id = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 10
  %30 = ptrtoint ptr %pns_call_id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %pns_call_id, align 2
  %conv44 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %29)
  %cmp45.not = icmp eq i16 %31, %29
  br i1 %cmp45.not, label %do.body49, label %if.end42.do.body194_crit_edge

if.end42.do.body194_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body194

do.body49:                                        ; preds = %if.end42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_inbound_pkt.__UNIQUE_ID_ddebug607, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_inbound_pkt, %pptp_msg_name.exit25)) #7
          to label %do.end67 [label %pptp_msg_name.exit25], !srcloc !167

pptp_msg_name.exit25:                             ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i22 = getelementptr [16 x ptr], ptr @pptp_msg_name_array, i32 0, i32 %conv
  %32 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i22, align 4
  %conv63 = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_inbound_pkt.__UNIQUE_ID_ddebug607, ptr noundef nonnull @.str.32, ptr noundef %33, i32 noundef %conv63, i32 noundef %conv44) #7
  br label %do.end67

do.end67:                                         ; preds = %pptp_msg_name.exit25, %do.body49
  %resultCode68 = getelementptr inbounds %struct.PptpOutCallReply, ptr %pptpReq, i32 0, i32 2
  %34 = ptrtoint ptr %resultCode68 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %resultCode68, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp70 = icmp eq i8 %35, 1
  br i1 %cmp70, label %if.then72, label %if.else75

if.then72:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %cstate to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %cstate, align 4
  %pac_call_id = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 8
  %37 = ptrtoint ptr %pac_call_id to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %27, ptr %pac_call_id, align 4
  tail call fastcc void @exp_gre(ptr noundef %ct, i16 noundef zeroext %27, i16 noundef zeroext %29)
  br label %sw.epilog

if.else75:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %cstate to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %cstate, align 4
  br label %sw.epilog

sw.bb78:                                          ; preds = %do.end
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp80.not = icmp eq i32 %40, 4
  br i1 %cmp80.not, label %if.end83, label %sw.bb78.do.body194_crit_edge

sw.bb78.do.body194_crit_edge:                     ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body194

if.end83:                                         ; preds = %sw.bb78
  %41 = ptrtoint ptr %pptpReq to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %pptpReq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_inbound_pkt.__UNIQUE_ID_ddebug608, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_inbound_pkt, %pptp_msg_name.exit31)) #7
          to label %do.end102 [label %pptp_msg_name.exit31], !srcloc !167

pptp_msg_name.exit31:                             ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i28 = getelementptr [16 x ptr], ptr @pptp_msg_name_array, i32 0, i32 %conv
  %43 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i28, align 4
  %conv99 = zext i16 %42 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_inbound_pkt.__UNIQUE_ID_ddebug608, ptr noundef nonnull @.str.26, ptr noundef %44, i32 noundef %conv99) #7
  br label %do.end102

do.end102:                                        ; preds = %pptp_msg_name.exit31, %if.end83
  %cstate103 = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 4
  %45 = ptrtoint ptr %cstate103 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %cstate103, align 4
  %pac_call_id104 = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 8
  %46 = ptrtoint ptr %pac_call_id104 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %42, ptr %pac_call_id104, align 4
  br label %sw.epilog

sw.bb105:                                         ; preds = %do.end
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp107.not = icmp eq i32 %48, 4
  br i1 %cmp107.not, label %if.end110, label %sw.bb105.do.body194_crit_edge

sw.bb105.do.body194_crit_edge:                    ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body194

if.end110:                                        ; preds = %sw.bb105
  %cstate111 = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 4
  %49 = ptrtoint ptr %cstate111 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cstate111, align 4
  %.off2 = add i32 %50, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off2)
  %switch3 = icmp ult i32 %.off2, 2
  br i1 %switch3, label %if.end119, label %if.end110.do.body194_crit_edge

if.end110.do.body194_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body194

if.end119:                                        ; preds = %if.end110
  %51 = ptrtoint ptr %pptpReq to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %pptpReq, align 4
  %pac_call_id121 = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 8
  %53 = ptrtoint ptr %pac_call_id121 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %pac_call_id121, align 4
  %pns_call_id122 = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 10
  %55 = ptrtoint ptr %pns_call_id122 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %pns_call_id122, align 2
  %conv124 = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %52)
  %cmp125.not = icmp eq i16 %56, %52
  br i1 %cmp125.not, label %do.body129, label %if.end119.do.body194_crit_edge

if.end119.do.body194_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body194

do.body129:                                       ; preds = %if.end119
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_inbound_pkt.__UNIQUE_ID_ddebug609, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_inbound_pkt, %pptp_msg_name.exit37)) #7
          to label %do.end146 [label %pptp_msg_name.exit37], !srcloc !167

pptp_msg_name.exit37:                             ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i34 = getelementptr [16 x ptr], ptr @pptp_msg_name_array, i32 0, i32 %conv
  %57 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i34, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_inbound_pkt.__UNIQUE_ID_ddebug609, ptr noundef nonnull @.str.33, ptr noundef %58, i32 noundef %conv124) #7
  br label %do.end146

do.end146:                                        ; preds = %pptp_msg_name.exit37, %do.body129
  %59 = ptrtoint ptr %cstate111 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 6, ptr %cstate111, align 4
  tail call fastcc void @exp_gre(ptr noundef %ct, i16 noundef zeroext %54, i16 noundef zeroext %52)
  br label %sw.epilog

sw.bb149:                                         ; preds = %do.end
  %60 = ptrtoint ptr %pptpReq to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %pptpReq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_inbound_pkt.__UNIQUE_ID_ddebug610, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_inbound_pkt, %pptp_msg_name.exit43)) #7
          to label %do.end168 [label %pptp_msg_name.exit43], !srcloc !167

pptp_msg_name.exit43:                             ; preds = %sw.bb149
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i40 = getelementptr [16 x ptr], ptr @pptp_msg_name_array, i32 0, i32 %conv
  %62 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i40, align 4
  %conv165 = zext i16 %61 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_inbound_pkt.__UNIQUE_ID_ddebug610, ptr noundef nonnull @.str.26, ptr noundef %63, i32 noundef %conv165) #7
  br label %do.end168

do.end168:                                        ; preds = %pptp_msg_name.exit43, %sw.bb149
  %cstate169 = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 4
  %64 = ptrtoint ptr %cstate169 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %cstate169, align 4
  tail call void @pptp_destroy_siblings(ptr noundef %ct)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end168, %do.end146, %do.end102, %if.else75, %if.then72, %if.else27, %if.then25, %if.else, %if.then11, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge56, %do.end.sw.epilog_crit_edge57, %do.end.sw.epilog_crit_edge58
  %65 = load volatile ptr, ptr @nf_nat_pptp_hook_inbound, align 4
  %call176 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %land.lhs.true178, label %sw.epilog.do.end186_crit_edge

sw.epilog.do.end186_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end186

land.lhs.true178:                                 ; preds = %sw.epilog
  %call179 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %land.lhs.true178.do.end186_crit_edge, label %land.lhs.true181

land.lhs.true178.do.end186_crit_edge:             ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end186

land.lhs.true181:                                 ; preds = %land.lhs.true178
  %.b1 = load i1, ptr @pptp_inbound_pkt.__warned, align 1
  br i1 %.b1, label %land.lhs.true181.do.end186_crit_edge, label %if.then183

land.lhs.true181.do.end186_crit_edge:             ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end186

if.then183:                                       ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pptp_inbound_pkt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 386, ptr noundef nonnull @.str.28) #7
  br label %do.end186

do.end186:                                        ; preds = %if.then183, %land.lhs.true181.do.end186_crit_edge, %land.lhs.true178.do.end186_crit_edge, %sw.epilog.do.end186_crit_edge
  %tobool188.not = icmp eq ptr %65, null
  br i1 %tobool188.not, label %do.end186.cleanup_crit_edge, label %land.lhs.true189

do.end186.cleanup_crit_edge:                      ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true189:                                 ; preds = %do.end186
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %66 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %status, align 8
  %and = and i32 %67, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool190.not = icmp eq i32 %and, 0
  br i1 %tobool190.not, label %land.lhs.true189.cleanup_crit_edge, label %if.then191

land.lhs.true189.cleanup_crit_edge:               ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then191:                                       ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #9
  %call192 = tail call i32 %65(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %protoff, ptr noundef %ctlh, ptr noundef %pptpReq) #7
  br label %cleanup

do.body194:                                       ; preds = %if.end119.do.body194_crit_edge, %if.end110.do.body194_crit_edge, %sw.bb105.do.body194_crit_edge, %sw.bb78.do.body194_crit_edge, %if.end42.do.body194_crit_edge, %if.end35.do.body194_crit_edge, %sw.bb30.do.body194_crit_edge, %sw.bb15.do.body194_crit_edge, %sw.bb.do.body194_crit_edge, %do.end.do.body194_crit_edge
  %pcid.0 = phi i16 [ 0, %do.end.do.body194_crit_edge ], [ 0, %sw.bb105.do.body194_crit_edge ], [ %52, %if.end119.do.body194_crit_edge ], [ 0, %sw.bb78.do.body194_crit_edge ], [ 0, %sw.bb30.do.body194_crit_edge ], [ %29, %if.end42.do.body194_crit_edge ], [ 0, %sw.bb15.do.body194_crit_edge ], [ 0, %sw.bb.do.body194_crit_edge ], [ 0, %if.end35.do.body194_crit_edge ], [ 0, %if.end110.do.body194_crit_edge ]
  %cid.0 = phi i16 [ 0, %do.end.do.body194_crit_edge ], [ 0, %sw.bb105.do.body194_crit_edge ], [ %54, %if.end119.do.body194_crit_edge ], [ 0, %sw.bb78.do.body194_crit_edge ], [ 0, %sw.bb30.do.body194_crit_edge ], [ %27, %if.end42.do.body194_crit_edge ], [ 0, %sw.bb15.do.body194_crit_edge ], [ 0, %sw.bb.do.body194_crit_edge ], [ 0, %if.end35.do.body194_crit_edge ], [ 0, %if.end110.do.body194_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_inbound_pkt.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_inbound_pkt, %if.then206)) #7
          to label %cleanup [label %if.then206], !srcloc !167

if.then206:                                       ; preds = %do.body194
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %5)
  %cmp.i44 = icmp ugt i16 %5, 15
  br i1 %cmp.i44, label %if.then206.pptp_msg_name.exit49_crit_edge, label %if.end.i47

if.then206.pptp_msg_name.exit49_crit_edge:        ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #9
  br label %pptp_msg_name.exit49

if.end.i47:                                       ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i46 = getelementptr [16 x ptr], ptr @pptp_msg_name_array, i32 0, i32 %conv
  %68 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i46, align 4
  br label %pptp_msg_name.exit49

pptp_msg_name.exit49:                             ; preds = %if.end.i47, %if.then206.pptp_msg_name.exit49_crit_edge
  %retval.0.i48 = phi ptr [ %69, %if.end.i47 ], [ @.str, %if.then206.pptp_msg_name.exit49_crit_edge ]
  %conv209 = zext i16 %cid.0 to i32
  %conv210 = zext i16 %pcid.0 to i32
  %cstate211 = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 4
  %70 = ptrtoint ptr %cstate211 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cstate211, align 4
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %data.i, align 4
  %pns_call_id213 = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 10
  %74 = ptrtoint ptr %pns_call_id213 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %pns_call_id213, align 2
  %conv214 = zext i16 %75 to i32
  %pac_call_id215 = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 8
  %76 = ptrtoint ptr %pac_call_id215 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %pac_call_id215, align 4
  %conv216 = zext i16 %77 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_inbound_pkt.__UNIQUE_ID_ddebug613, ptr noundef nonnull @.str.29, ptr noundef %retval.0.i48, i32 noundef %conv, i32 noundef %conv209, i32 noundef %conv210, i32 noundef %71, i32 noundef %73, i32 noundef %conv214, i32 noundef %conv216) #7
  br label %cleanup

cleanup:                                          ; preds = %pptp_msg_name.exit49, %do.body194, %if.then191, %land.lhs.true189.cleanup_crit_edge, %do.end186.cleanup_crit_edge
  %retval.0 = phi i32 [ %call192, %if.then191 ], [ 1, %land.lhs.true189.cleanup_crit_edge ], [ 1, %do.end186.cleanup_crit_edge ], [ 1, %pptp_msg_name.exit49 ], [ 1, %do.body194 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exp_gre(ptr noundef %ct, i16 noundef zeroext %callid, i16 noundef zeroext %peer_callid) unnamed_addr #3 align 64 {
entry:
  %callid.addr = alloca i16, align 2
  %peer_callid.addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %callid.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %callid, ptr %callid.addr, align 2
  %1 = ptrtoint ptr %peer_callid.addr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %peer_callid, ptr %peer_callid.addr, align 2
  %call = tail call ptr @nf_ct_expect_alloc(ptr noundef %ct) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @nf_ct_expect_alloc(ptr noundef %ct) #7
  %cmp2 = icmp eq ptr %call1, null
  br i1 %cmp2, label %if.end.out_put_orig_crit_edge, label %if.end4

if.end.out_put_orig_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_orig

if.end4:                                          ; preds = %if.end
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %l3num.i, align 2
  %conv = trunc i16 %3 to i8
  %tuple = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1
  %dst = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 0, i32 1, i32 1
  call void @nf_ct_expect_init(ptr noundef nonnull %call, i32 noundef 0, i8 noundef zeroext %conv, ptr noundef %tuple, ptr noundef %dst, i8 noundef zeroext 47, ptr noundef nonnull %peer_callid.addr, ptr noundef nonnull %callid.addr) #7
  %expectfn = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %expectfn to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pptp_expectfn, ptr %expectfn, align 4
  %5 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %l3num.i, align 2
  %conv11 = trunc i16 %6 to i8
  %tuple14 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1
  %dst20 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1
  call void @nf_ct_expect_init(ptr noundef nonnull %call1, i32 noundef 0, i8 noundef zeroext %conv11, ptr noundef %tuple14, ptr noundef %dst20, i8 noundef zeroext 47, ptr noundef nonnull %callid.addr, ptr noundef nonnull %peer_callid.addr) #7
  %expectfn22 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call1, i32 0, i32 4
  %7 = ptrtoint ptr %expectfn22 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pptp_expectfn, ptr %expectfn22, align 4
  %8 = load volatile ptr, ptr @nf_nat_pptp_hook_exp_gre, align 4
  %call24 = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end4.do.end32_crit_edge

if.end4.do.end32_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

land.lhs.true:                                    ; preds = %if.end4
  %call25 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true.do.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @exp_gre.__warned, align 1
  br i1 %.b1, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @exp_gre.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 242, ptr noundef nonnull @.str.28) #7
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true.do.end32_crit_edge, %if.end4.do.end32_crit_edge
  %tobool34.not = icmp eq ptr %8, null
  br i1 %tobool34.not, label %do.end32.if.end38_crit_edge, label %land.lhs.true35

do.end32.if.end38_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.lhs.true35:                                  ; preds = %do.end32
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 8
  %and = and i32 %10, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %land.lhs.true35.if.end38_crit_edge, label %if.then37

land.lhs.true35.if.end38_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  call void %8(ptr noundef nonnull %call, ptr noundef nonnull %call1) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %land.lhs.true35.if.end38_crit_edge, %do.end32.if.end38_crit_edge
  %call.i = call i32 @nf_ct_expect_related_report(ptr noundef nonnull %call, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp40.not = icmp eq i32 %call.i, 0
  br i1 %cmp40.not, label %if.end43, label %if.end38.out_put_both_crit_edge

if.end38.out_put_both_crit_edge:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_both

if.end43:                                         ; preds = %if.end38
  %call.i3 = call i32 @nf_ct_expect_related_report(ptr noundef nonnull %call1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %cmp45.not = icmp eq i32 %call.i3, 0
  br i1 %cmp45.not, label %if.end48, label %if.end43.out_unexpect_orig_crit_edge

if.end43.out_unexpect_orig_crit_edge:             ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unexpect_orig

if.end48:                                         ; preds = %if.end43
  %tuple49 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call, i32 0, i32 2
  %call50 = call i32 @nf_ct_gre_keymap_add(ptr noundef %ct, i32 noundef 0, ptr noundef %tuple49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51.not = icmp eq i32 %call50, 0
  br i1 %cmp51.not, label %if.end54, label %if.end48.out_unexpect_both_crit_edge

if.end48.out_unexpect_both_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unexpect_both

if.end54:                                         ; preds = %if.end48
  %tuple55 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call1, i32 0, i32 2
  %call56 = call i32 @nf_ct_gre_keymap_add(ptr noundef %ct, i32 noundef 1, ptr noundef %tuple55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57.not = icmp eq i32 %call56, 0
  br i1 %cmp57.not, label %if.end54.out_put_both_crit_edge, label %if.then59

if.end54.out_put_both_crit_edge:                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_put_both

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  call void @nf_ct_gre_keymap_destroy(ptr noundef %ct) #7
  br label %out_unexpect_both

out_put_both:                                     ; preds = %out_unexpect_orig, %if.end54.out_put_both_crit_edge, %if.end38.out_put_both_crit_edge
  call void @nf_ct_expect_put(ptr noundef nonnull %call1) #7
  br label %out_put_orig

out_put_orig:                                     ; preds = %out_put_both, %if.end.out_put_orig_crit_edge
  call void @nf_ct_expect_put(ptr noundef nonnull %call) #7
  br label %out

out:                                              ; preds = %out_put_orig, %entry.out_crit_edge
  ret void

out_unexpect_both:                                ; preds = %if.then59, %if.end48.out_unexpect_both_crit_edge
  call void @nf_ct_unexpect_related(ptr noundef nonnull %call1) #7
  br label %out_unexpect_orig

out_unexpect_orig:                                ; preds = %out_unexpect_both, %if.end43.out_unexpect_orig_crit_edge
  call void @nf_ct_unexpect_related(ptr noundef nonnull %call) #7
  br label %out_put_both
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_expect_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_init(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pptp_expectfn(ptr noundef %ct, ptr noundef %exp) #3 align 64 {
entry:
  %inv_t = alloca %struct.nf_conntrack_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %0 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_net.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_expectfn.__UNIQUE_ID_ddebug593, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_expectfn, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_expectfn.__UNIQUE_ID_ddebug593, ptr noundef nonnull @.str.35) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %proto = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14
  %timeout = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 14, i32 0, i32 3
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 60000, ptr %timeout, align 4
  %3 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1800000, ptr %proto, align 8
  %4 = load volatile ptr, ptr @nf_nat_pptp_hook_expectfn, align 4
  %call10 = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %do.end.do.end19_crit_edge

do.end.do.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

land.lhs.true:                                    ; preds = %do.end
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end19_crit_edge, label %land.lhs.true14

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b90 = load i1, ptr @pptp_expectfn.__warned, align 1
  br i1 %.b90, label %land.lhs.true14.do.end19_crit_edge, label %if.then16

land.lhs.true14.do.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pptp_expectfn.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 125, ptr noundef nonnull @.str.28) #7
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %land.lhs.true14.do.end19_crit_edge, %land.lhs.true.do.end19_crit_edge, %do.end.do.end19_crit_edge
  %tobool21.not = icmp eq ptr %4, null
  br i1 %tobool21.not, label %do.end19.if.else_crit_edge, label %land.lhs.true22

do.end19.if.else_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true22:                                  ; preds = %do.end19
  %master = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 10
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  %status = getelementptr inbounds %struct.nf_conn, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 8
  %and = and i32 %8, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %land.lhs.true22.if.else_crit_edge, label %if.then24

land.lhs.true22.if.else_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %4(ptr noundef %ct, ptr noundef %exp) #7
  br label %if.end80

if.else:                                          ; preds = %land.lhs.true22.if.else_crit_edge, %do.end19.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %inv_t) #7
  %9 = call ptr @memset(ptr %inv_t, i32 255, i32 40)
  %tuple = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2
  %call25 = call zeroext i1 @nf_ct_invert_tuple(ptr noundef nonnull %inv_t, ptr noundef %tuple) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_expectfn.__UNIQUE_ID_ddebug596, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_expectfn, %if.then38)) #7
          to label %do.end41 [label %if.then38], !srcloc !167

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_expectfn.__UNIQUE_ID_ddebug596, ptr noundef nonnull @.str.36) #7
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %if.else
  %zone.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 3
  %call43 = call ptr @nf_ct_expect_find_get(ptr noundef %1, ptr noundef %zone.i, ptr noundef nonnull %inv_t) #7
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %do.body63, label %do.body46

do.body46:                                        ; preds = %do.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_expectfn.__UNIQUE_ID_ddebug597, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_expectfn, %if.then58)) #7
          to label %do.end61 [label %if.then58], !srcloc !167

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_expectfn.__UNIQUE_ID_ddebug597, ptr noundef nonnull @.str.37) #7
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %do.body46
  call void @nf_ct_unexpect_related(ptr noundef nonnull %call43) #7
  call void @nf_ct_expect_put(ptr noundef nonnull %call43) #7
  br label %if.end79

do.body63:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_expectfn.__UNIQUE_ID_ddebug598, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_expectfn, %if.then75)) #7
          to label %if.end79 [label %if.then75], !srcloc !167

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_expectfn.__UNIQUE_ID_ddebug598, ptr noundef nonnull @.str.38) #7
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %do.body63, %do.end61
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %inv_t) #7
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_gre_keymap_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_gre_keymap_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_unexpect_related(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_invert_tuple(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_expect_find_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_expect_related_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @destroy_sibling_or_exp(ptr noundef %net, ptr noundef %ct, ptr noundef %t) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @destroy_sibling_or_exp.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@destroy_sibling_or_exp, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @destroy_sibling_or_exp.__UNIQUE_ID_ddebug599, ptr noundef nonnull @.str.43) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %zone.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 3
  %call4 = tail call ptr @nf_conntrack_find_get(ptr noundef %net, ptr noundef %zone.i, ptr noundef %t) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end
  %dir.i = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %call4, i32 0, i32 1, i32 1, i32 3
  %0 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dir.i, align 1
  %conv.i = zext i8 %1 to i32
  %.neg.i = mul nsw i32 %conv.i, -48
  %idx.neg.i = add nsw i32 %.neg.i, -56
  %add.ptr.i = getelementptr i8, ptr %call4, i32 %idx.neg.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @destroy_sibling_or_exp.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@destroy_sibling_or_exp, %if.then20)) #7
          to label %do.end23 [label %if.then20], !srcloc !167

if.then20:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @destroy_sibling_or_exp.__UNIQUE_ID_ddebug600, ptr noundef nonnull @.str.44, ptr noundef %add.ptr.i) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %if.then6
  %proto = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 14
  %timeout = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 14, i32 0, i32 3
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %timeout, align 4
  %3 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %proto, align 8
  %call.i = tail call zeroext i1 @nf_ct_delete(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %do.end23.cleanup_crit_edge, label %land.lhs.true.i

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %do.end23
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i, ptr nonnull %add.ptr.i, i32 1, ptr nonnull elementtype(i32) %add.ptr.i) #7, !srcloc !169
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !170

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i, i32 noundef 3) #7
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @nf_ct_destroy(ptr noundef nonnull %add.ptr.i) #7
  br label %cleanup

if.else:                                          ; preds = %do.end
  %call26 = tail call ptr @nf_ct_expect_find_get(ptr noundef %net, ptr noundef %zone.i, ptr noundef %t) #7
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.else.cleanup_crit_edge, label %do.body29

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body29:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @destroy_sibling_or_exp.__UNIQUE_ID_ddebug601, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@destroy_sibling_or_exp, %if.then41)) #7
          to label %do.end44 [label %if.then41], !srcloc !167

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @destroy_sibling_or_exp.__UNIQUE_ID_ddebug601, ptr noundef nonnull @.str.45, ptr noundef nonnull %call26) #7
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body29
  tail call void @nf_ct_unexpect_related(ptr noundef nonnull %call26) #7
  tail call void @nf_ct_expect_put(ptr noundef nonnull %call26) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.else.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %do.end23.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end44 ], [ 0, %if.else.cleanup_crit_edge ], [ 1, %do.end23.cleanup_crit_edge ], [ 1, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 1, %if.then10.i.i.i.i ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_conntrack_find_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_delete(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_helper_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !77, !79, !80, !82, !83, !85, !87, !88, !90, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !108, !110, !111, !113, !115, !116, !118, !120, !122, !124, !126, !127, !128, !130, !132, !133, !135, !136, !138, !139, !141, !142, !143, !145, !146, !148, !149, !150, !152, !153, !155}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @__UNIQUE_ID_file587, !1, !"__UNIQUE_ID_file587", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_license588, !1, !"__UNIQUE_ID_license588", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author589, !4, !"__UNIQUE_ID_author589", i1 false, i1 false}
!4 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 41, i32 1}
!5 = !{ptr @__UNIQUE_ID_description590, !6, !"__UNIQUE_ID_description590", i1 false, i1 false}
!6 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 42, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias591, !8, !"__UNIQUE_ID_alias591", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 43, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias592, !10, !"__UNIQUE_ID_alias592", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 44, i32 1}
!11 = !{ptr @__ksymtab_nf_nat_pptp_hook_outbound, !12, !"__ksymtab_nf_nat_pptp_hook_outbound", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 53, i32 1}
!13 = !{ptr @__ksymtab_nf_nat_pptp_hook_inbound, !14, !"__ksymtab_nf_nat_pptp_hook_inbound", i1 false, i1 false}
!14 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 60, i32 1}
!15 = !{ptr @__ksymtab_nf_nat_pptp_hook_exp_gre, !16, !"__ksymtab_nf_nat_pptp_hook_exp_gre", i1 false, i1 false}
!16 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 66, i32 1}
!17 = !{ptr @__ksymtab_nf_nat_pptp_hook_expectfn, !18, !"__ksymtab_nf_nat_pptp_hook_expectfn", i1 false, i1 false}
!18 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 71, i32 1}
!19 = !{ptr @__ksymtab_pptp_msg_name, !20, !"__ksymtab_pptp_msg_name", i1 false, i1 false}
!20 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 101, i32 1}
!21 = !{ptr @__initcall__kmod_nf_conntrack_pptp__624_636_nf_conntrack_pptp_init6, !22, !"__initcall__kmod_nf_conntrack_pptp__624_636_nf_conntrack_pptp_init6", i1 false, i1 false}
!22 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 636, i32 1}
!23 = !{ptr @__exitcall_nf_conntrack_pptp_fini, !24, !"__exitcall_nf_conntrack_pptp_fini", i1 false, i1 false}
!24 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 637, i32 1}
!25 = !{ptr @nf_nat_pptp_hook_outbound, !26, !"nf_nat_pptp_hook_outbound", i1 false, i1 false}
!26 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 49, i32 3}
!27 = !{ptr @nf_nat_pptp_hook_inbound, !28, !"nf_nat_pptp_hook_inbound", i1 false, i1 false}
!28 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 56, i32 3}
!29 = !{ptr @nf_nat_pptp_hook_exp_gre, !30, !"nf_nat_pptp_hook_exp_gre", i1 false, i1 false}
!30 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 63, i32 3}
!31 = !{ptr @nf_nat_pptp_hook_expectfn, !32, !"nf_nat_pptp_hook_expectfn", i1 false, i1 false}
!32 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 69, i32 3}
!33 = !{ptr @.str, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 76, i32 11}
!35 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 77, i32 33}
!37 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 78, i32 31}
!39 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 79, i32 32}
!41 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 80, i32 30}
!43 = !{ptr @.str.5, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 81, i32 25}
!45 = !{ptr @.str.6, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 82, i32 23}
!47 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 83, i32 29}
!49 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 84, i32 27}
!51 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 85, i32 28}
!53 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 86, i32 26}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 87, i32 28}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 88, i32 30}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 89, i32 34}
!61 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 90, i32 29}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 91, i32 26}
!65 = !{ptr @pptp_msg_name_array, !66, !"pptp_msg_name_array", i1 false, i1 false}
!66 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 75, i32 26}
!67 = !{ptr @pptp, !68, !"pptp", i1 false, i1 false}
!68 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 613, i32 35}
!69 = !{ptr @pptp_exp_policy, !70, !"pptp_exp_policy", i1 false, i1 false}
!70 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 607, i32 48}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 555, i32 3}
!73 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @conntrack_pptp_help.__UNIQUE_ID_ddebug620, !72, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 564, i32 3}
!79 = !{ptr @conntrack_pptp_help.__UNIQUE_ID_ddebug621, !78, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 600, i32 2}
!82 = !{ptr @conntrack_pptp_help.__UNIQUE_ID_ddebug622, !81, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!83 = !{ptr @pptp_msg_size, !84, !"pptp_msg_size", i1 false, i1 false}
!84 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 497, i32 27}
!85 = !{ptr @.str.23, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 46, i32 8}
!87 = !{ptr @nf_pptp_lock, !86, !"nf_pptp_lock", i1 false, i1 false}
!88 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 415, i32 2}
!90 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @pptp_outbound_pkt.__UNIQUE_ID_ddebug614, !89, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 437, i32 3}
!94 = !{ptr @pptp_outbound_pkt.__UNIQUE_ID_ddebug615, !93, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!95 = !{ptr @.str.27, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 451, i32 3}
!97 = !{ptr @pptp_outbound_pkt.__UNIQUE_ID_ddebug616, !96, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 482, i32 25}
!100 = !{ptr @.str.28, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.29, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 489, i32 2}
!103 = !{ptr @pptp_outbound_pkt.__UNIQUE_ID_ddebug619, !102, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!104 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 287, i32 2}
!106 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @pptp_inbound_pkt.__UNIQUE_ID_ddebug606, !105, !"__UNIQUE_ID_ddebug606", i1 false, i1 false}
!108 = !{ptr @.str.32, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 322, i32 3}
!110 = !{ptr @pptp_inbound_pkt.__UNIQUE_ID_ddebug607, !109, !"__UNIQUE_ID_ddebug607", i1 false, i1 false}
!111 = !{ptr @pptp_inbound_pkt.__UNIQUE_ID_ddebug608, !112, !"__UNIQUE_ID_ddebug608", i1 false, i1 false}
!112 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 339, i32 3}
!113 = !{ptr @.str.33, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 358, i32 3}
!115 = !{ptr @pptp_inbound_pkt.__UNIQUE_ID_ddebug609, !114, !"__UNIQUE_ID_ddebug609", i1 false, i1 false}
!116 = !{ptr @pptp_inbound_pkt.__UNIQUE_ID_ddebug610, !117, !"__UNIQUE_ID_ddebug610", i1 false, i1 false}
!117 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 368, i32 3}
!118 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!119 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 386, i32 24}
!120 = !{ptr @pptp_inbound_pkt.__UNIQUE_ID_ddebug613, !121, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!121 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 393, i32 2}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 242, i32 24}
!124 = !{ptr @.str.34, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 116, i32 2}
!126 = !{ptr @.str.35, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @pptp_expectfn.__UNIQUE_ID_ddebug593, !125, !"__UNIQUE_ID_ddebug593", i1 false, i1 false}
!128 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!129 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 125, i32 25}
!130 = !{ptr @.str.36, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 134, i32 3}
!132 = !{ptr @pptp_expectfn.__UNIQUE_ID_ddebug596, !131, !"__UNIQUE_ID_ddebug596", i1 false, i1 false}
!133 = !{ptr @.str.37, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 140, i32 4}
!135 = !{ptr @pptp_expectfn.__UNIQUE_ID_ddebug597, !134, !"__UNIQUE_ID_ddebug597", i1 false, i1 false}
!136 = !{ptr @.str.38, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 144, i32 4}
!138 = !{ptr @pptp_expectfn.__UNIQUE_ID_ddebug598, !137, !"__UNIQUE_ID_ddebug598", i1 false, i1 false}
!139 = !{ptr @.str.39, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 197, i32 3}
!141 = !{ptr @.str.40, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @pptp_destroy_siblings.__UNIQUE_ID_ddebug602, !140, !"__UNIQUE_ID_ddebug602", i1 false, i1 false}
!143 = !{ptr @.str.41, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 205, i32 3}
!145 = !{ptr @pptp_destroy_siblings.__UNIQUE_ID_ddebug603, !144, !"__UNIQUE_ID_ddebug603", i1 false, i1 false}
!146 = !{ptr @.str.42, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 157, i32 2}
!148 = !{ptr @.str.43, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @destroy_sibling_or_exp.__UNIQUE_ID_ddebug599, !147, !"__UNIQUE_ID_ddebug599", i1 false, i1 false}
!150 = !{ptr @.str.44, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 164, i32 3}
!152 = !{ptr @destroy_sibling_or_exp.__UNIQUE_ID_ddebug600, !151, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!153 = !{ptr @.str.45, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/netfilter/nf_conntrack_pptp.c", i32 173, i32 4}
!155 = !{ptr @destroy_sibling_or_exp.__UNIQUE_ID_ddebug601, !154, !"__UNIQUE_ID_ddebug601", i1 false, i1 false}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{!"auto-init"}
!166 = !{!"branch_weights", i32 1, i32 2000}
!167 = !{i64 2148970853, i64 2148970858, i64 2148970871, i64 2148970915, i64 2148970949, i64 2148970970}
!168 = !{i64 2148447031}
!169 = !{i64 2148361471, i64 2148361503, i64 2148361532, i64 2148361566, i64 2148361597, i64 2148361620}
!170 = !{!"branch_weights", i32 2000, i32 1}
!171 = !{i64 2149323145}
