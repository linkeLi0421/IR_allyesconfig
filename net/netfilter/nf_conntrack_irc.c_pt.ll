; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_irc.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_irc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_nat_irc_hook\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_nat_irc_hook\09\09\09\09"
module asm "\09.long\09__crc_nf_nat_irc_hook\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_nat_irc_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_nat_irc_hook\22\09\09\09\09\09"
module asm "__kstrtabns_nf_nat_irc_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.91 }
%union.anon.91 = type { ptr }
%struct.nf_conntrack_helper = type { %struct.hlist_node, [16 x i8], %struct.refcount_struct, ptr, ptr, %struct.nf_conntrack_tuple, ptr, ptr, ptr, ptr, i32, i32, i32, i16, [16 x i8] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.157 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.157 = type { %union.nf_inet_addr, %union.anon.158, i8, i8 }
%union.anon.158 = type { i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nf_conntrack_expect_policy = type { i32, i32, [16 x i8] }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.134, %union.anon.135, [48 x i8], %union.anon.136, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.138, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.134 = type { ptr }
%union.anon.135 = type { i64 }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type { i32, ptr }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.140, i32, i32, i32, i16, i16, %union.anon.142, i32, %union.anon.143, %union.anon.144, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.140 = type { i32 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.144 = type { i16 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.166, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.166 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@nf_nat_irc_hook = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_nf_nat_irc_hook = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_nat_irc_hook = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_nat_irc_hook = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_nat_irc_hook to i32), ptr @__kstrtab_nf_nat_irc_hook, ptr @__kstrtabns_nf_nat_irc_hook }, section "___ksymtab_gpl+nf_nat_irc_hook", align 4
@__UNIQUE_ID_author581 = internal constant [61 x i8] c"nf_conntrack_irc.author=Harald Welte <laforge@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description582 = internal constant [66 x i8] c"nf_conntrack_irc.description=IRC (DCC) connection tracking helper\00", section ".modinfo", align 1
@__UNIQUE_ID_file583 = internal constant [53 x i8] c"nf_conntrack_irc.file=net/netfilter/nf_conntrack_irc\00", section ".modinfo", align 1
@__UNIQUE_ID_license584 = internal constant [29 x i8] c"nf_conntrack_irc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias585 = internal constant [40 x i8] c"nf_conntrack_irc.alias=ip_conntrack_irc\00", section ".modinfo", align 1
@__UNIQUE_ID_alias586 = internal constant [39 x i8] c"nf_conntrack_irc.alias=nfct-helper-irc\00", section ".modinfo", align 1
@__param_str_ports = internal constant [23 x i8] c"nf_conntrack_irc.ports\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_ports = internal constant %struct.kparam_array { i32 8, i32 2, ptr @ports_c, ptr @param_ops_ushort, ptr @ports }, align 4
@__param_ports = internal constant %struct.kernel_param { ptr @__param_str_ports, ptr null, ptr @param_array_ops, i16 256, i8 -1, i8 0, %union.anon.91 { ptr @__param_arr_ports } }, section "__param", align 4
@__UNIQUE_ID_portstype587 = internal constant [48 x i8] c"nf_conntrack_irc.parmtype=ports:array of ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_ports588 = internal constant [56 x i8] c"nf_conntrack_irc.parm=ports:port numbers of IRC servers\00", section ".modinfo", align 1
@__param_str_max_dcc_channels = internal constant [34 x i8] c"nf_conntrack_irc.max_dcc_channels\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@max_dcc_channels = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_max_dcc_channels = internal constant %struct.kernel_param { ptr @__param_str_max_dcc_channels, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.91 { ptr @max_dcc_channels } }, section "__param", align 4
@__UNIQUE_ID_max_dcc_channelstype589 = internal constant [48 x i8] c"nf_conntrack_irc.parmtype=max_dcc_channels:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_dcc_channels590 = internal constant [91 x i8] c"nf_conntrack_irc.parm=max_dcc_channels:max number of expected DCC channels per IRC session\00", section ".modinfo", align 1
@__param_str_dcc_timeout = internal constant [29 x i8] c"nf_conntrack_irc.dcc_timeout\00", align 1
@dcc_timeout = internal global i32 300, section ".data..read_mostly", align 4
@__param_dcc_timeout = internal constant %struct.kernel_param { ptr @__param_str_dcc_timeout, ptr null, ptr @param_ops_uint, i16 256, i8 -1, i8 0, %union.anon.91 { ptr @dcc_timeout } }, section "__param", align 4
@__UNIQUE_ID_dcc_timeouttype591 = internal constant [43 x i8] c"nf_conntrack_irc.parmtype=dcc_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dcc_timeout592 = internal constant [76 x i8] c"nf_conntrack_irc.parm=dcc_timeout:timeout on for unestablished DCC channels\00", section ".modinfo", align 1
@irc = internal global [8 x %struct.nf_conntrack_helper] zeroinitializer, section ".data..read_mostly", align 4
@ports_c = internal global { i32, [28 x i8] } zeroinitializer, align 32
@irc_buffer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_nf_conntrack_irc__599_284_nf_conntrack_irc_init6 = internal global ptr @nf_conntrack_irc_init, section ".initcall6.init", align 4
@__exitcall_nf_conntrack_irc_fini = internal global ptr @nf_conntrack_irc_fini, section ".exitcall.exit", align 4
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@ports = internal global { [8 x i16], [16 x i8] } zeroinitializer, align 32
@nf_conntrack_irc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013nf_conntrack_irc: max_dcc_channels must not be zero\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nf_conntrack_irc_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net/netfilter/nf_conntrack_irc.c\00", [63 x i8] zeroinitializer }, align 32
@nf_conntrack_irc_init._entry_ptr = internal global ptr @nf_conntrack_irc_init._entry, section ".printk_index", align 4
@nf_conntrack_irc_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013nf_conntrack_irc: max_dcc_channels must not be more than %u\0A\00", [33 x i8] zeroinitializer }, align 32
@nf_conntrack_irc_init._entry_ptr.5 = internal global ptr @nf_conntrack_irc_init._entry.3, section ".printk_index", align 4
@irc_exp_policy = internal global { %struct.nf_conntrack_expect_policy, [40 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irc\00", [28 x i8] zeroinitializer }, align 32
@nf_conntrack_irc_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013nf_conntrack_irc: failed to register helpers\0A\00", [48 x i8] zeroinitializer }, align 32
@nf_conntrack_irc_init._entry_ptr.9 = internal global ptr @nf_conntrack_irc_init._entry.7, section ".printk_index", align 4
@irc_buffer_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01DCC \00", [26 x i8] zeroinitializer }, align 32
@help.__UNIQUE_ID_ddebug593 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nf_conntrack_irc\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"help\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DCC found in master %pI4:%u %pI4:%u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"nf_conntrack_irc: DCC found in master %pI4:%u %pI4:%u\0A\00", [41 x i8] zeroinitializer }, align 32
@dccprotos = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], [44 x i8] zeroinitializer }, align 32
@help.__UNIQUE_ID_ddebug594 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DCC %s detected\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nf_conntrack_irc: DCC %s detected\0A\00", [61 x i8] zeroinitializer }, align 32
@help.__UNIQUE_ID_ddebug595 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.17, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to parse dcc command\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"nf_conntrack_irc: unable to parse dcc command\0A\00", [49 x i8] zeroinitializer }, align 32
@help.__UNIQUE_ID_ddebug596 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.19, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DCC bound ip/port: %pI4:%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nf_conntrack_irc: DCC bound ip/port: %pI4:%u\0A\00", [50 x i8] zeroinitializer }, align 32
@help._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014nf_conntrack_irc: Forged DCC command from %pI4: %pI4:%u\0A\00", [37 x i8] zeroinitializer }, align 32
@help._entry_ptr = internal global ptr @help._entry, section ".printk_index", align 4
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot alloc expectation\00", [39 x i8] zeroinitializer }, align 32
@help.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot add expectation\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irc_buffer_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SEND \00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CHAT \00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MOVE \00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TSEND \00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SCHAT \00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"max_dcc_channels\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 27, i32 21 }
@___asan_gen_.34 = private unnamed_addr constant [8 x i8] c"ports_c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 26, i32 21 }
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"irc_buffer\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 30, i32 14 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 25, i32 23 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 241, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 246, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"irc_exp_policy\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 234, i32 42 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 263, i32 52 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 270, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"irc_buffer_lock\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 157, i32 20 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 165, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [10 x i8] c"dccprotos\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 57, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 175, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 182, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 186, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 193, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 202, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 213, i32 17 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 221, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 31, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 58, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 58, i32 11 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 58, i32 20 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 58, i32 29 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [36 x i8] c"../net/netfilter/nf_conntrack_irc.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 58, i32 39 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_alias585, ptr @__UNIQUE_ID_alias586, ptr @__UNIQUE_ID_author581, ptr @__UNIQUE_ID_dcc_timeout592, ptr @__UNIQUE_ID_dcc_timeouttype591, ptr @__UNIQUE_ID_description582, ptr @__UNIQUE_ID_file583, ptr @__UNIQUE_ID_license584, ptr @__UNIQUE_ID_max_dcc_channels590, ptr @__UNIQUE_ID_max_dcc_channelstype589, ptr @__UNIQUE_ID_ports588, ptr @__UNIQUE_ID_portstype587, ptr @__exitcall_nf_conntrack_irc_fini, ptr @__initcall__kmod_nf_conntrack_irc__599_284_nf_conntrack_irc_init6, ptr @__ksymtab_nf_nat_irc_hook, ptr @__param_dcc_timeout, ptr @__param_max_dcc_channels, ptr @__param_ports, ptr @help._entry, ptr @help._entry_ptr, ptr @nf_conntrack_irc_fini, ptr @nf_conntrack_irc_init._entry, ptr @nf_conntrack_irc_init._entry.3, ptr @nf_conntrack_irc_init._entry.7, ptr @nf_conntrack_irc_init._entry_ptr, ptr @nf_conntrack_irc_init._entry_ptr.5, ptr @nf_conntrack_irc_init._entry_ptr.9, ptr @max_dcc_channels, ptr @ports_c, ptr @irc_buffer, ptr @ports, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @irc_exp_policy, ptr @.str.6, ptr @.str.8, ptr @irc_buffer_lock, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @dccprotos, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_dcc_channels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports_c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irc_buffer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_irc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_irc_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irc_exp_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_irc_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irc_buffer_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccprotos to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @help._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_conntrack_irc_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i32, ptr @ports_c, align 4
  tail call void @nf_conntrack_helpers_unregister(ptr noundef nonnull @irc, i32 noundef %0) #8
  %1 = load ptr, ptr @irc_buffer, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_helpers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_conntrack_irc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_dcc_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %0)
  %cmp1 = icmp ugt i32 %0, 255
  br i1 %cmp1, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef 255) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  store i32 %0, ptr @irc_exp_policy, align 4
  %1 = load i32, ptr @dcc_timeout, align 4
  store i32 %1, ptr getelementptr inbounds (%struct.nf_conntrack_expect_policy, ptr @irc_exp_policy, i32 0, i32 1), align 4
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65536, i32 noundef 3264, i32 noundef 4) #12
  store ptr %call1.i.i, ptr @irc_buffer, align 4
  %tobool.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %2 = load i32, ptr @ports_c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp12 = icmp eq i32 %2, 0
  br i1 %cmp12, label %if.then13, label %if.end11.for.body.preheader_crit_edge

