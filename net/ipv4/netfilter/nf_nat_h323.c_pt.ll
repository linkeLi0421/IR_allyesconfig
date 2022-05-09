; ModuleID = '/llk/IR_all_yes/net/ipv4/netfilter/nf_nat_h323.c_pt.bc'
source_filename = "../net/ipv4/netfilter/nf_nat_h323.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nf_ct_helper_expectfn = type { %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nf_nat_range2 = type { i32, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.nf_conntrack_expect = type { %struct.hlist_node, %struct.hlist_node, %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple_mask, ptr, ptr, ptr, %struct.timer_list, %struct.refcount_struct, i32, i32, %union.nf_inet_addr, %union.nf_conntrack_man_proto, i32, %struct.callback_head }
%struct.hlist_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.208 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%struct.anon.208 = type { %union.nf_inet_addr, %union.anon.209, i8, i8 }
%union.anon.209 = type { i16 }
%struct.nf_conntrack_tuple_mask = type { %struct.anon.217 }
%struct.anon.217 = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.216, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.216 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.H245_TransportAddress = type { i32, %union.anon.195 }
%union.anon.195 = type { %struct.UnicastAddress }
%struct.UnicastAddress = type { i32, %union.anon.196 }
%union.anon.196 = type { %struct.UnicastAddress_iPAddress }
%struct.UnicastAddress_iPAddress = type { i32, i32 }
%struct.TransportAddress = type { i32, %union.anon.201 }
%union.anon.201 = type { %struct.TransportAddress_ipAddress }
%struct.TransportAddress_ipAddress = type { i32, i32 }
%struct.nf_conn_help = type { ptr, %struct.hlist_head, [4 x i8], [4 x i8], [32 x i8] }
%struct.hlist_head = type { ptr }
%struct.nf_ct_h323_master = type { [2 x i16], [4 x [2 x i16]], %union.anon.219 }
%union.anon.219 = type { i32 }
%struct.anon.218 = type <{ i32, i16 }>
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.178, %union.anon.179, [48 x i8], %union.anon.180, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.182, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.178 = type { ptr }
%union.anon.179 = type { i64 }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type { i32, ptr }
%union.anon.182 = type { %struct.anon.183 }
%struct.anon.183 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.184, i32, i32, i32, i16, i16, %union.anon.186, i32, %union.anon.187, %union.anon.188, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.184 = type { i32 }
%union.anon.186 = type { i32 }
%union.anon.187 = type { i32 }
%union.anon.188 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@set_h245_addr_hook = external dso_local global ptr, align 4
@set_h225_addr_hook = external dso_local global ptr, align 4
@set_sig_addr_hook = external dso_local global ptr, align 4
@set_ras_addr_hook = external dso_local global ptr, align 4
@nat_rtp_rtcp_hook = external dso_local global ptr, align 4
@nat_t120_hook = external dso_local global ptr, align 4
@nat_h245_hook = external dso_local global ptr, align 4
@nat_callforwarding_hook = external dso_local global ptr, align 4
@nat_q931_hook = external dso_local global ptr, align 4
@q931_nat = internal global { %struct.nf_ct_helper_expectfn, [16 x i8] } { %struct.nf_ct_helper_expectfn { %struct.list_head zeroinitializer, ptr @.str, ptr @ip_nat_q931_expect }, [16 x i8] zeroinitializer }, align 32
@callforwarding_nat = internal global { %struct.nf_ct_helper_expectfn, [16 x i8] } { %struct.nf_ct_helper_expectfn { %struct.list_head zeroinitializer, ptr @.str.1, ptr @ip_nat_callforwarding_expect }, [16 x i8] zeroinitializer }, align 32
@__initcall__kmod_nf_nat_h323__715_627_init6 = internal global ptr @init, section ".initcall6.init", align 4
@__exitcall_fini = internal global ptr @fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_author716 = internal constant [69 x i8] c"nf_nat_h323.author=Jing Min Zhao <zhaojingmin@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description717 = internal constant [41 x i8] c"nf_nat_h323.description=H.323 NAT helper\00", section ".modinfo", align 1
@__UNIQUE_ID_file718 = internal constant [48 x i8] c"nf_nat_h323.file=net/ipv4/netfilter/nf_nat_h323\00", section ".modinfo", align 1
@__UNIQUE_ID_license719 = internal constant [24 x i8] c"nf_nat_h323.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias720 = internal constant [30 x i8] c"nf_nat_h323.alias=ip_nat_h323\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Q.931\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"callforwarding\00", [17 x i8] zeroinitializer }, align 32
@set_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015nf_nat_h323: nf_nat_mangle_tcp_packet error\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"set_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net/ipv4/netfilter/nf_nat_h323.c\00", [63 x i8] zeroinitializer }, align 32
@set_addr._entry_ptr = internal global ptr @set_addr._entry, section ".printk_index", align 4
@set_addr._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015nf_nat_h323: nf_nat_mangle_udp_packet error\0A\00", [49 x i8] zeroinitializer }, align 32
@set_addr._entry_ptr.7 = internal global ptr @set_addr._entry.5, section ".printk_index", align 4
@set_sig_addr.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.4, ptr @.str.10, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nf_nat_h323\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_sig_addr\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nf_nat_ras: set signal address %pI4:%hu->%pI4:%hu\0A\00", [45 x i8] zeroinitializer }, align 32
@set_sig_addr.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.4, ptr @.str.10, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@set_ras_addr.__UNIQUE_ID_ddebug690 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.11, ptr @.str.4, ptr @.str.12, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_ras_addr\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"nf_nat_ras: set rasAddress %pI4:%hu->%pI4:%hu\0A\00", [49 x i8] zeroinitializer }, align 32
@nat_rtp_rtcp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015nf_nat_h323: out of expectations\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nat_rtp_rtcp\00", [19 x i8] zeroinitializer }, align 32
@nat_rtp_rtcp._entry_ptr = internal global ptr @nat_rtp_rtcp._entry, section ".printk_index", align 4
@nat_rtp_rtcp._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015nf_nat_h323: out of RTP ports\0A\00", [63 x i8] zeroinitializer }, align 32
@nat_rtp_rtcp._entry_ptr.17 = internal global ptr @nat_rtp_rtcp._entry.15, section ".printk_index", align 4
@nat_rtp_rtcp.__UNIQUE_ID_ddebug691 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.4, ptr @.str.18, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nf_nat_h323: expect RTP %pI4:%hu->%pI4:%hu\0A\00", [52 x i8] zeroinitializer }, align 32
@nat_rtp_rtcp.__UNIQUE_ID_ddebug692 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.4, ptr @.str.19, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nf_nat_h323: expect RTCP %pI4:%hu->%pI4:%hu\0A\00", [51 x i8] zeroinitializer }, align 32
@nat_t120._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015nf_nat_h323: out of TCP ports\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nat_t120\00", [23 x i8] zeroinitializer }, align 32
@nat_t120._entry_ptr = internal global ptr @nat_t120._entry, section ".printk_index", align 4
@nat_t120.__UNIQUE_ID_ddebug693 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nf_nat_h323: expect T.120 %pI4:%hu->%pI4:%hu\0A\00", [50 x i8] zeroinitializer }, align 32
@nat_h245._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015nf_nat_q931: out of TCP ports\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nat_h245\00", [23 x i8] zeroinitializer }, align 32
@nat_h245._entry_ptr = internal global ptr @nat_h245._entry, section ".printk_index", align 4
@nat_h245.__UNIQUE_ID_ddebug694 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nf_nat_q931: expect H.245 %pI4:%hu->%pI4:%hu\0A\00", [50 x i8] zeroinitializer }, align 32
@nat_callforwarding._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.26, ptr @.str.4, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nat_callforwarding\00", [45 x i8] zeroinitializer }, align 32
@nat_callforwarding._entry_ptr = internal global ptr @nat_callforwarding._entry, section ".printk_index", align 4
@nat_callforwarding.__UNIQUE_ID_ddebug696 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nf_nat_q931: expect Call Forwarding %pI4:%hu->%pI4:%hu\0A\00", [40 x i8] zeroinitializer }, align 32
@nat_q931._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015nf_nat_ras: out of TCP ports\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nat_q931\00", [23 x i8] zeroinitializer }, align 32
@nat_q931._entry_ptr = internal global ptr @nat_q931._entry, section ".printk_index", align 4
@nat_q931.__UNIQUE_ID_ddebug695 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nf_nat_ras: expect Q.931 %pI4:%hu->%pI4:%hu\0A\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"q931_nat\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 572, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"callforwarding_nat\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 577, i32 37 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 573, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 578, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 44, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 58, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 116, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 159, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 214, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 246, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 265, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 270, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 309, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 321, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 365, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 381, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 550, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 563, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 457, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [36 x i8] c"../net/ipv4/netfilter/nf_nat_h323.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 486, i32 2 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_alias720, ptr @__UNIQUE_ID_author716, ptr @__UNIQUE_ID_description717, ptr @__UNIQUE_ID_file718, ptr @__UNIQUE_ID_license719, ptr @__exitcall_fini, ptr @__initcall__kmod_nf_nat_h323__715_627_init6, ptr @fini, ptr @nat_callforwarding._entry, ptr @nat_callforwarding._entry_ptr, ptr @nat_h245._entry, ptr @nat_h245._entry_ptr, ptr @nat_q931._entry, ptr @nat_q931._entry_ptr, ptr @nat_rtp_rtcp._entry, ptr @nat_rtp_rtcp._entry.15, ptr @nat_rtp_rtcp._entry_ptr, ptr @nat_rtp_rtcp._entry_ptr.17, ptr @nat_t120._entry, ptr @nat_t120._entry_ptr, ptr @set_addr._entry, ptr @set_addr._entry.5, ptr @set_addr._entry_ptr, ptr @set_addr._entry_ptr.7, ptr @q931_nat, ptr @callforwarding_nat, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q931_nat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @callforwarding_nat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_addr._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat_rtp_rtcp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat_rtp_rtcp._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat_t120._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat_h245._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat_callforwarding._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nat_q931._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @set_h245_addr_hook to i32))
  store volatile ptr null, ptr @set_h245_addr_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @set_h225_addr_hook to i32))
  store volatile ptr null, ptr @set_h225_addr_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @set_sig_addr_hook to i32))
  store volatile ptr null, ptr @set_sig_addr_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @set_ras_addr_hook to i32))
  store volatile ptr null, ptr @set_ras_addr_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nat_rtp_rtcp_hook to i32))
  store volatile ptr null, ptr @nat_rtp_rtcp_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nat_t120_hook to i32))
  store volatile ptr null, ptr @nat_t120_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nat_h245_hook to i32))
  store volatile ptr null, ptr @nat_h245_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nat_callforwarding_hook to i32))
  store volatile ptr null, ptr @nat_callforwarding_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nat_q931_hook to i32))
  store volatile ptr null, ptr @nat_q931_hook, align 4
  tail call void @nf_ct_helper_expectfn_unregister(ptr noundef nonnull @q931_nat) #5
  tail call void @nf_ct_helper_expectfn_unregister(ptr noundef nonnull @callforwarding_nat) #5
  tail call void @synchronize_rcu() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_expectfn_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @set_h245_addr_hook to i32))
  %0 = load ptr, ptr @set_h245_addr_hook, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %do.body6, label %do.body2, !prof !97

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_nat_h323.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 585, 0\0A.popsection", ""() #5, !srcloc !98
  unreachable

