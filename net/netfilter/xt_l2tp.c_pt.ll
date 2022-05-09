; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_l2tp.c_pt.bc'
source_filename = "../net/netfilter/xt_l2tp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.xt_action_param = type { %union.anon.185, %union.anon.186, ptr, i32, i16, i8 }
%union.anon.185 = type { ptr }
%union.anon.186 = type { ptr }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ipt_ip = type { %struct.in_addr, %struct.in_addr, %struct.in_addr, %struct.in_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8 }
%struct.in_addr = type { i32 }
%struct.xt_l2tp_info = type { i32, i32, i8, i8, i8 }
%struct.ip6t_ip6 = type { %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8 }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%union.l2tp_val = type { i32 }

@__UNIQUE_ID_file619 = internal constant [35 x i8] c"xt_l2tp.file=net/netfilter/xt_l2tp\00", section ".modinfo", align 1
@__UNIQUE_ID_license620 = internal constant [20 x i8] c"xt_l2tp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author621 = internal constant [52 x i8] c"xt_l2tp.author=James Chapman <jchapman@katalix.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description622 = internal constant [47 x i8] c"xt_l2tp.description=Xtables: L2TP header match\00", section ".modinfo", align 1
@__UNIQUE_ID_alias623 = internal constant [23 x i8] c"xt_l2tp.alias=ipt_l2tp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias624 = internal constant [24 x i8] c"xt_l2tp.alias=ip6t_l2tp\00", section ".modinfo", align 1
@l2tp_mt_reg = internal global [2 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"l2tp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @l2tp_mt4, ptr @l2tp_mt_check4, ptr null, ptr null, ptr null, i32 16, i32 0, i32 15, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"l2tp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @l2tp_mt6, ptr @l2tp_mt_check6, ptr null, ptr null, ptr null, i32 16, i32 0, i32 15, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_l2tp__625_354_l2tp_mt_init6 = internal global ptr @l2tp_mt_init, section ".initcall6.init", align 4
@__exitcall_l2tp_mt_exit = internal global ptr @l2tp_mt_exit, section ".exitcall.exit", align 4
@l2tp_mt_check4._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.l2tp_mt_check4 = private unnamed_addr constant [15 x i8] c"l2tp_mt_check4\00", align 1
@l2tp_mt_check4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.l2tp_mt_check4, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016xt_l2tp: missing protocol rule (udp|l2tpip)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/netfilter/xt_l2tp.c\00", [40 x i8] zeroinitializer }, align 32
@l2tp_mt_check4._entry_ptr = internal global ptr @l2tp_mt_check4._entry, section ".printk_index", align 4
@l2tp_mt_check4._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@l2tp_mt_check4._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.l2tp_mt_check4, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016xt_l2tp: v2 doesn't support IP mode\0A\00", [57 x i8] zeroinitializer }, align 32
@l2tp_mt_check4._entry_ptr.6 = internal global ptr @l2tp_mt_check4._entry.4, section ".printk_index", align 4
@l2tp_mt_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.l2tp_mt_check = private unnamed_addr constant [14 x i8] c"l2tp_mt_check\00", align 1
@l2tp_mt_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.l2tp_mt_check, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016xt_l2tp: unknown flags: %x\0A\00", [34 x i8] zeroinitializer }, align 32
@l2tp_mt_check._entry_ptr = internal global ptr @l2tp_mt_check._entry, section ".printk_index", align 4
@l2tp_mt_check._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@l2tp_mt_check._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.l2tp_mt_check, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016xt_l2tp: invalid flags combination: %x\0A\00", [54 x i8] zeroinitializer }, align 32
@l2tp_mt_check._entry_ptr.11 = internal global ptr @l2tp_mt_check._entry.9, section ".printk_index", align 4
@l2tp_mt_check._rs.12 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@l2tp_mt_check._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.l2tp_mt_check, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016xt_l2tp: wrong L2TP version: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@l2tp_mt_check._entry_ptr.15 = internal global ptr @l2tp_mt_check._entry.13, section ".printk_index", align 4
@l2tp_mt_check._rs.16 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@l2tp_mt_check._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.l2tp_mt_check, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016xt_l2tp: v2 tid > 0xffff: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@l2tp_mt_check._entry_ptr.19 = internal global ptr @l2tp_mt_check._entry.17, section ".printk_index", align 4
@l2tp_mt_check._rs.20 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@l2tp_mt_check._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.l2tp_mt_check, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016xt_l2tp: v2 sid > 0xffff: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@l2tp_mt_check._entry_ptr.23 = internal global ptr @l2tp_mt_check._entry.21, section ".printk_index", align 4
@l2tp_mt_check6._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.l2tp_mt_check6 = private unnamed_addr constant [15 x i8] c"l2tp_mt_check6\00", align 1
@l2tp_mt_check6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.l2tp_mt_check6, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@l2tp_mt_check6._entry_ptr = internal global ptr @l2tp_mt_check6._entry, section ".printk_index", align 4
@l2tp_mt_check6._rs.24 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@l2tp_mt_check6._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.l2tp_mt_check6, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@l2tp_mt_check6._entry_ptr.26 = internal global ptr @l2tp_mt_check6._entry.25, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 17, i64 115]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 16, i64 17, i64 115]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 17, i64 115]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 16, i64 17, i64 115]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 4, i64 2, i64 3]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 272, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 278, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 216, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 225, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 235, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 243, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 249, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 299, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private constant [27 x i8] c"../net/netfilter/xt_l2tp.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 305, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias623, ptr @__UNIQUE_ID_alias624, ptr @__UNIQUE_ID_author621, ptr @__UNIQUE_ID_description622, ptr @__UNIQUE_ID_file619, ptr @__UNIQUE_ID_license620, ptr @__exitcall_l2tp_mt_exit, ptr @__initcall__kmod_xt_l2tp__625_354_l2tp_mt_init6, ptr @l2tp_mt_check._entry, ptr @l2tp_mt_check._entry.13, ptr @l2tp_mt_check._entry.17, ptr @l2tp_mt_check._entry.21, ptr @l2tp_mt_check._entry.9, ptr @l2tp_mt_check._entry_ptr, ptr @l2tp_mt_check._entry_ptr.11, ptr @l2tp_mt_check._entry_ptr.15, ptr @l2tp_mt_check._entry_ptr.19, ptr @l2tp_mt_check._entry_ptr.23, ptr @l2tp_mt_check4._entry, ptr @l2tp_mt_check4._entry.4, ptr @l2tp_mt_check4._entry_ptr, ptr @l2tp_mt_check4._entry_ptr.6, ptr @l2tp_mt_check6._entry, ptr @l2tp_mt_check6._entry.25, ptr @l2tp_mt_check6._entry_ptr, ptr @l2tp_mt_check6._entry_ptr.26, ptr @l2tp_mt_exit, ptr @l2tp_mt_check4._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @l2tp_mt_check4._rs.3, ptr @.str.5, ptr @l2tp_mt_check._rs, ptr @.str.7, ptr @l2tp_mt_check._rs.8, ptr @.str.10, ptr @l2tp_mt_check._rs.12, ptr @.str.14, ptr @l2tp_mt_check._rs.16, ptr @.str.18, ptr @l2tp_mt_check._rs.20, ptr @.str.22, ptr @l2tp_mt_check6._rs, ptr @l2tp_mt_check6._rs.24], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check4._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check4._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check4._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check._rs.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check._rs.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check._rs.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check6._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check6._rs.24 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l2tp_mt_check6._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @l2tp_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_matches(ptr noundef nonnull @l2tp_mt_reg, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @l2tp_mt_reg, i32 noundef 2) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @l2tp_mt4(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protocol, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %entry.cleanup_crit_edge [
    i8 17, label %sw.bb
    i8 115, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %thoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 3
  %7 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %thoff, align 4
  %conv1 = trunc i32 %8 to i16
  %call2 = tail call fastcc zeroext i1 @l2tp_udp_mt(ptr noundef %skb, ptr noundef %par, i16 noundef zeroext %conv1)
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %thoff4 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 3
  %9 = ptrtoint ptr %thoff4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %thoff4, align 4
  %conv5 = trunc i32 %10 to i16
  %call6 = tail call fastcc zeroext i1 @l2tp_ip_mt(ptr noundef %skb, ptr noundef %par, i16 noundef zeroext %conv5)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call6, %sw.bb3 ], [ %call2, %sw.bb ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_mt_check4(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %entryinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entryinfo, align 4
  %call = tail call fastcc i32 @l2tp_mt_check(ptr noundef %par)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %proto = getelementptr inbounds %struct.ipt_ip, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %proto, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %5, label %if.then8 [
    i16 115, label %land.lhs.true18
    i16 17, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @l2tp_mt_check4._rs, ptr noundef nonnull @__func__.l2tp_mt_check4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then8.cleanup_crit_edge, label %if.then8.cleanup.sink.split_crit_edge

if.then8.cleanup.sink.split_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true18:                                  ; preds = %if.end
  %version = getelementptr inbounds %struct.xt_l2tp_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp20 = icmp eq i8 %8, 2
  br i1 %cmp20, label %if.then22, label %land.lhs.true18.cleanup_crit_edge

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then22:                                        ; preds = %land.lhs.true18
  %call23 = tail call i32 @___ratelimit(ptr noundef nonnull @l2tp_mt_check4._rs.3, ptr noundef nonnull @__func__.l2tp_mt_check4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %if.then22.cleanup.sink.split_crit_edge

if.then22.cleanup.sink.split_crit_edge:           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then22.cleanup.sink.split_crit_edge, %if.then8.cleanup.sink.split_crit_edge
  %.str.5.sink = phi ptr [ @.str.1, %if.then8.cleanup.sink.split_crit_edge ], [ @.str.5, %if.then22.cleanup.sink.split_crit_edge ]
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.5.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then22.cleanup_crit_edge, %land.lhs.true18.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.then8.cleanup_crit_edge ], [ -22, %if.then22.cleanup_crit_edge ], [ 0, %land.lhs.true18.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @l2tp_mt6(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %thoff = alloca i32, align 4
  %fragoff = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %thoff) #5
  %0 = ptrtoint ptr %thoff to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %thoff, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fragoff) #5
  %1 = ptrtoint ptr %fragoff to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %fragoff, align 2
  %call = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %thoff, i32 noundef -1, ptr noundef nonnull %fragoff, ptr noundef null) #5
  %2 = ptrtoint ptr %fragoff to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fragoff, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not = icmp eq i16 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call, label %if.end.cleanup_crit_edge [
    i32 17, label %sw.bb
    i32 115, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %thoff, align 4
  %conv2 = trunc i32 %6 to i16
  %call3 = call fastcc zeroext i1 @l2tp_udp_mt(ptr noundef %skb, ptr noundef %par, i16 noundef zeroext %conv2)
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %thoff to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %thoff, align 4
  %conv5 = trunc i32 %8 to i16
  %call6 = call fastcc zeroext i1 @l2tp_ip_mt(ptr noundef %skb, ptr noundef %par, i16 noundef zeroext %conv5)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call6, %sw.bb4 ], [ %call3, %sw.bb ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fragoff) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %thoff) #5
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @l2tp_mt_check6(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %entryinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entryinfo, align 4
  %call = tail call fastcc i32 @l2tp_mt_check(ptr noundef %par)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %proto = getelementptr inbounds %struct.ip6t_ip6, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %proto, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %5, label %if.then7 [
    i16 115, label %land.lhs.true17
    i16 17, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @l2tp_mt_check6._rs, ptr noundef nonnull @__func__.l2tp_mt_check6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then7.cleanup_crit_edge, label %if.then7.cleanup.sink.split_crit_edge

if.then7.cleanup.sink.split_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true17:                                  ; preds = %if.end
  %version = getelementptr inbounds %struct.xt_l2tp_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp19 = icmp eq i8 %8, 2
  br i1 %cmp19, label %if.then21, label %land.lhs.true17.cleanup_crit_edge

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then21:                                        ; preds = %land.lhs.true17
  %call22 = tail call i32 @___ratelimit(ptr noundef nonnull @l2tp_mt_check6._rs.24, ptr noundef nonnull @__func__.l2tp_mt_check6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.cleanup_crit_edge, label %if.then21.cleanup.sink.split_crit_edge

if.then21.cleanup.sink.split_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then21.cleanup.sink.split_crit_edge, %if.then7.cleanup.sink.split_crit_edge
  %.str.5.sink = phi ptr [ @.str.1, %if.then7.cleanup.sink.split_crit_edge ], [ @.str.5, %if.then21.cleanup.sink.split_crit_edge ]
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.5.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then21.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.then7.cleanup_crit_edge ], [ -22, %if.then21.cleanup_crit_edge ], [ 0, %land.lhs.true17.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @l2tp_udp_mt(ptr noundef %skb, ptr nocapture noundef readonly %par, i16 noundef zeroext %thoff) unnamed_addr #2 align 64 {
entry:
  %lhbuf = alloca %union.l2tp_val, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %conv = zext i16 %thoff to i32
  %add = add nuw nsw i32 %conv, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lhbuf) #5
  %3 = ptrtoint ptr %lhbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %lhbuf, align 4, !annotation !74
  %fragoff = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 4
  %4 = ptrtoint ptr %fragoff to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fragoff, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %10 = add i32 %7, -8
  %11 = add i32 %9, %conv
  %sub.i4.i = sub i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !75

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %lhbuf, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end6_crit_edge

lor.lhs.false.i.i.if.end6_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %add
  %cmp3 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp3, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end6_crit_edge

skb_header_pointer.exit.if.end6_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %skb_header_pointer.exit.if.end6_crit_edge, %lor.lhs.false.i.i.if.end6_crit_edge
  %retval.0.i.i125 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end6_crit_edge ], [ %lhbuf, %lor.lhs.false.i.i.if.end6_crit_edge ]
  %14 = ptrtoint ptr %retval.0.i.i125 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %retval.0.i.i125, align 4
  %16 = xor i16 %15, -1
  %17 = lshr i16 %16, 15
  %18 = trunc i16 %17 to i8
  %19 = trunc i16 %15 to i8
  %conv14 = and i8 %19, 15
  %trunc = trunc i16 %15 to i4
  %20 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.30)
  switch i4 %trunc, label %if.end6.cleanup_crit_edge [
    i4 3, label %if.then19
    i4 2, label %if.then38
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19:                                        ; preds = %if.end6
  %add20 = add nuw nsw i32 %conv, 12
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i, align 4
  %23 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i, align 8
  %25 = add i32 %22, -12
  %26 = add i32 %24, %conv
  %sub.i4.i84 = sub i32 %25, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i84)
  %cmp.not.i.i85 = icmp slt i32 %sub.i4.i84, 4
  br i1 %cmp.not.i.i85, label %if.end.i.i90, label %skb_header_pointer.exit96, !prof !75

if.end.i.i90:                                     ; preds = %if.then19
  %tobool2.not.i.i89 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i89, label %if.end.i.i90.cleanup_crit_edge, label %lor.lhs.false.i.i94

if.end.i.i90.cleanup_crit_edge:                   ; preds = %if.end.i.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i.i94:                              ; preds = %if.end.i.i90
  %call.i.i91 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add20, ptr noundef nonnull %lhbuf, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i91)
  %cmp3.i.i92 = icmp slt i32 %call.i.i91, 0
  br i1 %cmp3.i.i92, label %lor.lhs.false.i.i94.cleanup_crit_edge, label %lor.lhs.false.i.i94.if.end25_crit_edge

