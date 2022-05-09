; ModuleID = '/llk/IR_all_yes/net/9p/protocol.c_pt.bc'
source_filename = "../net/9p/protocol.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+p9stat_free\22, \22a\22\09"
module asm "\09.weak\09__crc_p9stat_free\09\09\09\09"
module asm "\09.long\09__crc_p9stat_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_p9stat_free:\09\09\09\09\09"
module asm "\09.asciz \09\22p9stat_free\22\09\09\09\09\09"
module asm "__kstrtabns_p9stat_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+p9stat_read\22, \22a\22\09"
module asm "\09.weak\09__crc_p9stat_read\09\09\09\09"
module asm "\09.long\09__crc_p9stat_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_p9stat_read:\09\09\09\09\09"
module asm "\09.asciz \09\22p9stat_read\22\09\09\09\09\09"
module asm "__kstrtabns_p9stat_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+p9dirent_read\22, \22a\22\09"
module asm "\09.weak\09__crc_p9dirent_read\09\09\09\09"
module asm "\09.long\09__crc_p9dirent_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_p9dirent_read:\09\09\09\09\09"
module asm "\09.asciz \09\22p9dirent_read\22\09\09\09\09\09"
module asm "__kstrtabns_p9dirent_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_namespace = type opaque
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.8 }
%struct.atomic_t = type { i32 }
%union.anon.8 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.p9_wstat = type { i16, i16, i32, %struct.p9_qid, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t }
%struct.p9_qid = type { i8, i32, i64 }
%struct.kgid_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.p9_fcall = type { i32, i8, i16, i32, i32, ptr, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon, %union.anon.3 }
%union.anon = type { ptr }
%union.anon.3 = type { i64 }
%struct.p9_iattr_dotl = type { i32, i32, %struct.kuid_t, %struct.kgid_t, i64, i64, i64, i64, i64 }
%struct.__va_list = type { ptr }
%struct.p9_stat_dotl = type { i64, %struct.p9_qid, i32, %struct.kuid_t, %struct.kgid_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.p9_client = type { %struct.spinlock, i32, i8, ptr, i32, ptr, ptr, %union.anon.5, %struct.idr, %struct.idr, [65 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.p9_dirent = type { %struct.p9_qid, i64, i8, [256 x i8] }

@__kstrtab_p9stat_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_p9stat_free = external dso_local constant [0 x i8], align 1
@__ksymtab_p9stat_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @p9stat_free to i32), ptr @__kstrtab_p9stat_free, ptr @__kstrtabns_p9stat_free }, section "___ksymtab+p9stat_free", align 4
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"w\00", [30 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bdq\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wwdQdddqssss?sugu\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"d\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Q\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ddugqqqqq\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@__func__.p9stat_read = private unnamed_addr constant [12 x i8] c"p9stat_read\00", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"<<< p9stat_read failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_p9stat_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_p9stat_read = external dso_local constant [0 x i8], align 1
@__ksymtab_p9stat_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @p9stat_read to i32), ptr @__kstrtab_p9stat_read, ptr @__kstrtabns_p9stat_read }, section "___ksymtab+p9stat_read", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dbw\00", [28 x i8] zeroinitializer }, align 32
@__func__.p9pdu_finalize = private unnamed_addr constant [15 x i8] c"p9pdu_finalize\00", align 1
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c">>> size=%d type: %d tag: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Qqbs\00", [27 x i8] zeroinitializer }, align 32
@__func__.p9dirent_read = private unnamed_addr constant [14 x i8] c"p9dirent_read\00", align 1
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"<<< p9dirent_read failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"On the wire dirent name too long: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@__kstrtab_p9dirent_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_p9dirent_read = external dso_local constant [0 x i8], align 1
@__ksymtab_p9dirent_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @p9dirent_read to i32), ptr @__kstrtab_p9dirent_read, ptr @__kstrtabns_p9dirent_read }, section "___ksymtab+p9dirent_read", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qQdugqqqqqqqqqqqqqqq\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_9p_protocol_dump = external dso_local global %struct.tracepoint, align 4
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/trace/events/9p.h\00", [38 x i8] zeroinitializer }, align 32
@trace_9p_protocol_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 8, i64 0, i64 63, i64 73, i64 81, i64 82, i64 83, i64 84, i64 86, i64 98, i64 100, i64 103, i64 113, i64 115, i64 117, i64 119]
@__sancov_gen_cov_switch_values.20 = internal global [17 x i64] [i64 15, i64 8, i64 0, i64 63, i64 65, i64 68, i64 81, i64 82, i64 83, i64 84, i64 98, i64 100, i64 103, i64 113, i64 115, i64 117, i64 119]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 391, i32 9 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 414, i32 42 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 423, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 437, i32 48 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 456, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 478, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 491, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 555, i32 52 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 557, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 569, i32 30 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 582, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 606, i32 52 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 609, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 616, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 230, i32 6 }
@___asan_gen_.67 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 214, i32 2 }
@___asan_gen_.70 = private constant [21 x i8] c"../net/9p/protocol.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 313, i32 6 }
@___asan_gen_.76 = private unnamed_addr constant [29 x i8] c"../include/trace/events/9p.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 148, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 108, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_p9dirent_read, ptr @__ksymtab_p9stat_free, ptr @__ksymtab_p9stat_read, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @p9stat_free(ptr nocapture noundef %stbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.p9_wstat, ptr %stbuf, i32 0, i32 8
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  tail call void @kfree(ptr noundef %1) #11
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %name, align 8
  %uid = getelementptr inbounds %struct.p9_wstat, ptr %stbuf, i32 0, i32 9
  %3 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %uid, align 4
  tail call void @kfree(ptr noundef %4) #11
  %5 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %uid, align 4
  %gid = getelementptr inbounds %struct.p9_wstat, ptr %stbuf, i32 0, i32 10
  %6 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gid, align 8
  tail call void @kfree(ptr noundef %7) #11
  %8 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %gid, align 8
  %muid = getelementptr inbounds %struct.p9_wstat, ptr %stbuf, i32 0, i32 11
  %9 = ptrtoint ptr %muid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %muid, align 4
  tail call void @kfree(ptr noundef %10) #11
  %11 = ptrtoint ptr %muid to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %muid, align 4
  %extension = getelementptr inbounds %struct.p9_wstat, ptr %stbuf, i32 0, i32 12
  %12 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extension, align 8
  tail call void @kfree(ptr noundef %13) #11
  %14 = ptrtoint ptr %extension to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %extension, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pdu_read(ptr nocapture noundef %pdu, ptr nocapture noundef writeonly %data, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pdu, align 4
  %offset = getelementptr inbounds %struct.p9_fcall, ptr %pdu, i32 0, i32 3
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %sub = sub i32 %1, %3
  %4 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %size)
  %sdata = getelementptr inbounds %struct.p9_fcall, ptr %pdu, i32 0, i32 6
  %5 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdata, align 4
  %arrayidx = getelementptr i8, ptr %6, i32 %3
  %7 = call ptr @memcpy(ptr %data, ptr %arrayidx, i32 %4)
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add = add i32 %9, %4
  store i32 %add, ptr %offset, align 4
  %sub4 = sub i32 %size, %4
  ret i32 %sub4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p9pdu_vwritef(ptr noundef %pdu, i32 noundef %proto_version, ptr nocapture noundef readonly %fmt, [1 x i32] %ap.coerce) local_unnamed_addr #0 align 64 {
entry:
  %i.i = alloca %struct.iov_iter, align 8
  %val = alloca i8, align 1
  %val4 = alloca i16, align 2
  %val13 = alloca i32, align 4
  %val21 = alloca i64, align 8
  %val48 = alloca i32, align 4
  %val58 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ap.coerce.fca.0.extract = extractvalue [1 x i32] %ap.coerce, 0
  %0 = inttoptr i32 %ap.coerce.fca.0.extract to ptr
  %proto_version.off = add i32 %proto_version, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %proto_version.off)
  %switch = icmp ult i32 %proto_version.off, 2
  %capacity.i288 = getelementptr inbounds %struct.p9_fcall, ptr %pdu, i32 0, i32 4
  %sdata.i290 = getelementptr inbounds %struct.p9_fcall, ptr %pdu, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.inc164, %entry
  %ptr.0 = phi ptr [ %fmt, %entry ], [ %incdec.ptr, %for.inc164 ]
  %ap.sroa.0.0 = phi ptr [ %0, %entry ], [ %ap.sroa.0.1309, %for.inc164 ]
  %1 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ptr.0, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %2, label %do.body [
    i8 0, label %for.cond.cleanup_crit_edge
    i8 98, label %sw.bb
    i8 119, label %sw.bb3
    i8 100, label %sw.bb12
    i8 113, label %sw.bb20
    i8 115, label %sw.bb28
    i8 117, label %sw.bb45
    i8 103, label %sw.bb55
    i8 81, label %sw.bb65
    i8 83, label %sw.bb70
    i8 86, label %sw.bb83
    i8 84, label %sw.bb95
    i8 82, label %sw.bb115
    i8 73, label %sw.bb140
    i8 63, label %sw.bb150
  ]

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val)
  %argp.next = getelementptr inbounds i8, ptr %ap.sroa.0.0, i32 4
  %4 = ptrtoint ptr %ap.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ap.sroa.0.0, align 4
  %conv1 = trunc i32 %5 to i8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1, ptr %val, align 1
  %7 = ptrtoint ptr %capacity.i288 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %capacity.i288, align 4
  %9 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pdu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %11 = icmp ne i32 %8, %10
  %12 = zext i1 %11 to i32
  %13 = ptrtoint ptr %sdata.i290 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdata.i290, align 4
  %arrayidx.i = getelementptr i8, ptr %14, i32 %10
  %15 = call ptr @memcpy(ptr %arrayidx.i, ptr %val, i32 %12)
  %16 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pdu, align 4
  %add.i = add i32 %17, %12
  store i32 %add.i, ptr %pdu, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val)
  br i1 %11, label %sw.bb.for.inc164_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.for.inc164_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc164