do.body6:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @set_h225_addr_hook to i32))
  %1 = load ptr, ptr @set_h225_addr_hook, align 4
  %cmp7.not = icmp eq ptr %1, null
  br i1 %cmp7.not, label %do.body21, label %do.body15, !prof !97

do.body15:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_nat_h323.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 586, 0\0A.popsection", ""() #5, !srcloc !99
  unreachable

do.body21:                                        ; preds = %do.body6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @set_sig_addr_hook to i32))
  %2 = load ptr, ptr @set_sig_addr_hook, align 4
  %cmp22.not = icmp eq ptr %2, null
  br i1 %cmp22.not, label %do.body36, label %do.body30, !prof !97

do.body30:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_nat_h323.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 587, 0\0A.popsection", ""() #5, !srcloc !100
  unreachable

do.body36:                                        ; preds = %do.body21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @set_ras_addr_hook to i32))
  %3 = load ptr, ptr @set_ras_addr_hook, align 4
  %cmp37.not = icmp eq ptr %3, null
  br i1 %cmp37.not, label %do.body51, label %do.body45, !prof !97

do.body45:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_nat_h323.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 588, 0\0A.popsection", ""() #5, !srcloc !101
  unreachable

do.body51:                                        ; preds = %do.body36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nat_rtp_rtcp_hook to i32))
  %4 = load ptr, ptr @nat_rtp_rtcp_hook, align 4
  %cmp52.not = icmp eq ptr %4, null
  br i1 %cmp52.not, label %do.body66, label %do.body60, !prof !97

do.body60:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_nat_h323.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 589, 0\0A.popsection", ""() #5, !srcloc !102
  unreachable

do.body66:                                        ; preds = %do.body51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nat_t120_hook to i32))
  %5 = load ptr, ptr @nat_t120_hook, align 4
  %cmp67.not = icmp eq ptr %5, null
  br i1 %cmp67.not, label %do.body81, label %do.body75, !prof !97

do.body75:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_nat_h323.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 590, 0\0A.popsection", ""() #5, !srcloc !103
  unreachable

do.body81:                                        ; preds = %do.body66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nat_h245_hook to i32))
  %6 = load ptr, ptr @nat_h245_hook, align 4
  %cmp82.not = icmp eq ptr %6, null
  br i1 %cmp82.not, label %do.body96, label %do.body90, !prof !97

do.body90:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_nat_h323.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 591, 0\0A.popsection", ""() #5, !srcloc !104
  unreachable

do.body96:                                        ; preds = %do.body81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nat_callforwarding_hook to i32))
  %7 = load ptr, ptr @nat_callforwarding_hook, align 4
  %cmp97.not = icmp eq ptr %7, null
  br i1 %cmp97.not, label %do.body111, label %do.body105, !prof !97

do.body105:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_nat_h323.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 592, 0\0A.popsection", ""() #5, !srcloc !105
  unreachable

do.body111:                                       ; preds = %do.body96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nat_q931_hook to i32))
  %8 = load ptr, ptr @nat_q931_hook, align 4
  %cmp112.not = icmp eq ptr %8, null
  br i1 %cmp112.not, label %do.body130, label %do.body120, !prof !97

do.body120:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_nat_h323.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 593, 0\0A.popsection", ""() #5, !srcloc !106
  unreachable

do.body130:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @set_h245_addr_hook to i32))
  store volatile ptr @set_h245_addr, ptr @set_h245_addr_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @set_h225_addr_hook to i32))
  store volatile ptr @set_h225_addr, ptr @set_h225_addr_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @set_sig_addr_hook to i32))
  store volatile ptr @set_sig_addr, ptr @set_sig_addr_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @set_ras_addr_hook to i32))
  store volatile ptr @set_ras_addr, ptr @set_ras_addr_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nat_rtp_rtcp_hook to i32))
  store volatile ptr @nat_rtp_rtcp, ptr @nat_rtp_rtcp_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nat_t120_hook to i32))
  store volatile ptr @nat_t120, ptr @nat_t120_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nat_h245_hook to i32))
  store volatile ptr @nat_h245, ptr @nat_h245_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nat_callforwarding_hook to i32))
  store volatile ptr @nat_callforwarding, ptr @nat_callforwarding_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nat_q931_hook to i32))
  store volatile ptr @nat_q931, ptr @nat_q931_hook, align 4
  tail call void @nf_ct_helper_expectfn_register(ptr noundef nonnull @q931_nat) #5
  tail call void @nf_ct_helper_expectfn_register(ptr noundef nonnull @callforwarding_nat) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_nat_q931_expect(ptr noundef %new, ptr noundef %this) #2 align 64 {
entry:
  %range = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range) #5
  %0 = getelementptr inbounds i8, ptr %range, i32 36
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4, !annotation !107
  %tuple = getelementptr inbounds %struct.nf_conntrack_expect, ptr %this, i32 0, i32 2
  %2 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuple, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nf_nat_follow_master(ptr noundef %new, ptr noundef %this) #5
  br label %cleanup

do.body:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.nf_conn, ptr %new, i32 0, i32 5
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  %and = and i32 %5, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end10, label %do.body4, !prof !97

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_nat_h323.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 405, 0\0A.popsection", ""() #5, !srcloc !108
  unreachable