lor.lhs.false.i.i94.if.end25_crit_edge:           ; preds = %lor.lhs.false.i.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

lor.lhs.false.i.i94.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

skb_header_pointer.exit96:                        ; preds = %if.then19
  %data.i86 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i86 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i86, align 4
  %add.ptr.i.i87 = getelementptr i8, ptr %28, i32 %add20
  %cmp22 = icmp eq ptr %add.ptr.i.i87, null
  br i1 %cmp22, label %skb_header_pointer.exit96.cleanup_crit_edge, label %skb_header_pointer.exit96.if.end25_crit_edge

skb_header_pointer.exit96.if.end25_crit_edge:     ; preds = %skb_header_pointer.exit96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

skb_header_pointer.exit96.cleanup_crit_edge:      ; preds = %skb_header_pointer.exit96
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %skb_header_pointer.exit96.if.end25_crit_edge, %lor.lhs.false.i.i94.if.end25_crit_edge
  %retval.0.i.i95132 = phi ptr [ %add.ptr.i.i87, %skb_header_pointer.exit96.if.end25_crit_edge ], [ %lhbuf, %lor.lhs.false.i.i94.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp28 = icmp slt i16 %15, 0
  %29 = ptrtoint ptr %retval.0.i.i95132 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %retval.0.i.i95132, align 4
  %. = select i1 %cmp28, i32 %30, i32 0
  %.149 = select i1 %cmp28, i32 0, i32 %30
  br label %if.end59

if.then38:                                        ; preds = %if.end6
  %31 = and i16 %15, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool41.not = icmp eq i16 %31, 0
  %add43 = add nuw nsw i32 %conv, 10
  %spec.select = select i1 %tobool41.not, i32 %add, i32 %add43
  %add45 = add nuw nsw i32 %spec.select, 2
  %32 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i.i, align 4
  %34 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i.i, align 8
  %36 = add i32 %33, -2
  %37 = add i32 %spec.select, %35
  %sub.i4.i99 = sub i32 %36, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i99)
  %cmp.not.i.i100 = icmp slt i32 %sub.i4.i99, 4
  br i1 %cmp.not.i.i100, label %if.end.i.i105, label %skb_header_pointer.exit111, !prof !75