sw.bb3:                                           ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val4)
  %argp.next6 = getelementptr inbounds i8, ptr %ap.sroa.0.0, i32 4
  %18 = ptrtoint ptr %ap.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ap.sroa.0.0, align 4
  %conv7 = trunc i32 %19 to i16
  %20 = call i16 @llvm.bswap.i16(i16 %conv7)
  %21 = ptrtoint ptr %val4 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %val4, align 2
  %22 = ptrtoint ptr %capacity.i288 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %capacity.i288, align 4
  %24 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pdu, align 4
  %sub.i253 = sub i32 %23, %25
  %26 = call i32 @llvm.umin.i32(i32 %sub.i253, i32 2) #11
  %27 = ptrtoint ptr %sdata.i290 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdata.i290, align 4
  %arrayidx.i255 = getelementptr i8, ptr %28, i32 %25
  %29 = call ptr @memcpy(ptr %arrayidx.i255, ptr %val4, i32 %26)
  %30 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pdu, align 4
  %add.i256 = add i32 %31, %26
  store i32 %add.i256, ptr %pdu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i253)
  %tobool9.not = icmp ugt i32 %sub.i253, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val4)
  br i1 %tobool9.not, label %sw.bb3.for.inc164_crit_edge, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3.for.inc164_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc164

sw.bb12:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val13)
  %32 = ptrtoint ptr %val13 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val13, align 4
  %argp.next15 = getelementptr inbounds i8, ptr %ap.sroa.0.0, i32 4
  %33 = ptrtoint ptr %ap.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ap.sroa.0.0, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %val13 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %val13, align 4
  %37 = ptrtoint ptr %capacity.i288 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %capacity.i288, align 4
  %39 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pdu, align 4
  %sub.i259 = sub i32 %38, %40
  %41 = call i32 @llvm.umin.i32(i32 %sub.i259, i32 4) #11
  %42 = ptrtoint ptr %sdata.i290 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdata.i290, align 4
  %arrayidx.i261 = getelementptr i8, ptr %43, i32 %40
  %44 = call ptr @memcpy(ptr %arrayidx.i261, ptr %val13, i32 %41)
  %45 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pdu, align 4
  %add.i262 = add i32 %46, %41
  store i32 %add.i262, ptr %pdu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i259)
  %tobool17.not = icmp ugt i32 %sub.i259, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val13)
  br i1 %tobool17.not, label %sw.bb12.for.inc164_crit_edge, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb12.for.inc164_crit_edge:                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc164

sw.bb20:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val21)
  %47 = ptrtoint ptr %ap.sroa.0.0 to i32
  %48 = add i32 %47, 7
  %49 = and i32 %48, -8
  %argp.cur22.aligned = inttoptr i32 %49 to ptr
  %argp.next23 = getelementptr inbounds i8, ptr %argp.cur22.aligned, i32 8
  %50 = ptrtoint ptr %argp.cur22.aligned to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %argp.cur22.aligned, align 8
  %52 = call i64 @llvm.bswap.i64(i64 %51)
  %53 = ptrtoint ptr %val21 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %val21, align 8
  %54 = ptrtoint ptr %capacity.i288 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %capacity.i288, align 4
  %56 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pdu, align 4
  %sub.i265 = sub i32 %55, %57
  %58 = call i32 @llvm.umin.i32(i32 %sub.i265, i32 8) #11
  %59 = ptrtoint ptr %sdata.i290 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sdata.i290, align 4
  %arrayidx.i267 = getelementptr i8, ptr %60, i32 %57
  %61 = call ptr @memcpy(ptr %arrayidx.i267, ptr %val21, i32 %58)
  %62 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pdu, align 4
  %add.i268 = add i32 %63, %58
  store i32 %add.i268, ptr %pdu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i265)
  %tobool25.not = icmp ugt i32 %sub.i265, 7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val21)
  br i1 %tobool25.not, label %sw.bb20.for.inc164_crit_edge, label %sw.bb20.cleanup_crit_edge

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb20.for.inc164_crit_edge:                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc164

sw.bb28:                                          ; preds = %for.cond
  %argp.next30 = getelementptr inbounds i8, ptr %ap.sroa.0.0, i32 4
  %64 = ptrtoint ptr %ap.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ap.sroa.0.0, align 4
  %tobool31.not = icmp eq ptr %65, null
  br i1 %tobool31.not, label %sw.bb28.if.end36_crit_edge, label %if.then32

sw.bb28.if.end36_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then32:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = call i32 @strlen(ptr noundef nonnull %65) #14
  %66 = call i32 @llvm.umin.i32(i32 %call33, i32 65535)
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %sw.bb28.if.end36_crit_edge
  %len.0 = phi i32 [ %66, %if.then32 ], [ 0, %sw.bb28.if.end36_crit_edge ]
  %call38 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str, i32 noundef %len.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end36
  %67 = ptrtoint ptr %capacity.i288 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %capacity.i288, align 4
  %69 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pdu, align 4
  %sub.i271 = sub i32 %68, %70
  %71 = call i32 @llvm.umin.i32(i32 %sub.i271, i32 %len.0) #11
  %72 = ptrtoint ptr %sdata.i290 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sdata.i290, align 4
  %arrayidx.i273 = getelementptr i8, ptr %73, i32 %70
  %74 = call ptr @memcpy(ptr %arrayidx.i273, ptr %65, i32 %71)
  %75 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pdu, align 4
  %add.i274 = add i32 %76, %71
  store i32 %add.i274, ptr %pdu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0, i32 %sub.i271)
  %tobool42.not.not = icmp ugt i32 %len.0, %sub.i271
  br i1 %tobool42.not.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc164_crit_edge

land.lhs.true.for.inc164_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc164

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb45:                                          ; preds = %for.cond
  %argp.next47 = getelementptr inbounds i8, ptr %ap.sroa.0.0, i32 4
  %77 = ptrtoint ptr %ap.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %77)
  %uid.sroa.0.0.copyload = load i32, ptr %ap.sroa.0.0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val48)
  %.fca.0.insert199 = insertvalue [1 x i32] poison, i32 %uid.sroa.0.0.copyload, 0
  %call50 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert199) #11
  %78 = call i32 @llvm.bswap.i32(i32 %call50)
  %79 = ptrtoint ptr %val48 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %val48, align 4
  %80 = ptrtoint ptr %capacity.i288 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %capacity.i288, align 4
  %82 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pdu, align 4
  %sub.i277 = sub i32 %81, %83
  %84 = call i32 @llvm.umin.i32(i32 %sub.i277, i32 4) #11
  %85 = ptrtoint ptr %sdata.i290 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sdata.i290, align 4
  %arrayidx.i279 = getelementptr i8, ptr %86, i32 %83
  %87 = call ptr @memcpy(ptr %arrayidx.i279, ptr %val48, i32 %84)
  %88 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pdu, align 4
  %add.i280 = add i32 %89, %84
  store i32 %add.i280, ptr %pdu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i277)
  %tobool52.not = icmp ugt i32 %sub.i277, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val48)
  br i1 %tobool52.not, label %sw.bb45.for.inc164_crit_edge, label %sw.bb45.cleanup_crit_edge

sw.bb45.cleanup_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb45.for.inc164_crit_edge:                     ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc164

sw.bb55:                                          ; preds = %for.cond
  %argp.next57 = getelementptr inbounds i8, ptr %ap.sroa.0.0, i32 4
  %90 = ptrtoint ptr %ap.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %90)
  %gid.sroa.0.0.copyload = load i32, ptr %ap.sroa.0.0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val58)
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %gid.sroa.0.0.copyload, 0
  %call60 = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #11
  %91 = call i32 @llvm.bswap.i32(i32 %call60)
  %92 = ptrtoint ptr %val58 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %val58, align 4
  %93 = ptrtoint ptr %capacity.i288 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %capacity.i288, align 4
  %95 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pdu, align 4
  %sub.i283 = sub i32 %94, %96
  %97 = call i32 @llvm.umin.i32(i32 %sub.i283, i32 4) #11
  %98 = ptrtoint ptr %sdata.i290 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sdata.i290, align 4
  %arrayidx.i285 = getelementptr i8, ptr %99, i32 %96
  %100 = call ptr @memcpy(ptr %arrayidx.i285, ptr %val58, i32 %97)
  %101 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pdu, align 4
  %add.i286 = add i32 %102, %97
  store i32 %add.i286, ptr %pdu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i283)
  %tobool62.not = icmp ugt i32 %sub.i283, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val58)
  br i1 %tobool62.not, label %sw.bb55.for.inc164_crit_edge, label %sw.bb55.cleanup_crit_edge

sw.bb55.cleanup_crit_edge:                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb55.for.inc164_crit_edge:                     ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc164

sw.bb65:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %ap.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ap.sroa.0.0, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %104, align 8
  %conv68 = zext i8 %106 to i32
  %version = getelementptr inbounds %struct.p9_qid, ptr %104, i32 0, i32 1
  %107 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %version, align 4
  %path = getelementptr inbounds %struct.p9_qid, ptr %104, i32 0, i32 2
  %109 = ptrtoint ptr %path to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %path, align 8
  %call69 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str.1, i32 noundef %conv68, i32 noundef %108, i64 noundef %110)
  br label %sw.epilog