if.end11.for.body.preheader_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  store i32 1, ptr @ports_c, align 4
  store i16 6667, ptr @ports, align 2
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then13, %if.end11.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.037 = phi i32 [ %inc18, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx16 = getelementptr [8 x %struct.nf_conntrack_helper], ptr @irc, i32 0, i32 %i.037
  %arrayidx17 = getelementptr [8 x i16], ptr @ports, i32 0, i32 %i.037
  %3 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx17, align 2
  tail call void @nf_ct_helper_init(ptr noundef %arrayidx16, i16 noundef zeroext 2, i16 noundef zeroext 6, ptr noundef nonnull @.str.6, i16 noundef zeroext 6667, i16 noundef zeroext %4, i32 noundef %i.037, ptr noundef nonnull @irc_exp_policy, i32 noundef 0, ptr noundef nonnull @help, ptr noundef null, ptr noundef null) #8
  %inc18 = add nuw i32 %i.037, 1
  %5 = load i32, ptr @ports_c, align 4
  %cmp15 = icmp ult i32 %inc18, %5
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %call19 = tail call i32 @nf_conntrack_helpers_register(ptr noundef nonnull @irc, i32 noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.end.cleanup_crit_edge, label %do.end24

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  %6 = load ptr, ptr @irc_buffer, align 4
  tail call void @kfree(ptr noundef %6) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %for.end.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end5 ], [ %call19, %do.end24 ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_init(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @help(ptr noundef %skb, i32 noundef %protoff, ptr noundef %ct, i32 noundef %ctinfo) #4 align 64 {
entry:
  %data.addr.i = alloca ptr, align 4
  %_tcph = alloca %struct.tcphdr, align 4
  %dcc_ip = alloca i32, align 4
  %port = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ctinfo)
  %cmp = icmp ugt i32 %ctinfo, 2
  %cond = zext i1 %cmp to i32
  %0 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dcc_ip) #8
  %1 = ptrtoint ptr %dcc_ip to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dcc_ip, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port) #8
  %2 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %port, align 2, !annotation !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctinfo)
  %cmp2.not = icmp eq i32 %ctinfo, 0
  br i1 %cmp2.not, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %5 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_len.i.i, align 8
  %7 = add i32 %6, %protoff
  %sub.i4.i = sub i32 %4, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !124

