; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_TCPMSS.c_pt.bc'
source_filename = "../net/netfilter/xt_TCPMSS.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ipt_entry = type { %struct.ipt_ip, i32, i16, i16, i32, %struct.xt_counters, [0 x i8] }
%struct.ipt_ip = type { %struct.in_addr, %struct.in_addr, %struct.in_addr, %struct.in_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8 }
%struct.in_addr = type { i32 }
%struct.xt_counters = type { i64, i64 }
%struct.anon.194 = type { i16, ptr }
%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.xt_entry_match = type { %union.anon.192, [0 x i8] }
%union.anon.192 = type { %struct.anon.194, [24 x i8] }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.ip6t_entry = type { %struct.ip6t_ip6, i32, i16, i16, i32, %struct.xt_counters, [0 x i8] }
%struct.ip6t_ip6 = type { %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8 }
%struct.xt_action_param = type { %union.anon.185, %union.anon.186, ptr, i32, i16, i8 }
%union.anon.185 = type { ptr }
%union.anon.186 = type { ptr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.flowi = type { %union.anon.23 }
%union.anon.23 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }

@__UNIQUE_ID_file618 = internal constant [39 x i8] c"xt_TCPMSS.file=net/netfilter/xt_TCPMSS\00", section ".modinfo", align 1
@__UNIQUE_ID_license619 = internal constant [22 x i8] c"xt_TCPMSS.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author620 = internal constant [45 x i8] c"xt_TCPMSS.author=Marc Boucher <marc@mbsi.ca>\00", section ".modinfo", align 1
@__UNIQUE_ID_description621 = internal constant [73 x i8] c"xt_TCPMSS.description=Xtables: TCP Maximum Segment Size (MSS) adjustment\00", section ".modinfo", align 1
@__UNIQUE_ID_alias622 = internal constant [27 x i8] c"xt_TCPMSS.alias=ipt_TCPMSS\00", section ".modinfo", align 1
@__UNIQUE_ID_alias623 = internal constant [28 x i8] c"xt_TCPMSS.alias=ip6t_TCPMSS\00", section ".modinfo", align 1
@tcpmss_tg_reg = internal global [2 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"TCPMSS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @tcpmss_tg4, ptr @tcpmss_tg4_check, ptr null, ptr null, ptr null, i32 2, i32 0, i32 0, i16 6, i16 2 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"TCPMSS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @tcpmss_tg6, ptr @tcpmss_tg6_check, ptr null, ptr null, ptr null, i32 2, i32 0, i32 0, i16 6, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_TCPMSS__630_344_tcpmss_tg_init6 = internal global ptr @tcpmss_tg_init, section ".initcall6.init", align 4
@__exitcall_tcpmss_tg_exit = internal global ptr @tcpmss_tg_exit, section ".exitcall.exit", align 4
@tcpmss_mangle_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013xt_TCPMSS: unknown or invalid path-MTU (%u)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tcpmss_mangle_packet\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/netfilter/xt_TCPMSS.c\00", [38 x i8] zeroinitializer }, align 32
@tcpmss_mangle_packet._entry_ptr = internal global ptr @tcpmss_mangle_packet._entry, section ".printk_index", align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@tcpmss_tg4_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tcpmss_tg4_check = private unnamed_addr constant [17 x i8] c"tcpmss_tg4_check\00", align 1
@tcpmss_tg4_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tcpmss_tg4_check, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\016xt_TCPMSS: path-MTU clamping only supported in FORWARD, OUTPUT and POSTROUTING hooks\0A\00", [40 x i8] zeroinitializer }, align 32
@tcpmss_tg4_check._entry_ptr = internal global ptr @tcpmss_tg4_check._entry, section ".printk_index", align 4
@tcpmss_tg4_check._rs.6 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tcpmss_tg4_check._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.tcpmss_tg4_check, ptr @.str.2, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016xt_TCPMSS: Only works on TCP SYN packets\0A\00", [52 x i8] zeroinitializer }, align 32
@tcpmss_tg4_check._entry_ptr.9 = internal global ptr @tcpmss_tg4_check._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcp\00", [28 x i8] zeroinitializer }, align 32
@tcpmss_tg6_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.tcpmss_tg6_check = private unnamed_addr constant [17 x i8] c"tcpmss_tg6_check\00", align 1
@tcpmss_tg6_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.tcpmss_tg6_check, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tcpmss_tg6_check._entry_ptr = internal global ptr @tcpmss_tg6_check._entry, section ".printk_index", align 4
@tcpmss_tg6_check._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tcpmss_tg6_check._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.tcpmss_tg6_check, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tcpmss_tg6_check._entry_ptr.13 = internal global ptr @tcpmss_tg6_check._entry.12, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 108, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 1011, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 273, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 282, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 255, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 297, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private constant [29 x i8] c"../net/netfilter/xt_TCPMSS.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 306, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_alias622, ptr @__UNIQUE_ID_alias623, ptr @__UNIQUE_ID_author620, ptr @__UNIQUE_ID_description621, ptr @__UNIQUE_ID_file618, ptr @__UNIQUE_ID_license619, ptr @__exitcall_tcpmss_tg_exit, ptr @__initcall__kmod_xt_TCPMSS__630_344_tcpmss_tg_init6, ptr @tcpmss_mangle_packet._entry, ptr @tcpmss_mangle_packet._entry_ptr, ptr @tcpmss_tg4_check._entry, ptr @tcpmss_tg4_check._entry.7, ptr @tcpmss_tg4_check._entry_ptr, ptr @tcpmss_tg4_check._entry_ptr.9, ptr @tcpmss_tg6_check._entry, ptr @tcpmss_tg6_check._entry.12, ptr @tcpmss_tg6_check._entry_ptr, ptr @tcpmss_tg6_check._entry_ptr.13, ptr @tcpmss_tg_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tcpmss_tg4_check._rs, ptr @.str.4, ptr @.str.5, ptr @tcpmss_tg4_check._rs.6, ptr @.str.8, ptr @.str.10, ptr @tcpmss_tg6_check._rs, ptr @tcpmss_tg6_check._rs.11], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpmss_mangle_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpmss_tg4_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpmss_tg4_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpmss_tg4_check._rs.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpmss_tg4_check._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpmss_tg6_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpmss_tg6_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpmss_tg6_check._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpmss_tg6_check._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcpmss_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xt_unregister_targets(ptr noundef nonnull @tcpmss_tg_reg, i32 noundef 2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpmss_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_targets(ptr noundef nonnull @tcpmss_tg_reg, i32 noundef 2) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpmss_tg4(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = shl i8 %bf.load, 2
  %5 = and i8 %bf.clear, 60
  %mul = zext i8 %5 to i32
  %call1 = tail call fastcc i32 @tcpmss_mangle_packet(ptr noundef %skb, ptr noundef %par, i32 noundef 2, i32 noundef %mul, i32 noundef 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp3.not = icmp eq i32 %call1, 0
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i25 = zext i16 %9 to i32
  %add.ptr.i.i26 = getelementptr i8, ptr %7, i32 %conv.i.i25
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i26, i32 0, i32 2
  %10 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tot_len, align 2
  %12 = trunc i32 %call1 to i16
  %conv8 = add i16 %11, %12
  %check = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i26, i32 0, i32 7
  %13 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %check, align 2
  %neg.i = xor i16 %14, -1
  %neg.i.i = xor i16 %11, -1
  %add.i.i.i = add i16 %neg.i, %neg.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i, i16 %neg.i.i)
  %cmp.i.i.i = icmp ult i16 %add.i.i.i, %neg.i.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i to i16
  %add7.i.i.i = add i16 %add.i.i.i, %conv8
  %add.i.i = add i16 %add7.i.i.i, %conv6.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i, i16 %conv8)
  %cmp.i.i = icmp ult i16 %add.i.i, %conv8
  %conv6.i.i = zext i1 %cmp.i.i to i16
  %add7.i.i = add i16 %add.i.i, %conv6.i.i
  %neg4.i = xor i16 %add7.i.i, -1
  %15 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %neg4.i, ptr %check, align 2
  %16 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv8, ptr %tot_len, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %if.then5 ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpmss_tg4_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %entryinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entryinfo, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp = icmp eq i16 %5, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %hook_mask = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 5
  %6 = ptrtoint ptr %hook_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hook_mask, align 4
  %and = and i32 %7, -29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @tcpmss_tg4_check._rs, ptr noundef nonnull @__func__.tcpmss_tg4_check) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %nft_compat = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 7
  %8 = ptrtoint ptr %nft_compat to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nft_compat, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %elems = getelementptr inbounds %struct.ipt_entry, ptr %3, i32 0, i32 6
  %target_offset = getelementptr inbounds %struct.ipt_entry, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %target_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %target_offset, align 8
  %conv10 = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv10
  %cmp1138 = icmp ult ptr %elems, %add.ptr
  br i1 %cmp1138, label %if.end9.for.body_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9.for.body_crit_edge
  %ematch.039 = phi ptr [ %add.ptr17, %for.inc.for.body_crit_edge ], [ %elems, %if.end9.for.body_crit_edge ]
  %match.i = getelementptr inbounds %struct.anon.194, ptr %ematch.039, i32 0, i32 1
  %12 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %match.i, align 4
  %name.i = getelementptr inbounds %struct.xt_match, ptr %13, i32 0, i32 1
  %call.i = tail call i32 @strcmp(ptr noundef %name.i, ptr noundef nonnull dereferenceable(4) @.str.10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %flg_cmp.i = getelementptr inbounds %struct.xt_entry_match, ptr %ematch.039, i32 1, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %flg_cmp.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flg_cmp.i, align 2
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %invflags.i = getelementptr inbounds %struct.xt_entry_match, ptr %ematch.039, i32 1, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %invflags.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %invflags.i, align 1
  %19 = and i8 %18, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not.i = icmp eq i8 %19, 0
  br i1 %tobool5.not.i, label %land.lhs.true2.i.cleanup_crit_edge, label %land.lhs.true2.i.for.inc_crit_edge

land.lhs.true2.i.for.inc_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true2.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %ematch.039 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ematch.039, align 4
  %conv16 = zext i16 %21 to i32
  %add.ptr17 = getelementptr i8, ptr %ematch.039, i32 %conv16
  %cmp11 = icmp ult ptr %add.ptr17, %add.ptr
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end9.for.end_crit_edge
  %call18 = tail call i32 @___ratelimit(ptr noundef nonnull @tcpmss_tg4_check._rs.6, ptr noundef nonnull @__func__.tcpmss_tg4_check) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.end.cleanup_crit_edge, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.end.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.5, %if.then.cleanup.sink.split_crit_edge ], [ @.str.8, %for.end.cleanup.sink.split_crit_edge ]
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge, %land.lhs.true2.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ 0, %land.lhs.true2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpmss_tg6(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %nexthdr = alloca i8, align 1
  %frag_off = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i41 = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nexthdr) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off) #8
  %4 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %frag_off, align 2, !annotation !58
  %nexthdr1 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %nexthdr1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nexthdr1, align 2
  %7 = ptrtoint ptr %nexthdr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %nexthdr, align 1
  %call2 = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef 40, ptr noundef nonnull %nexthdr, ptr noundef nonnull %frag_off) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call fastcc i32 @tcpmss_mangle_packet(ptr noundef %skb, ptr noundef %par, i32 noundef 10, i32 noundef %call2, i32 noundef 60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp7.not = icmp eq i32 %call3, 0
  br i1 %cmp7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %10 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i44 = zext i16 %11 to i32
  %add.ptr.i.i45 = getelementptr i8, ptr %9, i32 %conv.i.i44
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i45, i32 0, i32 2
  %12 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %payload_len, align 4
  %14 = trunc i32 %call3 to i16
  %conv10 = add i16 %13, %14
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %ip_summed, align 8
  %16 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %16)
  %cmp12 = icmp eq i16 %16, 1024
  br i1 %cmp12, label %if.then14, label %if.then8.if.end19_crit_edge