if.end.i.i105:                                    ; preds = %if.then38
  %tobool2.not.i.i104 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i104, label %if.end.i.i105.cleanup_crit_edge, label %lor.lhs.false.i.i109

if.end.i.i105.cleanup_crit_edge:                  ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i.i109:                             ; preds = %if.end.i.i105
  %call.i.i106 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add45, ptr noundef nonnull %lhbuf, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i106)
  %cmp3.i.i107 = icmp slt i32 %call.i.i106, 0
  br i1 %cmp3.i.i107, label %lor.lhs.false.i.i109.cleanup_crit_edge, label %lor.lhs.false.i.i109.if.end50_crit_edge

lor.lhs.false.i.i109.if.end50_crit_edge:          ; preds = %lor.lhs.false.i.i109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

lor.lhs.false.i.i109.cleanup_crit_edge:           ; preds = %lor.lhs.false.i.i109
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

skb_header_pointer.exit111:                       ; preds = %if.then38
  %data.i101 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %38 = ptrtoint ptr %data.i101 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i101, align 4
  %add.ptr.i.i102 = getelementptr i8, ptr %39, i32 %add45
  %cmp47 = icmp eq ptr %add.ptr.i.i102, null
  br i1 %cmp47, label %skb_header_pointer.exit111.cleanup_crit_edge, label %skb_header_pointer.exit111.if.end50_crit_edge

