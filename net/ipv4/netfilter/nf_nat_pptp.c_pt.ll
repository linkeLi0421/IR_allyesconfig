; ModuleID = '/llk/IR_all_yes/net/ipv4/netfilter/nf_nat_pptp.c_pt.bc'
source_filename = "../net/ipv4/netfilter/nf_nat_pptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.134, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.9 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.9 = type { %union.nf_inet_addr, %union.anon.10, i8, i8 }
%union.anon.10 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.134 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.nf_conn_help = type { ptr, %struct.hlist_head, [4 x i8], [4 x i8], [32 x i8] }
%struct.hlist_head = type { ptr }
%struct.nf_conntrack_expect = type { %struct.hlist_node, %struct.hlist_node, %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple_mask, ptr, ptr, ptr, %struct.timer_list, %struct.refcount_struct, i32, i32, %union.nf_inet_addr, %union.nf_conntrack_man_proto, i32, %struct.callback_head }
%struct.nf_conntrack_tuple_mask = type { %struct.anon.135 }
%struct.anon.135 = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.callback_head = type { ptr, ptr }
%struct.nf_nat_pptp = type { i16, i16 }
%struct.nf_nat_range2 = type { i32, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }

@__UNIQUE_ID_file581 = internal constant [48 x i8] c"nf_nat_pptp.file=net/ipv4/netfilter/nf_nat_pptp\00", section ".modinfo", align 1
@__UNIQUE_ID_license582 = internal constant [24 x i8] c"nf_nat_pptp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author583 = internal constant [55 x i8] c"nf_nat_pptp.author=Harald Welte <laforge@gnumonks.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description584 = internal constant [61 x i8] c"nf_nat_pptp.description=Netfilter NAT helper module for PPTP\00", section ".modinfo", align 1
@__UNIQUE_ID_alias585 = internal constant [30 x i8] c"nf_nat_pptp.alias=ip_nat_pptp\00", section ".modinfo", align 1
@nf_nat_pptp_hook_expectfn = external dso_local global ptr, align 4
@nf_nat_pptp_hook_exp_gre = external dso_local global ptr, align 4
@nf_nat_pptp_hook_inbound = external dso_local global ptr, align 4
@nf_nat_pptp_hook_outbound = external dso_local global ptr, align 4
@__initcall__kmod_nf_nat_pptp__603_323_nf_nat_helper_pptp_init6 = internal global ptr @nf_nat_helper_pptp_init, section ".initcall6.init", align 4
@__exitcall_nf_nat_helper_pptp_fini = internal global ptr @nf_nat_helper_pptp_fini, section ".exitcall.exit", align 4
@pptp_outbound_pkt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net/ipv4/netfilter/nf_nat_pptp.c\00", [63 x i8] zeroinitializer }, align 32
@pptp_outbound_pkt.__UNIQUE_ID_ddebug591 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nf_nat_pptp\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pptp_outbound_pkt\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unknown outbound packet 0x%04x:%s\0A\00", [61 x i8] zeroinitializer }, align 32
@pptp_outbound_pkt.__UNIQUE_ID_ddebug592 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.4, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"altering call id from 0x%04x to 0x%04x\0A\00", [56 x i8] zeroinitializer }, align 32
@pptp_inbound_pkt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pptp_inbound_pkt.__UNIQUE_ID_ddebug593 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str, ptr @.str.6, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pptp_inbound_pkt\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unknown inbound packet %s\0A\00", [37 x i8] zeroinitializer }, align 32
@pptp_inbound_pkt.__UNIQUE_ID_ddebug594 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str, ptr @.str.7, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"altering peer call id from 0x%04x to 0x%04x\0A\00", [51 x i8] zeroinitializer }, align 32
@pptp_exp_gre.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pptp_nat_expected.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pptp_nat_expected.__UNIQUE_ID_ddebug586 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str, ptr @.str.9, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pptp_nat_expected\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"we are PNS->PAC\0A\00", [47 x i8] zeroinitializer }, align 32
@pptp_nat_expected.__UNIQUE_ID_ddebug587 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str, ptr @.str.10, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"we are PAC->PNS\0A\00", [47 x i8] zeroinitializer }, align 32
@pptp_nat_expected.__UNIQUE_ID_ddebug588 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str, ptr @.str.11, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"trying to unexpect other dir: \00", [33 x i8] zeroinitializer }, align 32
@pptp_nat_expected.__UNIQUE_ID_ddebug589 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str, ptr @.str.12, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"success\0A\00", [23 x i8] zeroinitializer }, align 32
@pptp_nat_expected.__UNIQUE_ID_ddebug590 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str, ptr @.str.13, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"not found!\0A\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 10, i64 12, i64 15]
@__sancov_gen_cov_switch_values.14 = internal global [14 x i64] [i64 12, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9, i64 11, i64 13, i64 14, i64 15]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 135, i32 6 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 168, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 185, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 270, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 286, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 64, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 73, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 83, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 89, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [36 x i8] c"../net/ipv4/netfilter/nf_nat_pptp.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 91, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alias585, ptr @__UNIQUE_ID_author583, ptr @__UNIQUE_ID_description584, ptr @__UNIQUE_ID_file581, ptr @__UNIQUE_ID_license582, ptr @__exitcall_nf_nat_helper_pptp_fini, ptr @__initcall__kmod_nf_nat_pptp__603_323_nf_nat_helper_pptp_init6, ptr @nf_nat_helper_pptp_fini, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_nat_helper_pptp_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_pptp_hook_expectfn to i32))
  store volatile ptr null, ptr @nf_nat_pptp_hook_expectfn, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_pptp_hook_exp_gre to i32))
  store volatile ptr null, ptr @nf_nat_pptp_hook_exp_gre, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_pptp_hook_inbound to i32))
  store volatile ptr null, ptr @nf_nat_pptp_hook_inbound, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_pptp_hook_outbound to i32))
  store volatile ptr null, ptr @nf_nat_pptp_hook_outbound, align 4
  tail call void @synchronize_rcu() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_nat_helper_pptp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_nat_pptp_hook_outbound to i32))
  %0 = load ptr, ptr @nf_nat_pptp_hook_outbound, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %do.body10, label %do.body2, !prof !62

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_nat_pptp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 300, 0\0A.popsection", ""() #4, !srcloc !63
  unreachable