do.end10:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %range, align 4
  %min_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %max_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %dir = getelementptr inbounds %struct.nf_conntrack_expect, ptr %this, i32 0, i32 13
  %7 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not = icmp eq i32 %8, 0
  %lnot.ext13 = zext i1 %tobool11.not to i32
  %tuple14 = getelementptr %struct.nf_conn, ptr %new, i32 0, i32 4, i32 %lnot.ext13, i32 1
  %9 = call ptr @memcpy(ptr %max_addr, ptr %tuple14, i32 16)
  %10 = call ptr @memcpy(ptr %min_addr, ptr %tuple14, i32 16)
  %call = call i32 @nf_nat_setup_info(ptr noundef %new, ptr noundef nonnull %range, i32 noundef 0) #5
  %11 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %range, align 4
  %min_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %max_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %this, i32 0, i32 12
  %12 = ptrtoint ptr %saved_proto to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %saved_proto, align 4
  %14 = ptrtoint ptr %max_proto to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %max_proto, align 2
  %15 = ptrtoint ptr %min_proto to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %13, ptr %min_proto, align 4
  %master = getelementptr inbounds %struct.nf_conn, ptr %new, i32 0, i32 10
  %16 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master, align 4
  %18 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool22.not = icmp eq i32 %19, 0
  %lnot.ext24 = zext i1 %tobool22.not to i32
  %tuple26 = getelementptr %struct.nf_conn, ptr %17, i32 0, i32 4, i32 %lnot.ext24, i32 1
  %20 = call ptr @memcpy(ptr %max_addr, ptr %tuple26, i32 16)
  %21 = call ptr @memmove(ptr %min_addr, ptr %tuple26, i32 16)
  %call29 = call i32 @nf_nat_setup_info(ptr noundef %new, ptr noundef nonnull %range, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_follow_master(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_setup_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip_nat_callforwarding_expect(ptr noundef %new, ptr nocapture noundef readonly %this) #2 align 64 {
entry:
  %range = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range) #5
  %0 = getelementptr inbounds i8, ptr %range, i32 36
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4, !annotation !107
  %status = getelementptr inbounds %struct.nf_conn, ptr %new, i32 0, i32 5
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 8
  %and = and i32 %3, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !97

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/nf_nat_h323.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 502, 0\0A.popsection", ""() #5, !srcloc !109
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %range, align 4
  %min_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %max_addr = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %dir = getelementptr inbounds %struct.nf_conntrack_expect, ptr %this, i32 0, i32 13
  %5 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  %lnot.ext11 = zext i1 %tobool9.not to i32
  %tuple = getelementptr %struct.nf_conn, ptr %new, i32 0, i32 4, i32 %lnot.ext11, i32 1
  %7 = call ptr @memcpy(ptr %max_addr, ptr %tuple, i32 16)
  %8 = call ptr @memcpy(ptr %min_addr, ptr %tuple, i32 16)
  %call = call i32 @nf_nat_setup_info(ptr noundef %new, ptr noundef nonnull %range, i32 noundef 0) #5
  %9 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %range, align 4
  %min_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %max_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %this, i32 0, i32 12
  %10 = ptrtoint ptr %saved_proto to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %saved_proto, align 4
  %12 = ptrtoint ptr %max_proto to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %max_proto, align 2
  %13 = ptrtoint ptr %min_proto to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %11, ptr %min_proto, align 4
  %saved_addr = getelementptr inbounds %struct.nf_conntrack_expect, ptr %this, i32 0, i32 11
  %14 = call ptr @memcpy(ptr %max_addr, ptr %saved_addr, i32 16)
  %15 = call ptr @memcpy(ptr %min_addr, ptr %saved_addr, i32 16)
  %call15 = call i32 @nf_nat_setup_info(ptr noundef %new, ptr noundef nonnull %range, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_h245_addr(ptr noundef %skb, i32 noundef %protoff, ptr nocapture noundef writeonly %data, i32 noundef %dataoff, ptr nocapture noundef readonly %taddr, ptr nocapture noundef readonly %addr, i16 noundef zeroext %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %network = getelementptr inbounds %struct.H245_TransportAddress, ptr %taddr, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %network to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %network, align 4
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %call = tail call fastcc i32 @set_addr(ptr noundef %skb, i32 noundef %protoff, ptr noundef %data, i32 noundef %dataoff, i32 noundef %1, i32 noundef %3, i16 noundef zeroext %port)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_h225_addr(ptr noundef %skb, i32 noundef %protoff, ptr nocapture noundef writeonly %data, i32 noundef %dataoff, ptr nocapture noundef readonly %taddr, ptr nocapture noundef readonly %addr, i16 noundef zeroext %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ip = getelementptr inbounds %struct.TransportAddress, ptr %taddr, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ip, align 4
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %call = tail call fastcc i32 @set_addr(ptr noundef %skb, i32 noundef %protoff, ptr noundef %data, i32 noundef %dataoff, i32 noundef %1, i32 noundef %3, i16 noundef zeroext %port)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_sig_addr(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %protoff, ptr nocapture noundef %data, ptr noundef %taddr, i32 noundef %count) #2 align 64 {
entry:
  %port = alloca i16, align 2
  %addr = alloca %union.nf_inet_addr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help_data.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help_data.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfct_help_data.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfct_help_data.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  br label %nfct_help_data.exit

nfct_help_data.exit:                              ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, %entry.nfct_help_data.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge ], [ null, %entry.nfct_help_data.exit_crit_edge ]
  %data.i = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo)
  %cmp = icmp ugt i32 %ctinfo, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port) #5
  %4 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %port, align 2, !annotation !107
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp1169 = icmp sgt i32 %count, 0
  %5 = call ptr @memset(ptr %addr, i32 255, i32 16)
  br i1 %cmp1169, label %for.body.lr.ph, label %nfct_help_data.exit.cleanup_crit_edge

nfct_help_data.exit.cleanup_crit_edge:            ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %nfct_help_data.exit
  %cond = zext i1 %cmp to i32
  %tuple = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %cond, i32 1
  %arrayidx5 = getelementptr [2 x i16], ptr %data.i, i32 0, i32 %cond
  %dst58 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %cond, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0170 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.TransportAddress, ptr %taddr, i32 %i.0170
  %call2 = call i32 @get_h225_addr(ptr noundef %ct, ptr noundef %7, ptr noundef %arrayidx, ptr noundef nonnull %addr, ptr noundef nonnull %port) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %10 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tuple, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4 = icmp eq i32 %9, %11
  br i1 %cmp4, label %land.lhs.true, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %port, align 2
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp7 = icmp eq i16 %13, %15
  br i1 %cmp7, label %if.then9, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0170)
  %cmp10.not = icmp eq i32 %i.0170, 0
  br i1 %cmp10.not, label %if.then9.do.body_crit_edge, label %land.lhs.true12

if.then9.do.body_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true12:                                  ; preds = %if.then9
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %call14 = call i32 @get_h225_addr(ptr noundef %ct, ptr noundef %17, ptr noundef %taddr, ptr noundef nonnull %addr, ptr noundef nonnull %port) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true12.do.body_crit_edge, label %land.lhs.true16

land.lhs.true12.do.body_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true16:                                  ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr, align 4
  %and = and i32 %19, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706432, i32 %and)
  %cmp17 = icmp eq i32 %and, 2130706432
  %spec.select = select i1 %cmp17, i32 0, i32 %i.0170
  br label %do.body

do.body:                                          ; preds = %land.lhs.true16, %land.lhs.true12.do.body_crit_edge, %if.then9.do.body_crit_edge
  %i.1 = phi i32 [ %i.0170, %land.lhs.true12.do.body_crit_edge ], [ 0, %if.then9.do.body_crit_edge ], [ %spec.select, %land.lhs.true16 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_sig_addr.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_sig_addr, %if.then24)) #5
          to label %do.end [label %if.then24], !srcloc !110

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %port, align 2
  %conv25 = zext i16 %21 to i32
  %lnot28 = xor i1 %cmp, true
  %lnot.ext29 = zext i1 %lnot28 to i32
  %dst = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %lnot.ext29, i32 1, i32 1
  %arrayidx37 = getelementptr [2 x i16], ptr %data.i, i32 0, i32 %lnot.ext29
  %22 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx37, align 2
  %conv38 = zext i16 %23 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_sig_addr.__UNIQUE_ID_ddebug688, ptr noundef nonnull @.str.10, ptr noundef nonnull %addr, i32 noundef %conv25, ptr noundef %dst, i32 noundef %conv38) #5
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body
  %lnot43 = xor i1 %cmp, true
  %lnot.ext44 = zext i1 %lnot43 to i32
  %dst47 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %lnot.ext44, i32 1, i32 1
  br label %cleanup.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %24 = ptrtoint ptr %dst58 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dst58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %25)
  %cmp60 = icmp eq i32 %9, %25
  br i1 %cmp60, label %land.lhs.true62, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true62:                                  ; preds = %if.else
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %port, align 2
  %28 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp67 = icmp eq i16 %27, %29
  br i1 %cmp67, label %do.body70, label %land.lhs.true62.for.inc_crit_edge

land.lhs.true62.for.inc_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body70:                                        ; preds = %land.lhs.true62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_sig_addr.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_sig_addr, %if.then82)) #5
          to label %do.end100 [label %if.then82], !srcloc !110

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %port, align 2
  %conv83 = zext i16 %31 to i32
  %lnot86 = xor i1 %cmp, true
  %lnot.ext87 = zext i1 %lnot86 to i32
  %tuple89 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %lnot.ext87, i32 1
  %arrayidx96 = getelementptr [2 x i16], ptr %data.i, i32 0, i32 %lnot.ext87
  %32 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx96, align 2
  %conv97 = zext i16 %33 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_sig_addr.__UNIQUE_ID_ddebug689, ptr noundef nonnull @.str.10, ptr noundef nonnull %addr, i32 noundef %conv83, ptr noundef %tuple89, i32 noundef %conv97) #5
  br label %do.end100

do.end100:                                        ; preds = %if.then82, %do.body70
  %lnot104 = xor i1 %cmp, true
  %lnot.ext105 = zext i1 %lnot104 to i32
  %tuple107 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %lnot.ext105, i32 1
  br label %cleanup.sink.split