skb_header_pointer.exit111.if.end50_crit_edge:    ; preds = %skb_header_pointer.exit111
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

skb_header_pointer.exit111.cleanup_crit_edge:     ; preds = %skb_header_pointer.exit111
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end50:                                         ; preds = %skb_header_pointer.exit111.if.end50_crit_edge, %lor.lhs.false.i.i109.if.end50_crit_edge
  %retval.0.i.i110139 = phi ptr [ %add.ptr.i.i102, %skb_header_pointer.exit111.if.end50_crit_edge ], [ %lhbuf, %lor.lhs.false.i.i109.if.end50_crit_edge ]
  %40 = ptrtoint ptr %retval.0.i.i110139 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %retval.0.i.i110139, align 4
  %conv52 = zext i16 %41 to i32
  %arrayidx54 = getelementptr [2 x i16], ptr %retval.0.i.i110139, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx54, align 2
  %conv55 = zext i16 %43 to i32
  br label %if.end59

if.end59:                                         ; preds = %if.end50, %if.end25
  %data.sroa.0.0 = phi i32 [ %conv52, %if.end50 ], [ %., %if.end25 ]
  %data.sroa.6.0 = phi i32 [ %conv55, %if.end50 ], [ %.149, %if.end25 ]
  %flags.i = getelementptr inbounds %struct.xt_l2tp_info, ptr %2, i32 0, i32 4
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %flags.i, align 2
  %46 = and i8 %45, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i, label %if.end59.if.end.i_crit_edge, label %land.lhs.true.i

if.end59.if.end.i_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end59
  %type.i = getelementptr inbounds %struct.xt_l2tp_info, ptr %2, i32 0, i32 3
  %47 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %18)
  %cmp.not.i = icmp eq i8 %48, %18
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end59.if.end.i_crit_edge
  %49 = and i8 %45, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool8.not.i = icmp eq i8 %49, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end16.i_crit_edge, label %land.lhs.true9.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

land.lhs.true9.i:                                 ; preds = %if.end.i
  %version.i = getelementptr inbounds %struct.xt_l2tp_info, ptr %2, i32 0, i32 2
  %50 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %conv14)
  %cmp13.not.i = icmp eq i8 %51, %conv14
  br i1 %cmp13.not.i, label %land.lhs.true9.i.if.end16.i_crit_edge, label %land.lhs.true9.i.cleanup_crit_edge