if.then8.if.end19_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then14:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %13 to i32
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %neg.i = xor i32 %conv, -1
  %add.i.i = add i32 %19, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %neg.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %neg.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %conv17 = zext i16 %conv10 to i32
  %add1.i.i = add i32 %add.i.i, %conv17
  %add.i = add i32 %add1.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv17)
  %cmp.i = icmp ult i32 %add.i, %conv17
  %conv.i = zext i1 %cmp.i to i32
  %add1.i = add i32 %add.i, %conv.i
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add1.i, ptr %17, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.then8.if.end19_crit_edge
  %21 = ptrtoint ptr %payload_len to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv10, ptr %payload_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %if.end19 ], [ -1, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nexthdr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpmss_tg6_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %entryinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entryinfo, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp = icmp eq i16 %5, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %hook_mask = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 5
  %6 = ptrtoint ptr %hook_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hook_mask, align 4
  %and = and i32 %7, -29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2.not = icmp eq i32 %and, 0
  br i1 %cmp2.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @tcpmss_tg6_check._rs, ptr noundef nonnull @__func__.tcpmss_tg6_check) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %nft_compat = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 7
  %8 = ptrtoint ptr %nft_compat to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nft_compat, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %elems = getelementptr inbounds %struct.ip6t_entry, ptr %3, i32 0, i32 6
  %target_offset = getelementptr inbounds %struct.ip6t_entry, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %target_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %target_offset, align 4
  %conv10 = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %conv10
  %cmp1138 = icmp ult ptr %elems, %add.ptr
  br i1 %cmp1138, label %if.end9.for.body_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9.for.body_crit_edge
  %ematch.039 = phi ptr [ %add.ptr17, %for.inc.for.body_crit_edge ], [ %elems, %if.end9.for.body_crit_edge ]
  %match.i = getelementptr inbounds %struct.anon.194, ptr %ematch.039, i32 0, i32 1
  %12 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %match.i, align 4
  %name.i = getelementptr inbounds %struct.xt_match, ptr %13, i32 0, i32 1
  %call.i = tail call i32 @strcmp(ptr noundef %name.i, ptr noundef nonnull dereferenceable(4) @.str.10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %flg_cmp.i = getelementptr inbounds %struct.xt_entry_match, ptr %ematch.039, i32 1, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %flg_cmp.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flg_cmp.i, align 2
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %invflags.i = getelementptr inbounds %struct.xt_entry_match, ptr %ematch.039, i32 1, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %invflags.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %invflags.i, align 1
  %19 = and i8 %18, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not.i = icmp eq i8 %19, 0
  br i1 %tobool5.not.i, label %land.lhs.true2.i.cleanup_crit_edge, label %land.lhs.true2.i.for.inc_crit_edge

land.lhs.true2.i.for.inc_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true2.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %ematch.039 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ematch.039, align 4
  %conv16 = zext i16 %21 to i32
  %add.ptr17 = getelementptr i8, ptr %ematch.039, i32 %conv16
  %cmp11 = icmp ult ptr %add.ptr17, %add.ptr
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end9.for.end_crit_edge
  %call18 = tail call i32 @___ratelimit(ptr noundef nonnull @tcpmss_tg6_check._rs.11, ptr noundef nonnull @__func__.tcpmss_tg6_check) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.end.cleanup_crit_edge, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.end.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.5, %if.then.cleanup.sink.split_crit_edge ], [ @.str.8, %for.end.cleanup.sink.split_crit_edge ]
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge, %land.lhs.true2.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ 0, %land.lhs.true2.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcpmss_mangle_packet(ptr noundef %skb, ptr nocapture noundef readonly %par, i32 noundef %family, i32 noundef %tcphoff, i32 noundef %minlen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %fragoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 4
  %3 = ptrtoint ptr %fragoff to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fragoff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.not = icmp eq i16 %4, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup166_crit_edge

entry.cleanup166_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

if.end:                                           ; preds = %entry
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len2, align 4
  %call = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup166_crit_edge

if.end.cleanup166_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len2, align 4
  %sub = sub i32 %8, %tcphoff
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub)
  %cmp6 = icmp slt i32 %sub, 20
  br i1 %cmp6, label %if.end4.cleanup166_crit_edge, label %if.end9