do.body10:                                        ; preds = %entry
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_pptp_hook_outbound to i32))
  store volatile ptr @pptp_outbound_pkt, ptr @nf_nat_pptp_hook_outbound, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_nat_pptp_hook_inbound to i32))
  %1 = load ptr, ptr @nf_nat_pptp_hook_inbound, align 4
  %cmp15.not = icmp eq ptr %1, null
  br i1 %cmp15.not, label %do.body33, label %do.body23, !prof !62

do.body23:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_nat_pptp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 303, 0\0A.popsection", ""() #4, !srcloc !64
  unreachable

do.body33:                                        ; preds = %do.body10
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_pptp_hook_inbound to i32))
  store volatile ptr @pptp_inbound_pkt, ptr @nf_nat_pptp_hook_inbound, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_nat_pptp_hook_exp_gre to i32))
  %2 = load ptr, ptr @nf_nat_pptp_hook_exp_gre, align 4
  %cmp38.not = icmp eq ptr %2, null
  br i1 %cmp38.not, label %do.body56, label %do.body46, !prof !62

do.body46:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_nat_pptp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 306, 0\0A.popsection", ""() #4, !srcloc !65
  unreachable

do.body56:                                        ; preds = %do.body33
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_pptp_hook_exp_gre to i32))
  store volatile ptr @pptp_exp_gre, ptr @nf_nat_pptp_hook_exp_gre, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_nat_pptp_hook_expectfn to i32))
  %3 = load ptr, ptr @nf_nat_pptp_hook_expectfn, align 4
  %cmp61.not = icmp eq ptr %3, null
  br i1 %cmp61.not, label %do.body79, label %do.body69, !prof !62

do.body69:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_nat_pptp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 309, 0\0A.popsection", ""() #4, !srcloc !66
  unreachable

do.body79:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_nat_pptp_hook_expectfn to i32))
  store volatile ptr @pptp_nat_expected, ptr @nf_nat_pptp_hook_expectfn, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pptp_outbound_pkt(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %protoff, ptr nocapture noundef readonly %ctlh, ptr nocapture noundef readonly %pptpReq) #2 align 64 {
entry:
  %new_callid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_nat.exit.thread_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_nat.exit.thread_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfct_nat.exit.thread

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_nat.exit.thread_crit_edge, label %nfct_nat.exit

nf_ct_ext_exist.exit.i.i.nfct_nat.exit.thread_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfct_nat.exit.thread

nfct_nat.exit.thread:                             ; preds = %nf_ct_ext_exist.exit.i.i.nfct_nat.exit.thread_crit_edge, %entry.nfct_nat.exit.thread_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %new_callid) #4
  br label %land.rhs

nfct_nat.exit:                                    ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %new_callid) #4
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %nfct_nat.exit.land.rhs_crit_edge, label %nf_ct_ext_exist.exit.i.i109

