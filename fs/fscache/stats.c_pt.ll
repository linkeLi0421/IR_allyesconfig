; ModuleID = '/llk/IR_all_yes/fs/fscache/stats.c_pt.bc'
source_filename = "../fs/fscache/stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fscache_n_updates\22, \22a\22\09"
module asm "\09.weak\09__crc_fscache_n_updates\09\09\09\09"
module asm "\09.long\09__crc_fscache_n_updates\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscache_n_updates:\09\09\09\09\09"
module asm "\09.asciz \09\22fscache_n_updates\22\09\09\09\09\09"
module asm "__kstrtabns_fscache_n_updates:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fscache_n_read\22, \22a\22\09"
module asm "\09.weak\09__crc_fscache_n_read\09\09\09\09"
module asm "\09.long\09__crc_fscache_n_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscache_n_read:\09\09\09\09\09"
module asm "\09.asciz \09\22fscache_n_read\22\09\09\09\09\09"
module asm "__kstrtabns_fscache_n_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fscache_n_write\22, \22a\22\09"
module asm "\09.weak\09__crc_fscache_n_write\09\09\09\09"
module asm "\09.long\09__crc_fscache_n_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscache_n_write:\09\09\09\09\09"
module asm "\09.asciz \09\22fscache_n_write\22\09\09\09\09\09"
module asm "__kstrtabns_fscache_n_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fscache_n_no_write_space\22, \22a\22\09"
module asm "\09.weak\09__crc_fscache_n_no_write_space\09\09\09\09"
module asm "\09.long\09__crc_fscache_n_no_write_space\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscache_n_no_write_space:\09\09\09\09\09"
module asm "\09.asciz \09\22fscache_n_no_write_space\22\09\09\09\09\09"
module asm "__kstrtabns_fscache_n_no_write_space:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fscache_n_no_create_space\22, \22a\22\09"
module asm "\09.weak\09__crc_fscache_n_no_create_space\09\09\09\09"
module asm "\09.long\09__crc_fscache_n_no_create_space\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscache_n_no_create_space:\09\09\09\09\09"
module asm "\09.asciz \09\22fscache_n_no_create_space\22\09\09\09\09\09"
module asm "__kstrtabns_fscache_n_no_create_space:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fscache_n_culled\22, \22a\22\09"
module asm "\09.weak\09__crc_fscache_n_culled\09\09\09\09"
module asm "\09.long\09__crc_fscache_n_culled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscache_n_culled:\09\09\09\09\09"
module asm "\09.asciz \09\22fscache_n_culled\22\09\09\09\09\09"
module asm "__kstrtabns_fscache_n_culled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@fscache_n_updates = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fscache_n_updates = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscache_n_updates = external dso_local constant [0 x i8], align 1
@__ksymtab_fscache_n_updates = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscache_n_updates to i32), ptr @__kstrtab_fscache_n_updates, ptr @__kstrtabns_fscache_n_updates }, section "___ksymtab+fscache_n_updates", align 4
@fscache_n_read = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fscache_n_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscache_n_read = external dso_local constant [0 x i8], align 1
@__ksymtab_fscache_n_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscache_n_read to i32), ptr @__kstrtab_fscache_n_read, ptr @__kstrtabns_fscache_n_read }, section "___ksymtab+fscache_n_read", align 4
@fscache_n_write = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fscache_n_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscache_n_write = external dso_local constant [0 x i8], align 1
@__ksymtab_fscache_n_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscache_n_write to i32), ptr @__kstrtab_fscache_n_write, ptr @__kstrtabns_fscache_n_write }, section "___ksymtab+fscache_n_write", align 4
@fscache_n_no_write_space = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fscache_n_no_write_space = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscache_n_no_write_space = external dso_local constant [0 x i8], align 1
@__ksymtab_fscache_n_no_write_space = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscache_n_no_write_space to i32), ptr @__kstrtab_fscache_n_no_write_space, ptr @__kstrtabns_fscache_n_no_write_space }, section "___ksymtab+fscache_n_no_write_space", align 4
@fscache_n_no_create_space = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fscache_n_no_create_space = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscache_n_no_create_space = external dso_local constant [0 x i8], align 1
@__ksymtab_fscache_n_no_create_space = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscache_n_no_create_space to i32), ptr @__kstrtab_fscache_n_no_create_space, ptr @__kstrtabns_fscache_n_no_create_space }, section "___ksymtab+fscache_n_no_create_space", align 4
@fscache_n_culled = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fscache_n_culled = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscache_n_culled = external dso_local constant [0 x i8], align 1
@__ksymtab_fscache_n_culled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscache_n_culled to i32), ptr @__kstrtab_fscache_n_culled, ptr @__kstrtabns_fscache_n_culled }, section "___ksymtab+fscache_n_culled", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FS-Cache statistics\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cookies: n=%d v=%d vcol=%u voom=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@fscache_n_cookies = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@fscache_n_volumes = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@fscache_n_volumes_collision = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@fscache_n_volumes_nomem = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Acquire: n=%u ok=%u oom=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@fscache_n_acquires = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@fscache_n_acquires_ok = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@fscache_n_acquires_oom = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"LRU    : n=%u exp=%u rmv=%u drp=%u at=%ld\0A\00", [53 x i8] zeroinitializer }, align 32
@fscache_n_cookies_lru = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@fscache_n_cookies_lru_expired = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@fscache_n_cookies_lru_removed = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@fscache_n_cookies_lru_dropped = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@fscache_cookie_lru_timer = external dso_local global %struct.timer_list, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Invals : n=%u\0A\00", [17 x i8] zeroinitializer }, align 32
@fscache_n_invalidates = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Updates: n=%u rsz=%u rsn=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@fscache_n_resizes = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@fscache_n_resizes_null = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Relinqs: n=%u rtr=%u drop=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@fscache_n_relinquishes = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@fscache_n_relinquishes_retire = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@fscache_n_relinquishes_dropped = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NoSpace: nwr=%u ncr=%u cull=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IO     : rd=%u wr=%u\0A\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"fscache_n_updates\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 31, i32 10 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"fscache_n_read\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 41, i32 10 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"fscache_n_write\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 43, i32 10 }
@___asan_gen_.18 = private unnamed_addr constant [25 x i8] c"fscache_n_no_write_space\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 45, i32 10 }
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"fscache_n_no_create_space\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 47, i32 10 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"fscache_n_culled\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 49, i32 10 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 57, i32 14 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 58, i32 16 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"fscache_n_cookies\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 19, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"fscache_n_volumes\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 16, i32 10 }
@___asan_gen_.39 = private unnamed_addr constant [28 x i8] c"fscache_n_volumes_collision\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 17, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant [24 x i8] c"fscache_n_volumes_nomem\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 18, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 65, i32 16 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"fscache_n_acquires\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 25, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"fscache_n_acquires_ok\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 26, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant [23 x i8] c"fscache_n_acquires_oom\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 27, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 70, i32 16 }
@___asan_gen_.60 = private unnamed_addr constant [22 x i8] c"fscache_n_cookies_lru\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 20, i32 10 }
@___asan_gen_.63 = private unnamed_addr constant [30 x i8] c"fscache_n_cookies_lru_expired\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 21, i32 10 }
@___asan_gen_.66 = private unnamed_addr constant [30 x i8] c"fscache_n_cookies_lru_removed\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 22, i32 10 }
@___asan_gen_.69 = private unnamed_addr constant [30 x i8] c"fscache_n_cookies_lru_dropped\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 23, i32 10 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 78, i32 16 }
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"fscache_n_invalidates\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 29, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 81, i32 16 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"fscache_n_resizes\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 38, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant [23 x i8] c"fscache_n_resizes_null\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 39, i32 10 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 86, i32 16 }
@___asan_gen_.90 = private unnamed_addr constant [23 x i8] c"fscache_n_relinquishes\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 34, i32 10 }
@___asan_gen_.93 = private unnamed_addr constant [30 x i8] c"fscache_n_relinquishes_retire\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 35, i32 10 }
@___asan_gen_.96 = private unnamed_addr constant [31 x i8] c"fscache_n_relinquishes_dropped\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 36, i32 10 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 91, i32 16 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [22 x i8] c"../fs/fscache/stats.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 96, i32 16 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__ksymtab_fscache_n_culled, ptr @__ksymtab_fscache_n_no_create_space, ptr @__ksymtab_fscache_n_no_write_space, ptr @__ksymtab_fscache_n_read, ptr @__ksymtab_fscache_n_updates, ptr @__ksymtab_fscache_n_write, ptr @fscache_n_updates, ptr @fscache_n_read, ptr @fscache_n_write, ptr @fscache_n_no_write_space, ptr @fscache_n_no_create_space, ptr @fscache_n_culled, ptr @.str, ptr @.str.1, ptr @fscache_n_cookies, ptr @fscache_n_volumes, ptr @fscache_n_volumes_collision, ptr @fscache_n_volumes_nomem, ptr @.str.2, ptr @fscache_n_acquires, ptr @fscache_n_acquires_ok, ptr @fscache_n_acquires_oom, ptr @.str.3, ptr @fscache_n_cookies_lru, ptr @fscache_n_cookies_lru_expired, ptr @fscache_n_cookies_lru_removed, ptr @fscache_n_cookies_lru_dropped, ptr @.str.4, ptr @fscache_n_invalidates, ptr @.str.5, ptr @fscache_n_resizes, ptr @fscache_n_resizes_null, ptr @.str.6, ptr @fscache_n_relinquishes, ptr @fscache_n_relinquishes_retire, ptr @fscache_n_relinquishes_dropped, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_updates to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_read to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_write to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_no_write_space to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_no_create_space to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_culled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_cookies to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_volumes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_volumes_collision to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_volumes_nomem to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_acquires to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_acquires_ok to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_acquires_oom to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_cookies_lru to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_cookies_lru_expired to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_cookies_lru_removed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_cookies_lru_dropped to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_invalidates to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_resizes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_resizes_null to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_relinquishes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_relinquishes_retire to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscache_n_relinquishes_dropped to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscache_stats_show(ptr noundef %m, ptr nocapture noundef readnone %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str) #2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_cookies, i32 noundef 4) #2
  %0 = load volatile i32, ptr @fscache_n_cookies, align 4
  %call.i.i33 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_volumes, i32 noundef 4) #2
  %1 = load volatile i32, ptr @fscache_n_volumes, align 4
  %call.i.i34 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_volumes_collision, i32 noundef 4) #2
  %2 = load volatile i32, ptr @fscache_n_volumes_collision, align 4
  %call.i.i35 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_volumes_nomem, i32 noundef 4) #2
  %3 = load volatile i32, ptr @fscache_n_volumes_nomem, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2
  %call.i.i36 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_acquires, i32 noundef 4) #2
  %4 = load volatile i32, ptr @fscache_n_acquires, align 4
  %call.i.i37 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_acquires_ok, i32 noundef 4) #2
  %5 = load volatile i32, ptr @fscache_n_acquires_ok, align 4
  %call.i.i38 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_acquires_oom, i32 noundef 4) #2
  %6 = load volatile i32, ptr @fscache_n_acquires_oom, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, i32 noundef %4, i32 noundef %5, i32 noundef %6) #2
  %call.i.i39 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_cookies_lru, i32 noundef 4) #2
  %7 = load volatile i32, ptr @fscache_n_cookies_lru, align 4
  %call.i.i40 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_cookies_lru_expired, i32 noundef 4) #2
  %8 = load volatile i32, ptr @fscache_n_cookies_lru_expired, align 4
  %call.i.i41 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_cookies_lru_removed, i32 noundef 4) #2
  %9 = load volatile i32, ptr @fscache_n_cookies_lru_removed, align 4
  %call.i.i42 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_cookies_lru_dropped, i32 noundef 4) #2
  %10 = load volatile i32, ptr @fscache_n_cookies_lru_dropped, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.timer_list, ptr @fscache_cookie_lru_timer, i32 0, i32 0, i32 1) to i32))
  %11 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @fscache_cookie_lru_timer, i32 0, i32 0, i32 1), align 4
  %tobool.not.i.i.not = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.timer_list, ptr @fscache_cookie_lru_timer, i32 0, i32 1) to i32))
  %12 = load i32, ptr getelementptr inbounds (%struct.timer_list, ptr @fscache_cookie_lru_timer, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %12, %13
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %cond) #2
  %call.i.i43 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_invalidates, i32 noundef 4) #2
  %14 = load volatile i32, ptr @fscache_n_invalidates, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, i32 noundef %14) #2
  %call.i.i44 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_updates, i32 noundef 4) #2
  %15 = load volatile i32, ptr @fscache_n_updates, align 4
  %call.i.i45 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_resizes, i32 noundef 4) #2
  %16 = load volatile i32, ptr @fscache_n_resizes, align 4
  %call.i.i46 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_resizes_null, i32 noundef 4) #2
  %17 = load volatile i32, ptr @fscache_n_resizes_null, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, i32 noundef %15, i32 noundef %16, i32 noundef %17) #2
  %call.i.i47 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_relinquishes, i32 noundef 4) #2
  %18 = load volatile i32, ptr @fscache_n_relinquishes, align 4
  %call.i.i48 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_relinquishes_retire, i32 noundef 4) #2
  %19 = load volatile i32, ptr @fscache_n_relinquishes_retire, align 4
  %call.i.i49 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_relinquishes_dropped, i32 noundef 4) #2
  %20 = load volatile i32, ptr @fscache_n_relinquishes_dropped, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, i32 noundef %18, i32 noundef %19, i32 noundef %20) #2
  %call.i.i50 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_no_write_space, i32 noundef 4) #2
  %21 = load volatile i32, ptr @fscache_n_no_write_space, align 4
  %call.i.i51 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_no_create_space, i32 noundef 4) #2
  %22 = load volatile i32, ptr @fscache_n_no_create_space, align 4
  %call.i.i52 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_culled, i32 noundef 4) #2
  %23 = load volatile i32, ptr @fscache_n_culled, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, i32 noundef %21, i32 noundef %22, i32 noundef %23) #2
  %call.i.i53 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_read, i32 noundef 4) #2
  %24 = load volatile i32, ptr @fscache_n_read, align 4
  %call.i.i54 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @fscache_n_write, i32 noundef 4) #2
  %25 = load volatile i32, ptr @fscache_n_write, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef %24, i32 noundef %25) #2
  tail call void @netfs_stats_show(ptr noundef %m) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netfs_stats_show(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__ksymtab_fscache_n_updates, !1, !"__ksymtab_fscache_n_updates", i1 false, i1 false}