for.inc:                                          ; preds = %land.lhs.true62.for.inc_crit_edge, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0170, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.end100, %do.end
  %lnot.ext105.sink = phi i32 [ %lnot.ext105, %do.end100 ], [ %lnot.ext44, %do.end ]
  %i.0170.lcssa174.sink = phi i32 [ %i.0170, %do.end100 ], [ %i.1, %do.end ]
  %tuple107.sink = phi ptr [ %tuple107, %do.end100 ], [ %dst47, %do.end ]
  %arrayidx114 = getelementptr [2 x i16], ptr %data.i, i32 0, i32 %lnot.ext105.sink
  %34 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx114, align 2
  %ip.i163 = getelementptr %struct.TransportAddress, ptr %taddr, i32 %i.0170.lcssa174.sink, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %ip.i163 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ip.i163, align 4
  %38 = ptrtoint ptr %tuple107.sink to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tuple107.sink, align 4
  %call.i164 = call fastcc i32 @set_addr(ptr noundef %skb, i32 noundef %protoff, ptr noundef %data, i32 noundef 0, i32 noundef %37, i32 noundef %39, i16 noundef zeroext %35) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %nfct_help_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nfct_help_data.exit.cleanup_crit_edge ], [ %call.i164, %cleanup.sink.split ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_ras_addr(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %protoff, ptr nocapture noundef %data, ptr noundef %taddr, i32 noundef %count) #2 align 64 {
entry:
  %port = alloca i16, align 2
  %addr = alloca %union.nf_inet_addr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo)
  %cmp = icmp ugt i32 %ctinfo, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port) #5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %port, align 2, !annotation !107
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp177 = icmp sgt i32 %count, 0
  %1 = call ptr @memset(ptr %addr, i32 255, i32 16)
  br i1 %cmp177, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %cond = zext i1 %cmp to i32
  %tuple = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %cond, i32 1
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.TransportAddress, ptr %taddr, i32 %i.078
  %call = call i32 @get_h225_addr(ptr noundef %ct, ptr noundef %3, ptr noundef %arrayidx, ptr noundef nonnull %addr, ptr noundef nonnull %port) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr, align 4
  %6 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tuple, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3 = icmp eq i32 %5, %7
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %port, align 2
  %10 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %u, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp11 = icmp eq i16 %9, %11
  br i1 %cmp11, label %do.body, label %land.lhs.true4.for.inc_crit_edge

land.lhs.true4.for.inc_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body:                                          ; preds = %land.lhs.true4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ras_addr.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_ras_addr, %if.then17)) #5
          to label %do.end [label %if.then17], !srcloc !110

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %port, align 2
  %conv18 = zext i16 %13 to i32
  %lnot21 = xor i1 %cmp, true
  %lnot.ext22 = zext i1 %lnot21 to i32
  %dst = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %lnot.ext22, i32 1, i32 1
  %u33 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %lnot.ext22, i32 1, i32 1, i32 1
  %14 = ptrtoint ptr %u33 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %u33, align 4
  %conv35 = zext i16 %15 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_ras_addr.__UNIQUE_ID_ddebug690, ptr noundef nonnull @.str.12, ptr noundef nonnull %addr, i32 noundef %conv18, ptr noundef %dst, i32 noundef %conv35) #5
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %lnot39 = xor i1 %cmp, true
  %lnot.ext40 = zext i1 %lnot39 to i32
  %dst43 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %lnot.ext40, i32 1, i32 1
  %u52 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %lnot.ext40, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %u52 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %u52, align 4
  %ip.i = getelementptr %struct.TransportAddress, ptr %taddr, i32 %i.078, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ip.i, align 4
  %20 = ptrtoint ptr %dst43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst43, align 4
  %call.i = call fastcc i32 @set_addr(ptr noundef %skb, i32 noundef %protoff, ptr noundef %data, i32 noundef 0, i32 noundef %19, i32 noundef %21, i16 noundef zeroext %17) #5
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true4.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nat_rtp_rtcp(ptr noundef %skb, ptr nocapture noundef readonly %ct, i32 noundef %ctinfo, i32 noundef %protoff, ptr nocapture noundef writeonly %data, i32 noundef %dataoff, ptr nocapture noundef readonly %taddr, i16 noundef zeroext %port, i16 noundef zeroext %rtp_port, ptr noundef %rtp_exp, ptr noundef %rtcp_exp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help_data.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help_data.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfct_help_data.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfct_help_data.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  br label %nfct_help_data.exit

nfct_help_data.exit:                              ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, %entry.nfct_help_data.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge ], [ null, %entry.nfct_help_data.exit_crit_edge ]
  %data.i = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo)
  %cmp = icmp ugt i32 %ctinfo, 2
  %cond = zext i1 %cmp to i32
  %tuple = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtp_exp, i32 0, i32 2
  %dst = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtp_exp, i32 0, i32 2, i32 1
  %u = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtp_exp, i32 0, i32 2, i32 1, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %u, align 4
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtp_exp, i32 0, i32 12
  %6 = ptrtoint ptr %saved_proto to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %saved_proto, align 4
  %expectfn = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtp_exp, i32 0, i32 4
  %7 = ptrtoint ptr %expectfn to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nf_nat_follow_master, ptr %expectfn, align 4
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %dir3 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtp_exp, i32 0, i32 13
  %8 = ptrtoint ptr %dir3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lnot.ext, ptr %dir3, align 4
  %tuple4 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtcp_exp, i32 0, i32 2
  %dst5 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtcp_exp, i32 0, i32 2, i32 1
  %u6 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtcp_exp, i32 0, i32 2, i32 1, i32 1
  %9 = ptrtoint ptr %u6 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %u6, align 4
  %saved_proto8 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtcp_exp, i32 0, i32 12
  %11 = ptrtoint ptr %saved_proto8 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %saved_proto8, align 4
  %expectfn10 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtcp_exp, i32 0, i32 4
  %12 = ptrtoint ptr %expectfn10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @nf_nat_follow_master, ptr %expectfn10, align 4
  %dir14 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtcp_exp, i32 0, i32 13
  %13 = ptrtoint ptr %dir14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %lnot.ext, ptr %dir14, align 4
  %arrayidx17 = getelementptr %struct.nf_ct_h323_master, ptr %data.i, i32 0, i32 1, i32 0, i32 %cond
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx17, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %rtp_port)
  %cmp19 = icmp eq i16 %15, %rtp_port
  br i1 %cmp19, label %nfct_help_data.exit.if.then_crit_edge, label %if.else

nfct_help_data.exit.if.then_crit_edge:            ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %nfct_help_data.exit.if.then_crit_edge
  %i.0297.lcssa = phi i32 [ 0, %nfct_help_data.exit.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ]
  %arrayidx17.lcssa = phi ptr [ %arrayidx17, %nfct_help_data.exit.if.then_crit_edge ], [ %arrayidx17.1, %for.inc.if.then_crit_edge ], [ %arrayidx17.2, %for.inc.1.if.then_crit_edge ], [ %arrayidx17.3, %for.inc.2.if.then_crit_edge ]
  %16 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %rtp_port, ptr %u, align 4
  %17 = ptrtoint ptr %arrayidx17.lcssa to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx17.lcssa, align 2
  %add = add i16 %18, 1
  %19 = ptrtoint ptr %u6 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %add, ptr %u6, align 4
  br label %if.end56

if.else:                                          ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp41 = icmp eq i16 %15, 0
  br i1 %cmp41, label %if.else.if.end56_crit_edge, label %for.inc

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

for.inc:                                          ; preds = %if.else
  %arrayidx17.1 = getelementptr %struct.nf_ct_h323_master, ptr %data.i, i32 0, i32 1, i32 1, i32 %cond
  %20 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx17.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %rtp_port)
  %cmp19.1 = icmp eq i16 %21, %rtp_port
  br i1 %cmp19.1, label %for.inc.if.then_crit_edge, label %if.else.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp41.1 = icmp eq i16 %21, 0
  br i1 %cmp41.1, label %if.else.1.if.end56_crit_edge, label %for.inc.1

if.else.1.if.end56_crit_edge:                     ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

for.inc.1:                                        ; preds = %if.else.1
  %arrayidx17.2 = getelementptr %struct.nf_ct_h323_master, ptr %data.i, i32 0, i32 1, i32 2, i32 %cond
  %22 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx17.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %rtp_port)
  %cmp19.2 = icmp eq i16 %23, %rtp_port
  br i1 %cmp19.2, label %for.inc.1.if.then_crit_edge, label %if.else.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp41.2 = icmp eq i16 %23, 0
  br i1 %cmp41.2, label %if.else.2.if.end56_crit_edge, label %for.inc.2

if.else.2.if.end56_crit_edge:                     ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

for.inc.2:                                        ; preds = %if.else.2
  %arrayidx17.3 = getelementptr %struct.nf_ct_h323_master, ptr %data.i, i32 0, i32 1, i32 3, i32 %cond
  %24 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx17.3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %rtp_port)
  %cmp19.3 = icmp eq i16 %25, %rtp_port
  br i1 %cmp19.3, label %for.inc.2.if.then_crit_edge, label %if.else.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp41.3 = icmp eq i16 %25, 0
  br i1 %cmp41.3, label %if.else.3.if.end56_crit_edge, label %for.inc.3

if.else.3.if.end56_crit_edge:                     ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

for.inc.3:                                        ; preds = %if.else.3
  %call48 = tail call i32 @net_ratelimit() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %for.inc.3.cleanup210_crit_edge, label %do.end

for.inc.3.cleanup210_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup210

do.end:                                           ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %cleanup210

if.end56:                                         ; preds = %if.else.3.if.end56_crit_edge, %if.else.2.if.end56_crit_edge, %if.else.1.if.end56_crit_edge, %if.else.if.end56_crit_edge, %if.then
  %i.0297309 = phi i32 [ %i.0297.lcssa, %if.then ], [ 0, %if.else.if.end56_crit_edge ], [ 1, %if.else.1.if.end56_crit_edge ], [ 2, %if.else.2.if.end56_crit_edge ], [ 3, %if.else.3.if.end56_crit_edge ]
  %26 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp63.not298 = icmp eq i16 %27, 0
  br i1 %cmp63.not298, label %if.end56.do.body111_crit_edge, label %if.end56.for.body65_crit_edge