nfct_nat.exit.land.rhs_crit_edge:                 ; preds = %nfct_nat.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

land.rhs:                                         ; preds = %nfct_nat.exit.land.rhs_crit_edge, %nfct_nat.exit.thread
  %.b101 = load i1, ptr @pptp_outbound_pkt.__already_done, align 1
  br i1 %.b101, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !62

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @pptp_outbound_pkt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

nf_ct_ext_exist.exit.i.i109:                      ; preds = %nfct_nat.exit
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.i.not.i.i108 = icmp eq i8 %5, 0
  %conv.i.i110 = zext i8 %5 to i32
  %add.ptr.i.i111 = getelementptr i8, ptr %1, i32 %conv.i.i110
  %retval.0.i.i113 = select i1 %tobool.i.i.not.i.i108, ptr null, ptr %add.ptr.i.i111
  %pns_call_id = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i113, i32 0, i32 4, i32 10
  %6 = ptrtoint ptr %pns_call_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pns_call_id, align 2
  %8 = ptrtoint ptr %new_callid to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %new_callid, align 2
  %9 = ptrtoint ptr %ctlh to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ctlh, align 2
  %conv = zext i16 %10 to i32
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %10, label %do.body46 [
    i16 7, label %sw.bb
    i16 10, label %nf_ct_ext_exist.exit.i.i109.do.body64_crit_edge
    i16 12, label %nf_ct_ext_exist.exit.i.i109.do.body64_crit_edge118
    i16 15, label %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge
    i16 1, label %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge119
    i16 2, label %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge120
    i16 3, label %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge121
    i16 4, label %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge122
    i16 5, label %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge123
    i16 6, label %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge124
  ]

nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge124: ; preds = %nf_ct_ext_exist.exit.i.i109
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge123: ; preds = %nf_ct_ext_exist.exit.i.i109
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge122: ; preds = %nf_ct_ext_exist.exit.i.i109
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge121: ; preds = %nf_ct_ext_exist.exit.i.i109
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge120: ; preds = %nf_ct_ext_exist.exit.i.i109
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge119: ; preds = %nf_ct_ext_exist.exit.i.i109
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge:    ; preds = %nf_ct_ext_exist.exit.i.i109
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nf_ct_ext_exist.exit.i.i109.do.body64_crit_edge118: ; preds = %nf_ct_ext_exist.exit.i.i109
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body64

nf_ct_ext_exist.exit.i.i109.do.body64_crit_edge:  ; preds = %nf_ct_ext_exist.exit.i.i109
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body64

sw.bb:                                            ; preds = %nf_ct_ext_exist.exit.i.i109
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %7, ptr %add.ptr.i.i, align 2
  %u = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %u, align 4
  %15 = ptrtoint ptr %new_callid to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %new_callid, align 2
  %16 = ptrtoint ptr %pns_call_id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %14, ptr %pns_call_id, align 2
  br label %do.body64

do.body46:                                        ; preds = %nf_ct_ext_exist.exit.i.i109
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_outbound_pkt.__UNIQUE_ID_ddebug591, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_outbound_pkt, %if.then57)) #4
          to label %cleanup [label %if.then57], !srcloc !67

if.then57:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #6
  %call59 = tail call ptr @pptp_msg_name(i16 noundef zeroext %10) #4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_outbound_pkt.__UNIQUE_ID_ddebug591, ptr noundef nonnull @.str.3, i32 noundef %conv, ptr noundef %call59) #4
  br label %cleanup

do.body64:                                        ; preds = %sw.bb, %nf_ct_ext_exist.exit.i.i109.do.body64_crit_edge, %nf_ct_ext_exist.exit.i.i109.do.body64_crit_edge118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_outbound_pkt.__UNIQUE_ID_ddebug592, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_outbound_pkt, %if.then76)) #4
          to label %do.end81 [label %if.then76], !srcloc !67

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %pptpReq to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pptpReq, align 2
  %conv77 = zext i16 %18 to i32
  %19 = ptrtoint ptr %new_callid to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %new_callid, align 2
  %conv78 = zext i16 %20 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_outbound_pkt.__UNIQUE_ID_ddebug592, ptr noundef nonnull @.str.4, i32 noundef %conv77, i32 noundef %conv78) #4
  br label %do.end81