if.end.i.i:                                       ; preds = %if.end5
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %protoff, ptr noundef nonnull %_tcph, i32 noundef 20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end8_crit_edge

lor.lhs.false.i.i.if.end8_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %if.end5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %protoff
  %cmp6 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp6, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end8_crit_edge

skb_header_pointer.exit.if.end8_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %skb_header_pointer.exit.if.end8_crit_edge, %lor.lhs.false.i.i.if.end8_crit_edge
  %retval.0.i.i277 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end8_crit_edge ], [ %_tcph, %lor.lhs.false.i.i.if.end8_crit_edge ]
  %doff = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i277, i32 0, i32 4
  %10 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %doff, align 4
  %11 = lshr i16 %bf.load, 10
  %12 = and i16 %11, 60
  %mul = zext i16 %12 to i32
  %add = add i32 %mul, %protoff
  %idx.neg = sub i32 0, %add
  %13 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %14)
  %cmp9.not = icmp ult i32 %add, %14
  br i1 %cmp9.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @_raw_spin_lock_bh(ptr noundef nonnull @irc_buffer_lock) #8
  %15 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i.i, align 4
  %sub = sub i32 %16, %add
  %17 = load ptr, ptr @irc_buffer, align 4
  %18 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i, align 8
  %20 = add i32 %add, %19
  %sub.i4.i254 = sub i32 %16, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i254, i32 %sub)
  %cmp.not.i.i255 = icmp slt i32 %sub.i4.i254, %sub
  br i1 %cmp.not.i.i255, label %if.end.i.i260, label %if.then.i.i258, !prof !124