!1 = !{!"../fs/fscache/stats.c", i32 32, i32 1}
!2 = !{ptr @__ksymtab_fscache_n_read, !3, !"__ksymtab_fscache_n_read", i1 false, i1 false}
!3 = !{!"../fs/fscache/stats.c", i32 42, i32 1}
!4 = !{ptr @__ksymtab_fscache_n_write, !5, !"__ksymtab_fscache_n_write", i1 false, i1 false}
!5 = !{!"../fs/fscache/stats.c", i32 44, i32 1}
!6 = !{ptr @__ksymtab_fscache_n_no_write_space, !7, !"__ksymtab_fscache_n_no_write_space", i1 false, i1 false}
!7 = !{!"../fs/fscache/stats.c", i32 46, i32 1}
!8 = !{ptr @__ksymtab_fscache_n_no_create_space, !9, !"__ksymtab_fscache_n_no_create_space", i1 false, i1 false}
!9 = !{!"../fs/fscache/stats.c", i32 48, i32 1}
!10 = !{ptr @__ksymtab_fscache_n_culled, !11, !"__ksymtab_fscache_n_culled", i1 false, i1 false}
!11 = !{!"../fs/fscache/stats.c", i32 50, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/fscache/stats.c", i32 57, i32 14}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/fscache/stats.c", i32 58, i32 16}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/fscache/stats.c", i32 65, i32 16}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/fscache/stats.c", i32 70, i32 16}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/fscache/stats.c", i32 78, i32 16}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/fscache/stats.c", i32 81, i32 16}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/fscache/stats.c", i32 86, i32 16}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/fscache/stats.c", i32 91, i32 16}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/fscache/stats.c", i32 96, i32 16}
!30 = !{ptr @fscache_n_volumes, !31, !"fscache_n_volumes", i1 false, i1 false}
!31 = !{!"../fs/fscache/stats.c", i32 16, i32 10}
!32 = !{ptr @fscache_n_volumes_collision, !33, !"fscache_n_volumes_collision", i1 false, i1 false}
!33 = !{!"../fs/fscache/stats.c", i32 17, i32 10}
!34 = !{ptr @fscache_n_volumes_nomem, !35, !"fscache_n_volumes_nomem", i1 false, i1 false}
!35 = !{!"../fs/fscache/stats.c", i32 18, i32 10}
!36 = !{ptr @fscache_n_cookies, !37, !"fscache_n_cookies", i1 false, i1 false}
!37 = !{!"../fs/fscache/stats.c", i32 19, i32 10}
!38 = !{ptr @fscache_n_cookies_lru, !39, !"fscache_n_cookies_lru", i1 false, i1 false}
!39 = !{!"../fs/fscache/stats.c", i32 20, i32 10}
!40 = !{ptr @fscache_n_cookies_lru_expired, !41, !"fscache_n_cookies_lru_expired", i1 false, i1 false}
!41 = !{!"../fs/fscache/stats.c", i32 21, i32 10}
!42 = !{ptr @fscache_n_cookies_lru_removed, !43, !"fscache_n_cookies_lru_removed", i1 false, i1 false}
!43 = !{!"../fs/fscache/stats.c", i32 22, i32 10}
!44 = !{ptr @fscache_n_cookies_lru_dropped, !45, !"fscache_n_cookies_lru_dropped", i1 false, i1 false}
!45 = !{!"../fs/fscache/stats.c", i32 23, i32 10}
!46 = !{ptr @fscache_n_acquires, !47, !"fscache_n_acquires", i1 false, i1 false}
!47 = !{!"../fs/fscache/stats.c", i32 25, i32 10}
!48 = !{ptr @fscache_n_acquires_ok, !49, !"fscache_n_acquires_ok", i1 false, i1 false}
!49 = !{!"../fs/fscache/stats.c", i32 26, i32 10}
!50 = !{ptr @fscache_n_acquires_oom, !51, !"fscache_n_acquires_oom", i1 false, i1 false}
!51 = !{!"../fs/fscache/stats.c", i32 27, i32 10}
!52 = !{ptr @fscache_n_invalidates, !53, !"fscache_n_invalidates", i1 false, i1 false}
!53 = !{!"../fs/fscache/stats.c", i32 29, i32 10}
!54 = !{ptr @fscache_n_updates, !55, !"fscache_n_updates", i1 false, i1 false}
!55 = !{!"../fs/fscache/stats.c", i32 31, i32 10}
!56 = !{ptr @fscache_n_relinquishes, !57, !"fscache_n_relinquishes", i1 false, i1 false}
!57 = !{!"../fs/fscache/stats.c", i32 34, i32 10}
!58 = !{ptr @fscache_n_relinquishes_retire, !59, !"fscache_n_relinquishes_retire", i1 false, i1 false}
!59 = !{!"../fs/fscache/stats.c", i32 35, i32 10}
!60 = !{ptr @fscache_n_relinquishes_dropped, !61, !"fscache_n_relinquishes_dropped", i1 false, i1 false}
!61 = !{!"../fs/fscache/stats.c", i32 36, i32 10}
!62 = !{ptr @fscache_n_resizes, !63, !"fscache_n_resizes", i1 false, i1 false}
!63 = !{!"../fs/fscache/stats.c", i32 38, i32 10}
!64 = !{ptr @fscache_n_resizes_null, !65, !"fscache_n_resizes_null", i1 false, i1 false}
!65 = !{!"../fs/fscache/stats.c", i32 39, i32 10}
!66 = !{ptr @fscache_n_read, !67, !"fscache_n_read", i1 false, i1 false}
!67 = !{!"../fs/fscache/stats.c", i32 41, i32 10}
!68 = !{ptr @fscache_n_write, !69, !"fscache_n_write", i1 false, i1 false}
!69 = !{!"../fs/fscache/stats.c", i32 43, i32 10}
!70 = !{ptr @fscache_n_no_write_space, !71, !"fscache_n_no_write_space", i1 false, i1 false}
!71 = !{!"../fs/fscache/stats.c", i32 45, i32 10}
!72 = !{ptr @fscache_n_no_create_space, !73, !"fscache_n_no_create_space", i1 false, i1 false}
!73 = !{!"../fs/fscache/stats.c", i32 47, i32 10}
!74 = !{ptr @fscache_n_culled, !75, !"fscache_n_culled", i1 false, i1 false}
!75 = !{!"../fs/fscache/stats.c", i32 49, i32 10}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