do.end81:                                         ; preds = %if.then76, %do.body64
  %call.i = call zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %protoff, i32 noundef 12, i32 noundef 2, ptr noundef nonnull %new_callid, i32 noundef 2, i1 noundef zeroext true) #4
  %. = zext i1 %call.i to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end81, %if.then57, %do.body46, %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge119, %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge120, %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge121, %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge122, %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge123, %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge124, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then57 ], [ 1, %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge ], [ 1, %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge119 ], [ 1, %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge120 ], [ 1, %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge121 ], [ 1, %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge122 ], [ 1, %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge123 ], [ 1, %nf_ct_ext_exist.exit.i.i109.cleanup_crit_edge124 ], [ %., %do.end81 ], [ 0, %land.rhs.cleanup_crit_edge ], [ 1, %do.body46 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %new_callid) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pptp_inbound_pkt(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %protoff, ptr nocapture noundef readonly %ctlh, ptr nocapture noundef readonly %pptpReq) #2 align 64 {
entry:
  %new_pcid = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_nat.exit.thread_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_nat.exit.thread_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfct_nat.exit.thread

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_nat.exit.thread_crit_edge, label %nfct_nat.exit

nf_ct_ext_exist.exit.i.i.nfct_nat.exit.thread_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfct_nat.exit.thread

nfct_nat.exit.thread:                             ; preds = %nf_ct_ext_exist.exit.i.i.nfct_nat.exit.thread_crit_edge, %entry.nfct_nat.exit.thread_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %new_pcid) #4
  br label %land.rhs

nfct_nat.exit:                                    ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %new_pcid) #4
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %nfct_nat.exit.land.rhs_crit_edge, label %if.end39

nfct_nat.exit.land.rhs_crit_edge:                 ; preds = %nfct_nat.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

land.rhs:                                         ; preds = %nfct_nat.exit.land.rhs_crit_edge, %nfct_nat.exit.thread
  %.b93 = load i1, ptr @pptp_inbound_pkt.__already_done, align 1
  br i1 %.b93, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !62

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @pptp_inbound_pkt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end39:                                         ; preds = %nfct_nat.exit
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  %6 = ptrtoint ptr %new_pcid to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %new_pcid, align 2
  %7 = ptrtoint ptr %ctlh to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ctlh, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %8, label %do.body45 [
    i16 8, label %if.end39.do.body62_crit_edge
    i16 11, label %sw.bb40
    i16 9, label %if.end39.cleanup_crit_edge
    i16 14, label %sw.bb42
    i16 13, label %sw.bb43
    i16 15, label %sw.bb44
    i16 1, label %if.end39.cleanup_crit_edge102
    i16 2, label %if.end39.cleanup_crit_edge103
    i16 3, label %if.end39.cleanup_crit_edge104
    i16 4, label %if.end39.cleanup_crit_edge105
    i16 5, label %if.end39.cleanup_crit_edge106
    i16 6, label %if.end39.cleanup_crit_edge107
  ]

if.end39.cleanup_crit_edge107:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39.cleanup_crit_edge106:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39.cleanup_crit_edge105:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39.cleanup_crit_edge104:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39.cleanup_crit_edge103:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39.cleanup_crit_edge102:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end39.do.body62_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

sw.bb40:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

sw.bb42:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

sw.bb43:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

sw.bb44:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

do.body45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_inbound_pkt.__UNIQUE_ID_ddebug593, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_inbound_pkt, %if.then56)) #4
          to label %cleanup [label %if.then56], !srcloc !67

if.then56:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #6
  %call57 = tail call ptr @pptp_msg_name(i16 noundef zeroext %8) #4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_inbound_pkt.__UNIQUE_ID_ddebug593, ptr noundef nonnull @.str.6, ptr noundef %call57) #4
  br label %cleanup

do.body62:                                        ; preds = %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb40, %if.end39.do.body62_crit_edge
  %pcid_off.0 = phi i32 [ 0, %sw.bb44 ], [ 0, %sw.bb43 ], [ 0, %sw.bb42 ], [ 0, %sw.bb40 ], [ 2, %if.end39.do.body62_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_inbound_pkt.__UNIQUE_ID_ddebug594, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_inbound_pkt, %if.then74)) #4
          to label %do.end79 [label %if.then74], !srcloc !67

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %pptpReq, i32 %pcid_off.0
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr, align 2
  %conv75 = zext i16 %11 to i32
  %12 = ptrtoint ptr %new_pcid to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %new_pcid, align 2
  %conv76 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_inbound_pkt.__UNIQUE_ID_ddebug594, ptr noundef nonnull @.str.7, i32 noundef %conv75, i32 noundef %conv76) #4
  br label %do.end79