sw.bb70:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %111 = ptrtoint ptr %ap.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ap.sroa.0.0, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %112, align 8
  %conv73 = zext i16 %114 to i32
  %type74 = getelementptr inbounds %struct.p9_wstat, ptr %112, i32 0, i32 1
  %115 = ptrtoint ptr %type74 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %type74, align 2
  %conv75 = zext i16 %116 to i32
  %dev = getelementptr inbounds %struct.p9_wstat, ptr %112, i32 0, i32 2
  %117 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dev, align 4
  %qid76 = getelementptr inbounds %struct.p9_wstat, ptr %112, i32 0, i32 3
  %mode = getelementptr inbounds %struct.p9_wstat, ptr %112, i32 0, i32 4
  %119 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mode, align 8
  %atime = getelementptr inbounds %struct.p9_wstat, ptr %112, i32 0, i32 5
  %121 = ptrtoint ptr %atime to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %atime, align 4
  %mtime = getelementptr inbounds %struct.p9_wstat, ptr %112, i32 0, i32 6
  %123 = ptrtoint ptr %mtime to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mtime, align 8
  %length = getelementptr inbounds %struct.p9_wstat, ptr %112, i32 0, i32 7
  %125 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %length, align 8
  %name = getelementptr inbounds %struct.p9_wstat, ptr %112, i32 0, i32 8
  %127 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %name, align 8
  %uid77 = getelementptr inbounds %struct.p9_wstat, ptr %112, i32 0, i32 9
  %129 = ptrtoint ptr %uid77 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %uid77, align 4
  %gid78 = getelementptr inbounds %struct.p9_wstat, ptr %112, i32 0, i32 10
  %131 = ptrtoint ptr %gid78 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %gid78, align 8
  %muid = getelementptr inbounds %struct.p9_wstat, ptr %112, i32 0, i32 11
  %133 = ptrtoint ptr %muid to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %muid, align 4
  %extension = getelementptr inbounds %struct.p9_wstat, ptr %112, i32 0, i32 12
  %135 = ptrtoint ptr %extension to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %extension, align 8
  %n_uid = getelementptr inbounds %struct.p9_wstat, ptr %112, i32 0, i32 13
  %n_gid = getelementptr inbounds %struct.p9_wstat, ptr %112, i32 0, i32 14
  %n_muid = getelementptr inbounds %struct.p9_wstat, ptr %112, i32 0, i32 15
  %137 = ptrtoint ptr %n_uid to i32
  call void @__asan_load4_noabort(i32 %137)
  %.unpack242 = load i32, ptr %n_uid, align 4
  %138 = insertvalue [1 x i32] undef, i32 %.unpack242, 0
  %139 = ptrtoint ptr %n_gid to i32
  call void @__asan_load4_noabort(i32 %139)
  %.unpack243 = load i32, ptr %n_gid, align 8
  %140 = insertvalue [1 x i32] undef, i32 %.unpack243, 0
  %141 = ptrtoint ptr %n_muid to i32
  call void @__asan_load4_noabort(i32 %141)
  %.unpack244 = load i32, ptr %n_muid, align 4
  %142 = insertvalue [1 x i32] undef, i32 %.unpack244, 0
  %call82 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str.2, i32 noundef %conv73, i32 noundef %conv75, i32 noundef %118, ptr noundef %qid76, i32 noundef %120, i32 noundef %122, i32 noundef %124, i64 noundef %126, ptr noundef %128, ptr noundef %130, ptr noundef %132, ptr noundef %134, ptr noundef %136, [1 x i32] %138, [1 x i32] %140, [1 x i32] %142)
  br label %sw.epilog

sw.bb83:                                          ; preds = %for.cond
  %argp.next85 = getelementptr inbounds i8, ptr %ap.sroa.0.0, i32 4
  %143 = ptrtoint ptr %ap.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ap.sroa.0.0, align 4
  %argp.next87 = getelementptr inbounds i8, ptr %ap.sroa.0.0, i32 8
  %145 = ptrtoint ptr %argp.next85 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %argp.next85, align 4
  %call88 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str.3, i32 noundef %144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %land.lhs.true90, label %sw.bb83.cleanup_crit_edge

sw.bb83.cleanup_crit_edge:                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true90:                                  ; preds = %sw.bb83
  %147 = ptrtoint ptr %capacity.i288 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %capacity.i288, align 4
  %149 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %pdu, align 4
  %sub.i289 = sub i32 %148, %150
  %151 = call i32 @llvm.umin.i32(i32 %sub.i289, i32 %144) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %i.i) #11
  %152 = call ptr @memcpy(ptr %i.i, ptr %146, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp9.i.i.i.i = icmp slt i32 %151, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %land.lhs.true90
  %.b1.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !62

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %sdata.i290 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %sdata.i290, align 4
  %arrayidx.i291 = getelementptr i8, ptr %154, i32 %150
  call void @__check_object_size(ptr noundef %arrayidx.i291, i32 noundef %151, i1 noundef zeroext false) #11
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %arrayidx.i291, i32 noundef %151, ptr noundef nonnull %i.i) #11
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %151)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %151
  br i1 %cmp.i.i, label %copy_from_iter.exit.i.i.pdu_write_u.exit_crit_edge, label %if.end.i.i, !prof !62

copy_from_iter.exit.i.i.pdu_write_u.exit_crit_edge: ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pdu_write_u.exit

if.end.i.i:                                       ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @iov_iter_revert(ptr noundef nonnull %i.i, i32 noundef %retval.0.i.i.i) #11
  br label %pdu_write_u.exit

pdu_write_u.exit:                                 ; preds = %if.end.i.i, %copy_from_iter.exit.i.i.pdu_write_u.exit_crit_edge
  %len.0.i = phi i32 [ %151, %copy_from_iter.exit.i.i.pdu_write_u.exit_crit_edge ], [ 0, %if.end.i.i ]
  %155 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %pdu, align 4
  %add.i292 = add i32 %156, %len.0.i
  store i32 %add.i292, ptr %pdu, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %len.0.i)
  %tobool92.not = icmp eq i32 %144, %len.0.i
  br i1 %tobool92.not, label %pdu_write_u.exit.for.inc164_crit_edge, label %pdu_write_u.exit.cleanup_crit_edge

pdu_write_u.exit.cleanup_crit_edge:               ; preds = %pdu_write_u.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

pdu_write_u.exit.for.inc164_crit_edge:            ; preds = %pdu_write_u.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc164

sw.bb95:                                          ; preds = %for.cond
  %argp.next97 = getelementptr inbounds i8, ptr %ap.sroa.0.0, i32 4
  %157 = ptrtoint ptr %ap.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %ap.sroa.0.0, align 4
  %argp.next100 = getelementptr inbounds i8, ptr %ap.sroa.0.0, i32 8
  %159 = ptrtoint ptr %argp.next97 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %argp.next97, align 4
  %conv101 = and i32 %158, 65535
  %call102 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str, i32 noundef %conv101)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %for.cond105.preheader, label %sw.bb95.cleanup_crit_edge

sw.bb95.cleanup_crit_edge:                        ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond105.preheader:                            ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv101)
  %cmp107315.not = icmp eq i32 %conv101, 0
  br i1 %cmp107315.not, label %for.cond105.preheader.for.inc164_crit_edge, label %for.cond105.preheader.for.body109_crit_edge

for.cond105.preheader.for.body109_crit_edge:      ; preds = %for.cond105.preheader
  br label %for.body109

for.cond105.preheader.for.inc164_crit_edge:       ; preds = %for.cond105.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc164

for.cond105:                                      ; preds = %for.body109
  %inc = add nuw nsw i32 %i.0316, 1
  %exitcond322.not = icmp eq i32 %inc, %conv101
  br i1 %exitcond322.not, label %for.cond105.for.inc164_crit_edge, label %for.cond105.for.body109_crit_edge

for.cond105.for.body109_crit_edge:                ; preds = %for.cond105
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body109

for.cond105.for.inc164_crit_edge:                 ; preds = %for.cond105
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc164

for.body109:                                      ; preds = %for.cond105.for.body109_crit_edge, %for.cond105.preheader.for.body109_crit_edge
  %i.0316 = phi i32 [ %inc, %for.cond105.for.body109_crit_edge ], [ 0, %for.cond105.preheader.for.body109_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %160, i32 %i.0316
  %161 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx, align 4
  %call110 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str.4, ptr noundef %162)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %for.cond105, label %for.body109.cleanup_crit_edge

for.body109.cleanup_crit_edge:                    ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb115:                                         ; preds = %for.cond
  %argp.next117 = getelementptr inbounds i8, ptr %ap.sroa.0.0, i32 4
  %163 = ptrtoint ptr %ap.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ap.sroa.0.0, align 4
  %argp.next120 = getelementptr inbounds i8, ptr %ap.sroa.0.0, i32 8
  %165 = ptrtoint ptr %argp.next117 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %argp.next117, align 4
  %conv121 = and i32 %164, 65535
  %call122 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str, i32 noundef %conv121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %for.cond126.preheader, label %sw.bb115.cleanup_crit_edge

sw.bb115.cleanup_crit_edge:                       ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond126.preheader:                            ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv121)
  %cmp128313.not = icmp eq i32 %conv121, 0
  br i1 %cmp128313.not, label %for.cond126.preheader.for.inc164_crit_edge, label %for.cond126.preheader.for.body130_crit_edge

for.cond126.preheader.for.body130_crit_edge:      ; preds = %for.cond126.preheader
  br label %for.body130

for.cond126.preheader.for.inc164_crit_edge:       ; preds = %for.cond126.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc164

for.cond126:                                      ; preds = %for.body130
  %inc137 = add nuw nsw i32 %i125.0314, 1
  %exitcond.not = icmp eq i32 %inc137, %conv121
  br i1 %exitcond.not, label %for.cond126.for.inc164_crit_edge, label %for.cond126.for.body130_crit_edge

for.cond126.for.body130_crit_edge:                ; preds = %for.cond126
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body130

for.cond126.for.inc164_crit_edge:                 ; preds = %for.cond126
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc164

for.body130:                                      ; preds = %for.cond126.for.body130_crit_edge, %for.cond126.preheader.for.body130_crit_edge
  %i125.0314 = phi i32 [ %inc137, %for.cond126.for.body130_crit_edge ], [ 0, %for.cond126.preheader.for.body130_crit_edge ]
  %arrayidx131 = getelementptr %struct.p9_qid, ptr %166, i32 %i125.0314
  %call132 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str.5, ptr noundef %arrayidx131)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %for.cond126, label %for.body130.cleanup_crit_edge

for.body130.cleanup_crit_edge:                    ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb140:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %167 = ptrtoint ptr %ap.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ap.sroa.0.0, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %168, align 8
  %mode143 = getelementptr inbounds %struct.p9_iattr_dotl, ptr %168, i32 0, i32 1
  %171 = ptrtoint ptr %mode143 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %mode143, align 4
  %uid144 = getelementptr inbounds %struct.p9_iattr_dotl, ptr %168, i32 0, i32 2
  %gid145 = getelementptr inbounds %struct.p9_iattr_dotl, ptr %168, i32 0, i32 3
  %size146 = getelementptr inbounds %struct.p9_iattr_dotl, ptr %168, i32 0, i32 4
  %173 = ptrtoint ptr %size146 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %size146, align 8
  %atime_sec = getelementptr inbounds %struct.p9_iattr_dotl, ptr %168, i32 0, i32 5
  %175 = ptrtoint ptr %atime_sec to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %atime_sec, align 8
  %atime_nsec = getelementptr inbounds %struct.p9_iattr_dotl, ptr %168, i32 0, i32 6
  %177 = ptrtoint ptr %atime_nsec to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %atime_nsec, align 8
  %mtime_sec = getelementptr inbounds %struct.p9_iattr_dotl, ptr %168, i32 0, i32 7
  %179 = ptrtoint ptr %mtime_sec to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %mtime_sec, align 8
  %mtime_nsec = getelementptr inbounds %struct.p9_iattr_dotl, ptr %168, i32 0, i32 8
  %181 = ptrtoint ptr %mtime_nsec to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %mtime_nsec, align 8
  %183 = ptrtoint ptr %uid144 to i32
  call void @__asan_load4_noabort(i32 %183)
  %.unpack = load i32, ptr %uid144, align 8
  %184 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %185 = ptrtoint ptr %gid145 to i32
  call void @__asan_load4_noabort(i32 %185)
  %.unpack241 = load i32, ptr %gid145, align 4
  %186 = insertvalue [1 x i32] undef, i32 %.unpack241, 0
  %call149 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str.6, i32 noundef %170, i32 noundef %172, [1 x i32] %184, [1 x i32] %186, i64 noundef %174, i64 noundef %176, i64 noundef %178, i64 noundef %180, i64 noundef %182)
  br label %sw.epilog