land.lhs.true9.i.cleanup_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true9.i.if.end16.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.end16.i:                                       ; preds = %land.lhs.true9.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge
  %52 = and i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool20.not.i = icmp eq i8 %52, 0
  br i1 %tobool20.not.i, label %if.end16.i.if.end35.i_crit_edge, label %land.lhs.true21.i

if.end16.i.if.end35.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

land.lhs.true21.i:                                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp24.i = icmp slt i16 %15, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv14)
  %cmp28.i = icmp eq i8 %conv14, 2
  %or.cond = select i1 %cmp24.i, i1 true, i1 %cmp28.i
  br i1 %or.cond, label %land.lhs.true30.i, label %if.end35.i.thread

land.lhs.true30.i:                                ; preds = %land.lhs.true21.i
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %data.sroa.0.0)
  %cmp32.not.i = icmp eq i32 %54, %data.sroa.0.0
  br i1 %cmp32.not.i, label %land.lhs.true30.i.if.end35.i_crit_edge, label %land.lhs.true30.i.cleanup_crit_edge

land.lhs.true30.i.cleanup_crit_edge:              ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true30.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

if.end35.i:                                       ; preds = %land.lhs.true30.i.if.end35.i_crit_edge, %if.end16.i.if.end35.i_crit_edge
  %55 = and i8 %45, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool39.not.i = icmp ne i8 %55, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp43.i = icmp eq i8 %18, 1
  %or.cond143 = select i1 %tobool39.not.i, i1 %cmp43.i, i1 false
  br i1 %or.cond143, label %if.end35.i.land.lhs.true45.i_crit_edge, label %if.end35.i.if.end50.i_crit_edge

if.end35.i.if.end50.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.i

if.end35.i.land.lhs.true45.i_crit_edge:           ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true45.i

if.end35.i.thread:                                ; preds = %land.lhs.true21.i
  %56 = and i8 %45, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool39.not.i140 = icmp eq i8 %56, 0
  br i1 %tobool39.not.i140, label %if.end35.i.thread.if.end50.i_crit_edge, label %if.end35.i.thread.land.lhs.true45.i_crit_edge

if.end35.i.thread.land.lhs.true45.i_crit_edge:    ; preds = %if.end35.i.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true45.i

if.end35.i.thread.if.end50.i_crit_edge:           ; preds = %if.end35.i.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.i

land.lhs.true45.i:                                ; preds = %if.end35.i.thread.land.lhs.true45.i_crit_edge, %if.end35.i.land.lhs.true45.i_crit_edge
  %sid.i = getelementptr inbounds %struct.xt_l2tp_info, ptr %2, i32 0, i32 1
  %57 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %data.sroa.6.0)
  %cmp47.not.i = icmp eq i32 %58, %data.sroa.6.0
  br i1 %cmp47.not.i, label %land.lhs.true45.i.if.end50.i_crit_edge, label %land.lhs.true45.i.cleanup_crit_edge

land.lhs.true45.i.cleanup_crit_edge:              ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true45.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.i

if.end50.i:                                       ; preds = %land.lhs.true45.i.if.end50.i_crit_edge, %if.end35.i.thread.if.end50.i_crit_edge, %if.end35.i.if.end50.i_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end50.i, %land.lhs.true45.i.cleanup_crit_edge, %land.lhs.true30.i.cleanup_crit_edge, %land.lhs.true9.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %skb_header_pointer.exit111.cleanup_crit_edge, %lor.lhs.false.i.i109.cleanup_crit_edge, %if.end.i.i105.cleanup_crit_edge, %skb_header_pointer.exit96.cleanup_crit_edge, %lor.lhs.false.i.i94.cleanup_crit_edge, %if.end.i.i90.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %skb_header_pointer.exit.cleanup_crit_edge ], [ false, %skb_header_pointer.exit96.cleanup_crit_edge ], [ false, %skb_header_pointer.exit111.cleanup_crit_edge ], [ false, %if.end6.cleanup_crit_edge ], [ true, %if.end50.i ], [ false, %land.lhs.true.i.cleanup_crit_edge ], [ false, %land.lhs.true9.i.cleanup_crit_edge ], [ false, %land.lhs.true30.i.cleanup_crit_edge ], [ false, %land.lhs.true45.i.cleanup_crit_edge ], [ false, %if.end.i.i.cleanup_crit_edge ], [ false, %lor.lhs.false.i.i.cleanup_crit_edge ], [ false, %if.end.i.i90.cleanup_crit_edge ], [ false, %lor.lhs.false.i.i94.cleanup_crit_edge ], [ false, %if.end.i.i105.cleanup_crit_edge ], [ false, %lor.lhs.false.i.i109.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lhbuf) #5
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @l2tp_ip_mt(ptr noundef %skb, ptr nocapture noundef readonly %par, i16 noundef zeroext %thoff) unnamed_addr #2 align 64 {
entry:
  %lhbuf = alloca %union.l2tp_val, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lhbuf) #5
  %3 = ptrtoint ptr %lhbuf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %lhbuf, align 4, !annotation !74
  %conv = zext i16 %thoff to i32
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %8 = add i32 %7, %conv
  %sub.i4.i = sub i32 %5, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 4
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !75

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %conv, ptr noundef nonnull %lhbuf, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %conv
  %cmp = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp, label %skb_header_pointer.exit.cleanup_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i49 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end_crit_edge ], [ %lhbuf, %lor.lhs.false.i.i.if.end_crit_edge ]
  %11 = ptrtoint ptr %retval.0.i.i49 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %retval.0.i.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2 = icmp eq i32 %12, 0
  br i1 %cmp2, label %if.then4, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then4:                                         ; preds = %if.end
  %add = add nuw nsw i32 %conv, 8
  %13 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i.i, align 4
  %15 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i.i, align 8
  %17 = add i32 %14, -8
  %18 = add i32 %16, %conv
  %sub.i4.i25 = sub i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i25)
  %cmp.not.i.i26 = icmp slt i32 %sub.i4.i25, 4
  br i1 %cmp.not.i.i26, label %if.end.i.i31, label %skb_header_pointer.exit37, !prof !75