if.end4.cleanup166_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

if.end9:                                          ; preds = %if.end4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %11 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %network_header.i, align 4
  %conv.i263 = zext i16 %12 to i32
  %add.ptr.i = getelementptr i8, ptr %10, i32 %conv.i263
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %tcphoff
  %doff = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 4
  %13 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %doff, align 4
  %14 = lshr i16 %bf.load, 10
  %15 = and i16 %14, 60
  %mul = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %mul)
  %cmp12 = icmp ult i32 %sub, %mul
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %15)
  %cmp14 = icmp ult i16 %15, 20
  %or.cond = or i1 %cmp14, %cmp12
  br i1 %or.cond, label %if.end9.cleanup166_crit_edge, label %if.end17

if.end9.cleanup166_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

if.end17:                                         ; preds = %if.end9
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %17)
  %cmp19 = icmp eq i16 %17, -1
  br i1 %cmp19, label %if.then21, label %if.end17.if.end46_crit_edge

if.end17.if.end46_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then21:                                        ; preds = %if.end17
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net.i, align 4
  %call23 = tail call fastcc i32 @tcpmss_reverse_mtu(ptr noundef %21, ptr noundef %skb, i32 noundef %family)
  %call24 = tail call fastcc ptr @skb_dst(ptr noundef %skb)
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %call24, i32 0, i32 1
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mtu.i, align 4
  %call.i = tail call i32 %25(ptr noundef %call24) #8
  %26 = tail call i32 @llvm.umin.i32(i32 %call.i, i32 %call23)
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %minlen)
  %cmp28.not = icmp ugt i32 %26, %minlen
  br i1 %cmp28.not, label %cleanup, label %do.body