if.then.i.i258:                                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %data.i256 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i256 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i256, align 4
  %add.ptr.i.i257 = getelementptr i8, ptr %22, i32 %add
  br label %skb_header_pointer.exit266

if.end.i.i260:                                    ; preds = %if.end12
  %tobool2.not.i.i259 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i259, label %if.end.i.i260.cleanup.sink.split_crit_edge, label %lor.lhs.false.i.i264

if.end.i.i260.cleanup.sink.split_crit_edge:       ; preds = %if.end.i.i260
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

lor.lhs.false.i.i264:                             ; preds = %if.end.i.i260
  %call.i.i261 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef %17, i32 noundef %sub) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i261)
  %cmp3.i.i262 = icmp slt i32 %call.i.i261, 0
  br i1 %cmp3.i.i262, label %lor.lhs.false.i.i264.cleanup.sink.split_crit_edge, label %lor.lhs.false.i.i264.skb_header_pointer.exit266_crit_edge

lor.lhs.false.i.i264.skb_header_pointer.exit266_crit_edge: ; preds = %lor.lhs.false.i.i264
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_header_pointer.exit266

lor.lhs.false.i.i264.cleanup.sink.split_crit_edge: ; preds = %lor.lhs.false.i.i264
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

skb_header_pointer.exit266:                       ; preds = %lor.lhs.false.i.i264.skb_header_pointer.exit266_crit_edge, %if.then.i.i258
  %retval.0.i.i265 = phi ptr [ %add.ptr.i.i257, %if.then.i.i258 ], [ %17, %lor.lhs.false.i.i264.skb_header_pointer.exit266_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i.i265, null
  br i1 %tobool.not, label %skb_header_pointer.exit266.cleanup.sink.split_crit_edge, label %if.end16

skb_header_pointer.exit266.cleanup.sink.split_crit_edge: ; preds = %skb_header_pointer.exit266
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end16:                                         ; preds = %skb_header_pointer.exit266
  %23 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i.i, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i.i265, i32 %24
  %add.ptr18 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %add.ptr19 = getelementptr i8, ptr %add.ptr18, i32 -24
  %cmp20305311 = icmp ult ptr %retval.0.i.i265, %add.ptr19
  br i1 %cmp20305311, label %while.body.lr.ph.lr.ph, label %if.end16.cleanup.sink.split_crit_edge

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

while.body.lr.ph.lr.ph:                           ; preds = %if.end16
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %dest = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i277, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %add.ptr18, i32 -12
  %tuple102 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %cond, i32 1
  %dst = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 %cond, i32 1, i32 1
  br label %while.body

while.cond.loopexit:                              ; preds = %for.inc
  %cmp20305 = icmp ult ptr %data.2, %add.ptr19
  br i1 %cmp20305, label %while.cond.loopexit.while.body.backedge_crit_edge, label %while.cond.loopexit.cleanup.sink.split_crit_edge

while.cond.loopexit.cleanup.sink.split_crit_edge: ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

while.cond.loopexit.while.body.backedge_crit_edge: ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.backedge

while.body:                                       ; preds = %while.body.backedge, %while.body.lr.ph.lr.ph
  %data.0306 = phi ptr [ %retval.0.i.i265, %while.body.lr.ph.lr.ph ], [ %data.0306.be, %while.body.backedge ]
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(5) %data.0306, ptr noundef nonnull dereferenceable(5) @.str.10, i32 5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool23.not = icmp eq i32 %bcmp, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %while.body
  %incdec.ptr = getelementptr i8, ptr %data.0306, i32 1
  %cmp20 = icmp ult ptr %incdec.ptr, %add.ptr19
  br i1 %cmp20, label %if.then24.while.body.backedge_crit_edge, label %if.then24.cleanup.sink.split_crit_edge

if.then24.cleanup.sink.split_crit_edge:           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then24.while.body.backedge_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.backedge

while.body.backedge:                              ; preds = %if.then24.while.body.backedge_crit_edge, %while.cond.loopexit.while.body.backedge_crit_edge
  %data.0306.be = phi ptr [ %incdec.ptr, %if.then24.while.body.backedge_crit_edge ], [ %data.2, %while.cond.loopexit.while.body.backedge_crit_edge ]
  br label %while.body

if.end25:                                         ; preds = %while.body
  %add.ptr26 = getelementptr i8, ptr %data.0306, i32 5
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %27 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @help.__UNIQUE_ID_ddebug593, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@help, %if.then32)) #8
          to label %for.body [label %if.then32], !srcloc !125

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i16 %28 to i32
  %add.ptr.i.i267 = getelementptr i8, ptr %26, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i267, i32 0, i32 8
  %29 = ptrtoint ptr %retval.0.i.i277 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %retval.0.i.i277, align 4
  %conv33 = zext i16 %30 to i32
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i267, i32 0, i32 9
  %31 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dest, align 2
  %conv34 = zext i16 %32 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @help.__UNIQUE_ID_ddebug593, ptr noundef nonnull @.str.14, ptr noundef %saddr, i32 noundef %conv33, ptr noundef %daddr, i32 noundef %conv34) #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then32, %if.end25
  %data.1310 = phi ptr [ %data.2, %for.inc.for.body_crit_edge ], [ %add.ptr26, %if.end25 ], [ %add.ptr26, %if.then32 ]
  %i.0309 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end25 ], [ 0, %if.then32 ]
  %arrayidx = getelementptr [5 x ptr], ptr @dccprotos, i32 0, i32 %i.0309
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %call39 = call i32 @strlen(ptr noundef %34) #13
  %bcmp241 = call i32 @bcmp(ptr %data.1310, ptr %34, i32 %call39) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp241)
  %tobool41.not = icmp eq i32 %bcmp241, 0
  br i1 %tobool41.not, label %if.end43, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end43:                                         ; preds = %for.body
  %add.ptr46 = getelementptr i8, ptr %data.1310, i32 %call39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @help.__UNIQUE_ID_ddebug594, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@help, %if.then59)) #8
          to label %do.end63 [label %if.then59], !srcloc !125

