; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_SECMARK.c_pt.bc'
source_filename = "../net/netfilter/xt_SECMARK.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xt_action_param = type { %union.anon.114, %union.anon.115, ptr, i32, i16, i8 }
%union.anon.114 = type { ptr }
%union.anon.115 = type { ptr }
%struct.xt_secmark_target_info = type { i8, i32, [256 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xt_secmark_target_info_v1 = type { i8, [256 x i8], i32 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@__UNIQUE_ID_file354 = internal constant [41 x i8] c"xt_SECMARK.file=net/netfilter/xt_SECMARK\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [23 x i8] c"xt_SECMARK.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [52 x i8] c"xt_SECMARK.author=James Morris <jmorris@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description357 = internal constant [66 x i8] c"xt_SECMARK.description=Xtables: packet security mark modification\00", section ".modinfo", align 1
@__UNIQUE_ID_alias358 = internal constant [29 x i8] c"xt_SECMARK.alias=ipt_SECMARK\00", section ".modinfo", align 1
@__UNIQUE_ID_alias359 = internal constant [30 x i8] c"xt_SECMARK.alias=ip6t_SECMARK\00", section ".modinfo", align 1
@secmark_tg_reg = internal global [2 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"SECMARK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @secmark_tg_v0, ptr @secmark_tg_check_v0, ptr @secmark_tg_destroy, ptr null, ptr null, i32 264, i32 0, i32 0, i16 0, i16 0 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"SECMARK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @secmark_tg_v1, ptr @secmark_tg_check_v1, ptr @secmark_tg_destroy, ptr null, ptr null, i32 264, i32 260, i32 0, i16 0, i16 0 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_SECMARK__360_190_secmark_tg_init6 = internal global ptr @secmark_tg_init, section ".initcall6.init", align 4
@__exitcall_secmark_tg_exit = internal global ptr @secmark_tg_exit, section ".exitcall.exit", align 4
@mode = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mangle\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"security\00", [23 x i8] zeroinitializer }, align 32
@secmark_tg_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.secmark_tg_check = private unnamed_addr constant [17 x i8] c"secmark_tg_check\00", align 1
@secmark_tg_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.secmark_tg_check, ptr @.str.4, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016xt_SECMARK: only valid in 'mangle' or 'security' table, not '%s'\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/netfilter/xt_SECMARK.c\00", [37 x i8] zeroinitializer }, align 32
@secmark_tg_check._entry_ptr = internal global ptr @secmark_tg_check._entry, section ".printk_index", align 4
@secmark_tg_check._rs.5 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@secmark_tg_check._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.secmark_tg_check, ptr @.str.4, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016xt_SECMARK: mode already set to %hu cannot mix with rules for mode %hu\0A\00", [54 x i8] zeroinitializer }, align 32
@secmark_tg_check._entry_ptr.8 = internal global ptr @secmark_tg_check._entry.6, section ".printk_index", align 4
@secmark_tg_check._rs.9 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@secmark_tg_check._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.secmark_tg_check, ptr @.str.4, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016xt_SECMARK: invalid mode: %hu\0A\00", [63 x i8] zeroinitializer }, align 32
@secmark_tg_check._entry_ptr.12 = internal global ptr @secmark_tg_check._entry.10, section ".printk_index", align 4
@checkentry_lsm._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.checkentry_lsm = private unnamed_addr constant [15 x i8] c"checkentry_lsm\00", align 1
@checkentry_lsm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.checkentry_lsm, ptr @.str.4, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016xt_SECMARK: invalid security context '%s'\0A\00", [51 x i8] zeroinitializer }, align 32
@checkentry_lsm._entry_ptr = internal global ptr @checkentry_lsm._entry, section ".printk_index", align 4
@checkentry_lsm._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@checkentry_lsm._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.checkentry_lsm, ptr @.str.4, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016xt_SECMARK: unable to map security context '%s'\0A\00", [45 x i8] zeroinitializer }, align 32
@checkentry_lsm._entry_ptr.17 = internal global ptr @checkentry_lsm._entry.15, section ".printk_index", align 4
@checkentry_lsm._rs.18 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@checkentry_lsm._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.checkentry_lsm, ptr @.str.4, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016xt_SECMARK: unable to obtain relabeling permission\0A\00", [42 x i8] zeroinitializer }, align 32
@checkentry_lsm._entry_ptr.21 = internal global ptr @checkentry_lsm._entry.19, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.22 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 24, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 80, i32 20 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 81, i32 20 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 82, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 88, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 97, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 54, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 60, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [30 x i8] c"../net/netfilter/xt_SECMARK.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 67, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias358, ptr @__UNIQUE_ID_alias359, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_description357, ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_license355, ptr @__exitcall_secmark_tg_exit, ptr @__initcall__kmod_xt_SECMARK__360_190_secmark_tg_init6, ptr @checkentry_lsm._entry, ptr @checkentry_lsm._entry.15, ptr @checkentry_lsm._entry.19, ptr @checkentry_lsm._entry_ptr, ptr @checkentry_lsm._entry_ptr.17, ptr @checkentry_lsm._entry_ptr.21, ptr @secmark_tg_check._entry, ptr @secmark_tg_check._entry.10, ptr @secmark_tg_check._entry.6, ptr @secmark_tg_check._entry_ptr, ptr @secmark_tg_check._entry_ptr.12, ptr @secmark_tg_check._entry_ptr.8, ptr @secmark_tg_exit, ptr @mode, ptr @.str, ptr @.str.1, ptr @secmark_tg_check._rs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @secmark_tg_check._rs.5, ptr @.str.7, ptr @secmark_tg_check._rs.9, ptr @.str.11, ptr @checkentry_lsm._rs, ptr @.str.13, ptr @checkentry_lsm._rs.14, ptr @.str.16, ptr @checkentry_lsm._rs.18, ptr @.str.20], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @secmark_tg_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @secmark_tg_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @secmark_tg_check._rs.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @secmark_tg_check._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @secmark_tg_check._rs.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @secmark_tg_check._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkentry_lsm._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkentry_lsm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkentry_lsm._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkentry_lsm._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkentry_lsm._rs.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkentry_lsm._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @secmark_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xt_unregister_targets(ptr noundef nonnull @secmark_tg_reg, i32 noundef 2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @secmark_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_targets(ptr noundef nonnull @secmark_tg_reg, i32 noundef 2) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @secmark_tg_v0(ptr nocapture noundef writeonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %0)
  %cond.i = icmp eq i8 %0, 1
  br i1 %cond.i, label %secmark_tg.exit, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netfilter/xt_SECMARK.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #6, !srcloc !66
  unreachable

secmark_tg.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %secid1 = getelementptr inbounds %struct.xt_secmark_target_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %secid1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %secid1, align 4
  %secmark4.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 12
  %6 = ptrtoint ptr %secmark4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %secmark4.i, align 8
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @secmark_tg_check_v0(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %newinfo = alloca %struct.xt_secmark_target_info_v1, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %newinfo) #6
  %2 = getelementptr inbounds i8, ptr %newinfo, i32 256
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  %6 = ptrtoint ptr %newinfo to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %newinfo, align 4
  %secctx = getelementptr inbounds %struct.xt_secmark_target_info_v1, ptr %newinfo, i32 0, i32 1
  %secctx2 = getelementptr inbounds %struct.xt_secmark_target_info, ptr %1, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %secctx, ptr %secctx2, i32 256)
  %table = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 1
  %8 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %table, align 4
  %call = call fastcc i32 @secmark_tg_check(ptr noundef %9, ptr noundef nonnull %newinfo)
  %secid = getelementptr inbounds %struct.xt_secmark_target_info_v1, ptr %newinfo, i32 0, i32 2
  %10 = ptrtoint ptr %secid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %secid, align 4
  %secid4 = getelementptr inbounds %struct.xt_secmark_target_info, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %secid4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %secid4, align 4
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %newinfo) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @secmark_tg_destroy(ptr nocapture noundef readnone %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %0)
  %cond = icmp eq i8 %0, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @security_secmark_refcount_dec() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @secmark_tg_v1(ptr nocapture noundef writeonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %0)
  %cond.i = icmp eq i8 %0, 1
  br i1 %cond.i, label %secmark_tg.exit, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netfilter/xt_SECMARK.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #6, !srcloc !66
  unreachable

secmark_tg.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %secid.i = getelementptr inbounds %struct.xt_secmark_target_info_v1, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %secid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %secid.i, align 4
  %secmark4.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 12
  %6 = ptrtoint ptr %secmark4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %secmark4.i, align 8
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @secmark_tg_check_v1(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 1
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %2 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %targinfo, align 4
  %call = tail call fastcc i32 @secmark_tg_check(ptr noundef %1, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @secmark_tg_check(ptr noundef %table, ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %table, ptr noundef nonnull dereferenceable(7) @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %table, ptr noundef nonnull dereferenceable(9) @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @secmark_tg_check._rs, ptr noundef nonnull @__func__.secmark_tg_check) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %table) #10
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %0 = load i8, ptr @mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool7.not = icmp eq i8 %0, 0
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %1)
  %.pr = load i8, ptr %info, align 4
  br i1 %tobool7.not, label %if.end6.if.end26_crit_edge, label %land.lhs.true8

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.lhs.true8:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_cmp1(i8 %0, i8 %.pr)
  %cmp11.not = icmp eq i8 %0, %.pr
  br i1 %cmp11.not, label %land.lhs.true8.if.end26_crit_edge, label %if.then13

land.lhs.true8.if.end26_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then13:                                        ; preds = %land.lhs.true8
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @secmark_tg_check._rs.5, ptr noundef nonnull @__func__.secmark_tg_check) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.cleanup_crit_edge, label %do.end19

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %2 = load i8, ptr @mode, align 1
  %conv21 = zext i8 %2 to i32
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %info, align 4
  %conv23 = zext i8 %4 to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv21, i32 noundef %conv23) #10
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true8.if.end26_crit_edge, %if.end6.if.end26_crit_edge
  %5 = phi i8 [ %0, %land.lhs.true8.if.end26_crit_edge ], [ %.pr, %if.end6.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cond = icmp eq i8 %5, 1
  br i1 %cond, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end26
  %call29 = tail call i32 @___ratelimit(ptr noundef nonnull @secmark_tg_check._rs.9, ptr noundef nonnull @__func__.secmark_tg_check) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %sw.default.cleanup_crit_edge, label %do.end34

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end34:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %info, align 4
  %conv37 = zext i8 %7 to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv37) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.end26
  %secctx.i = getelementptr inbounds %struct.xt_secmark_target_info_v1, ptr %info, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.xt_secmark_target_info_v1, ptr %info, i32 0, i32 1, i32 255
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx.i, align 1
  %secid.i = getelementptr inbounds %struct.xt_secmark_target_info_v1, ptr %info, i32 0, i32 2
  %9 = ptrtoint ptr %secid.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %secid.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %secctx.i) #11
  %call5.i = tail call i32 @security_secctx_to_secid(ptr noundef %secctx.i, i32 noundef %call.i, ptr noundef %secid.i) #6
  %10 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5.i, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %if.end14.i
    i32 -22, label %if.then6.i
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6.i:                                       ; preds = %sw.epilog
  %call7.i = tail call i32 @___ratelimit(ptr noundef nonnull @checkentry_lsm._rs, ptr noundef nonnull @__func__.checkentry_lsm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then6.i.cleanup_crit_edge, label %do.end.i

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %secctx.i) #10
  br label %cleanup