sw.bb150:                                         ; preds = %for.cond
  br i1 %switch, label %sw.bb150.for.inc164_crit_edge, label %sw.bb150.cleanup_crit_edge

sw.bb150.cleanup_crit_edge:                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb150.for.inc164_crit_edge:                    ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc164

do.body:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/9p/protocol.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 509, 0\0A.popsection", ""() #11, !srcloc !63
  unreachable

sw.epilog:                                        ; preds = %sw.bb140, %sw.bb70, %sw.bb65
  %errcode.15 = phi i32 [ %call149, %sw.bb140 ], [ %call82, %sw.bb70 ], [ %call69, %sw.bb65 ]
  %ap.sroa.0.1 = getelementptr inbounds i8, ptr %ap.sroa.0.0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errcode.15)
  %tobool161.not = icmp eq i32 %errcode.15, 0
  br i1 %tobool161.not, label %sw.epilog.for.inc164_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog.for.inc164_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc164

for.inc164:                                       ; preds = %sw.epilog.for.inc164_crit_edge, %sw.bb150.for.inc164_crit_edge, %for.cond126.for.inc164_crit_edge, %for.cond126.preheader.for.inc164_crit_edge, %for.cond105.for.inc164_crit_edge, %for.cond105.preheader.for.inc164_crit_edge, %pdu_write_u.exit.for.inc164_crit_edge, %sw.bb55.for.inc164_crit_edge, %sw.bb45.for.inc164_crit_edge, %land.lhs.true.for.inc164_crit_edge, %sw.bb20.for.inc164_crit_edge, %sw.bb12.for.inc164_crit_edge, %sw.bb3.for.inc164_crit_edge, %sw.bb.for.inc164_crit_edge
  %ap.sroa.0.1309 = phi ptr [ %ap.sroa.0.1, %sw.epilog.for.inc164_crit_edge ], [ %ap.sroa.0.0, %sw.bb150.for.inc164_crit_edge ], [ %argp.next57, %sw.bb55.for.inc164_crit_edge ], [ %argp.next47, %sw.bb45.for.inc164_crit_edge ], [ %argp.next23, %sw.bb20.for.inc164_crit_edge ], [ %argp.next15, %sw.bb12.for.inc164_crit_edge ], [ %argp.next6, %sw.bb3.for.inc164_crit_edge ], [ %argp.next, %sw.bb.for.inc164_crit_edge ], [ %argp.next30, %land.lhs.true.for.inc164_crit_edge ], [ %argp.next87, %pdu_write_u.exit.for.inc164_crit_edge ], [ %argp.next100, %for.cond105.preheader.for.inc164_crit_edge ], [ %argp.next120, %for.cond126.preheader.for.inc164_crit_edge ], [ %argp.next100, %for.cond105.for.inc164_crit_edge ], [ %argp.next120, %for.cond126.for.inc164_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %ptr.0, i32 1
  br label %for.cond

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %sw.bb150.cleanup_crit_edge, %for.body130.cleanup_crit_edge, %sw.bb115.cleanup_crit_edge, %for.body109.cleanup_crit_edge, %sw.bb95.cleanup_crit_edge, %pdu_write_u.exit.cleanup_crit_edge, %sw.bb83.cleanup_crit_edge, %sw.bb55.cleanup_crit_edge, %sw.bb45.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call110, %for.body109.cleanup_crit_edge ], [ %call132, %for.body130.cleanup_crit_edge ], [ -14, %sw.bb55.cleanup_crit_edge ], [ -14, %sw.bb45.cleanup_crit_edge ], [ -14, %sw.bb20.cleanup_crit_edge ], [ -14, %sw.bb12.cleanup_crit_edge ], [ -14, %sw.bb3.cleanup_crit_edge ], [ -14, %sw.bb.cleanup_crit_edge ], [ %call38, %if.end36.cleanup_crit_edge ], [ -14, %land.lhs.true.cleanup_crit_edge ], [ %call88, %sw.bb83.cleanup_crit_edge ], [ -14, %pdu_write_u.exit.cleanup_crit_edge ], [ %call102, %sw.bb95.cleanup_crit_edge ], [ %call122, %sw.bb115.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %errcode.15, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.bb150.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9pdu_writef(ptr noundef %pdu, i32 noundef %proto_version, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #0 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #11
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !64
  call void @llvm.va_start(ptr nonnull %ap)
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %ap, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @p9pdu_vwritef(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p9pdu_readf(ptr noundef %pdu, i32 noundef %proto_version, ptr nocapture noundef readonly %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %le_val.i = alloca i16, align 2
  %le_val18.i = alloca i32, align 4
  %le_val31.i = alloca i64, align 8
  %len.i = alloca i16, align 2
  %le_val64.i = alloca i32, align 4
  %le_val78.i = alloca i32, align 4
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #11
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !64
  call void @llvm.va_start(ptr nonnull %ap)
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %ap, align 4
  %2 = inttoptr i32 %.fca.0.load to ptr
  %proto_version.off.i = add i32 %proto_version, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %proto_version.off.i)
  %switch.i = icmp ult i32 %proto_version.off.i, 2
  %offset.i = getelementptr inbounds %struct.p9_fcall, ptr %pdu, i32 0, i32 3
  %sdata.i = getelementptr inbounds %struct.p9_fcall, ptr %pdu, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc223.i, %entry
  %ptr.0.i = phi ptr [ %fmt, %entry ], [ %incdec.ptr.i, %for.inc223.i ]
  %ap.sroa.0.0.i = phi ptr [ %2, %entry ], [ %ap.sroa.0.1.i118, %for.inc223.i ]
  %3 = ptrtoint ptr %ptr.0.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ptr.0.i, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %4, label %do.body.i [
    i8 0, label %for.cond.i.p9pdu_vreadf.exit_crit_edge
    i8 98, label %sw.bb.i
    i8 119, label %sw.bb2.i
    i8 100, label %sw.bb14.i
    i8 113, label %sw.bb27.i
    i8 115, label %sw.bb40.i
    i8 117, label %sw.bb61.i
    i8 103, label %sw.bb75.i
    i8 81, label %sw.bb90.i
    i8 83, label %sw.bb94.i
    i8 68, label %sw.bb111.i
    i8 84, label %sw.bb126.i
    i8 82, label %sw.bb169.i
    i8 65, label %sw.bb204.i
    i8 63, label %sw.bb210.i
  ]

for.cond.i.p9pdu_vreadf.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9pdu_vreadf.exit

sw.bb.i:                                          ; preds = %for.cond.i
  %argp.next.i = getelementptr inbounds i8, ptr %ap.sroa.0.0.i, i32 4
  %6 = ptrtoint ptr %ap.sroa.0.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ap.sroa.0.0.i, align 4
  %8 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pdu, align 4
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %12 = icmp ne i32 %9, %11
  %13 = zext i1 %12 to i32
  %14 = ptrtoint ptr %sdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdata.i, align 4
  %arrayidx.i100 = getelementptr i8, ptr %15, i32 %11
  %16 = call ptr @memcpy(ptr %7, ptr %arrayidx.i100, i32 %13)
  %17 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset.i, align 4
  %add.i101 = add i32 %18, %13
  store i32 %add.i101, ptr %offset.i, align 4
  br i1 %12, label %sw.bb.i.for.inc223.i_crit_edge, label %sw.bb.i.p9pdu_vreadf.exit_crit_edge

sw.bb.i.p9pdu_vreadf.exit_crit_edge:              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9pdu_vreadf.exit

sw.bb.i.for.inc223.i_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc223.i

sw.bb2.i:                                         ; preds = %for.cond.i
  %argp.next5.i = getelementptr inbounds i8, ptr %ap.sroa.0.0.i, i32 4
  %19 = ptrtoint ptr %ap.sroa.0.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ap.sroa.0.0.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le_val.i)
  %21 = ptrtoint ptr %le_val.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %le_val.i, align 2
  %22 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pdu, align 4
  %24 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i, align 4
  %sub.i92 = sub i32 %23, %25
  %26 = call i32 @llvm.umin.i32(i32 %sub.i92, i32 2) #11
  %27 = ptrtoint ptr %sdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdata.i, align 4
  %arrayidx.i94 = getelementptr i8, ptr %28, i32 %25
  %29 = call ptr @memcpy(ptr %le_val.i, ptr %arrayidx.i94, i32 %26)
  %add.i95 = add i32 %26, %25
  %30 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i95, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i92)
  %tobool7.not.i = icmp ugt i32 %sub.i92, 1
  br i1 %tobool7.not.i, label %if.end9.i, label %sw.bb2.i.cleanup10.i_crit_edge

sw.bb2.i.cleanup10.i_crit_edge:                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup10.i

if.end9.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %le_val.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %le_val.i.0.le_val.i.0.le_val.i.0.le_val.i.0. = load i16, ptr %le_val.i, align 2
  %32 = call i16 @llvm.bswap.i16(i16 %le_val.i.0.le_val.i.0.le_val.i.0.le_val.i.0.) #11
  %33 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %20, align 2
  br label %cleanup10.i

cleanup10.i:                                      ; preds = %if.end9.i, %sw.bb2.i.cleanup10.i_crit_edge
  %errcode.2.i = phi i32 [ 0, %if.end9.i ], [ -14, %sw.bb2.i.cleanup10.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le_val.i)
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %for.cond.i
  %argp.next17.i = getelementptr inbounds i8, ptr %ap.sroa.0.0.i, i32 4
  %34 = ptrtoint ptr %ap.sroa.0.0.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ap.sroa.0.0.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_val18.i)
  %36 = ptrtoint ptr %le_val18.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %le_val18.i, align 4
  %37 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pdu, align 4
  %39 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offset.i, align 4
  %sub.i86 = sub i32 %38, %40
  %41 = call i32 @llvm.umin.i32(i32 %sub.i86, i32 4) #11
  %42 = ptrtoint ptr %sdata.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sdata.i, align 4
  %arrayidx.i88 = getelementptr i8, ptr %43, i32 %40
  %44 = call ptr @memcpy(ptr %le_val18.i, ptr %arrayidx.i88, i32 %41)
  %add.i89 = add i32 %41, %40
  %45 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add.i89, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i86)
  %tobool20.not.i = icmp ugt i32 %sub.i86, 3
  br i1 %tobool20.not.i, label %if.end22.i, label %sw.bb14.i.cleanup23.i_crit_edge