if.then59:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @help.__UNIQUE_ID_ddebug594, ptr noundef nonnull @.str.16, ptr noundef %34) #8
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %if.end43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i)
  %35 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr46, ptr %data.addr.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %do.end63
  %36 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.addr.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %37, i32 1
  store ptr %incdec.ptr.i, ptr %data.addr.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %39)
  %cmp.not.i = icmp eq i8 %39, 32
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %while.body.i

for.cond.preheader.i:                             ; preds = %while.cond.i
  %cmp4.not44.i = icmp ugt ptr %incdec.ptr.i, %add.ptr18
  br i1 %cmp4.not44.i, label %for.cond.preheader.i.do.body67_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.do.body67_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

while.body.i:                                     ; preds = %while.cond.i
  %cmp2.i = icmp ugt ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp2.i, label %while.body.i.do.body67_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.body.i.do.body67_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %tmp.045.i = phi ptr [ %incdec.ptr11.i, %for.inc.i.for.body.i_crit_edge ], [ %incdec.ptr.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %tmp.045.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tmp.045.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %41)
  %cmp7.i = icmp eq i8 %41, 10
  br i1 %cmp7.i, label %if.end18.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr11.i = getelementptr i8, ptr %tmp.045.i, i32 1
  %cmp4.not.i = icmp ugt ptr %incdec.ptr11.i, %add.ptr18
  br i1 %cmp4.not.i, label %for.inc.i.do.body67_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.body67_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

if.end18.i:                                       ; preds = %for.body.i
  %call.i = call i32 @simple_strtoul(ptr noundef %incdec.ptr.i, ptr noundef nonnull %data.addr.i, i32 noundef 10) #8
  %42 = ptrtoint ptr %dcc_ip to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.i, ptr %dcc_ip, align 4
  %43 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.addr.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %46)
  %cmp2146.i = icmp eq i8 %46, 32
  br i1 %cmp2146.i, label %if.end18.i.while.body23.i_crit_edge, label %if.end18.i.do.body84_crit_edge

if.end18.i.do.body84_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body84

if.end18.i.while.body23.i_crit_edge:              ; preds = %if.end18.i
  br label %while.body23.i

while.body23.i:                                   ; preds = %if.end27.i.while.body23.i_crit_edge, %if.end18.i.while.body23.i_crit_edge
  %47 = phi ptr [ %incdec.ptr28.i, %if.end27.i.while.body23.i_crit_edge ], [ %44, %if.end18.i.while.body23.i_crit_edge ]
  %cmp24.not.i = icmp ult ptr %47, %add.ptr18
  br i1 %cmp24.not.i, label %if.end27.i, label %while.body23.i.do.body67_crit_edge

while.body23.i.do.body67_crit_edge:               ; preds = %while.body23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body67

if.end27.i:                                       ; preds = %while.body23.i
  %incdec.ptr28.i = getelementptr i8, ptr %47, i32 1
  %48 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %incdec.ptr28.i, ptr %data.addr.i, align 4
  %49 = ptrtoint ptr %incdec.ptr28.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %incdec.ptr28.i, align 1
  %cmp21.i = icmp eq i8 %50, 32
  br i1 %cmp21.i, label %if.end27.i.while.body23.i_crit_edge, label %if.end27.i.do.body84_crit_edge

if.end27.i.do.body84_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body84

if.end27.i.while.body23.i_crit_edge:              ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body23.i