do.body:                                          ; preds = %if.then21
  %call31 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.body.cleanup166_crit_edge, label %do.end

do.body.cleanup166_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %26) #12
  br label %cleanup166

cleanup:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %sub41 = sub i32 %26, %minlen
  %conv42 = trunc i32 %sub41 to i16
  br label %if.end46

if.end46:                                         ; preds = %cleanup, %if.end17.if.end46_crit_edge
  %newmss.1 = phi i16 [ %conv42, %cleanup ], [ %17, %if.end17.if.end46_crit_edge ]
  %sub47 = add nsw i32 %mul, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub47)
  %cmp48.not285 = icmp ult i32 %sub47, 20
  br i1 %cmp48.not285, label %if.end46.for.end_crit_edge, label %if.end46.for.body_crit_edge

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  br label %for.body

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %optlen.exit.for.body_crit_edge, %if.end46.for.body_crit_edge
  %i.0286 = phi i32 [ %add83, %optlen.exit.for.body_crit_edge ], [ 20, %if.end46.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 %i.0286
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp51 = icmp eq i8 %28, 2
  br i1 %cmp51, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %add = add i32 %i.0286, 1
  %arrayidx53 = getelementptr i8, ptr %add.ptr, i32 %add
  %29 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %30)
  %cmp55 = icmp eq i8 %30, 4
  br i1 %cmp55, label %if.then57, label %land.lhs.true.lor.lhs.false.i_crit_edge