if.end56.for.body65_crit_edge:                    ; preds = %if.end56
  br label %for.body65

if.end56.do.body111_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body111

for.body65:                                       ; preds = %for.inc102.for.body65_crit_edge, %if.end56.for.body65_crit_edge
  %nated_port.0299 = phi i16 [ %add104, %for.inc102.for.body65_crit_edge ], [ %27, %if.end56.for.body65_crit_edge ]
  %28 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %nated_port.0299, ptr %u, align 4
  %call.i = tail call i32 @nf_ct_expect_related_report(ptr noundef %rtp_exp, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %29 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %for.body65.do.body111_crit_edge [
    i32 0, label %if.then73
    i32 -16, label %for.body65.for.inc102_crit_edge
  ]

for.body65.for.inc102_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc102

for.body65.do.body111_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body111

if.then73:                                        ; preds = %for.body65
  %add75 = add i16 %nated_port.0299, 1
  %30 = ptrtoint ptr %u6 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %add75, ptr %u6, align 4
  %call.i276 = tail call i32 @nf_ct_expect_related_report(ptr noundef %rtcp_exp, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %31 = zext i32 %call.i276 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call.i276, label %if.else89 [
    i32 0, label %if.end123
    i32 -16, label %if.then88
  ]

if.then88:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nf_ct_unexpect_related(ptr noundef %rtp_exp) #5
  br label %for.inc102

if.else89:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %cmp90 = icmp slt i32 %call.i276, 0
  br i1 %cmp90, label %if.then92, label %if.else89.for.inc102_crit_edge

if.else89.for.inc102_crit_edge:                   ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc102

if.then92:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nf_ct_unexpect_related(ptr noundef %rtp_exp) #5
  br label %do.body111

for.inc102:                                       ; preds = %if.else89.for.inc102_crit_edge, %if.then88, %for.body65.for.inc102_crit_edge
  %add104 = add i16 %nated_port.0299, 2
  %cmp63.not = icmp eq i16 %add104, 0
  br i1 %cmp63.not, label %for.inc102.do.body111_crit_edge, label %for.inc102.for.body65_crit_edge

for.inc102.for.body65_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body65

for.inc102.do.body111_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body111

do.body111:                                       ; preds = %for.inc102.do.body111_crit_edge, %if.then92, %for.body65.do.body111_crit_edge, %if.end56.do.body111_crit_edge
  %call112 = tail call i32 @net_ratelimit() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %do.body111.cleanup210_crit_edge, label %do.end117

do.body111.cleanup210_crit_edge:                  ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup210

do.end117:                                        ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #7
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  br label %cleanup210

if.end123:                                        ; preds = %if.then73
  %dst129 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %lnot.ext, i32 1, i32 1
  %32 = and i16 %port, 1
  %cond135 = add i16 %nated_port.0299, %32
  %network.i = getelementptr inbounds %struct.H245_TransportAddress, ptr %taddr, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %network.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %network.i, align 4
  %35 = ptrtoint ptr %dst129 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dst129, align 4
  %call.i277 = tail call fastcc i32 @set_addr(ptr noundef %skb, i32 noundef %protoff, ptr noundef %data, i32 noundef %dataoff, i32 noundef %34, i32 noundef %36, i16 noundef zeroext %cond135) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %tobool138.not = icmp eq i32 %call.i277, 0
  br i1 %tobool138.not, label %if.end140, label %if.then139

if.then139:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nf_ct_unexpect_related(ptr noundef %rtp_exp) #5
  tail call void @nf_ct_unexpect_related(ptr noundef %rtcp_exp) #5
  br label %cleanup210

if.end140:                                        ; preds = %if.end123
  %arrayidx143 = getelementptr %struct.nf_ct_h323_master, ptr %data.i, i32 0, i32 1, i32 %i.0297309, i32 %cond
  %37 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %rtp_port, ptr %arrayidx143, align 2
  %arrayidx149 = getelementptr %struct.nf_ct_h323_master, ptr %data.i, i32 0, i32 1, i32 %i.0297309, i32 %lnot.ext
  %38 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %nated_port.0299, ptr %arrayidx149, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nat_rtp_rtcp.__UNIQUE_ID_ddebug691, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nat_rtp_rtcp, %if.then159)) #5
          to label %do.body178 [label %if.then159], !srcloc !110

if.then159:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  %u164 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtp_exp, i32 0, i32 2, i32 0, i32 1
  %39 = ptrtoint ptr %u164 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %u164, align 4
  %conv166 = zext i16 %40 to i32
  %41 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %u, align 4
  %conv174 = zext i16 %42 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nat_rtp_rtcp.__UNIQUE_ID_ddebug691, ptr noundef nonnull @.str.18, ptr noundef %tuple, i32 noundef %conv166, ptr noundef %dst, i32 noundef %conv174) #5
  br label %do.body178

do.body178:                                       ; preds = %if.then159, %if.end140
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nat_rtp_rtcp.__UNIQUE_ID_ddebug692, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nat_rtp_rtcp, %if.then190)) #5
          to label %cleanup210 [label %if.then190], !srcloc !110

if.then190:                                       ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #7
  %u196 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %rtcp_exp, i32 0, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %u196 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %u196, align 4
  %conv198 = zext i16 %44 to i32
  %45 = ptrtoint ptr %u6 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %u6, align 4
  %conv206 = zext i16 %46 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nat_rtp_rtcp.__UNIQUE_ID_ddebug692, ptr noundef nonnull @.str.19, ptr noundef %tuple4, i32 noundef %conv198, ptr noundef %dst5, i32 noundef %conv206) #5
  br label %cleanup210

cleanup210:                                       ; preds = %if.then190, %do.body178, %if.then139, %do.end117, %do.body111.cleanup210_crit_edge, %do.end, %for.inc.3.cleanup210_crit_edge
  %retval.0 = phi i32 [ -1, %if.then139 ], [ 0, %do.end ], [ 0, %for.inc.3.cleanup210_crit_edge ], [ 0, %do.end117 ], [ 0, %do.body111.cleanup210_crit_edge ], [ 0, %if.then190 ], [ 0, %do.body178 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nat_t120(ptr noundef %skb, ptr nocapture noundef readonly %ct, i32 noundef %ctinfo, i32 noundef %protoff, ptr nocapture noundef writeonly %data, i32 noundef %dataoff, ptr nocapture noundef readonly %taddr, i16 noundef zeroext %port, ptr noundef %exp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ctinfo)
  %cmp = icmp ult i32 %ctinfo, 3
  %tuple = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2
  %dst = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1
  %u = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %u, align 4
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 12
  %2 = ptrtoint ptr %saved_proto to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %saved_proto, align 4
  %expectfn = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 4
  %3 = ptrtoint ptr %expectfn to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nf_nat_follow_master, ptr %expectfn, align 4
  %lnot.ext = zext i1 %cmp to i32
  %dir3 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 13
  %4 = ptrtoint ptr %dir3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %lnot.ext, ptr %dir3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %port)
  %cmp4.not96 = icmp eq i16 %port, 0
  br i1 %cmp4.not96, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %nated_port.097 = phi i16 [ %inc, %for.inc.for.body_crit_edge ], [ %port, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %nated_port.097, ptr %u, align 4
  %call.i = tail call i32 @nf_ct_expect_related_report(ptr noundef %exp, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %6 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call.i, label %for.body.do.body_crit_edge [
    i32 0, label %if.end28
    i32 -16, label %for.inc
  ]

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.inc:                                          ; preds = %for.body
  %inc = add i16 %nated_port.097, 1
  %cmp4.not = icmp eq i16 %inc, 0
  br i1 %cmp4.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %call20 = tail call i32 @net_ratelimit() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.body.cleanup67_crit_edge, label %do.end

do.body.cleanup67_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup67

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #8
  br label %cleanup67

if.end28:                                         ; preds = %for.body
  %dst33 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %lnot.ext, i32 1, i32 1
  %network.i = getelementptr inbounds %struct.H245_TransportAddress, ptr %taddr, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %network.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %network.i, align 4
  %9 = ptrtoint ptr %dst33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst33, align 4
  %call.i85 = tail call fastcc i32 @set_addr(ptr noundef %skb, i32 noundef %protoff, ptr noundef %data, i32 noundef %dataoff, i32 noundef %8, i32 noundef %10, i16 noundef zeroext %nated_port.097) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %cmp35 = icmp slt i32 %call.i85, 0
  br i1 %cmp35, label %if.then37, label %do.body39

if.then37:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nf_ct_unexpect_related(ptr noundef %exp) #5
  br label %cleanup67

do.body39:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nat_t120.__UNIQUE_ID_ddebug693, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nat_t120, %if.then48)) #5
          to label %cleanup67 [label %if.then48], !srcloc !110

if.then48:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  %u53 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %u53 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %u53, align 4
  %conv55 = zext i16 %12 to i32
  %13 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %u, align 4
  %conv63 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nat_t120.__UNIQUE_ID_ddebug693, ptr noundef nonnull @.str.22, ptr noundef %tuple, i32 noundef %conv55, ptr noundef %dst, i32 noundef %conv63) #5
  br label %cleanup67