do.end79:                                         ; preds = %if.then74, %do.body62
  %add80 = or i32 %pcid_off.0, 12
  %call.i = call zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %protoff, i32 noundef %add80, i32 noundef 2, ptr noundef nonnull %new_pcid, i32 noundef 2, i1 noundef zeroext true) #4
  %. = zext i1 %call.i to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %if.then56, %do.body45, %if.end39.cleanup_crit_edge, %if.end39.cleanup_crit_edge102, %if.end39.cleanup_crit_edge103, %if.end39.cleanup_crit_edge104, %if.end39.cleanup_crit_edge105, %if.end39.cleanup_crit_edge106, %if.end39.cleanup_crit_edge107, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end39.cleanup_crit_edge ], [ 1, %if.then56 ], [ 1, %if.end39.cleanup_crit_edge102 ], [ 1, %if.end39.cleanup_crit_edge103 ], [ 1, %if.end39.cleanup_crit_edge104 ], [ 1, %if.end39.cleanup_crit_edge105 ], [ 1, %if.end39.cleanup_crit_edge106 ], [ 1, %if.end39.cleanup_crit_edge107 ], [ %., %do.end79 ], [ 0, %land.rhs.cleanup_crit_edge ], [ 1, %do.body45 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %new_pcid) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pptp_exp_gre(ptr nocapture noundef %expect_orig, ptr nocapture noundef writeonly %expect_reply) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.nf_conntrack_expect, ptr %expect_orig, i32 0, i32 6
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %entry.land.rhs_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.i.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.land.rhs_crit_edge, label %nfct_nat.exit

nf_ct_ext_exist.exit.i.i.land.rhs_crit_edge:      ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

nfct_nat.exit:                                    ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %nfct_nat.exit.land.rhs_crit_edge, label %nf_ct_ext_exist.exit.i.i87

nfct_nat.exit.land.rhs_crit_edge:                 ; preds = %nfct_nat.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

land.rhs:                                         ; preds = %nfct_nat.exit.land.rhs_crit_edge, %nf_ct_ext_exist.exit.i.i.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b82 = load i1, ptr @pptp_exp_gre.__already_done, align 1
  br i1 %.b82, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !62

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @pptp_exp_gre.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 207, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

nf_ct_ext_exist.exit.i.i87:                       ; preds = %nfct_nat.exit
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.i.not.i.i86 = icmp eq i8 %7, 0
  %conv.i.i88 = zext i8 %7 to i32
  %add.ptr.i.i89 = getelementptr i8, ptr %3, i32 %conv.i.i88
  %retval.0.i.i91 = select i1 %tobool.i.i.not.i.i86, ptr null, ptr %add.ptr.i.i89
  %pac_call_id = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i91, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %pac_call_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pac_call_id, align 4
  %pac_call_id41 = getelementptr inbounds %struct.nf_nat_pptp, ptr %add.ptr.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %pac_call_id41 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %pac_call_id41, align 2
  %pns_call_id = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i91, i32 0, i32 4, i32 10
  %11 = ptrtoint ptr %pns_call_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pns_call_id, align 2
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %expect_orig, i32 0, i32 12
  %13 = ptrtoint ptr %saved_proto to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %saved_proto, align 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i, align 2
  %u = getelementptr inbounds %struct.nf_conntrack_expect, ptr %expect_orig, i32 0, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %u, align 4
  %17 = load i16, ptr %pac_call_id, align 4
  %u46 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %expect_orig, i32 0, i32 2, i32 1, i32 1
  %18 = ptrtoint ptr %u46 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %u46, align 4
  %dir = getelementptr inbounds %struct.nf_conntrack_expect, ptr %expect_orig, i32 0, i32 13
  %19 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dir, align 4
  %20 = load i16, ptr %add.ptr.i.i, align 2
  %saved_proto49 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %expect_reply, i32 0, i32 12
  %21 = ptrtoint ptr %saved_proto49 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %saved_proto49, align 4
  %22 = load i16, ptr %pac_call_id41, align 2
  %u54 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %expect_reply, i32 0, i32 2, i32 0, i32 1
  %23 = ptrtoint ptr %u54 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %u54, align 4
  %24 = load i16, ptr %pns_call_id, align 2
  %u59 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %expect_reply, i32 0, i32 2, i32 1, i32 1
  %25 = ptrtoint ptr %u59 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %u59, align 4
  %dir61 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %expect_reply, i32 0, i32 13
  %26 = ptrtoint ptr %dir61 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %dir61, align 4
  br label %cleanup