land.lhs.true.lor.lhs.false.i_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

if.then57:                                        ; preds = %land.lhs.true
  %add58 = add i32 %i.0286, 2
  %arrayidx59 = getelementptr i8, ptr %add.ptr, i32 %add58
  %31 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %32 to i16
  %shl = shl nuw i16 %conv60, 8
  %add61 = add i32 %i.0286, 3
  %arrayidx62 = getelementptr i8, ptr %add.ptr, i32 %add61
  %33 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %34 to i16
  %or = or i16 %shl, %conv63
  call void @__sanitizer_cov_trace_cmp2(i16 %or, i16 %newmss.1)
  %cmp67.not = icmp ugt i16 %or, %newmss.1
  br i1 %cmp67.not, label %if.end70, label %if.then57.cleanup166_crit_edge

if.then57.cleanup166_crit_edge:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

if.end70:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %35 = lshr i16 %newmss.1, 8
  %conv72 = trunc i16 %35 to i8
  %36 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv72, ptr %arrayidx59, align 1
  %conv77 = trunc i16 %newmss.1 to i8
  %37 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv77, ptr %arrayidx62, align 1
  %check = getelementptr inbounds %struct.tcphdr, ptr %add.ptr, i32 0, i32 6
  %conv.i = zext i16 %or to i32
  %conv1.i = zext i16 %newmss.1 to i32
  tail call void @inet_proto_csum_replace4(ptr noundef %check, ptr noundef %skb, i32 noundef %conv.i, i32 noundef %conv1.i, i1 noundef zeroext false) #8
  br label %cleanup166

for.inc:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp.i = icmp ult i8 %28, 2
  br i1 %cmp.i, label %for.inc.optlen.exit_crit_edge, label %for.inc.lor.lhs.false.i_crit_edge

for.inc.optlen.exit_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %optlen.exit