sw.bb14.i.cleanup23.i_crit_edge:                  ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup23.i

if.end22.i:                                       ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %le_val18.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %le_val18.i.0.le_val18.i.0.le_val18.i.0.le_val18.i.0. = load i32, ptr %le_val18.i, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %le_val18.i.0.le_val18.i.0.le_val18.i.0.le_val18.i.0.) #11
  %48 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %35, align 4
  br label %cleanup23.i

cleanup23.i:                                      ; preds = %if.end22.i, %sw.bb14.i.cleanup23.i_crit_edge
  %errcode.3.i = phi i32 [ 0, %if.end22.i ], [ -14, %sw.bb14.i.cleanup23.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_val18.i)
  br label %sw.epilog.i

sw.bb27.i:                                        ; preds = %for.cond.i
  %argp.next30.i = getelementptr inbounds i8, ptr %ap.sroa.0.0.i, i32 4
  %49 = ptrtoint ptr %ap.sroa.0.0.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ap.sroa.0.0.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %le_val31.i)
  %51 = ptrtoint ptr %le_val31.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 -1, ptr %le_val31.i, align 8
  %52 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pdu, align 4
  %54 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset.i, align 4
  %sub.i80 = sub i32 %53, %55
  %56 = call i32 @llvm.umin.i32(i32 %sub.i80, i32 8) #11
  %57 = ptrtoint ptr %sdata.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sdata.i, align 4
  %arrayidx.i82 = getelementptr i8, ptr %58, i32 %55
  %59 = call ptr @memcpy(ptr %le_val31.i, ptr %arrayidx.i82, i32 %56)
  %add.i83 = add i32 %56, %55
  %60 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add.i83, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i80)
  %tobool33.not.i = icmp ugt i32 %sub.i80, 7
  br i1 %tobool33.not.i, label %if.end35.i, label %sw.bb27.i.cleanup36.i_crit_edge

sw.bb27.i.cleanup36.i_crit_edge:                  ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36.i

if.end35.i:                                       ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %le_val31.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %le_val31.i.0.le_val31.i.0.le_val31.i.0.le_val31.i.0. = load i64, ptr %le_val31.i, align 8
  %62 = call i64 @llvm.bswap.i64(i64 %le_val31.i.0.le_val31.i.0.le_val31.i.0.le_val31.i.0.) #11
  %63 = ptrtoint ptr %50 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %50, align 8
  br label %cleanup36.i

cleanup36.i:                                      ; preds = %if.end35.i, %sw.bb27.i.cleanup36.i_crit_edge
  %errcode.4.i = phi i32 [ 0, %if.end35.i ], [ -14, %sw.bb27.i.cleanup36.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %le_val31.i)
  br label %sw.epilog.i

sw.bb40.i:                                        ; preds = %for.cond.i
  %argp.next42.i = getelementptr inbounds i8, ptr %ap.sroa.0.0.i, i32 4
  %64 = ptrtoint ptr %ap.sroa.0.0.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ap.sroa.0.0.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %len.i) #11
  %66 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 -1, ptr %len.i, align 2, !annotation !64
  %call43.i = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str, ptr noundef nonnull %len.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end8.i.i, label %sw.bb40.i.cleanup57.i_crit_edge

sw.bb40.i.cleanup57.i_crit_edge:                  ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57.i

if.end8.i.i:                                      ; preds = %sw.bb40.i
  %67 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %len.i, align 2
  %conv47.i = zext i16 %68 to i32
  %add.i = add nuw nsw i32 %conv47.i, 1
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3136) #15
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call9.i.i, ptr %65, align 4
  %cmp.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp.i, label %if.end8.i.i.cleanup57.i_crit_edge, label %if.end51.i

if.end8.i.i.cleanup57.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57.i

if.end51.i:                                       ; preds = %if.end8.i.i
  %70 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %len.i, align 2
  %conv52.i = zext i16 %71 to i32
  %72 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pdu, align 4
  %74 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset.i, align 4
  %sub.i74 = sub i32 %73, %75
  %76 = call i32 @llvm.umin.i32(i32 %sub.i74, i32 %conv52.i) #11
  %77 = ptrtoint ptr %sdata.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sdata.i, align 4
  %arrayidx.i76 = getelementptr i8, ptr %78, i32 %75
  %79 = call ptr @memcpy(ptr %call9.i.i, ptr %arrayidx.i76, i32 %76)
  %add.i77 = add i32 %76, %75
  %80 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add.i77, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i74, i32 %conv52.i)
  %tobool54.not.i.not = icmp ult i32 %sub.i74, %conv52.i
  %81 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %65, align 4
  br i1 %tobool54.not.i.not, label %if.then55.i, label %if.else.i

if.then55.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %82) #11
  %83 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %65, align 4
  br label %cleanup57.i

if.else.i:                                        ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr i8, ptr %82, i32 %conv52.i
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %arrayidx.i, align 1
  br label %cleanup57.i

cleanup57.i:                                      ; preds = %if.else.i, %if.then55.i, %if.end8.i.i.cleanup57.i_crit_edge, %sw.bb40.i.cleanup57.i_crit_edge
  %errcode.6.i = phi i32 [ %call43.i, %sw.bb40.i.cleanup57.i_crit_edge ], [ -12, %if.end8.i.i.cleanup57.i_crit_edge ], [ -14, %if.then55.i ], [ 0, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %len.i) #11
  br label %sw.epilog.i

sw.bb61.i:                                        ; preds = %for.cond.i
  %argp.next63.i = getelementptr inbounds i8, ptr %ap.sroa.0.0.i, i32 4
  %85 = ptrtoint ptr %ap.sroa.0.0.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ap.sroa.0.0.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_val64.i)
  %87 = ptrtoint ptr %le_val64.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %le_val64.i, align 4
  %88 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pdu, align 4
  %90 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %offset.i, align 4
  %sub.i68 = sub i32 %89, %91
  %92 = call i32 @llvm.umin.i32(i32 %sub.i68, i32 4) #11
  %93 = ptrtoint ptr %sdata.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sdata.i, align 4
  %arrayidx.i70 = getelementptr i8, ptr %94, i32 %91
  %95 = call ptr @memcpy(ptr %le_val64.i, ptr %arrayidx.i70, i32 %92)
  %add.i71 = add i32 %92, %91
  %96 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %add.i71, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i68)
  %tobool66.not.i = icmp ugt i32 %sub.i68, 3
  br i1 %tobool66.not.i, label %if.end68.i, label %sw.bb61.i.cleanup71.i_crit_edge

sw.bb61.i.cleanup71.i_crit_edge:                  ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71.i

if.end68.i:                                       ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %le_val64.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %le_val64.i.0.le_val64.i.0.le_val64.i.0.le_val64.i.0. = load i32, ptr %le_val64.i, align 4
  %98 = call i32 @llvm.bswap.i32(i32 %le_val64.i.0.le_val64.i.0.le_val64.i.0.le_val64.i.0.) #11
  %call69.i = call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %98) #11
  %99 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call69.i, ptr %86, align 4
  br label %cleanup71.i

cleanup71.i:                                      ; preds = %if.end68.i, %sw.bb61.i.cleanup71.i_crit_edge
  %errcode.7.i = phi i32 [ 0, %if.end68.i ], [ -14, %sw.bb61.i.cleanup71.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_val64.i)
  br label %sw.epilog.i

sw.bb75.i:                                        ; preds = %for.cond.i
  %argp.next77.i = getelementptr inbounds i8, ptr %ap.sroa.0.0.i, i32 4
  %100 = ptrtoint ptr %ap.sroa.0.0.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ap.sroa.0.0.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le_val78.i)
  %102 = ptrtoint ptr %le_val78.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %le_val78.i, align 4
  %103 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pdu, align 4
  %105 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %offset.i, align 4
  %sub.i63 = sub i32 %104, %106
  %107 = call i32 @llvm.umin.i32(i32 %sub.i63, i32 4) #11
  %108 = ptrtoint ptr %sdata.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sdata.i, align 4
  %arrayidx.i65 = getelementptr i8, ptr %109, i32 %106
  %110 = call ptr @memcpy(ptr %le_val78.i, ptr %arrayidx.i65, i32 %107)
  %add.i66 = add i32 %107, %106
  %111 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %add.i66, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i63)
  %tobool80.not.i = icmp ugt i32 %sub.i63, 3
  br i1 %tobool80.not.i, label %if.end82.i, label %sw.bb75.i.cleanup86.i_crit_edge

sw.bb75.i.cleanup86.i_crit_edge:                  ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup86.i

if.end82.i:                                       ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %le_val78.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %le_val78.i.0.le_val78.i.0.le_val78.i.0.le_val78.i.0. = load i32, ptr %le_val78.i, align 4
  %113 = call i32 @llvm.bswap.i32(i32 %le_val78.i.0.le_val78.i.0.le_val78.i.0.le_val78.i.0.) #11
  %call84.i = call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %113) #11
  %114 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %call84.i, ptr %101, align 4
  br label %cleanup86.i

cleanup86.i:                                      ; preds = %if.end82.i, %sw.bb75.i.cleanup86.i_crit_edge
  %errcode.8.i = phi i32 [ 0, %if.end82.i ], [ -14, %sw.bb75.i.cleanup86.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le_val78.i)
  br label %sw.epilog.i

sw.bb90.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %argp.next92.i = getelementptr inbounds i8, ptr %ap.sroa.0.0.i, i32 4
  %115 = ptrtoint ptr %ap.sroa.0.0.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ap.sroa.0.0.i, align 4
  %version.i = getelementptr inbounds %struct.p9_qid, ptr %116, i32 0, i32 1
  %path.i = getelementptr inbounds %struct.p9_qid, ptr %116, i32 0, i32 2
  %call93.i = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str.1, ptr noundef %116, ptr noundef %version.i, ptr noundef %path.i) #11
  br label %sw.epilog.i