cleanup67:                                        ; preds = %if.then48, %do.body39, %if.then37, %do.end, %do.body.cleanup67_crit_edge
  %retval.0 = phi i32 [ -1, %if.then37 ], [ 0, %do.end ], [ 0, %do.body.cleanup67_crit_edge ], [ 0, %if.then48 ], [ 0, %do.body39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nat_h245(ptr noundef %skb, ptr nocapture noundef readonly %ct, i32 noundef %ctinfo, i32 noundef %protoff, ptr nocapture noundef writeonly %data, i32 noundef %dataoff, ptr nocapture noundef readonly %taddr, i16 noundef zeroext %port, ptr noundef %exp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %0 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help_data.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help_data.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfct_help_data.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.i.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfct_help_data.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  br label %nfct_help_data.exit

nfct_help_data.exit:                              ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, %entry.nfct_help_data.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge ], [ null, %entry.nfct_help_data.exit_crit_edge ]
  %data.i = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo)
  %cmp = icmp ugt i32 %ctinfo, 2
  %cond = zext i1 %cmp to i32
  %tuple = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2
  %dst = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1
  %u = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %u, align 4
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 12
  %6 = ptrtoint ptr %saved_proto to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %saved_proto, align 4
  %expectfn = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 4
  %7 = ptrtoint ptr %expectfn to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nf_nat_follow_master, ptr %expectfn, align 4
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %dir3 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 13
  %8 = ptrtoint ptr %dir3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lnot.ext, ptr %dir3, align 4
  %arrayidx = getelementptr [2 x i16], ptr %data.i, i32 0, i32 %cond
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %port)
  %cmp5 = icmp eq i16 %10, %port
  br i1 %cmp5, label %if.then, label %nfct_help_data.exit.if.end_crit_edge

nfct_help_data.exit.if.end_crit_edge:             ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx11 = getelementptr [2 x i16], ptr %data.i, i32 0, i32 %lnot.ext
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx11, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %nfct_help_data.exit.if.end_crit_edge
  %nated_port.0 = phi i16 [ %12, %if.then ], [ %port, %nfct_help_data.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nated_port.0)
  %cmp13.not127 = icmp eq i16 %nated_port.0, 0
  br i1 %cmp13.not127, label %if.end.do.body_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %nated_port.1128 = phi i16 [ %inc, %for.inc.for.body_crit_edge ], [ %nated_port.0, %if.end.for.body_crit_edge ]
  %13 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %nated_port.1128, ptr %u, align 4
  %call.i = tail call i32 @nf_ct_expect_related_report(ptr noundef %exp, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %14 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call.i, label %for.body.do.body_crit_edge [
    i32 0, label %if.end40
    i32 -16, label %for.inc
  ]

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.inc:                                          ; preds = %for.body
  %inc = add i16 %nated_port.1128, 1
  %cmp13.not = icmp eq i16 %inc, 0
  br i1 %cmp13.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %for.body.do.body_crit_edge, %if.end.do.body_crit_edge
  %call32 = tail call i32 @net_ratelimit() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body.cleanup86_crit_edge, label %do.end

do.body.cleanup86_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup86

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #8
  br label %cleanup86

if.end40:                                         ; preds = %for.body
  %dst46 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %lnot.ext, i32 1, i32 1
  %ip.i = getelementptr inbounds %struct.TransportAddress, ptr %taddr, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ip.i, align 4
  %17 = ptrtoint ptr %dst46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst46, align 4
  %call.i116 = tail call fastcc i32 @set_addr(ptr noundef %skb, i32 noundef %protoff, ptr noundef %data, i32 noundef %dataoff, i32 noundef %16, i32 noundef %18, i16 noundef zeroext %nated_port.1128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool48.not = icmp eq i32 %call.i116, 0
  br i1 %tobool48.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nf_ct_unexpect_related(ptr noundef %exp) #5
  br label %cleanup86

if.end50:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %port, ptr %arrayidx, align 2
  %arrayidx57 = getelementptr [2 x i16], ptr %data.i, i32 0, i32 %lnot.ext
  %20 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %nated_port.1128, ptr %arrayidx57, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nat_h245.__UNIQUE_ID_ddebug694, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nat_h245, %if.then67)) #5
          to label %cleanup86 [label %if.then67], !srcloc !110

if.then67:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %u72 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 0, i32 1
  %21 = ptrtoint ptr %u72 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %u72, align 4
  %conv74 = zext i16 %22 to i32
  %23 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %u, align 4
  %conv82 = zext i16 %24 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nat_h245.__UNIQUE_ID_ddebug694, ptr noundef nonnull @.str.25, ptr noundef %tuple, i32 noundef %conv74, ptr noundef %dst, i32 noundef %conv82) #5
  br label %cleanup86

cleanup86:                                        ; preds = %if.then67, %if.end50, %if.then49, %do.end, %do.body.cleanup86_crit_edge
  %retval.0 = phi i32 [ -1, %if.then49 ], [ 0, %do.end ], [ 0, %do.body.cleanup86_crit_edge ], [ 0, %if.then67 ], [ 0, %if.end50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nat_callforwarding(ptr noundef %skb, ptr nocapture noundef readonly %ct, i32 noundef %ctinfo, i32 noundef %protoff, ptr nocapture noundef writeonly %data, i32 noundef %dataoff, ptr nocapture noundef readonly %taddr, i16 noundef zeroext %port, ptr noundef %exp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ctinfo)
  %cmp = icmp ult i32 %ctinfo, 3
  %saved_addr = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 11
  %tuple = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2
  %dst = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1
  %0 = call ptr @memcpy(ptr %saved_addr, ptr %dst, i32 16)
  %lnot.ext = zext i1 %cmp to i32
  %dst2 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %lnot.ext, i32 1, i32 1
  %1 = ptrtoint ptr %dst2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dst2, align 4
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %dst, align 4
  %u = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %u, align 4
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 12
  %6 = ptrtoint ptr %saved_proto to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %saved_proto, align 4
  %expectfn = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 4
  %7 = ptrtoint ptr %expectfn to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ip_nat_callforwarding_expect, ptr %expectfn, align 4
  %dir14 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 13
  %8 = ptrtoint ptr %dir14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lnot.ext, ptr %dir14, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %port)
  %cmp15.not114 = icmp eq i16 %port, 0
  br i1 %cmp15.not114, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %nated_port.0115 = phi i16 [ %inc, %for.inc.for.body_crit_edge ], [ %port, %entry.for.body_crit_edge ]
  %9 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %nated_port.0115, ptr %u, align 4
  %call.i = tail call i32 @nf_ct_expect_related_report(ptr noundef %exp, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %10 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call.i, label %for.body.do.body_crit_edge [
    i32 0, label %if.end39
    i32 -16, label %for.inc
  ]

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.inc:                                          ; preds = %for.body
  %inc = add i16 %nated_port.0115, 1
  %cmp15.not = icmp eq i16 %inc, 0
  br i1 %cmp15.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %call31 = tail call i32 @net_ratelimit() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body.cleanup80_crit_edge, label %do.end

do.body.cleanup80_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup80

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #8
  br label %cleanup80

if.end39:                                         ; preds = %for.body
  %ip.i = getelementptr inbounds %struct.TransportAddress, ptr %taddr, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ip.i, align 4
  %13 = ptrtoint ptr %dst2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst2, align 4
  %call.i103 = tail call fastcc i32 @set_addr(ptr noundef %skb, i32 noundef %protoff, ptr noundef %data, i32 noundef %dataoff, i32 noundef %12, i32 noundef %14, i16 noundef zeroext %nated_port.0115) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool49.not = icmp eq i32 %call.i103, 0
  br i1 %tobool49.not, label %do.body52, label %if.then50

if.then50:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nf_ct_unexpect_related(ptr noundef %exp) #5
  br label %cleanup80

do.body52:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nat_callforwarding.__UNIQUE_ID_ddebug696, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nat_callforwarding, %if.then61)) #5
          to label %cleanup80 [label %if.then61], !srcloc !110

if.then61:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #7
  %u66 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 0, i32 1
  %15 = ptrtoint ptr %u66 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %u66, align 4
  %conv68 = zext i16 %16 to i32
  %17 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %u, align 4
  %conv76 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nat_callforwarding.__UNIQUE_ID_ddebug696, ptr noundef nonnull @.str.27, ptr noundef %tuple, i32 noundef %conv68, ptr noundef %dst, i32 noundef %conv76) #5
  br label %cleanup80