if.end14.i:                                       ; preds = %sw.epilog
  %11 = ptrtoint ptr %secid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %secid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not.i = icmp eq i32 %12, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end29.i

if.then17.i:                                      ; preds = %if.end14.i
  %call18.i = tail call i32 @___ratelimit(ptr noundef nonnull @checkentry_lsm._rs.14, ptr noundef nonnull @__func__.checkentry_lsm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then17.i.cleanup_crit_edge, label %do.end23.i

if.then17.i.cleanup_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end23.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %secctx.i) #10
  br label %cleanup

if.end29.i:                                       ; preds = %if.end14.i
  %call31.i = tail call i32 @security_secmark_relabel_packet(i32 noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %checkentry_lsm.exit.thread58, label %if.then33.i

if.then33.i:                                      ; preds = %if.end29.i
  %call34.i = tail call i32 @___ratelimit(ptr noundef nonnull @checkentry_lsm._rs.18, ptr noundef nonnull @__func__.checkentry_lsm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.then33.i.cleanup_crit_edge, label %do.end39.i

if.then33.i.cleanup_crit_edge:                    ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end39.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %cleanup

checkentry_lsm.exit.thread58:                     ; preds = %if.end29.i
  tail call void @security_secmark_refcount_inc() #6
  %13 = load i8, ptr @mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool44.not = icmp eq i8 %13, 0
  br i1 %tobool44.not, label %if.then45, label %checkentry_lsm.exit.thread58.cleanup_crit_edge

checkentry_lsm.exit.thread58.cleanup_crit_edge:   ; preds = %checkentry_lsm.exit.thread58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %checkentry_lsm.exit.thread58
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %info, align 4
  store i8 %15, ptr @mode, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %checkentry_lsm.exit.thread58.cleanup_crit_edge, %do.end39.i, %if.then33.i.cleanup_crit_edge, %do.end23.i, %if.then17.i.cleanup_crit_edge, %do.end.i, %if.then6.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end34, %sw.default.cleanup_crit_edge, %do.end19, %if.then13.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %do.end19 ], [ -22, %if.then13.cleanup_crit_edge ], [ -22, %do.end34 ], [ -22, %sw.default.cleanup_crit_edge ], [ 0, %if.then45 ], [ 0, %checkentry_lsm.exit.thread58.cleanup_crit_edge ], [ %call31.i, %if.then33.i.cleanup_crit_edge ], [ %call31.i, %do.end39.i ], [ -2, %if.then17.i.cleanup_crit_edge ], [ -2, %do.end23.i ], [ -22, %do.end.i ], [ -22, %if.then6.i.cleanup_crit_edge ], [ %call5.i, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_secctx_to_secid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_secmark_relabel_packet(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_secmark_refcount_inc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_secmark_refcount_dec() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__UNIQUE_ID_file354, !1, !"__UNIQUE_ID_file354", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_SECMARK.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_license355, !1, !"__UNIQUE_ID_license355", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author356, !4, !"__UNIQUE_ID_author356", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_SECMARK.c", i32 19, i32 1}
!5 = !{ptr @__UNIQUE_ID_description357, !6, !"__UNIQUE_ID_description357", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_SECMARK.c", i32 20, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias358, !8, !"__UNIQUE_ID_alias358", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_SECMARK.c", i32 21, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias359, !10, !"__UNIQUE_ID_alias359", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_SECMARK.c", i32 22, i32 1}
!11 = !{ptr @__initcall__kmod_xt_SECMARK__360_190_secmark_tg_init6, !12, !"__initcall__kmod_xt_SECMARK__360_190_secmark_tg_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_SECMARK.c", i32 190, i32 1}
!13 = !{ptr @__exitcall_secmark_tg_exit, !14, !"__exitcall_secmark_tg_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_SECMARK.c", i32 191, i32 1}
!15 = !{ptr @secmark_tg_reg, !16, !"secmark_tg_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_SECMARK.c", i32 156, i32 25}
!17 = !{ptr @mode, !18, !"mode", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_SECMARK.c", i32 24, i32 11}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_SECMARK.c", i32 80, i32 20}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_SECMARK.c", i32 81, i32 20}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/xt_SECMARK.c", i32 82, i32 3}
!25 = !{ptr @secmark_tg_check._rs, !24, !"_rs", i1 false, i1 false}
!26 = !{ptr @__func__.secmark_tg_check, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @secmark_tg_check._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @secmark_tg_check._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @secmark_tg_check._rs.5, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../net/netfilter/xt_SECMARK.c", i32 88, i32 3}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @secmark_tg_check._entry.6, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @secmark_tg_check._entry_ptr.8, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @secmark_tg_check._rs.9, !37, !"_rs", i1 false, i1 false}
!37 = !{!"../net/netfilter/xt_SECMARK.c", i32 97, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @secmark_tg_check._entry.10, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @secmark_tg_check._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @checkentry_lsm._rs, !42, !"_rs", i1 false, i1 false}
!42 = !{!"../net/netfilter/xt_SECMARK.c", i32 54, i32 4}
!43 = !{ptr @__func__.checkentry_lsm, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @checkentry_lsm._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @checkentry_lsm._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @checkentry_lsm._rs.14, !48, !"_rs", i1 false, i1 false}
!48 = !{!"../net/netfilter/xt_SECMARK.c", i32 60, i32 3}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @checkentry_lsm._entry.15, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @checkentry_lsm._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @checkentry_lsm._rs.18, !53, !"_rs", i1 false, i1 false}
!53 = !{!"../net/netfilter/xt_SECMARK.c", i32 67, i32 3}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @checkentry_lsm._entry.19, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @checkentry_lsm._entry_ptr.21, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2155998155, i64 2155998645, i64 2155998192, i64 2155998248, i64 2155998282, i64 2155998306, i64 2155998347, i64 2155998368, i64 2155998396, i64 2155998430}