sw.bb94.i:                                        ; preds = %for.cond.i
  %argp.next96.i = getelementptr inbounds i8, ptr %ap.sroa.0.0.i, i32 4
  %117 = ptrtoint ptr %ap.sroa.0.0.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ap.sroa.0.0.i, align 4
  %119 = call ptr @memset(ptr %118, i32 0, i32 72)
  %n_uid.i = getelementptr inbounds %struct.p9_wstat, ptr %118, i32 0, i32 13
  %n_muid.i = getelementptr inbounds %struct.p9_wstat, ptr %118, i32 0, i32 15
  %120 = ptrtoint ptr %n_muid.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %n_muid.i, align 4
  %121 = ptrtoint ptr %n_uid.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %n_uid.i, align 4
  %n_gid.i = getelementptr inbounds %struct.p9_wstat, ptr %118, i32 0, i32 14
  %122 = ptrtoint ptr %n_gid.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %n_gid.i, align 8
  %type100.i = getelementptr inbounds %struct.p9_wstat, ptr %118, i32 0, i32 1
  %dev.i = getelementptr inbounds %struct.p9_wstat, ptr %118, i32 0, i32 2
  %qid101.i = getelementptr inbounds %struct.p9_wstat, ptr %118, i32 0, i32 3
  %mode.i = getelementptr inbounds %struct.p9_wstat, ptr %118, i32 0, i32 4
  %atime.i = getelementptr inbounds %struct.p9_wstat, ptr %118, i32 0, i32 5
  %mtime.i = getelementptr inbounds %struct.p9_wstat, ptr %118, i32 0, i32 6
  %length.i = getelementptr inbounds %struct.p9_wstat, ptr %118, i32 0, i32 7
  %name.i = getelementptr inbounds %struct.p9_wstat, ptr %118, i32 0, i32 8
  %uid102.i = getelementptr inbounds %struct.p9_wstat, ptr %118, i32 0, i32 9
  %gid103.i = getelementptr inbounds %struct.p9_wstat, ptr %118, i32 0, i32 10
  %muid.i = getelementptr inbounds %struct.p9_wstat, ptr %118, i32 0, i32 11
  %extension.i = getelementptr inbounds %struct.p9_wstat, ptr %118, i32 0, i32 12
  %call107.i = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str.2, ptr noundef %118, ptr noundef %type100.i, ptr noundef %dev.i, ptr noundef %qid101.i, ptr noundef %mode.i, ptr noundef %atime.i, ptr noundef %mtime.i, ptr noundef %length.i, ptr noundef %name.i, ptr noundef %uid102.i, ptr noundef %gid103.i, ptr noundef %muid.i, ptr noundef %extension.i, ptr noundef %n_uid.i, ptr noundef %n_gid.i, ptr noundef %n_muid.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i)
  %tobool108.not.i = icmp eq i32 %call107.i, 0
  br i1 %tobool108.not.i, label %sw.bb94.i.for.inc223.i_crit_edge, label %if.then109.i

sw.bb94.i.for.inc223.i_crit_edge:                 ; preds = %sw.bb94.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc223.i

if.then109.i:                                     ; preds = %sw.bb94.i
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %name.i, align 8
  call void @kfree(ptr noundef %124) #11
  %125 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %name.i, align 8
  %126 = ptrtoint ptr %uid102.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %uid102.i, align 4
  call void @kfree(ptr noundef %127) #11
  %128 = ptrtoint ptr %uid102.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %uid102.i, align 4
  %129 = ptrtoint ptr %gid103.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %gid103.i, align 8
  call void @kfree(ptr noundef %130) #11
  %131 = ptrtoint ptr %gid103.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %gid103.i, align 8
  %132 = ptrtoint ptr %muid.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %muid.i, align 4
  call void @kfree(ptr noundef %133) #11
  %134 = ptrtoint ptr %muid.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %muid.i, align 4
  %135 = ptrtoint ptr %extension.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %extension.i, align 8
  call void @kfree(ptr noundef %136) #11
  %137 = ptrtoint ptr %extension.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %extension.i, align 8
  br label %p9pdu_vreadf.exit

sw.bb111.i:                                       ; preds = %for.cond.i
  %argp.next113.i = getelementptr inbounds i8, ptr %ap.sroa.0.0.i, i32 4
  %138 = ptrtoint ptr %ap.sroa.0.0.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ap.sroa.0.0.i, align 4
  %140 = ptrtoint ptr %argp.next113.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %argp.next113.i, align 4
  %call116.i = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str.3, ptr noundef %139) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.i)
  %tobool117.not.i = icmp eq i32 %call116.i, 0
  br i1 %tobool117.not.i, label %if.then118.i, label %sw.bb111.i.p9pdu_vreadf.exit_crit_edge

sw.bb111.i.p9pdu_vreadf.exit_crit_edge:           ; preds = %sw.bb111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9pdu_vreadf.exit

if.then118.i:                                     ; preds = %sw.bb111.i
  call void @__sanitizer_cov_trace_pc() #13
  %argp.next115.i = getelementptr inbounds i8, ptr %ap.sroa.0.0.i, i32 8
  %142 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %139, align 4
  %144 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pdu, align 4
  %146 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 %145, %147
  %148 = call i32 @llvm.umin.i32(i32 %143, i32 %sub.i)
  %149 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %139, align 4
  %150 = ptrtoint ptr %sdata.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %sdata.i, align 4
  %152 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %offset.i, align 4
  %arrayidx124.i = getelementptr i8, ptr %151, i32 %153
  %154 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %arrayidx124.i, ptr %141, align 4
  br label %for.inc223.i

sw.bb126.i:                                       ; preds = %for.cond.i
  %argp.next128.i = getelementptr inbounds i8, ptr %ap.sroa.0.0.i, i32 4
  %155 = ptrtoint ptr %ap.sroa.0.0.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ap.sroa.0.0.i, align 4
  %argp.next130.i = getelementptr inbounds i8, ptr %ap.sroa.0.0.i, i32 8
  %157 = ptrtoint ptr %argp.next128.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %argp.next128.i, align 4
  %call131.i = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str, ptr noundef %156) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131.i)
  %tobool132.not.i = icmp eq i32 %call131.i, 0
  br i1 %tobool132.not.i, label %if.end7.i56, label %sw.bb126.i.if.then154.i_crit_edge

sw.bb126.i.if.then154.i_crit_edge:                ; preds = %sw.bb126.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then154.i

if.end7.i56:                                      ; preds = %sw.bb126.i
  %159 = ptrtoint ptr %156 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %156, align 2
  %conv134.i = zext i16 %160 to i32
  %161 = shl nuw nsw i32 %conv134.i, 2
  %call8.i55 = call noalias align 128 ptr @__kmalloc(i32 noundef %161, i32 noundef 3136) #15
  %162 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call8.i55, ptr %158, align 4
  %tobool136.not.i = icmp eq ptr %call8.i55, null
  br i1 %tobool136.not.i, label %if.end7.i56.if.end167.i_crit_edge, label %if.end139.i

if.end7.i56.if.end167.i_crit_edge:                ; preds = %if.end7.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167.i

if.end139.i:                                      ; preds = %if.end7.i56
  %163 = ptrtoint ptr %156 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %156, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %cmp144.i145.not = icmp eq i16 %164, 0
  br i1 %cmp144.i145.not, label %if.end139.i.for.inc223.i_crit_edge, label %if.end139.i.for.body146.i_crit_edge

if.end139.i.for.body146.i_crit_edge:              ; preds = %if.end139.i
  br label %for.body146.i

if.end139.i.for.inc223.i_crit_edge:               ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc223.i

for.cond142.i:                                    ; preds = %for.body146.i
  %inc.i = add nuw nsw i32 %i.0.i146, 1
  %165 = ptrtoint ptr %156 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %156, align 2
  %conv143.i = zext i16 %166 to i32
  %cmp144.i = icmp ult i32 %inc.i, %conv143.i
  br i1 %cmp144.i, label %for.cond142.i.for.body146.i_crit_edge, label %for.cond142.i.for.inc223.i_crit_edge

for.cond142.i.for.inc223.i_crit_edge:             ; preds = %for.cond142.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc223.i

for.cond142.i.for.body146.i_crit_edge:            ; preds = %for.cond142.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body146.i

for.body146.i:                                    ; preds = %for.cond142.i.for.body146.i_crit_edge, %if.end139.i.for.body146.i_crit_edge
  %i.0.i146 = phi i32 [ %inc.i, %for.cond142.i.for.body146.i_crit_edge ], [ 0, %if.end139.i.for.body146.i_crit_edge ]
  %167 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %158, align 4
  %arrayidx147.i = getelementptr ptr, ptr %168, i32 %i.0.i146
  %call148.i = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str.4, ptr noundef %arrayidx147.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148.i)
  %tobool149.not.i = icmp eq i32 %call148.i, 0
  br i1 %tobool149.not.i, label %for.cond142.i, label %for.body146.i.if.then154.i_crit_edge

for.body146.i.if.then154.i_crit_edge:             ; preds = %for.body146.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then154.i

if.then154.i:                                     ; preds = %for.body146.i.if.then154.i_crit_edge, %sw.bb126.i.if.then154.i_crit_edge
  %errcode.12.i.ph.ph = phi i32 [ %call131.i, %sw.bb126.i.if.then154.i_crit_edge ], [ %call148.i, %for.body146.i.if.then154.i_crit_edge ]
  %169 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %169)
  %.pr = load ptr, ptr %158, align 4
  %tobool155.not.i = icmp eq ptr %.pr, null
  br i1 %tobool155.not.i, label %if.then154.i.if.end167.i_crit_edge, label %for.cond158.i.preheader

if.then154.i.if.end167.i_crit_edge:               ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167.i

for.cond158.i.preheader:                          ; preds = %if.then154.i
  %170 = ptrtoint ptr %156 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %156, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %171)
  %cmp160.i148.not = icmp eq i16 %171, 0
  br i1 %cmp160.i148.not, label %for.cond158.i.preheader.if.end167.i_crit_edge, label %for.cond158.i.preheader.for.body162.i_crit_edge

for.cond158.i.preheader.for.body162.i_crit_edge:  ; preds = %for.cond158.i.preheader
  br label %for.body162.i

for.cond158.i.preheader.if.end167.i_crit_edge:    ; preds = %for.cond158.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167.i