do.body67:                                        ; preds = %while.body23.i.do.body67_crit_edge, %for.inc.i.do.body67_crit_edge, %while.body.i.do.body67_crit_edge, %for.cond.preheader.i.do.body67_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @help.__UNIQUE_ID_ddebug595, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@help, %if.then79)) #8
          to label %for.inc [label %if.then79], !srcloc !125

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @help.__UNIQUE_ID_ddebug595, ptr noundef nonnull @.str.18) #8
  br label %for.inc

do.body84:                                        ; preds = %if.end27.i.do.body84_crit_edge, %if.end18.i.do.body84_crit_edge
  %.lcssa.i = phi ptr [ %44, %if.end18.i.do.body84_crit_edge ], [ %incdec.ptr28.i, %if.end27.i.do.body84_crit_edge ]
  %call30.i = call i32 @simple_strtoul(ptr noundef %.lcssa.i, ptr noundef nonnull %data.addr.i, i32 noundef 10) #8
  %51 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.addr.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @help.__UNIQUE_ID_ddebug596, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@help, %if.then96)) #8
          to label %do.end100 [label %if.then96], !srcloc !125

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  %conv97 = and i32 %call30.i, 65535
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @help.__UNIQUE_ID_ddebug596, ptr noundef nonnull @.str.20, ptr noundef nonnull %dcc_ip, i32 noundef %conv97) #8
  br label %do.end100

do.end100:                                        ; preds = %if.then96, %do.body84
  %53 = ptrtoint ptr %tuple102 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tuple102, align 4
  %55 = ptrtoint ptr %dcc_ip to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dcc_ip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp103.not = icmp eq i32 %54, %56
  br i1 %cmp103.not, label %do.end100.if.end125_crit_edge, label %land.lhs.true105

do.end100.if.end125_crit_edge:                    ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

land.lhs.true105:                                 ; preds = %do.end100
  %57 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %56)
  %cmp107.not = icmp eq i32 %58, %56
  br i1 %cmp107.not, label %land.lhs.true105.if.end125_crit_edge, label %do.body110

land.lhs.true105.if.end125_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

do.body110:                                       ; preds = %land.lhs.true105
  %call111 = call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %do.body110.for.inc_crit_edge, label %do.end116

do.body110.for.inc_crit_edge:                     ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end116:                                        ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #10
  %conv120 = and i32 %call30.i, 65535
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %tuple102, ptr noundef nonnull %dcc_ip, i32 noundef %conv120) #11
  br label %for.inc

if.end125:                                        ; preds = %land.lhs.true105.if.end125_crit_edge, %do.end100.if.end125_crit_edge
  %call126 = call ptr @nf_ct_expect_alloc(ptr noundef %ct) #8
  %cmp127 = icmp eq ptr %call126, null
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %ct, ptr noundef nonnull @.str.22) #8
  br label %cleanup.sink.split

if.end130:                                        ; preds = %if.end125
  %conv31.i.le = trunc i32 %call30.i to i16
  %59 = ptrtoint ptr %port to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv31.i.le, ptr %port, align 2
  %l3num = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 0, i32 2
  %60 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %l3num, align 2
  %conv138 = trunc i16 %61 to i8
  %dst139 = getelementptr %struct.nf_conn, ptr %ct, i32 0, i32 4, i32 1, i32 1, i32 1
  call void @nf_ct_expect_init(ptr noundef nonnull %call126, i32 noundef 0, i8 noundef zeroext %conv138, ptr noundef null, ptr noundef %dst139, i8 noundef zeroext 6, ptr noundef null, ptr noundef nonnull %port) #8
  %62 = load volatile ptr, ptr @nf_nat_irc_hook, align 4
  %call146 = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %land.lhs.true148, label %if.end130.do.end156_crit_edge

if.end130.do.end156_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end156

land.lhs.true148:                                 ; preds = %if.end130
  %call149 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %land.lhs.true148.do.end156_crit_edge, label %land.lhs.true151

land.lhs.true148.do.end156_crit_edge:             ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end156

land.lhs.true151:                                 ; preds = %land.lhs.true148
  %.b242 = load i1, ptr @help.__warned, align 1
  br i1 %.b242, label %land.lhs.true151.do.end156_crit_edge, label %if.then153

land.lhs.true151.do.end156_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end156

if.then153:                                       ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @help.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 213, ptr noundef nonnull @.str.23) #8
  br label %do.end156

do.end156:                                        ; preds = %if.then153, %land.lhs.true151.do.end156_crit_edge, %land.lhs.true148.do.end156_crit_edge, %if.end130.do.end156_crit_edge
  %tobool158.not = icmp eq ptr %62, null
  br i1 %tobool158.not, label %do.end156.if.else_crit_edge, label %land.lhs.true159

do.end156.if.else_crit_edge:                      ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true159:                                 ; preds = %do.end156
  %status = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 5
  %63 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %status, align 8
  %and = and i32 %64, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool160.not = icmp eq i32 %and, 0
  br i1 %tobool160.not, label %land.lhs.true159.if.else_crit_edge, label %if.then161