if.end.i.i31:                                     ; preds = %if.then4
  %tobool2.not.i.i30 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i30, label %if.end.i.i31.cleanup_crit_edge, label %lor.lhs.false.i.i35

if.end.i.i31.cleanup_crit_edge:                   ; preds = %if.end.i.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i.i35:                              ; preds = %if.end.i.i31
  %call.i.i32 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %lhbuf, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %cmp3.i.i33 = icmp slt i32 %call.i.i32, 0
  br i1 %cmp3.i.i33, label %lor.lhs.false.i.i35.cleanup_crit_edge, label %lor.lhs.false.i.i35.if.end10_crit_edge

lor.lhs.false.i.i35.if.end10_crit_edge:           ; preds = %lor.lhs.false.i.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

lor.lhs.false.i.i35.cleanup_crit_edge:            ; preds = %lor.lhs.false.i.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

skb_header_pointer.exit37:                        ; preds = %if.then4
  %data.i27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data.i27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i27, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %20, i32 %add
  %cmp7 = icmp eq ptr %add.ptr.i.i28, null
  br i1 %cmp7, label %skb_header_pointer.exit37.cleanup_crit_edge, label %skb_header_pointer.exit37.if.end10_crit_edge

skb_header_pointer.exit37.if.end10_crit_edge:     ; preds = %skb_header_pointer.exit37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

skb_header_pointer.exit37.cleanup_crit_edge:      ; preds = %skb_header_pointer.exit37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %skb_header_pointer.exit37.if.end10_crit_edge, %lor.lhs.false.i.i35.if.end10_crit_edge
  %retval.0.i.i3656 = phi ptr [ %add.ptr.i.i28, %skb_header_pointer.exit37.if.end10_crit_edge ], [ %lhbuf, %lor.lhs.false.i.i35.if.end10_crit_edge ]
  %21 = ptrtoint ptr %retval.0.i.i3656 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %retval.0.i.i3656, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end.if.end12_crit_edge
  %data.sroa.0.0 = phi i32 [ %22, %if.end10 ], [ 0, %if.end.if.end12_crit_edge ]
  %data.sroa.7.0 = phi i8 [ 0, %if.end10 ], [ 1, %if.end.if.end12_crit_edge ]
  %flags.i = getelementptr inbounds %struct.xt_l2tp_info, ptr %2, i32 0, i32 4
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags.i, align 2
  %25 = and i8 %24, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.end12.if.end.i_crit_edge, label %land.lhs.true.i

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end12
  %type.i = getelementptr inbounds %struct.xt_l2tp_info, ptr %2, i32 0, i32 3
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %data.sroa.7.0)
  %cmp.not.i = icmp eq i8 %27, %data.sroa.7.0
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end12.if.end.i_crit_edge
  %28 = and i8 %24, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool8.not.i = icmp eq i8 %28, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end16.i_crit_edge, label %land.lhs.true9.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

land.lhs.true9.i:                                 ; preds = %if.end.i
  %version.i = getelementptr inbounds %struct.xt_l2tp_info, ptr %2, i32 0, i32 2
  %29 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %30)
  %cmp13.not.i = icmp eq i8 %30, 3
  br i1 %cmp13.not.i, label %land.lhs.true9.i.if.end16.i_crit_edge, label %land.lhs.true9.i.cleanup_crit_edge

land.lhs.true9.i.cleanup_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true9.i.if.end16.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.end16.i:                                       ; preds = %land.lhs.true9.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge
  %31 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool20.not.i = icmp eq i8 %31, 0
  br i1 %tobool20.not.i, label %if.end35.i, label %land.lhs.true21.i

land.lhs.true21.i:                                ; preds = %if.end16.i
  br i1 %cmp2, label %land.lhs.true30.i, label %if.end35.i.thread59

land.lhs.true30.i:                                ; preds = %land.lhs.true21.i
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %data.sroa.0.0)
  %cmp32.not.i = icmp eq i32 %33, %data.sroa.0.0
  br i1 %cmp32.not.i, label %land.lhs.true30.i.if.end50.i_crit_edge, label %land.lhs.true30.i.cleanup_crit_edge

land.lhs.true30.i.cleanup_crit_edge:              ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true30.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.i

if.end35.i:                                       ; preds = %if.end16.i
  %34 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool39.not.i = icmp eq i8 %34, 0
  %35 = or i1 %cmp2, %tobool39.not.i
  br i1 %35, label %if.end35.i.if.end50.i_crit_edge, label %if.end35.i.land.lhs.true45.i_crit_edge