for.body162.i:                                    ; preds = %for.body162.i.for.body162.i_crit_edge, %for.cond158.i.preheader.for.body162.i_crit_edge
  %i157.0.i149 = phi i32 [ %inc165.i, %for.body162.i.for.body162.i_crit_edge ], [ 0, %for.cond158.i.preheader.for.body162.i_crit_edge ]
  %172 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %158, align 4
  %arrayidx163.i = getelementptr ptr, ptr %173, i32 %i157.0.i149
  %174 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx163.i, align 4
  call void @kfree(ptr noundef %175) #11
  %inc165.i = add nuw nsw i32 %i157.0.i149, 1
  %176 = ptrtoint ptr %156 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %156, align 2
  %conv159.i = zext i16 %177 to i32
  %cmp160.i = icmp ult i32 %inc165.i, %conv159.i
  br i1 %cmp160.i, label %for.body162.i.for.body162.i_crit_edge, label %for.body162.i.if.end167.i_crit_edge

for.body162.i.if.end167.i_crit_edge:              ; preds = %for.body162.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167.i

for.body162.i.for.body162.i_crit_edge:            ; preds = %for.body162.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body162.i

if.end167.i:                                      ; preds = %for.body162.i.if.end167.i_crit_edge, %for.cond158.i.preheader.if.end167.i_crit_edge, %if.then154.i.if.end167.i_crit_edge, %if.end7.i56.if.end167.i_crit_edge
  %errcode.12.i.ph132 = phi i32 [ %errcode.12.i.ph.ph, %if.then154.i.if.end167.i_crit_edge ], [ -12, %if.end7.i56.if.end167.i_crit_edge ], [ %errcode.12.i.ph.ph, %for.cond158.i.preheader.if.end167.i_crit_edge ], [ %errcode.12.i.ph.ph, %for.body162.i.if.end167.i_crit_edge ]
  %178 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %158, align 4
  call void @kfree(ptr noundef %179) #11
  %180 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr null, ptr %158, align 4
  br label %sw.epilog.i

sw.bb169.i:                                       ; preds = %for.cond.i
  %argp.next171.i = getelementptr inbounds i8, ptr %ap.sroa.0.0.i, i32 4
  %181 = ptrtoint ptr %ap.sroa.0.0.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ap.sroa.0.0.i, align 4
  %argp.next173.i = getelementptr inbounds i8, ptr %ap.sroa.0.0.i, i32 8
  %183 = ptrtoint ptr %argp.next171.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %argp.next171.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr null, ptr %184, align 4
  %call174.i = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str, ptr noundef %182) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174.i)
  %tobool175.not.i = icmp eq i32 %call174.i, 0
  br i1 %tobool175.not.i, label %if.end7.i, label %sw.bb169.i.if.then202.i_crit_edge

sw.bb169.i.if.then202.i_crit_edge:                ; preds = %sw.bb169.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then202.i

if.end7.i:                                        ; preds = %sw.bb169.i
  %186 = ptrtoint ptr %182 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %182, align 2
  %conv177.i = zext i16 %187 to i32
  %188 = shl nuw nsw i32 %conv177.i, 4
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %188, i32 noundef 3136) #15
  %189 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call8.i, ptr %184, align 4
  %cmp179.i = icmp eq ptr %call8.i, null
  br i1 %cmp179.i, label %if.end7.i.if.then202.i_crit_edge, label %if.end183.i

if.end7.i.if.then202.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then202.i

if.end183.i:                                      ; preds = %if.end7.i
  %190 = ptrtoint ptr %182 to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %182, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %191)
  %cmp189.i142.not = icmp eq i16 %191, 0
  br i1 %cmp189.i142.not, label %if.end183.i.for.inc223.i_crit_edge, label %if.end183.i.for.body191.i_crit_edge

if.end183.i.for.body191.i_crit_edge:              ; preds = %if.end183.i
  br label %for.body191.i

if.end183.i.for.inc223.i_crit_edge:               ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc223.i

for.cond187.i:                                    ; preds = %for.body191.i
  %inc198.i = add nuw nsw i32 %i186.0.i143, 1
  %192 = ptrtoint ptr %182 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %182, align 2
  %conv188.i = zext i16 %193 to i32
  %cmp189.i = icmp ult i32 %inc198.i, %conv188.i
  br i1 %cmp189.i, label %for.cond187.i.for.body191.i_crit_edge, label %for.cond187.i.for.inc223.i_crit_edge

for.cond187.i.for.inc223.i_crit_edge:             ; preds = %for.cond187.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc223.i

for.cond187.i.for.body191.i_crit_edge:            ; preds = %for.cond187.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body191.i

for.body191.i:                                    ; preds = %for.cond187.i.for.body191.i_crit_edge, %if.end183.i.for.body191.i_crit_edge
  %i186.0.i143 = phi i32 [ %inc198.i, %for.cond187.i.for.body191.i_crit_edge ], [ 0, %if.end183.i.for.body191.i_crit_edge ]
  %194 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %184, align 4
  %arrayidx192.i = getelementptr %struct.p9_qid, ptr %195, i32 %i186.0.i143
  %call193.i = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str.5, ptr noundef %arrayidx192.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193.i)
  %tobool194.not.i = icmp eq i32 %call193.i, 0
  br i1 %tobool194.not.i, label %for.cond187.i, label %for.body191.i.if.then202.i_crit_edge

for.body191.i.if.then202.i_crit_edge:             ; preds = %for.body191.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then202.i

if.then202.i:                                     ; preds = %for.body191.i.if.then202.i_crit_edge, %if.end7.i.if.then202.i_crit_edge, %sw.bb169.i.if.then202.i_crit_edge
  %errcode.16.i.ph = phi i32 [ %call193.i, %for.body191.i.if.then202.i_crit_edge ], [ %call174.i, %sw.bb169.i.if.then202.i_crit_edge ], [ -12, %if.end7.i.if.then202.i_crit_edge ]
  %196 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %184, align 4
  call void @kfree(ptr noundef %197) #11
  %198 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr null, ptr %184, align 4
  br label %p9pdu_vreadf.exit

sw.bb204.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %argp.next207.i = getelementptr inbounds i8, ptr %ap.sroa.0.0.i, i32 4
  %199 = ptrtoint ptr %ap.sroa.0.0.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ap.sroa.0.0.i, align 4
  %201 = call ptr @memset(ptr %200, i32 0, i32 160)
  %qid208.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 1
  %st_mode.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 2
  %st_uid.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 3
  %st_gid.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 4
  %st_nlink.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 5
  %st_rdev.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 6
  %st_size.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 7
  %st_blksize.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 8
  %st_blocks.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 9
  %st_atime_sec.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 10
  %st_atime_nsec.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 11
  %st_mtime_sec.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 12
  %st_mtime_nsec.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 13
  %st_ctime_sec.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 14
  %st_ctime_nsec.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 15
  %st_btime_sec.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 16
  %st_btime_nsec.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 17
  %st_gen.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 18
  %st_data_version.i = getelementptr inbounds %struct.p9_stat_dotl, ptr %200, i32 0, i32 19
  %call209.i = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef nonnull @.str.16, ptr noundef %200, ptr noundef %qid208.i, ptr noundef %st_mode.i, ptr noundef %st_uid.i, ptr noundef %st_gid.i, ptr noundef %st_nlink.i, ptr noundef %st_rdev.i, ptr noundef %st_size.i, ptr noundef %st_blksize.i, ptr noundef %st_blocks.i, ptr noundef %st_atime_sec.i, ptr noundef %st_atime_nsec.i, ptr noundef %st_mtime_sec.i, ptr noundef %st_mtime_nsec.i, ptr noundef %st_ctime_sec.i, ptr noundef %st_ctime_nsec.i, ptr noundef %st_btime_sec.i, ptr noundef %st_btime_nsec.i, ptr noundef %st_gen.i, ptr noundef %st_data_version.i) #11
  br label %sw.epilog.i

sw.bb210.i:                                       ; preds = %for.cond.i
  br i1 %switch.i, label %sw.bb210.i.for.inc223.i_crit_edge, label %sw.bb210.i.p9pdu_vreadf.exit_crit_edge

sw.bb210.i.p9pdu_vreadf.exit_crit_edge:           ; preds = %sw.bb210.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9pdu_vreadf.exit

sw.bb210.i.for.inc223.i_crit_edge:                ; preds = %sw.bb210.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc223.i

do.body.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/9p/protocol.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 339, 0\0A.popsection", ""() #11, !srcloc !65
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb204.i, %if.end167.i, %sw.bb90.i, %cleanup86.i, %cleanup71.i, %cleanup57.i, %cleanup36.i, %cleanup23.i, %cleanup10.i
  %errcode.17.i = phi i32 [ %call209.i, %sw.bb204.i ], [ %call93.i, %sw.bb90.i ], [ %errcode.8.i, %cleanup86.i ], [ %errcode.7.i, %cleanup71.i ], [ %errcode.6.i, %cleanup57.i ], [ %errcode.4.i, %cleanup36.i ], [ %errcode.3.i, %cleanup23.i ], [ %errcode.2.i, %cleanup10.i ], [ %errcode.12.i.ph132, %if.end167.i ]
  %ap.sroa.0.1.i = phi ptr [ %argp.next207.i, %sw.bb204.i ], [ %argp.next92.i, %sw.bb90.i ], [ %argp.next77.i, %cleanup86.i ], [ %argp.next63.i, %cleanup71.i ], [ %argp.next42.i, %cleanup57.i ], [ %argp.next30.i, %cleanup36.i ], [ %argp.next17.i, %cleanup23.i ], [ %argp.next5.i, %cleanup10.i ], [ %argp.next130.i, %if.end167.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errcode.17.i)
  %tobool220.not.i = icmp eq i32 %errcode.17.i, 0
  br i1 %tobool220.not.i, label %sw.epilog.i.for.inc223.i_crit_edge, label %sw.epilog.i.p9pdu_vreadf.exit_crit_edge

sw.epilog.i.p9pdu_vreadf.exit_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %p9pdu_vreadf.exit

sw.epilog.i.for.inc223.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc223.i