cleanup80:                                        ; preds = %if.then61, %do.body52, %if.then50, %do.end, %do.body.cleanup80_crit_edge
  %retval.0 = phi i32 [ -1, %if.then50 ], [ 0, %do.end ], [ 0, %do.body.cleanup80_crit_edge ], [ 0, %if.then61 ], [ 0, %do.body52 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nat_q931(ptr noundef %skb, ptr noundef %ct, i32 noundef %ctinfo, i32 noundef %protoff, ptr nocapture noundef %data, ptr noundef %taddr, i32 noundef %idx, i16 noundef zeroext %port, ptr noundef %exp) #2 align 64 {
entry:
  %port.addr = alloca i16, align 2
  %addr = alloca %union.nf_inet_addr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %port, ptr %port.addr, align 2
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 13
  %1 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i.i, label %entry.nfct_help_data.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i

entry.nfct_help_data.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfct_help_data.exit

nf_ct_ext_exist.exit.i.i:                         ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.i.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, label %if.end.i.i

nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfct_help_data.exit

if.end.i.i:                                       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i.i = zext i8 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  br label %nfct_help_data.exit

nfct_help_data.exit:                              ; preds = %if.end.i.i, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge, %entry.nfct_help_data.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i.i ], [ null, %nf_ct_ext_exist.exit.i.i.nfct_help_data.exit_crit_edge ], [ null, %entry.nfct_help_data.exit_crit_edge ]
  %data.i = getelementptr inbounds %struct.nf_conn_help, ptr %retval.0.i.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo)
  %cmp = icmp ugt i32 %ctinfo, 2
  %cond = zext i1 %cmp to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %addr) #5
  %tuple = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2
  %dst = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1
  %u = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 1, i32 1
  %5 = call ptr @memset(ptr %addr, i32 255, i32 16)
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %u, align 4
  %saved_proto = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 12
  %8 = ptrtoint ptr %saved_proto to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %saved_proto, align 4
  %expectfn = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 4
  %9 = ptrtoint ptr %expectfn to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ip_nat_q931_expect, ptr %expectfn, align 4
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %dir3 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 13
  %10 = ptrtoint ptr %dir3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %lnot.ext, ptr %dir3, align 4
  %arrayidx = getelementptr [2 x i16], ptr %data.i, i32 0, i32 %cond
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %port)
  %cmp5 = icmp eq i16 %12, %port
  br i1 %cmp5, label %if.then, label %nfct_help_data.exit.if.end_crit_edge

nfct_help_data.exit.if.end_crit_edge:             ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %nfct_help_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx11 = getelementptr [2 x i16], ptr %data.i, i32 0, i32 %lnot.ext
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx11, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %nfct_help_data.exit.if.end_crit_edge
  %nated_port.0 = phi i16 [ %14, %if.then ], [ %port, %nfct_help_data.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nated_port.0)
  %cmp13.not170 = icmp eq i16 %nated_port.0, 0
  br i1 %cmp13.not170, label %if.end.do.body_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %nated_port.1171 = phi i16 [ %inc, %for.inc.for.body_crit_edge ], [ %nated_port.0, %if.end.for.body_crit_edge ]
  %15 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %nated_port.1171, ptr %u, align 4
  %call.i = tail call i32 @nf_ct_expect_related_report(ptr noundef %exp, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %16 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call.i, label %for.body.do.body_crit_edge [
    i32 0, label %if.end40
    i32 -16, label %for.inc
  ]

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.inc:                                          ; preds = %for.body
  %inc = add i16 %nated_port.1171, 1
  %cmp13.not = icmp eq i16 %inc, 0
  br i1 %cmp13.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %for.body.do.body_crit_edge, %if.end.do.body_crit_edge
  %call32 = tail call i32 @net_ratelimit() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body.cleanup115_crit_edge, label %do.end

do.body.cleanup115_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup115

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #8
  br label %cleanup115

if.end40:                                         ; preds = %for.body
  %dst47 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %lnot.ext, i32 1, i32 1
  %ip.i = getelementptr %struct.TransportAddress, ptr %taddr, i32 %idx, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ip.i, align 4
  %19 = ptrtoint ptr %dst47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst47, align 4
  %call.i157 = tail call fastcc i32 @set_addr(ptr noundef %skb, i32 noundef %protoff, ptr noundef %data, i32 noundef 0, i32 noundef %18, i32 noundef %20, i16 noundef zeroext %nated_port.1171) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool49.not = icmp eq i32 %call.i157, 0
  br i1 %tobool49.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nf_ct_unexpect_related(ptr noundef %exp) #5
  br label %cleanup115

if.end51:                                         ; preds = %if.end40
  %21 = ptrtoint ptr %port.addr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %port.addr, align 2
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayidx, align 2
  %arrayidx58 = getelementptr [2 x i16], ptr %data.i, i32 0, i32 %lnot.ext
  %24 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %nated_port.1171, ptr %arrayidx58, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %cmp59 = icmp sgt i32 %idx, 0
  br i1 %cmp59, label %land.lhs.true, label %if.end51.do.body87_crit_edge

if.end51.do.body87_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body87

land.lhs.true:                                    ; preds = %if.end51
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %call62 = call i32 @get_h225_addr(ptr noundef %ct, ptr noundef %26, ptr noundef %taddr, ptr noundef nonnull %addr, ptr noundef nonnull %port.addr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true.do.body87_crit_edge, label %land.lhs.true64

land.lhs.true.do.body87_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body87

land.lhs.true64:                                  ; preds = %land.lhs.true
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr, align 4
  %and = and i32 %28, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706432, i32 %and)
  %cmp65 = icmp eq i32 %and, 2130706432
  br i1 %cmp65, label %if.then67, label %land.lhs.true64.do.body87_crit_edge

land.lhs.true64.do.body87_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body87

if.then67:                                        ; preds = %land.lhs.true64
  %29 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx58, align 2
  %ip.i158 = getelementptr inbounds %struct.TransportAddress, ptr %taddr, i32 0, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %ip.i158 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ip.i158, align 4
  %33 = ptrtoint ptr %dst47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dst47, align 4
  %call.i159 = call fastcc i32 @set_addr(ptr noundef %skb, i32 noundef %protoff, ptr noundef %data, i32 noundef 0, i32 noundef %32, i32 noundef %34, i16 noundef zeroext %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool83.not = icmp eq i32 %call.i159, 0
  br i1 %tobool83.not, label %if.then67.do.body87_crit_edge, label %if.then84

if.then67.do.body87_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body87

if.then84:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  call void @nf_ct_unexpect_related(ptr noundef %exp) #5
  br label %cleanup115

do.body87:                                        ; preds = %if.then67.do.body87_crit_edge, %land.lhs.true64.do.body87_crit_edge, %land.lhs.true.do.body87_crit_edge, %if.end51.do.body87_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nat_q931.__UNIQUE_ID_ddebug695, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nat_q931, %if.then96)) #5
          to label %cleanup115 [label %if.then96], !srcloc !110

if.then96:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #7
  %u101 = getelementptr inbounds %struct.nf_conntrack_expect, ptr %exp, i32 0, i32 2, i32 0, i32 1
  %35 = ptrtoint ptr %u101 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %u101, align 4
  %conv103 = zext i16 %36 to i32
  %37 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %u, align 4
  %conv111 = zext i16 %38 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nat_q931.__UNIQUE_ID_ddebug695, ptr noundef nonnull @.str.30, ptr noundef %tuple, i32 noundef %conv103, ptr noundef %dst, i32 noundef %conv111) #5
  br label %cleanup115

cleanup115:                                       ; preds = %if.then96, %do.body87, %if.then84, %if.then50, %do.end, %do.body.cleanup115_crit_edge
  %retval.0 = phi i32 [ -1, %if.then50 ], [ -1, %if.then84 ], [ 0, %do.end ], [ 0, %do.body.cleanup115_crit_edge ], [ 0, %if.then96 ], [ 0, %do.body87 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %addr) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_expectfn_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_addr(ptr noundef %skb, i32 noundef %protoff, ptr nocapture noundef writeonly %data, i32 noundef %dataoff, i32 noundef %addroff, i32 noundef %ip, i16 noundef zeroext %port) unnamed_addr #2 align 64 {
entry:
  %buf = alloca %struct.anon.218, align 4
  %_tcph = alloca %struct.tcphdr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and.i = and i32 %1, 7
  %and1.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i to ptr
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #5
  %3 = getelementptr inbounds %struct.anon.218, ptr %buf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #5
  %4 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %ip, ptr %buf, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %port, ptr %3, align 4
  %add = add i32 %addroff, %dataoff
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %9 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %10 to i32
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv.i.i
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %12)
  %cmp = icmp eq i8 %12, 6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i = call zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef %skb, ptr noundef %2, i32 noundef %and.i, i32 noundef %protoff, i32 noundef %add, i32 noundef 6, ptr noundef nonnull %buf, i32 noundef 6, i1 noundef zeroext true) #5
  br i1 %call.i, label %if.end13, label %do.body

do.body:                                          ; preds = %if.then
  %call7 = call i32 @net_ratelimit() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end13:                                         ; preds = %if.then
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i, align 8
  %15 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %16 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 %conv.i.i.i
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %18 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %18 to i32
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %21 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i, align 8
  %23 = add i32 %22, %mul.i
  %sub.i1.i = sub i32 %20, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 19
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !97

if.end.i.i:                                       ; preds = %if.end13
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %mul.i, ptr noundef nonnull %_tcph, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end19_crit_edge

lor.lhs.false.i.i.if.end19_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %if.end13
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %25, i32 %mul.i
  %cmp16 = icmp eq ptr %add.ptr.i.i65, null
  br i1 %cmp16, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end19_crit_edge