if.end35.i.land.lhs.true45.i_crit_edge:           ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true45.i

if.end35.i.if.end50.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.i

if.end35.i.thread59:                              ; preds = %land.lhs.true21.i
  %36 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool39.not.i60 = icmp eq i8 %36, 0
  br i1 %tobool39.not.i60, label %if.end35.i.thread59.if.end50.i_crit_edge, label %if.end35.i.thread59.land.lhs.true45.i_crit_edge

if.end35.i.thread59.land.lhs.true45.i_crit_edge:  ; preds = %if.end35.i.thread59
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true45.i

if.end35.i.thread59.if.end50.i_crit_edge:         ; preds = %if.end35.i.thread59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.i

land.lhs.true45.i:                                ; preds = %if.end35.i.thread59.land.lhs.true45.i_crit_edge, %if.end35.i.land.lhs.true45.i_crit_edge
  %sid.i = getelementptr inbounds %struct.xt_l2tp_info, ptr %2, i32 0, i32 1
  %37 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %12)
  %cmp47.not.i = icmp eq i32 %38, %12
  br i1 %cmp47.not.i, label %land.lhs.true45.i.if.end50.i_crit_edge, label %land.lhs.true45.i.cleanup_crit_edge

land.lhs.true45.i.cleanup_crit_edge:              ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true45.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.i

if.end50.i:                                       ; preds = %land.lhs.true45.i.if.end50.i_crit_edge, %if.end35.i.thread59.if.end50.i_crit_edge, %if.end35.i.if.end50.i_crit_edge, %land.lhs.true30.i.if.end50.i_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end50.i, %land.lhs.true45.i.cleanup_crit_edge, %land.lhs.true30.i.cleanup_crit_edge, %land.lhs.true9.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %skb_header_pointer.exit37.cleanup_crit_edge, %lor.lhs.false.i.i35.cleanup_crit_edge, %if.end.i.i31.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %skb_header_pointer.exit.cleanup_crit_edge ], [ false, %skb_header_pointer.exit37.cleanup_crit_edge ], [ true, %if.end50.i ], [ false, %land.lhs.true.i.cleanup_crit_edge ], [ false, %land.lhs.true9.i.cleanup_crit_edge ], [ false, %land.lhs.true30.i.cleanup_crit_edge ], [ false, %land.lhs.true45.i.cleanup_crit_edge ], [ false, %if.end.i.i.cleanup_crit_edge ], [ false, %lor.lhs.false.i.i.cleanup_crit_edge ], [ false, %if.end.i.i31.cleanup_crit_edge ], [ false, %lor.lhs.false.i.i35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lhbuf) #5
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @l2tp_mt_check(ptr nocapture noundef readonly %par) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %flags = getelementptr inbounds %struct.xt_l2tp_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 2
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @l2tp_mt_check._rs, ptr noundef nonnull @__func__.l2tp_mt_check) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 2
  %conv4 = zext i8 %5 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv4) #8
  br label %cleanup

if.end6:                                          ; preds = %entry
  %and9 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %6 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %land.lhs.true15, label %if.end6.if.end34_crit_edge

if.end6.if.end34_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

land.lhs.true15:                                  ; preds = %if.end6
  %and18 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %land.lhs.true15.if.then22_crit_edge, label %lor.lhs.false

land.lhs.true15.if.then22_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

lor.lhs.false:                                    ; preds = %land.lhs.true15
  %type = getelementptr inbounds %struct.xt_l2tp_info, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not = icmp eq i8 %9, 0
  br i1 %cmp.not, label %lor.lhs.false.if.end34_crit_edge, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

lor.lhs.false.if.end34_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %land.lhs.true15.if.then22_crit_edge
  %call23 = tail call i32 @___ratelimit(ptr noundef nonnull @l2tp_mt_check._rs.8, ptr noundef nonnull @__func__.l2tp_mt_check) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %do.end28

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end28:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags, align 2
  %conv31 = zext i8 %11 to i32
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv31) #8
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false.if.end34_crit_edge, %if.end6.if.end34_crit_edge
  %and37 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end34.cleanup_crit_edge, label %if.then39

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then39:                                        ; preds = %if.end34
  %version = getelementptr inbounds %struct.xt_l2tp_info, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %version, align 4
  %14 = and i8 %13, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %.not = icmp eq i8 %14, 2
  br i1 %.not, label %if.end60, label %if.then48

if.then48:                                        ; preds = %if.then39
  %call49 = tail call i32 @___ratelimit(ptr noundef nonnull @l2tp_mt_check._rs.12, ptr noundef nonnull @__func__.l2tp_mt_check) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then48.cleanup_crit_edge, label %do.end54

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end54:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %version, align 4
  %conv57 = zext i8 %16 to i32
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv57) #8
  br label %cleanup

if.end60:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp63 = icmp eq i8 %13, 2
  br i1 %cmp63, label %if.then65, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then65:                                        ; preds = %if.end60
  br i1 %tobool10.not, label %if.then65.if.end84_crit_edge, label %land.lhs.true70

if.then65.if.end84_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

land.lhs.true70:                                  ; preds = %if.then65
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %18)
  %cmp71 = icmp ugt i32 %18, 65535
  br i1 %cmp71, label %if.then73, label %land.lhs.true70.if.end84_crit_edge