cleanup:                                          ; preds = %nf_ct_ext_exist.exit.i.i87, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pptp_nat_expected(ptr noundef %ct, ptr nocapture noundef readonly %exp) #2 align 64 {
entry:
  %t = alloca %struct.nf_conntrack_tuple, align 4
  %range = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %0 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_net.i, align 4
  %master1 = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 10
  %2 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %t) #4
  %4 = call ptr @memset(ptr %t, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range) #4
  %5 = call ptr @memset(ptr %range, i32 255, i32 44)
  %call2 = tail call ptr @nf_ct_nat_ext_add(ptr noundef %ct) #4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %land.rhs, label %if.end41

land.rhs:                                         ; preds = %entry
  %.b279 = load i1, ptr @pptp_nat_expected.__already_done, align 1
  br i1 %.b279, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !62

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @pptp_nat_expected.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end41:                                         ; preds = %entry
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.end41.nfct_help_data.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.end41.nfct_help_data.exit_crit_edge:           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfct_help_data.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.end41
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.i.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfct_help_data.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i.i = zext i8 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  br label %nfct_help_data.exit

nfct_help_data.exit:                              ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, %if.end41.nfct_help_data.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge ], [ null, %if.end41.nfct_help_data.exit_crit_edge ]
  %dir = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 13
  %10 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %do.body44, label %do.body81

do.body44:                                        ; preds = %nfct_help_data.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_nat_expected.__UNIQUE_ID_ddebug586, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_nat_expected, %if.then55)) #4
          to label %do.end58 [label %if.then55], !srcloc !67

if.then55:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_nat_expected.__UNIQUE_ID_ddebug586, ptr noundef nonnull @.str.9) #4
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %do.body44
  %l3num = getelementptr inbounds %struct.nf_conntrack_man, ptr %t, i32 0, i32 2
  %12 = ptrtoint ptr %l3num to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %l3num, align 2
  %13 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool60.not = icmp eq i32 %14, 0
  %lnot.ext62 = zext i1 %tobool60.not to i32
  %tuple = getelementptr %struct.nf_conn, ptr %3, i32 0, i32 4, i32 %lnot.ext62, i32 1
  %15 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tuple, align 8
  %17 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %t, align 4
  %pac_call_id = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %pac_call_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %pac_call_id, align 4
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %t, i32 0, i32 1
  %20 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %u, align 4
  %dst = getelementptr %struct.nf_conn, ptr %3, i32 0, i32 4, i32 %lnot.ext62, i32 1, i32 1
  %21 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dst, align 4
  %dst75 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %t, i32 0, i32 1
  %23 = ptrtoint ptr %dst75 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dst75, align 4
  %pns_call_id = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4, i32 10
  br label %do.body132

do.body81:                                        ; preds = %nfct_help_data.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_nat_expected.__UNIQUE_ID_ddebug587, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_nat_expected, %if.then93)) #4
          to label %do.end96 [label %if.then93], !srcloc !67

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_nat_expected.__UNIQUE_ID_ddebug587, ptr noundef nonnull @.str.10) #4
  br label %do.end96

do.end96:                                         ; preds = %if.then93, %do.body81
  %l3num98 = getelementptr inbounds %struct.nf_conntrack_man, ptr %t, i32 0, i32 2
  %24 = ptrtoint ptr %l3num98 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2, ptr %l3num98, align 2
  %25 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool101.not = icmp eq i32 %26, 0
  %lnot.ext103 = zext i1 %tobool101.not to i32
  %tuple105 = getelementptr %struct.nf_conn, ptr %3, i32 0, i32 4, i32 %lnot.ext103, i32 1
  %27 = ptrtoint ptr %tuple105 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tuple105, align 8
  %29 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %t, align 4
  %30 = ptrtoint ptr %call2 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %call2, align 2
  %u112 = getelementptr inbounds %struct.nf_conntrack_man, ptr %t, i32 0, i32 1
  %32 = ptrtoint ptr %u112 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %u112, align 4
  %dst121 = getelementptr %struct.nf_conn, ptr %3, i32 0, i32 4, i32 %lnot.ext103, i32 1, i32 1
  %33 = ptrtoint ptr %dst121 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dst121, align 4
  %dst123 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %t, i32 0, i32 1
  %35 = ptrtoint ptr %dst123 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %dst123, align 4
  %pac_call_id125 = getelementptr inbounds %struct.nf_nat_pptp, ptr %call2, i32 0, i32 1
  br label %do.body132