for.inc.lor.lhs.false.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = add i32 %i.0286, 1
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.inc.lor.lhs.false.i_crit_edge, %land.lhs.true.lor.lhs.false.i_crit_edge
  %add.i.pre-phi = phi i32 [ %.pre, %for.inc.lor.lhs.false.i_crit_edge ], [ %add, %land.lhs.true.lor.lhs.false.i_crit_edge ]
  %arrayidx2.i = getelementptr i8, ptr %add.ptr, i32 %add.i.pre-phi
  %38 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp4.i = icmp eq i8 %39, 0
  %narrow.i = select i1 %cmp4.i, i8 1, i8 %39
  %spec.select.i = zext i8 %narrow.i to i32
  br label %optlen.exit

optlen.exit:                                      ; preds = %lor.lhs.false.i, %for.inc.optlen.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %for.inc.optlen.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %add83 = add i32 %retval.0.i, %i.0286
  %cmp48.not = icmp ugt i32 %add83, %sub47
  br i1 %cmp48.not, label %optlen.exit.for.end_crit_edge, label %optlen.exit.for.body_crit_edge

optlen.exit.for.body_crit_edge:                   ; preds = %optlen.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

optlen.exit.for.end_crit_edge:                    ; preds = %optlen.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %optlen.exit.for.end_crit_edge, %if.end46.for.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %mul)
  %cmp84 = icmp sgt i32 %sub, %mul
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %15)
  %cmp88 = icmp eq i16 %15, 60
  %or.cond258 = or i1 %cmp88, %cmp84
  br i1 %or.cond258, label %for.end.cleanup166_crit_edge, label %if.end91

for.end.cleanup166_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

if.end91:                                         ; preds = %for.end
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %40 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.end91.skb_tailroom.exit273_crit_edge

if.end91.skb_tailroom.exit273_crit_edge:          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_tailroom.exit273

skb_tailroom.exit:                                ; preds = %if.end91
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %42 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %44 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i)
  %cmp93 = icmp slt i32 %sub.ptr.sub.i, 4
  br i1 %cmp93, label %cond.false.i271, label %skb_tailroom.exit.if.end104_crit_edge

skb_tailroom.exit.if.end104_crit_edge:            ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

cond.false.i271:                                  ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %end.i, align 4
  %48 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i268 = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast.i269 = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i270.neg = sub i32 4, %sub.ptr.lhs.cast.i268
  %phi.bo = add i32 %sub.ptr.sub.i270.neg, %sub.ptr.rhs.cast.i269
  br label %skb_tailroom.exit273

skb_tailroom.exit273:                             ; preds = %cond.false.i271, %if.end91.skb_tailroom.exit273_crit_edge
  %cond.i272.neg = phi i32 [ %phi.bo, %cond.false.i271 ], [ 4, %if.end91.skb_tailroom.exit273_crit_edge ]
  %call98 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef %cond.i272.neg, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %skb_tailroom.exit273.cleanup166_crit_edge

skb_tailroom.exit273.cleanup166_crit_edge:        ; preds = %skb_tailroom.exit273
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup166

if.end101:                                        ; preds = %skb_tailroom.exit273
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i, align 8
  %52 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %network_header.i, align 4
  %conv.i276 = zext i16 %53 to i32
  %add.ptr.i277 = getelementptr i8, ptr %51, i32 %conv.i276
  %add.ptr103 = getelementptr i8, ptr %add.ptr.i277, i32 %tcphoff
  br label %if.end104

if.end104:                                        ; preds = %if.end101, %skb_tailroom.exit.if.end104_crit_edge
  %tcph.0 = phi ptr [ %add.ptr103, %if.end101 ], [ %add.ptr, %skb_tailroom.exit.if.end104_crit_edge ]
  %call105 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 4) #8
  %state.i278 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %54 = ptrtoint ptr %state.i278 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %state.i278, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %57)
  %cmp108 = icmp eq i8 %57, 2
  br i1 %cmp108, label %if.then110, label %if.else123

if.then110:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %58 = tail call i16 @llvm.umin.i16(i16 %newmss.1, i16 536)
  %extract.t = trunc i16 %58 to i8
  %59 = lshr i16 %58, 8
  %extract.t252 = trunc i16 %59 to i8
  br label %if.end136