for.inc223.i:                                     ; preds = %sw.epilog.i.for.inc223.i_crit_edge, %sw.bb210.i.for.inc223.i_crit_edge, %for.cond187.i.for.inc223.i_crit_edge, %if.end183.i.for.inc223.i_crit_edge, %for.cond142.i.for.inc223.i_crit_edge, %if.end139.i.for.inc223.i_crit_edge, %if.then118.i, %sw.bb94.i.for.inc223.i_crit_edge, %sw.bb.i.for.inc223.i_crit_edge
  %ap.sroa.0.1.i118 = phi ptr [ %ap.sroa.0.1.i, %sw.epilog.i.for.inc223.i_crit_edge ], [ %ap.sroa.0.0.i, %sw.bb210.i.for.inc223.i_crit_edge ], [ %argp.next115.i, %if.then118.i ], [ %argp.next96.i, %sw.bb94.i.for.inc223.i_crit_edge ], [ %argp.next.i, %sw.bb.i.for.inc223.i_crit_edge ], [ %argp.next130.i, %if.end139.i.for.inc223.i_crit_edge ], [ %argp.next173.i, %if.end183.i.for.inc223.i_crit_edge ], [ %argp.next130.i, %for.cond142.i.for.inc223.i_crit_edge ], [ %argp.next173.i, %for.cond187.i.for.inc223.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %ptr.0.i, i32 1
  br label %for.cond.i

p9pdu_vreadf.exit:                                ; preds = %sw.epilog.i.p9pdu_vreadf.exit_crit_edge, %sw.bb210.i.p9pdu_vreadf.exit_crit_edge, %if.then202.i, %sw.bb111.i.p9pdu_vreadf.exit_crit_edge, %if.then109.i, %sw.bb.i.p9pdu_vreadf.exit_crit_edge, %for.cond.i.p9pdu_vreadf.exit_crit_edge
  %retval.0.i = phi i32 [ %errcode.16.i.ph, %if.then202.i ], [ %call107.i, %if.then109.i ], [ 0, %sw.bb210.i.p9pdu_vreadf.exit_crit_edge ], [ %errcode.17.i, %sw.epilog.i.p9pdu_vreadf.exit_crit_edge ], [ 0, %for.cond.i.p9pdu_vreadf.exit_crit_edge ], [ %call116.i, %sw.bb111.i.p9pdu_vreadf.exit_crit_edge ], [ -14, %sw.bb.i.p9pdu_vreadf.exit_crit_edge ]
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #11
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p9stat_read(ptr noundef %clnt, ptr noundef %buf, i32 noundef %len, ptr noundef %st) #0 align 64 {
entry:
  %fake_pdu = alloca %struct.p9_fcall, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fake_pdu) #11
  %0 = getelementptr inbounds i8, ptr %fake_pdu, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %2 = ptrtoint ptr %fake_pdu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len, ptr %fake_pdu, align 4
  %capacity = getelementptr inbounds %struct.p9_fcall, ptr %fake_pdu, i32 0, i32 4
  %3 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %capacity, align 4
  %sdata = getelementptr inbounds %struct.p9_fcall, ptr %fake_pdu, i32 0, i32 6
  %4 = ptrtoint ptr %sdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %buf, ptr %sdata, align 4
  %offset = getelementptr inbounds %struct.p9_fcall, ptr %fake_pdu, i32 0, i32 3
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %offset, align 4
  %proto_version = getelementptr inbounds %struct.p9_client, ptr %clnt, i32 0, i32 2
  %6 = ptrtoint ptr %proto_version to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %proto_version, align 4
  %conv = zext i8 %7 to i32
  %call = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef nonnull %fake_pdu, i32 noundef %conv, ptr noundef nonnull @.str.7, ptr noundef %st)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 4, ptr noundef nonnull @__func__.p9stat_read, ptr noundef nonnull @.str.8, i32 noundef %call) #11
  call fastcc void @trace_9p_protocol_dump(ptr noundef %clnt, ptr noundef nonnull %fake_pdu)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %9, %if.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fake_pdu) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_p9_debug(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_9p_protocol_dump(ptr noundef %clnt, ptr noundef %pdu) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_9p_protocol_dump, i32 0, i32 1), ptr blockaddress(@trace_9p_protocol_dump, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !66

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !52) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !62

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !52) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !67
  %call42 = tail call i32 @__traceiter_9p_protocol_dump(ptr noundef null, ptr noundef %clnt, ptr noundef %pdu) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !68
  %13 = tail call i32 @llvm.read_register.i32(metadata !52) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !52) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !62

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !52) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_9p_protocol_dump, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_9p_protocol_dump, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_9p_protocol_dump.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_9p_protocol_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 169, ptr noundef nonnull @.str.18) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !70
  %31 = tail call i32 @llvm.read_register.i32(metadata !52) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p9pdu_prepare(ptr noundef %pdu, i16 noundef signext %tag, i8 noundef signext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.p9_fcall, ptr %pdu, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %type, ptr %id, align 4
  %conv = sext i8 %type to i32
  %conv1 = sext i16 %tag to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %pdu, i32 noundef 0, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef %conv, i32 noundef %conv1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p9pdu_finalize(ptr noundef %clnt, ptr noundef %pdu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pdu, align 4
  store i32 0, ptr %pdu, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %pdu, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %1)
  %2 = ptrtoint ptr %pdu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %pdu, align 4
  tail call fastcc void @trace_9p_protocol_dump(ptr noundef %clnt, ptr noundef %pdu)
  %3 = ptrtoint ptr %pdu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pdu, align 4
  %id = getelementptr inbounds %struct.p9_fcall, ptr %pdu, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 4
  %conv = zext i8 %6 to i32
  %tag = getelementptr inbounds %struct.p9_fcall, ptr %pdu, i32 0, i32 2
  %7 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tag, align 2
  %conv5 = zext i16 %8 to i32
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 4, ptr noundef nonnull @__func__.p9pdu_finalize, ptr noundef nonnull @.str.10, i32 noundef %4, i32 noundef %conv, i32 noundef %conv5) #11
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @p9pdu_reset(ptr nocapture noundef writeonly %pdu) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.p9_fcall, ptr %pdu, i32 0, i32 3
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %offset, align 4
  %1 = ptrtoint ptr %pdu to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pdu, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p9dirent_read(ptr noundef %clnt, ptr noundef %buf, i32 noundef %len, ptr noundef %dirent) #0 align 64 {
entry:
  %fake_pdu = alloca %struct.p9_fcall, align 4
  %nameptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fake_pdu) #11
  %0 = getelementptr inbounds i8, ptr %fake_pdu, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nameptr) #11
  %2 = ptrtoint ptr %nameptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nameptr, align 4, !annotation !64
  %3 = ptrtoint ptr %fake_pdu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %fake_pdu, align 4
  %capacity = getelementptr inbounds %struct.p9_fcall, ptr %fake_pdu, i32 0, i32 4
  %4 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %len, ptr %capacity, align 4
  %sdata = getelementptr inbounds %struct.p9_fcall, ptr %fake_pdu, i32 0, i32 6
  %5 = ptrtoint ptr %sdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf, ptr %sdata, align 4
  %offset = getelementptr inbounds %struct.p9_fcall, ptr %fake_pdu, i32 0, i32 3
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %offset, align 4
  %proto_version = getelementptr inbounds %struct.p9_client, ptr %clnt, i32 0, i32 2
  %7 = ptrtoint ptr %proto_version to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %proto_version, align 4
  %conv = zext i8 %8 to i32
  %d_off = getelementptr inbounds %struct.p9_dirent, ptr %dirent, i32 0, i32 1
  %d_type = getelementptr inbounds %struct.p9_dirent, ptr %dirent, i32 0, i32 2
  %call = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef nonnull %fake_pdu, i32 noundef %conv, ptr noundef nonnull @.str.11, ptr noundef %dirent, ptr noundef %d_off, ptr noundef %d_type, ptr noundef nonnull %nameptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 4, ptr noundef nonnull @__func__.p9dirent_read, ptr noundef nonnull @.str.12, i32 noundef %call) #11
  call fastcc void @trace_9p_protocol_dump(ptr noundef %clnt, ptr noundef nonnull %fake_pdu)
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_name = getelementptr inbounds %struct.p9_dirent, ptr %dirent, i32 0, i32 3
  %9 = ptrtoint ptr %nameptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nameptr, align 4
  %call1 = call i32 @strscpy(ptr noundef %d_name, ptr noundef %10, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %11 = ptrtoint ptr %nameptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nameptr, align 4
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 1, ptr noundef nonnull @__func__.p9dirent_read, ptr noundef nonnull @.str.13, ptr noundef %12) #11
  %13 = ptrtoint ptr %nameptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nameptr, align 4
  call void @kfree(ptr noundef %14) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %12) #11
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.then3 ], [ %16, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nameptr) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fake_pdu) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_9p_protocol_dump(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !28, !30, !32, !33, !35, !37, !39, !40, !42, !44, !46, !47, !48, !49, !51}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__ksymtab_p9stat_free, !1, !"__ksymtab_p9stat_free", i1 false, i1 false}
!1 = !{!"../net/9p/protocol.c", i32 42, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/9p/protocol.c", i32 391, i32 9}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/9p/protocol.c", i32 414, i32 42}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/9p/protocol.c", i32 423, i32 8}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/9p/protocol.c", i32 437, i32 48}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/9p/protocol.c", i32 456, i32 10}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/9p/protocol.c", i32 478, i32 10}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/9p/protocol.c", i32 491, i32 8}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/9p/protocol.c", i32 555, i32 52}
!18 = !{ptr @__func__.p9stat_read, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/9p/protocol.c", i32 557, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__ksymtab_p9stat_read, !22, !"__ksymtab_p9stat_read", i1 false, i1 false}
!22 = !{!"../net/9p/protocol.c", i32 564, i32 1}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/9p/protocol.c", i32 569, i32 30}
!25 = !{ptr @__func__.p9pdu_finalize, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/9p/protocol.c", i32 582, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/9p/protocol.c", i32 606, i32 52}
!30 = !{ptr @__func__.p9dirent_read, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/9p/protocol.c", i32 609, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/9p/protocol.c", i32 616, i32 3}
!35 = !{ptr @__ksymtab_p9dirent_read, !36, !"__ksymtab_p9dirent_read", i1 false, i1 false}
!36 = !{!"../net/9p/protocol.c", i32 626, i32 1}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/9p/protocol.c", i32 313, i32 6}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/trace/events/9p.h", i32 148, i32 1}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!48 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{!"sp"}
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
!63 = !{i64 2152909241, i64 2152909723, i64 2152909278, i64 2152909334, i64 2152909368, i64 2152909392, i64 2152909433, i64 2152909454, i64 2152909482, i64 2152909516}
!64 = !{!"auto-init"}
!65 = !{i64 2152904406, i64 2152904888, i64 2152904443, i64 2152904499, i64 2152904533, i64 2152904557, i64 2152904598, i64 2152904619, i64 2152904647, i64 2152904681}
!66 = !{i64 2148964947, i64 2148964952, i64 2148964965, i64 2148965009, i64 2148965043, i64 2148965064}
!67 = !{i64 2152880278}
!68 = !{i64 2152880491}
!69 = !{i64 2149376288}
!70 = !{i64 2149377324}