land.lhs.true159.if.else_crit_edge:               ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then161:                                       ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #10
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %retval.0.i.i265 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.lhs.cast162 = ptrtoint ptr %52 to i32
  %sub.ptr.sub164 = sub i32 %sub.ptr.lhs.cast162, %sub.ptr.lhs.cast
  %call165 = call i32 %62(ptr noundef %skb, i32 noundef 0, i32 noundef %protoff, i32 noundef %sub.ptr.sub, i32 noundef %sub.ptr.sub164, ptr noundef nonnull %call126) #8
  br label %if.end171

if.else:                                          ; preds = %land.lhs.true159.if.else_crit_edge, %do.end156.if.else_crit_edge
  %call.i269 = call i32 @nf_ct_expect_related_report(ptr noundef nonnull %call126, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %cmp167.not = icmp eq i32 %call.i269, 0
  br i1 %cmp167.not, label %if.else.if.end171_crit_edge, label %if.then169

if.else.if.end171_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then169:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @nf_ct_helper_log(ptr noundef %skb, ptr noundef %ct, ptr noundef nonnull @.str.24) #8
  br label %if.end171

if.end171:                                        ; preds = %if.then169, %if.else.if.end171_crit_edge, %if.then161
  %ret.0 = phi i32 [ %call165, %if.then161 ], [ 0, %if.then169 ], [ 1, %if.else.if.end171_crit_edge ]
  call void @nf_ct_expect_put(ptr noundef nonnull %call126) #8
  br label %cleanup.sink.split

for.inc:                                          ; preds = %do.end116, %do.body110.for.inc_crit_edge, %if.then79, %do.body67, %for.body.for.inc_crit_edge
  %data.2 = phi ptr [ %add.ptr46, %do.body110.for.inc_crit_edge ], [ %add.ptr46, %do.end116 ], [ %add.ptr46, %if.then79 ], [ %data.1310, %for.body.for.inc_crit_edge ], [ %add.ptr46, %do.body67 ]
  %inc = add nuw nsw i32 %i.0309, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %while.cond.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.sink.split:                               ; preds = %if.end171, %if.then129, %if.then24.cleanup.sink.split_crit_edge, %while.cond.loopexit.cleanup.sink.split_crit_edge, %if.end16.cleanup.sink.split_crit_edge, %skb_header_pointer.exit266.cleanup.sink.split_crit_edge, %lor.lhs.false.i.i264.cleanup.sink.split_crit_edge, %if.end.i.i260.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 1, %lor.lhs.false.i.i264.cleanup.sink.split_crit_edge ], [ 1, %if.end.i.i260.cleanup.sink.split_crit_edge ], [ 1, %skb_header_pointer.exit266.cleanup.sink.split_crit_edge ], [ 0, %if.then129 ], [ %ret.0, %if.end171 ], [ 1, %if.end16.cleanup.sink.split_crit_edge ], [ 1, %if.then24.cleanup.sink.split_crit_edge ], [ 1, %while.cond.loopexit.cleanup.sink.split_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @irc_buffer_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %skb_header_pointer.exit.cleanup_crit_edge ], [ 1, %if.end8.cleanup_crit_edge ], [ 1, %if.end.i.i.cleanup_crit_edge ], [ 1, %lor.lhs.false.i.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dcc_ip) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_helpers_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_expect_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_helper_log(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_init(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_expect_related_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !47, !48, !50, !52, !53, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !68, !70, !72, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !97, !99, !101, !102, !104, !106, !108, !110, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__ksymtab_nf_nat_irc_hook, !1, !"__ksymtab_nf_nat_irc_hook", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_author581, !3, !"__UNIQUE_ID_author581", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 43, i32 1}
!4 = !{ptr @__UNIQUE_ID_description582, !5, !"__UNIQUE_ID_description582", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 44, i32 1}
!6 = !{ptr @__UNIQUE_ID_file583, !7, !"__UNIQUE_ID_file583", i1 false, i1 false}
!7 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 45, i32 1}
!8 = !{ptr @__UNIQUE_ID_license584, !7, !"__UNIQUE_ID_license584", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_alias585, !10, !"__UNIQUE_ID_alias585", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 46, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias586, !12, !"__UNIQUE_ID_alias586", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 47, i32 1}
!13 = !{ptr @__param_ports, !14, !"__param_ports", i1 false, i1 false}
!14 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 49, i32 1}
!15 = !{ptr @__UNIQUE_ID_portstype587, !14, !"__UNIQUE_ID_portstype587", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_ports588, !17, !"__UNIQUE_ID_ports588", i1 false, i1 false}
!17 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 50, i32 1}
!18 = !{ptr @__param_max_dcc_channels, !19, !"__param_max_dcc_channels", i1 false, i1 false}
!19 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 51, i32 1}
!20 = !{ptr @__UNIQUE_ID_max_dcc_channelstype589, !19, !"__UNIQUE_ID_max_dcc_channelstype589", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_max_dcc_channels590, !22, !"__UNIQUE_ID_max_dcc_channels590", i1 false, i1 false}
!22 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 52, i32 1}
!23 = !{ptr @__param_dcc_timeout, !24, !"__param_dcc_timeout", i1 false, i1 false}
!24 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 54, i32 1}
!25 = !{ptr @__UNIQUE_ID_dcc_timeouttype591, !24, !"__UNIQUE_ID_dcc_timeouttype591", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_dcc_timeout592, !27, !"__UNIQUE_ID_dcc_timeout592", i1 false, i1 false}
!27 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 55, i32 1}
!28 = !{ptr @__initcall__kmod_nf_conntrack_irc__599_284_nf_conntrack_irc_init6, !29, !"__initcall__kmod_nf_conntrack_irc__599_284_nf_conntrack_irc_init6", i1 false, i1 false}
!29 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 284, i32 1}
!30 = !{ptr @__exitcall_nf_conntrack_irc_fini, !31, !"__exitcall_nf_conntrack_irc_fini", i1 false, i1 false}
!31 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 285, i32 1}
!32 = !{ptr @ports_c, !33, !"ports_c", i1 false, i1 false}
!33 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 26, i32 21}
!34 = !{ptr @irc_buffer, !35, !"irc_buffer", i1 false, i1 false}
!35 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 30, i32 14}
!36 = !{ptr @nf_nat_irc_hook, !37, !"nf_nat_irc_hook", i1 false, i1 false}
!37 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 33, i32 16}
!38 = !{ptr @irc, !39, !"irc", i1 false, i1 false}
!39 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 233, i32 35}
!40 = !{ptr @__param_str_ports, !14, !"__param_str_ports", i1 false, i1 false}
!41 = !{ptr @__param_arr_ports, !14, !"__param_arr_ports", i1 false, i1 false}
!42 = !{ptr @ports, !43, !"ports", i1 false, i1 false}
!43 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 25, i32 23}
!44 = !{ptr @__param_str_max_dcc_channels, !19, !"__param_str_max_dcc_channels", i1 false, i1 false}
!45 = !{ptr @max_dcc_channels, !46, !"max_dcc_channels", i1 false, i1 false}
!46 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 27, i32 21}
!47 = !{ptr @__param_str_dcc_timeout, !24, !"__param_str_dcc_timeout", i1 false, i1 false}
!48 = !{ptr @dcc_timeout, !49, !"dcc_timeout", i1 false, i1 false}
!49 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 28, i32 21}
!50 = !{ptr @.str, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 241, i32 3}
!52 = !{ptr @.str.1, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.2, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @nf_conntrack_irc_init._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @nf_conntrack_irc_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.4, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 246, i32 3}
!58 = !{ptr @nf_conntrack_irc_init._entry.3, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @nf_conntrack_irc_init._entry_ptr.5, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.6, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 263, i32 52}
!62 = !{ptr @.str.8, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 270, i32 3}
!64 = !{ptr @nf_conntrack_irc_init._entry.7, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @nf_conntrack_irc_init._entry_ptr.9, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @irc_exp_policy, !67, !"irc_exp_policy", i1 false, i1 false}
!67 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 234, i32 42}
!68 = !{ptr @.str.10, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 157, i32 20}
!70 = !{ptr @.str.11, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 165, i32 3}
!72 = !{ptr @.str.12, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @help.__UNIQUE_ID_ddebug593, !71, !"__UNIQUE_ID_ddebug593", i1 false, i1 false}
!75 = !{ptr @.str.14, !71, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.15, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 175, i32 4}
!78 = !{ptr @help.__UNIQUE_ID_ddebug594, !77, !"__UNIQUE_ID_ddebug594", i1 false, i1 false}
!79 = !{ptr @.str.16, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.17, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 182, i32 5}
!82 = !{ptr @help.__UNIQUE_ID_ddebug595, !81, !"__UNIQUE_ID_ddebug595", i1 false, i1 false}
!83 = !{ptr @.str.18, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.19, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 186, i32 4}
!86 = !{ptr @help.__UNIQUE_ID_ddebug596, !85, !"__UNIQUE_ID_ddebug596", i1 false, i1 false}
!87 = !{ptr @.str.20, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.21, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 193, i32 5}
!90 = !{ptr @help._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @help._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.22, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 202, i32 8}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 213, i32 17}
!96 = !{ptr @.str.23, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.24, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 221, i32 8}
!99 = !{ptr @.str.25, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 31, i32 8}
!101 = !{ptr @irc_buffer_lock, !100, !"irc_buffer_lock", i1 false, i1 false}
!102 = !{ptr @.str.26, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 58, i32 2}
!104 = !{ptr @.str.27, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 58, i32 11}
!106 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 58, i32 20}
!108 = !{ptr @.str.29, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 58, i32 29}
!110 = !{ptr @.str.30, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 58, i32 39}
!112 = !{ptr @dccprotos, !113, !"dccprotos", i1 false, i1 false}
!113 = !{!"../net/netfilter/nf_conntrack_irc.c", i32 57, i32 26}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{!"auto-init"}
!124 = !{!"branch_weights", i32 1, i32 2000}
!125 = !{i64 2148959268, i64 2148959273, i64 2148959286, i64 2148959330, i64 2148959364, i64 2148959385}