if.else123:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 1220, i16 %newmss.1)
  %cmp127 = icmp ult i16 %newmss.1, 1220
  %extract = lshr i16 %newmss.1, 8
  %extract.t257 = trunc i16 %extract to i8
  %60 = tail call i16 @llvm.umin.i16(i16 %newmss.1, i16 1220)
  %61 = trunc i16 %60 to i8
  %cond134.off8 = select i1 %cmp127, i8 %extract.t257, i8 4
  br label %if.end136

if.end136:                                        ; preds = %if.else123, %if.then110
  %newmss.2.off0 = phi i8 [ %extract.t, %if.then110 ], [ %61, %if.else123 ]
  %newmss.2.off8 = phi i8 [ %extract.t252, %if.then110 ], [ %cond134.off8, %if.else123 ]
  %add.ptr137 = getelementptr i8, ptr %tcph.0, i32 20
  %add.ptr138 = getelementptr i8, ptr %tcph.0, i32 24
  %sub139 = add i32 %sub, -20
  %62 = call ptr @memmove(ptr %add.ptr138, ptr %add.ptr137, i32 %sub139)
  %check140 = getelementptr inbounds %struct.tcphdr, ptr %tcph.0, i32 0, i32 6
  %conv143 = add i32 %sub, 4
  %conv.i259 = and i32 %sub, 65535
  %conv1.i260 = and i32 %conv143, 65535
  tail call void @inet_proto_csum_replace4(ptr noundef %check140, ptr noundef %skb, i32 noundef %conv.i259, i32 noundef %conv1.i260, i1 noundef zeroext true) #8
  %63 = ptrtoint ptr %add.ptr137 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 2, ptr %add.ptr137, align 1
  %arrayidx145 = getelementptr i8, ptr %tcph.0, i32 21
  %64 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 4, ptr %arrayidx145, align 1
  %arrayidx150 = getelementptr i8, ptr %tcph.0, i32 22
  %65 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %newmss.2.off8, ptr %arrayidx150, align 1
  %arrayidx154 = getelementptr i8, ptr %tcph.0, i32 23
  %66 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %newmss.2.off0, ptr %arrayidx154, align 1
  %67 = load i32, ptr %add.ptr137, align 4
  tail call void @inet_proto_csum_replace4(ptr noundef %check140, ptr noundef %skb, i32 noundef 0, i32 noundef %67, i1 noundef zeroext false) #8
  %arrayidx156 = getelementptr i16, ptr %tcph.0, i32 6
  %68 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx156, align 2
  %70 = add i16 %69, 4096
  store i16 %70, ptr %arrayidx156, align 4
  %conv.i261 = zext i16 %69 to i32
  %conv1.i262 = zext i16 %70 to i32
  tail call void @inet_proto_csum_replace4(ptr noundef %check140, ptr noundef %skb, i32 noundef %conv.i261, i32 noundef %conv1.i262, i1 noundef zeroext false) #8
  br label %cleanup166