do.body132:                                       ; preds = %do.end96, %do.end58
  %pns_call_id.sink = phi ptr [ %pns_call_id, %do.end58 ], [ %pac_call_id125, %do.end96 ]
  %36 = ptrtoint ptr %pns_call_id.sink to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %pns_call_id.sink, align 2
  %u78 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %t, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %u78 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %u78, align 4
  %protonum = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %t, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %protonum to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 47, ptr %protonum, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_nat_expected.__UNIQUE_ID_ddebug588, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_nat_expected, %if.then144)) #4
          to label %do.end147 [label %if.then144], !srcloc !67

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_nat_expected.__UNIQUE_ID_ddebug588, ptr noundef nonnull @.str.11) #4
  br label %do.end147

do.end147:                                        ; preds = %if.then144, %do.body132
  %zone.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 3
  %call149 = call ptr @nf_ct_expect_find_get(ptr noundef %1, ptr noundef %zone.i, ptr noundef nonnull %t) #4
  %tobool150.not = icmp eq ptr %call149, null
  br i1 %tobool150.not, label %do.body169, label %if.then151

if.then151:                                       ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #6
  call void @nf_ct_unexpect_related(ptr noundef nonnull %call149) #4
  call void @nf_ct_expect_put(ptr noundef nonnull %call149) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_nat_expected.__UNIQUE_ID_ddebug589, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_nat_expected, %if.then164)) #4
          to label %do.body186 [label %if.then164], !srcloc !67

if.then164:                                       ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_nat_expected.__UNIQUE_ID_ddebug589, ptr noundef nonnull @.str.12) #4
  br label %do.body186

do.body169:                                       ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pptp_nat_expected.__UNIQUE_ID_ddebug590, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pptp_nat_expected, %if.then181)) #4
          to label %do.body186 [label %if.then181], !srcloc !67

if.then181:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pptp_nat_expected.__UNIQUE_ID_ddebug590, ptr noundef nonnull @.str.13) #4
  br label %do.body186

do.body186:                                       ; preds = %if.then181, %do.body169, %if.then164, %if.then151
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %40 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status, align 8
  %and = and i32 %41, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool187.not = icmp eq i32 %and, 0
  br i1 %tobool187.not, label %do.end203, label %do.body195, !prof !62

do.body195:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_nat_pptp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 95, 0\0A.popsection", ""() #4, !srcloc !68
  unreachable

do.end203:                                        ; preds = %do.body186
  %42 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %range, align 4
  %min_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %max_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %43 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %master1, align 4
  %45 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool207.not = icmp eq i32 %46, 0
  %lnot.ext209 = zext i1 %tobool207.not to i32
  %dst212 = getelementptr %struct.nf_conn, ptr %44, i32 0, i32 4, i32 %lnot.ext209, i32 1, i32 1
  %47 = call ptr @memcpy(ptr %max_addr, ptr %dst212, i32 16)
  %48 = call ptr @memmove(ptr %min_addr, ptr %dst212, i32 16)
  br i1 %tobool207.not, label %if.then216, label %do.end203.if.end218_crit_edge

do.end203.if.end218_crit_edge:                    ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end218