skb_header_pointer.exit.if.end19_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %skb_header_pointer.exit.if.end19_crit_edge, %lor.lhs.false.i.i.if.end19_crit_edge
  %retval.0.i.i86 = phi ptr [ %add.ptr.i.i65, %skb_header_pointer.exit.if.end19_crit_edge ], [ %_tcph, %lor.lhs.false.i.i.if.end19_crit_edge ]
  %data20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %26 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data20, align 4
  %28 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i, align 8
  %30 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i68 = zext i16 %31 to i32
  %add.ptr.i.i.i69 = getelementptr i8, ptr %29, i32 %conv.i.i.i68
  %32 = ptrtoint ptr %add.ptr.i.i.i69 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i70 = load i8, ptr %add.ptr.i.i.i69, align 4
  %bf.clear.i71 = shl i8 %bf.load.i70, 2
  %33 = and i8 %bf.clear.i71, 60
  %mul.i72 = zext i8 %33 to i32
  %add.ptr = getelementptr i8, ptr %27, i32 %mul.i72
  %doff = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i86, i32 0, i32 4
  %34 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load = load i16, ptr %doff, align 4
  %35 = lshr i16 %bf.load, 10
  %36 = and i16 %35, 60
  %mul = zext i16 %36 to i32
  %add.ptr23 = getelementptr i8, ptr %add.ptr, i32 %mul
  %add.ptr24 = getelementptr i8, ptr %add.ptr23, i32 %dataoff
  br label %if.end44

if.else:                                          ; preds = %entry
  %call25 = call zeroext i1 @nf_nat_mangle_udp_packet(ptr noundef %skb, ptr noundef %2, i32 noundef %and.i, i32 noundef %protoff, i32 noundef %add, i32 noundef 6, ptr noundef nonnull %buf, i32 noundef 6) #5
  br i1 %call25, label %if.end39, label %do.body27

do.body27:                                        ; preds = %if.else
  %call28 = call i32 @net_ratelimit() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.body27.cleanup_crit_edge, label %do.end33

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end33:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end39:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %data40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %37 = ptrtoint ptr %data40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data40, align 4
  %39 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i.i, align 8
  %41 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i75 = zext i16 %42 to i32
  %add.ptr.i.i.i76 = getelementptr i8, ptr %40, i32 %conv.i.i.i75
  %43 = ptrtoint ptr %add.ptr.i.i.i76 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i77 = load i8, ptr %add.ptr.i.i.i76, align 4
  %bf.clear.i78 = shl i8 %bf.load.i77, 2
  %44 = and i8 %bf.clear.i78, 60
  %mul.i79 = zext i8 %44 to i32
  %add.ptr42 = getelementptr i8, ptr %38, i32 %mul.i79
  %add.ptr43 = getelementptr i8, ptr %add.ptr42, i32 8
  br label %if.end44

if.end44:                                         ; preds = %if.end39, %if.end19
  %storemerge = phi ptr [ %add.ptr43, %if.end39 ], [ %add.ptr24, %if.end19 ]
  %45 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %storemerge, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end33, %do.body27.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ], [ -1, %skb_header_pointer.exit.cleanup_crit_edge ], [ -1, %do.end33 ], [ -1, %do.body27.cleanup_crit_edge ], [ -1, %if.end.i.i.cleanup_crit_edge ], [ -1, %lor.lhs.false.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_nat_mangle_udp_packet(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__nf_nat_mangle_tcp_packet(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_h225_addr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_unexpect_related(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_expect_related_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !59, !60, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !85, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_nf_nat_h323__715_627_init6, !1, !"__initcall__kmod_nf_nat_h323__715_627_init6", i1 false, i1 false}
!1 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 627, i32 1}
!2 = !{ptr @__exitcall_fini, !3, !"__exitcall_fini", i1 false, i1 false}
!3 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 628, i32 1}
!4 = !{ptr @__UNIQUE_ID_author716, !5, !"__UNIQUE_ID_author716", i1 false, i1 false}
!5 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 630, i32 1}
!6 = !{ptr @__UNIQUE_ID_description717, !7, !"__UNIQUE_ID_description717", i1 false, i1 false}
!7 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 631, i32 1}
!8 = !{ptr @__UNIQUE_ID_file718, !9, !"__UNIQUE_ID_file718", i1 false, i1 false}
!9 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 632, i32 1}
!10 = !{ptr @__UNIQUE_ID_license719, !9, !"__UNIQUE_ID_license719", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias720, !12, !"__UNIQUE_ID_alias720", i1 false, i1 false}
!12 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 633, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 573, i32 11}
!15 = !{ptr @q931_nat, !16, !"q931_nat", i1 false, i1 false}
!16 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 572, i32 37}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 578, i32 11}
!19 = !{ptr @callforwarding_nat, !20, !"callforwarding_nat", i1 false, i1 false}
!20 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 577, i32 37}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 44, i32 4}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @set_addr._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @set_addr._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 58, i32 4}
!29 = !{ptr @set_addr._entry.5, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @set_addr._entry_ptr.7, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 116, i32 5}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @set_sig_addr.__UNIQUE_ID_ddebug688, !32, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!36 = !{ptr @set_sig_addr.__UNIQUE_ID_ddebug689, !37, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!37 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 128, i32 5}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 159, i32 4}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @set_ras_addr.__UNIQUE_ID_ddebug690, !39, !"__UNIQUE_ID_ddebug690", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 214, i32 3}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nat_rtp_rtcp._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @nat_rtp_rtcp._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 246, i32 3}
!49 = !{ptr @nat_rtp_rtcp._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @nat_rtp_rtcp._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 265, i32 2}
!53 = !{ptr @nat_rtp_rtcp.__UNIQUE_ID_ddebug691, !52, !"__UNIQUE_ID_ddebug691", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 270, i32 2}
!56 = !{ptr @nat_rtp_rtcp.__UNIQUE_ID_ddebug692, !55, !"__UNIQUE_ID_ddebug692", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 309, i32 3}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @nat_t120._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @nat_t120._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 321, i32 2}
!64 = !{ptr @nat_t120.__UNIQUE_ID_ddebug693, !63, !"__UNIQUE_ID_ddebug693", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 365, i32 3}
!67 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @nat_h245._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @nat_h245._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 381, i32 2}
!72 = !{ptr @nat_h245.__UNIQUE_ID_ddebug694, !71, !"__UNIQUE_ID_ddebug694", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 550, i32 3}
!75 = !{ptr @nat_callforwarding._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @nat_callforwarding._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 563, i32 2}
!79 = !{ptr @nat_callforwarding.__UNIQUE_ID_ddebug696, !78, !"__UNIQUE_ID_ddebug696", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 457, i32 3}
!82 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @nat_q931._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @nat_q931._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/ipv4/netfilter/nf_nat_h323.c", i32 486, i32 2}
!87 = !{ptr @nat_q931.__UNIQUE_ID_ddebug695, !86, !"__UNIQUE_ID_ddebug695", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 2159143819, i64 2159144316, i64 2159143856, i64 2159143912, i64 2159143946, i64 2159143970, i64 2159144011, i64 2159144032, i64 2159144060, i64 2159144094}
!99 = !{i64 2159145492, i64 2159145989, i64 2159145529, i64 2159145585, i64 2159145619, i64 2159145643, i64 2159145684, i64 2159145705, i64 2159145733, i64 2159145767}
!100 = !{i64 2159147163, i64 2159147660, i64 2159147200, i64 2159147256, i64 2159147290, i64 2159147314, i64 2159147355, i64 2159147376, i64 2159147404, i64 2159147438}
!101 = !{i64 2159148834, i64 2159149331, i64 2159148871, i64 2159148927, i64 2159148961, i64 2159148985, i64 2159149026, i64 2159149047, i64 2159149075, i64 2159149109}
!102 = !{i64 2159150505, i64 2159151002, i64 2159150542, i64 2159150598, i64 2159150632, i64 2159150656, i64 2159150697, i64 2159150718, i64 2159150746, i64 2159150780}
!103 = !{i64 2159152168, i64 2159152665, i64 2159152205, i64 2159152261, i64 2159152295, i64 2159152319, i64 2159152360, i64 2159152381, i64 2159152409, i64 2159152443}
!104 = !{i64 2159153831, i64 2159154328, i64 2159153868, i64 2159153924, i64 2159153958, i64 2159153982, i64 2159154023, i64 2159154044, i64 2159154072, i64 2159154106}
!105 = !{i64 2159155514, i64 2159156011, i64 2159155551, i64 2159155607, i64 2159155641, i64 2159155665, i64 2159155706, i64 2159155727, i64 2159155755, i64 2159155789}
!106 = !{i64 2159157177, i64 2159157674, i64 2159157214, i64 2159157270, i64 2159157304, i64 2159157328, i64 2159157369, i64 2159157390, i64 2159157418, i64 2159157452}
!107 = !{!"auto-init"}
!108 = !{i64 2159125179, i64 2159125676, i64 2159125216, i64 2159125272, i64 2159125306, i64 2159125330, i64 2159125371, i64 2159125392, i64 2159125420, i64 2159125454}
!109 = !{i64 2159132457, i64 2159132954, i64 2159132494, i64 2159132550, i64 2159132584, i64 2159132608, i64 2159132649, i64 2159132670, i64 2159132698, i64 2159132732}
!110 = !{i64 2148970255, i64 2148970260, i64 2148970273, i64 2148970317, i64 2148970351, i64 2148970372}