cleanup166:                                       ; preds = %if.end136, %skb_tailroom.exit273.cleanup166_crit_edge, %for.end.cleanup166_crit_edge, %if.end70, %if.then57.cleanup166_crit_edge, %do.end, %do.body.cleanup166_crit_edge, %if.end9.cleanup166_crit_edge, %if.end4.cleanup166_crit_edge, %if.end.cleanup166_crit_edge, %entry.cleanup166_crit_edge
  %retval.2 = phi i32 [ 4, %if.end136 ], [ 0, %entry.cleanup166_crit_edge ], [ -1, %if.end.cleanup166_crit_edge ], [ -1, %if.end4.cleanup166_crit_edge ], [ -1, %if.end9.cleanup166_crit_edge ], [ 0, %if.then57.cleanup166_crit_edge ], [ 0, %if.end70 ], [ 0, %for.end.cleanup166_crit_edge ], [ -1, %skb_tailroom.exit273.cleanup166_crit_edge ], [ -1, %do.body.cleanup166_crit_edge ], [ -1, %do.end ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcpmss_reverse_mtu(ptr noundef %net, ptr nocapture noundef readonly %skb, i32 noundef %family) unnamed_addr #2 align 64 {
entry:
  %fl = alloca %struct.flowi, align 8
  %rt = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl) #8
  %0 = getelementptr inbounds i8, ptr %fl, i32 56
  %1 = call ptr @memset(ptr %0, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rt) #8
  %2 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %family)
  %cmp = icmp eq i32 %family, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = call ptr @memset(ptr %fl, i32 0, i32 56)
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 2
  %10 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %daddr, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = call ptr @memset(ptr %fl, i32 0, i32 88)
  %daddr2 = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 1
  %head.i.i16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i16, align 8
  %network_header.i.i17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i17 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i17, align 4
  %conv.i.i18 = zext i16 %15 to i32
  %add.ptr.i.i19 = getelementptr i8, ptr %13, i32 %conv.i.i18
  %saddr4 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i19, i32 0, i32 5
  %16 = call ptr @memcpy(ptr %daddr2, ptr %saddr4, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv = trunc i32 %family to i16
  %call5 = call i32 @nf_route(ptr noundef %net, ptr noundef nonnull %rt, ptr noundef nonnull %fl, i1 noundef zeroext false, i16 noundef zeroext %conv) #8
  %17 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rt, align 4
  %cmp6.not = icmp eq ptr %18, null
  br i1 %cmp6.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mtu.i, align 4
  %call.i = call i32 %22(ptr noundef nonnull %18) #8
  %23 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rt, align 4
  call void @dst_release(ptr noundef %24) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %mtu.0 = phi i32 [ %call.i, %if.then8 ], [ -1, %if.end.if.end11_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rt) #8
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl) #8
  ret i32 %mtu.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_dst(ptr nocapture noundef readonly %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.rhs, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  %call2 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !59

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25 = and i32 %4, -2
  %5 = inttoptr i32 %and25 to ptr
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_proto_csum_replace4(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_route(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__UNIQUE_ID_file618, !1, !"__UNIQUE_ID_file618", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_TCPMSS.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_license619, !1, !"__UNIQUE_ID_license619", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author620, !4, !"__UNIQUE_ID_author620", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_TCPMSS.c", i32 28, i32 1}
!5 = !{ptr @__UNIQUE_ID_description621, !6, !"__UNIQUE_ID_description621", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_TCPMSS.c", i32 29, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias622, !8, !"__UNIQUE_ID_alias622", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_TCPMSS.c", i32 30, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias623, !10, !"__UNIQUE_ID_alias623", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_TCPMSS.c", i32 31, i32 1}
!11 = !{ptr @__initcall__kmod_xt_TCPMSS__630_344_tcpmss_tg_init6, !12, !"__initcall__kmod_xt_TCPMSS__630_344_tcpmss_tg_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_TCPMSS.c", i32 344, i32 1}
!13 = !{ptr @__exitcall_tcpmss_tg_exit, !14, !"__exitcall_tcpmss_tg_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_TCPMSS.c", i32 345, i32 1}
!15 = !{ptr @tcpmss_tg_reg, !16, !"tcpmss_tg_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_TCPMSS.c", i32 311, i32 25}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_TCPMSS.c", i32 108, i32 4}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @tcpmss_mangle_packet._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @tcpmss_mangle_packet._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/xt_TCPMSS.c", i32 273, i32 3}
!27 = !{ptr @tcpmss_tg4_check._rs, !26, !"_rs", i1 false, i1 false}
!28 = !{ptr @__func__.tcpmss_tg4_check, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tcpmss_tg4_check._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @tcpmss_tg4_check._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @tcpmss_tg4_check._rs.6, !33, !"_rs", i1 false, i1 false}
!33 = !{!"../net/netfilter/xt_TCPMSS.c", i32 282, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tcpmss_tg4_check._entry.7, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @tcpmss_tg4_check._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/netfilter/xt_TCPMSS.c", i32 255, i32 38}
!39 = !{ptr @tcpmss_tg6_check._rs, !40, !"_rs", i1 false, i1 false}
!40 = !{!"../net/netfilter/xt_TCPMSS.c", i32 297, i32 3}
!41 = !{ptr @__func__.tcpmss_tg6_check, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @tcpmss_tg6_check._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @tcpmss_tg6_check._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @tcpmss_tg6_check._rs.11, !45, !"_rs", i1 false, i1 false}
!45 = !{!"../net/netfilter/xt_TCPMSS.c", i32 306, i32 2}
!46 = !{ptr @tcpmss_tg6_check._entry.12, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tcpmss_tg6_check._entry_ptr.13, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i8 0, i8 2}
!58 = !{!"auto-init"}
!59 = !{!"branch_weights", i32 1, i32 2000}