if.then216:                                       ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %range, align 4
  %min_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %max_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 12
  %50 = ptrtoint ptr %saved_proto to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %saved_proto, align 4
  %52 = ptrtoint ptr %max_proto to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %max_proto, align 2
  %53 = ptrtoint ptr %min_proto to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %51, ptr %min_proto, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then216, %do.end203.if.end218_crit_edge
  %call219 = call i32 @nf_nat_setup_info(ptr noundef %ct, ptr noundef nonnull %range, i32 noundef 0) #4
  %54 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %range, align 4
  %55 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %master1, align 4
  %57 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool226.not = icmp eq i32 %58, 0
  %lnot.ext228 = zext i1 %tobool226.not to i32
  %tuple230 = getelementptr %struct.nf_conn, ptr %56, i32 0, i32 4, i32 %lnot.ext228, i32 1
  %59 = call ptr @memcpy(ptr %max_addr, ptr %tuple230, i32 16)
  %60 = call ptr @memmove(ptr %min_addr, ptr %tuple230, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp234 = icmp eq i32 %58, 1
  br i1 %cmp234, label %if.then235, label %if.end218.if.end241_crit_edge

if.end218.if.end241_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end241

if.then235:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3, ptr %range, align 4
  %min_proto238 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %max_proto239 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %saved_proto240 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 12
  %62 = ptrtoint ptr %saved_proto240 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %saved_proto240, align 4
  %64 = ptrtoint ptr %max_proto239 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %max_proto239, align 2
  %65 = ptrtoint ptr %min_proto238 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %63, ptr %min_proto238, align 4
  br label %if.end241

if.end241:                                        ; preds = %if.then235, %if.end218.if.end241_crit_edge
  %call242 = call i32 @nf_nat_setup_info(ptr noundef %ct, ptr noundef nonnull %range, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end241, %if.then, %land.rhs.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %t) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pptp_msg_name(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_nat_ext_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_expect_find_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_unexpect_related(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_setup_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !19, !20, !21, !23, !24, !26, !28, !29, !30, !32, !33, !35, !37, !39, !40, !41, !43, !44, !46, !47, !49, !50, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__UNIQUE_ID_file581, !1, !"__UNIQUE_ID_file581", i1 false, i1 false}
!1 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_license582, !1, !"__UNIQUE_ID_license582", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author583, !4, !"__UNIQUE_ID_author583", i1 false, i1 false}
!4 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 39, i32 1}
!5 = !{ptr @__UNIQUE_ID_description584, !6, !"__UNIQUE_ID_description584", i1 false, i1 false}
!6 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 40, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias585, !8, !"__UNIQUE_ID_alias585", i1 false, i1 false}
!8 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 41, i32 1}
!9 = !{ptr @__initcall__kmod_nf_nat_pptp__603_323_nf_nat_helper_pptp_init6, !10, !"__initcall__kmod_nf_nat_pptp__603_323_nf_nat_helper_pptp_init6", i1 false, i1 false}
!10 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 323, i32 1}
!11 = !{ptr @__exitcall_nf_nat_helper_pptp_fini, !12, !"__exitcall_nf_nat_helper_pptp_fini", i1 false, i1 false}
!12 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 324, i32 1}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 135, i32 6}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 168, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pptp_outbound_pkt.__UNIQUE_ID_ddebug591, !17, !"__UNIQUE_ID_ddebug591", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 185, i32 2}
!23 = !{ptr @pptp_outbound_pkt.__UNIQUE_ID_ddebug592, !22, !"__UNIQUE_ID_ddebug592", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 244, i32 6}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 270, i32 3}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pptp_inbound_pkt.__UNIQUE_ID_ddebug593, !27, !"__UNIQUE_ID_ddebug593", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 286, i32 2}
!32 = !{ptr @pptp_inbound_pkt.__UNIQUE_ID_ddebug594, !31, !"__UNIQUE_ID_ddebug594", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 207, i32 6}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 56, i32 6}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 64, i32 3}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pptp_nat_expected.__UNIQUE_ID_ddebug586, !38, !"__UNIQUE_ID_ddebug586", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 73, i32 3}
!43 = !{ptr @pptp_nat_expected.__UNIQUE_ID_ddebug587, !42, !"__UNIQUE_ID_ddebug587", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 83, i32 2}
!46 = !{ptr @pptp_nat_expected.__UNIQUE_ID_ddebug588, !45, !"__UNIQUE_ID_ddebug588", i1 false, i1 false}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 89, i32 3}
!49 = !{ptr @pptp_nat_expected.__UNIQUE_ID_ddebug589, !48, !"__UNIQUE_ID_ddebug589", i1 false, i1 false}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/ipv4/netfilter/nf_nat_pptp.c", i32 91, i32 3}
!52 = !{ptr @pptp_nat_expected.__UNIQUE_ID_ddebug590, !51, !"__UNIQUE_ID_ddebug590", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2158044779, i64 2158045276, i64 2158044816, i64 2158044872, i64 2158044906, i64 2158044930, i64 2158044971, i64 2158044992, i64 2158045020, i64 2158045054}
!64 = !{i64 2158049244, i64 2158049741, i64 2158049281, i64 2158049337, i64 2158049371, i64 2158049395, i64 2158049436, i64 2158049457, i64 2158049485, i64 2158049519}
!65 = !{i64 2158053675, i64 2158054172, i64 2158053712, i64 2158053768, i64 2158053802, i64 2158053826, i64 2158053867, i64 2158053888, i64 2158053916, i64 2158053950}
!66 = !{i64 2158062141, i64 2158062638, i64 2158062178, i64 2158062234, i64 2158062268, i64 2158062292, i64 2158062333, i64 2158062354, i64 2158062382, i64 2158062416}
!67 = !{i64 2148961688, i64 2148961693, i64 2148961706, i64 2148961750, i64 2148961784, i64 2148961805}
!68 = !{i64 2158027786, i64 2158028282, i64 2158027823, i64 2158027879, i64 2158027913, i64 2158027937, i64 2158027978, i64 2158027999, i64 2158028027, i64 2158028061}