land.lhs.true70.if.end84_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.then73:                                        ; preds = %land.lhs.true70
  %call74 = tail call i32 @___ratelimit(ptr noundef nonnull @l2tp_mt_check._rs.16, ptr noundef nonnull @__func__.l2tp_mt_check) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then73.cleanup_crit_edge, label %do.end79

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end79:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %20) #8
  br label %cleanup

if.end84:                                         ; preds = %land.lhs.true70.if.end84_crit_edge, %if.then65.if.end84_crit_edge
  %21 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool88.not = icmp eq i8 %21, 0
  br i1 %tobool88.not, label %if.end84.cleanup_crit_edge, label %land.lhs.true89

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true89:                                  ; preds = %if.end84
  %sid = getelementptr inbounds %struct.xt_l2tp_info, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %23)
  %cmp90 = icmp ugt i32 %23, 65535
  br i1 %cmp90, label %if.then92, label %land.lhs.true89.cleanup_crit_edge

land.lhs.true89.cleanup_crit_edge:                ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then92:                                        ; preds = %land.lhs.true89
  %call93 = tail call i32 @___ratelimit(ptr noundef nonnull @l2tp_mt_check._rs.20, ptr noundef nonnull @__func__.l2tp_mt_check) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then92.cleanup_crit_edge, label %do.end98

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end98:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sid, align 4
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %25) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end98, %if.then92.cleanup_crit_edge, %land.lhs.true89.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %do.end79, %if.then73.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %do.end54, %if.then48.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %do.end28, %if.then22.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %do.end28 ], [ -22, %if.then22.cleanup_crit_edge ], [ -22, %do.end54 ], [ -22, %if.then48.cleanup_crit_edge ], [ -22, %do.end79 ], [ -22, %if.then73.cleanup_crit_edge ], [ -22, %do.end98 ], [ -22, %if.then92.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ], [ 0, %land.lhs.true89.cleanup_crit_edge ], [ 0, %if.end84.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__UNIQUE_ID_file619, !1, !"__UNIQUE_ID_file619", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_l2tp.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_license620, !1, !"__UNIQUE_ID_license620", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author621, !4, !"__UNIQUE_ID_author621", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_l2tp.c", i32 31, i32 1}
!5 = !{ptr @__UNIQUE_ID_description622, !6, !"__UNIQUE_ID_description622", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_l2tp.c", i32 32, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias623, !8, !"__UNIQUE_ID_alias623", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_l2tp.c", i32 33, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias624, !10, !"__UNIQUE_ID_alias624", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_l2tp.c", i32 34, i32 1}
!11 = !{ptr @__initcall__kmod_xt_l2tp__625_354_l2tp_mt_init6, !12, !"__initcall__kmod_xt_l2tp__625_354_l2tp_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_l2tp.c", i32 354, i32 1}
!13 = !{ptr @__exitcall_l2tp_mt_exit, !14, !"__exitcall_l2tp_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_l2tp.c", i32 355, i32 1}
!15 = !{ptr @l2tp_mt_reg, !16, !"l2tp_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_l2tp.c", i32 313, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_l2tp.c", i32 272, i32 3}
!19 = !{ptr @l2tp_mt_check4._rs, !18, !"_rs", i1 false, i1 false}
!20 = !{ptr @__func__.l2tp_mt_check4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @l2tp_mt_check4._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @l2tp_mt_check4._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @l2tp_mt_check4._rs.3, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../net/netfilter/xt_l2tp.c", i32 278, i32 3}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @l2tp_mt_check4._entry.4, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @l2tp_mt_check4._entry_ptr.6, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @l2tp_mt_check._rs, !31, !"_rs", i1 false, i1 false}
!31 = !{!"../net/netfilter/xt_l2tp.c", i32 216, i32 3}
!32 = !{ptr @__func__.l2tp_mt_check, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @l2tp_mt_check._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @l2tp_mt_check._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @l2tp_mt_check._rs.8, !37, !"_rs", i1 false, i1 false}
!37 = !{!"../net/netfilter/xt_l2tp.c", i32 225, i32 3}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @l2tp_mt_check._entry.9, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @l2tp_mt_check._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @l2tp_mt_check._rs.12, !42, !"_rs", i1 false, i1 false}
!42 = !{!"../net/netfilter/xt_l2tp.c", i32 235, i32 4}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @l2tp_mt_check._entry.13, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @l2tp_mt_check._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @l2tp_mt_check._rs.16, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../net/netfilter/xt_l2tp.c", i32 243, i32 5}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @l2tp_mt_check._entry.17, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @l2tp_mt_check._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @l2tp_mt_check._rs.20, !52, !"_rs", i1 false, i1 false}
!52 = !{!"../net/netfilter/xt_l2tp.c", i32 249, i32 5}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @l2tp_mt_check._entry.21, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @l2tp_mt_check._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @l2tp_mt_check6._rs, !57, !"_rs", i1 false, i1 false}
!57 = !{!"../net/netfilter/xt_l2tp.c", i32 299, i32 3}
!58 = !{ptr @__func__.l2tp_mt_check6, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @l2tp_mt_check6._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @l2tp_mt_check6._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @l2tp_mt_check6._rs.24, !62, !"_rs", i1 false, i1 false}
!62 = !{!"../net/netfilter/xt_l2tp.c", i32 305, i32 3}
!63 = !{ptr @l2tp_mt_check6._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @l2tp_mt_check6._entry_ptr.26, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{!"branch_weights", i32 1, i32 2000}
