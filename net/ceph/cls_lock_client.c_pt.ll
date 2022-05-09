; ModuleID = '/llk/IR_all_yes/net/ceph/cls_lock_client.c_pt.bc'
source_filename = "../net/ceph/cls_lock_client.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ceph_cls_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_cls_lock\09\09\09\09"
module asm "\09.long\09__crc_ceph_cls_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_cls_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_cls_lock\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_cls_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_cls_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_cls_unlock\09\09\09\09"
module asm "\09.long\09__crc_ceph_cls_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_cls_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_cls_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_cls_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_cls_break_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_cls_break_lock\09\09\09\09"
module asm "\09.long\09__crc_ceph_cls_break_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_cls_break_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_cls_break_lock\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_cls_break_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_cls_set_cookie\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_cls_set_cookie\09\09\09\09"
module asm "\09.long\09__crc_ceph_cls_set_cookie\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_cls_set_cookie:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_cls_set_cookie\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_cls_set_cookie:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_free_lockers\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_free_lockers\09\09\09\09"
module asm "\09.long\09__crc_ceph_free_lockers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_free_lockers:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_free_lockers\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_free_lockers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_cls_lock_info\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_cls_lock_info\09\09\09\09"
module asm "\09.long\09__crc_ceph_cls_lock_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_cls_lock_info:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_cls_lock_info\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_cls_lock_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_cls_assert_locked\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_cls_assert_locked\09\09\09\09"
module asm "\09.long\09__crc_ceph_cls_assert_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_cls_assert_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_cls_assert_locked\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_cls_assert_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ceph_timespec = type { i32, i32 }
%struct.ceph_entity_name = type <{ i8, i64 }>
%struct.ceph_locker = type { %struct.ceph_locker_id, %struct.ceph_locker_info }
%struct.ceph_locker_id = type { %struct.ceph_entity_name, ptr }
%struct.ceph_locker_info = type { %struct.ceph_entity_addr }
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }

@ceph_cls_lock.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"libceph\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ceph_cls_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/ceph/cls_lock_client.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%.*s %12.12s:%-4d : %s lock_name %s type %d cookie %s tag %s desc %s flags 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"libceph: %.*s %12.12s:%-4d : %s lock_name %s type %d cookie %s tag %s desc %s flags 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@ceph_cls_lock.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%.*s %12.12s:%-4d : %s: status %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"libceph: %.*s %12.12s:%-4d : %s: status %d\0A\00", [52 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_cls_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_cls_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_cls_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_cls_lock to i32), ptr @__kstrtab_ceph_cls_lock, ptr @__kstrtabns_ceph_cls_lock }, section "___ksymtab+ceph_cls_lock", align 4
@ceph_cls_unlock.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph_cls_unlock\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%.*s %12.12s:%-4d : %s lock_name %s cookie %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"libceph: %.*s %12.12s:%-4d : %s lock_name %s cookie %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unlock\00", [25 x i8] zeroinitializer }, align 32
@ceph_cls_unlock.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.7, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__kstrtab_ceph_cls_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_cls_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_cls_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_cls_unlock to i32), ptr @__kstrtab_ceph_cls_unlock, ptr @__kstrtabns_ceph_cls_unlock }, section "___ksymtab+ceph_cls_unlock", align 4
@ceph_cls_break_lock.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_cls_break_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%.*s %12.12s:%-4d : %s lock_name %s cookie %s locker %s%llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"libceph: %.*s %12.12s:%-4d : %s lock_name %s cookie %s locker %s%llu\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"break_lock\00", [21 x i8] zeroinitializer }, align 32
@ceph_cls_break_lock.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.7, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__kstrtab_ceph_cls_break_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_cls_break_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_cls_break_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_cls_break_lock to i32), ptr @__kstrtab_ceph_cls_break_lock, ptr @__kstrtabns_ceph_cls_break_lock }, section "___ksymtab+ceph_cls_break_lock", align 4
@ceph_cls_set_cookie.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_cls_set_cookie\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%.*s %12.12s:%-4d : %s lock_name %s type %d old_cookie %s tag %s new_cookie %s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"libceph: %.*s %12.12s:%-4d : %s lock_name %s type %d old_cookie %s tag %s new_cookie %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"set_cookie\00", [21 x i8] zeroinitializer }, align 32
@ceph_cls_set_cookie.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.7, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__kstrtab_ceph_cls_set_cookie = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_cls_set_cookie = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_cls_set_cookie = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_cls_set_cookie to i32), ptr @__kstrtab_ceph_cls_set_cookie, ptr @__kstrtabns_ceph_cls_set_cookie }, section "___ksymtab+ceph_cls_set_cookie", align 4
@__kstrtab_ceph_free_lockers = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_free_lockers = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_free_lockers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_free_lockers to i32), ptr @__kstrtab_ceph_free_lockers, ptr @__kstrtabns_ceph_free_lockers }, section "___ksymtab+ceph_free_lockers", align 4
@ceph_cls_lock_info.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ceph_cls_lock_info\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%.*s %12.12s:%-4d : %s lock_name %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"libceph: %.*s %12.12s:%-4d : %s lock_name %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"get_info\00", [23 x i8] zeroinitializer }, align 32
@ceph_cls_lock_info.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.7, i8 0, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__kstrtab_ceph_cls_lock_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_cls_lock_info = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_cls_lock_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_cls_lock_info to i32), ptr @__kstrtab_ceph_cls_lock_info, ptr @__kstrtabns_ceph_cls_lock_info }, section "___ksymtab+ceph_cls_lock_info", align 4
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"assert_locked\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_cls_assert_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_cls_assert_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_cls_assert_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_cls_assert_locked to i32), ptr @__kstrtab_ceph_cls_assert_locked, ptr @__kstrtabns_ceph_cls_assert_locked }, section "___ksymtab+ceph_cls_assert_locked", align 4
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cls_lock_get_info_reply\00", [40 x i8] zeroinitializer }, align 32
@ceph_start_decoding._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.30, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014libceph: got struct_v %d struct_compat %d > %d of %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_start_decoding\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/ceph/decode.h\00", [36 x i8] zeroinitializer }, align 32
@ceph_start_decoding._entry_ptr = internal global ptr @ceph_start_decoding._entry, section ".printk_index", align 4
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"locker_id_t\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"locker_info_t\00", [18 x i8] zeroinitializer }, align 32
@decode_locker.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"decode_locker\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : %s %s%llu cookie %s addr %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"libceph: %.*s %12.12s:%-4d : %s %s%llu cookie %s addr %s\0A\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 73, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 75, i32 40 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 79, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 124, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 125, i32 48 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 178, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 180, i32 48 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 229, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 231, i32 48 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 370, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 371, i32 48 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 407, i32 48 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 297, i32 39 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [31 x i8] c"../include/linux/ceph/decode.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 346, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 258, i32 39 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 269, i32 39 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [30 x i8] c"../net/ceph/cls_lock_client.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 282, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__ksymtab_ceph_cls_assert_locked, ptr @__ksymtab_ceph_cls_break_lock, ptr @__ksymtab_ceph_cls_lock, ptr @__ksymtab_ceph_cls_lock_info, ptr @__ksymtab_ceph_cls_set_cookie, ptr @__ksymtab_ceph_cls_unlock, ptr @__ksymtab_ceph_free_lockers, ptr @ceph_start_decoding._entry, ptr @ceph_start_decoding._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_start_decoding._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_cls_lock(ptr noundef %osdc, ptr noundef %oid, ptr noundef %oloc, ptr noundef %lock_name, i8 noundef zeroext %type, ptr noundef %cookie, ptr noundef %tag, ptr noundef %desc, i8 noundef zeroext %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %lock_name) #10
  %call1 = tail call i32 @strlen(ptr noundef %cookie) #10
  %call2 = tail call i32 @strlen(ptr noundef %tag) #10
  %call3 = tail call i32 @strlen(ptr noundef %desc) #10
  %add5 = add i32 %call, 12
  %add6 = add i32 %add5, %call1
  %add7 = add i32 %add6, %call2
  %add8 = add i32 %add7, %call3
  %add12 = add i32 %add8, 14
  %add13 = add i32 %add8, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add13)
  %cmp = icmp ugt i32 %add13, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3072, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call17 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #7
  %add.ptr = getelementptr i8, ptr %call17, i32 %add13
  %0 = ptrtoint ptr %call17 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %call17, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %call17, i32 1
  %1 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %incdec.ptr.i.i, align 1
  %incdec.ptr.i1.i = getelementptr i8, ptr %call17, i32 2
  %2 = tail call i32 @llvm.bswap.i32(i32 %add12) #7
  %3 = ptrtoint ptr %incdec.ptr.i1.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %incdec.ptr.i1.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call17, i32 10
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %call
  %cmp.i = icmp ugt ptr %add.ptr1.i, %add.ptr
  br i1 %cmp.i, label %do.body3.i, label %do.end6.i, !prof !95

do.body3.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ceph/decode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end6.i:                                        ; preds = %if.end16
  %add.ptr.i.i = getelementptr i8, ptr %call17, i32 6
  %4 = tail call i32 @llvm.bswap.i32(i32 %call) #7
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not.i = icmp eq i32 %call, 0
  br i1 %tobool7.not.i, label %do.end6.i.ceph_encode_string.exit_crit_edge, label %if.then8.i

do.end6.i.ceph_encode_string.exit_crit_edge:      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_encode_string.exit

if.then8.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = call ptr @memcpy(ptr %add.ptr.i, ptr %lock_name, i32 %call)
  br label %ceph_encode_string.exit

ceph_encode_string.exit:                          ; preds = %if.then8.i, %do.end6.i.ceph_encode_string.exit_crit_edge
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %type, ptr %add.ptr1.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr1.i, i32 1
  %add.ptr.i82 = getelementptr i8, ptr %incdec.ptr.i, i32 4
  %add.ptr1.i83 = getelementptr i8, ptr %add.ptr.i82, i32 %call1
  %cmp.i84 = icmp ugt ptr %add.ptr1.i83, %add.ptr
  br i1 %cmp.i84, label %do.body3.i85, label %do.end6.i88, !prof !95

do.body3.i85:                                     ; preds = %ceph_encode_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ceph/decode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end6.i88:                                      ; preds = %ceph_encode_string.exit
  %8 = tail call i32 @llvm.bswap.i32(i32 %call1) #7
  %9 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool7.not.i87 = icmp eq i32 %call1, 0
  br i1 %tobool7.not.i87, label %do.end6.i88.ceph_encode_string.exit91_crit_edge, label %if.then8.i89

do.end6.i88.ceph_encode_string.exit91_crit_edge:  ; preds = %do.end6.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_encode_string.exit91

if.then8.i89:                                     ; preds = %do.end6.i88
  call void @__sanitizer_cov_trace_pc() #9
  %10 = call ptr @memcpy(ptr %add.ptr.i82, ptr %cookie, i32 %call1)
  br label %ceph_encode_string.exit91

ceph_encode_string.exit91:                        ; preds = %if.then8.i89, %do.end6.i88.ceph_encode_string.exit91_crit_edge
  %add.ptr.i92 = getelementptr i8, ptr %add.ptr1.i83, i32 4
  %add.ptr1.i93 = getelementptr i8, ptr %add.ptr.i92, i32 %call2
  %cmp.i94 = icmp ugt ptr %add.ptr1.i93, %add.ptr
  br i1 %cmp.i94, label %do.body3.i95, label %do.end6.i98, !prof !95

do.body3.i95:                                     ; preds = %ceph_encode_string.exit91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ceph/decode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end6.i98:                                      ; preds = %ceph_encode_string.exit91
  %11 = tail call i32 @llvm.bswap.i32(i32 %call2) #7
  %12 = ptrtoint ptr %add.ptr1.i83 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %add.ptr1.i83, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool7.not.i97 = icmp eq i32 %call2, 0
  br i1 %tobool7.not.i97, label %do.end6.i98.ceph_encode_string.exit101_crit_edge, label %if.then8.i99

do.end6.i98.ceph_encode_string.exit101_crit_edge: ; preds = %do.end6.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_encode_string.exit101

if.then8.i99:                                     ; preds = %do.end6.i98
  call void @__sanitizer_cov_trace_pc() #9
  %13 = call ptr @memcpy(ptr %add.ptr.i92, ptr %tag, i32 %call2)
  br label %ceph_encode_string.exit101

ceph_encode_string.exit101:                       ; preds = %if.then8.i99, %do.end6.i98.ceph_encode_string.exit101_crit_edge
  %add.ptr.i102 = getelementptr i8, ptr %add.ptr1.i93, i32 4
  %add.ptr1.i103 = getelementptr i8, ptr %add.ptr.i102, i32 %call3
  %cmp.i104 = icmp ugt ptr %add.ptr1.i103, %add.ptr
  br i1 %cmp.i104, label %do.body3.i105, label %do.end6.i108, !prof !95

do.body3.i105:                                    ; preds = %ceph_encode_string.exit101
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ceph/decode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end6.i108:                                     ; preds = %ceph_encode_string.exit101
  %14 = tail call i32 @llvm.bswap.i32(i32 %call3) #7
  %15 = ptrtoint ptr %add.ptr1.i93 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %add.ptr1.i93, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool7.not.i107 = icmp eq i32 %call3, 0
  br i1 %tobool7.not.i107, label %do.end6.i108.ceph_encode_string.exit111_crit_edge, label %if.then8.i109

do.end6.i108.ceph_encode_string.exit111_crit_edge: ; preds = %do.end6.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_encode_string.exit111

if.then8.i109:                                    ; preds = %do.end6.i108
  call void @__sanitizer_cov_trace_pc() #9
  %16 = call ptr @memcpy(ptr %add.ptr.i102, ptr %desc, i32 %call3)
  br label %ceph_encode_string.exit111

ceph_encode_string.exit111:                       ; preds = %if.then8.i109, %do.end6.i108.ceph_encode_string.exit111_crit_edge
  %17 = ptrtoint ptr %add.ptr1.i103 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 0, ptr %add.ptr1.i103, align 1
  %tv_nsec2.i = getelementptr inbounds %struct.ceph_timespec, ptr %add.ptr1.i103, i32 0, i32 1
  %18 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %tv_nsec2.i, align 1
  %add.ptr18 = getelementptr i8, ptr %add.ptr1.i103, i32 8
  %19 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %flags, ptr %add.ptr18, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_cls_lock.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_cls_lock, %if.then23)) #7
          to label %do.end [label %if.then23], !srcloc !97

if.then23:                                        ; preds = %ceph_encode_string.exit111
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %type to i32
  %conv25 = zext i8 %flags to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_cls_lock.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([27 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 74, ptr noundef nonnull @.str.1, ptr noundef %lock_name, i32 noundef %conv, ptr noundef %cookie, ptr noundef %tag, ptr noundef %desc, i32 noundef %conv25) #7
  br label %do.end

do.end:                                           ; preds = %if.then23, %ceph_encode_string.exit111
  %call27 = tail call i32 @ceph_osdc_call(ptr noundef %osdc, ptr noundef %oid, ptr noundef %oloc, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.6, i32 noundef 32, ptr noundef nonnull %call38.i.i.i, i32 noundef %add13, ptr noundef null, ptr noundef null) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_cls_lock.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_cls_lock, %if.then40)) #7
          to label %do.end44 [label %if.then40], !srcloc !97

if.then40:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_cls_lock.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([27 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 79, ptr noundef nonnull @.str.1, i32 noundef %call27) #7
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.end
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %do.end44 ], [ -7, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_osdc_call(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_cls_unlock(ptr noundef %osdc, ptr noundef %oid, ptr noundef %oloc, ptr noundef %lock_name, ptr noundef %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %lock_name) #10
  %call1 = tail call i32 @strlen(ptr noundef %cookie) #10
  %add = add i32 %call, 4
  %add2 = add i32 %add, %call1
  %add3 = add i32 %add2, 4
  %add4 = add i32 %add2, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add4)
  %cmp = icmp ugt i32 %add4, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3072, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #7
  %add.ptr = getelementptr i8, ptr %call8, i32 %add4
  %0 = ptrtoint ptr %call8 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %call8, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %call8, i32 1
  %1 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %incdec.ptr.i.i, align 1
  %incdec.ptr.i1.i = getelementptr i8, ptr %call8, i32 2
  %2 = tail call i32 @llvm.bswap.i32(i32 %add3) #7
  %3 = ptrtoint ptr %incdec.ptr.i1.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %incdec.ptr.i1.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call8, i32 10
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %call
  %cmp.i = icmp ugt ptr %add.ptr1.i, %add.ptr
  br i1 %cmp.i, label %do.body3.i, label %do.end6.i, !prof !95

do.body3.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ceph/decode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end6.i:                                        ; preds = %if.end7
  %add.ptr.i.i = getelementptr i8, ptr %call8, i32 6
  %4 = tail call i32 @llvm.bswap.i32(i32 %call) #7
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not.i = icmp eq i32 %call, 0
  br i1 %tobool7.not.i, label %do.end6.i.ceph_encode_string.exit_crit_edge, label %if.then8.i

do.end6.i.ceph_encode_string.exit_crit_edge:      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_encode_string.exit

if.then8.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = call ptr @memcpy(ptr %add.ptr.i, ptr %lock_name, i32 %call)
  br label %ceph_encode_string.exit

ceph_encode_string.exit:                          ; preds = %if.then8.i, %do.end6.i.ceph_encode_string.exit_crit_edge
  %add.ptr.i58 = getelementptr i8, ptr %add.ptr1.i, i32 4
  %add.ptr1.i59 = getelementptr i8, ptr %add.ptr.i58, i32 %call1
  %cmp.i60 = icmp ugt ptr %add.ptr1.i59, %add.ptr
  br i1 %cmp.i60, label %do.body3.i61, label %do.end6.i64, !prof !95

do.body3.i61:                                     ; preds = %ceph_encode_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ceph/decode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end6.i64:                                      ; preds = %ceph_encode_string.exit
  %7 = tail call i32 @llvm.bswap.i32(i32 %call1) #7
  %8 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %add.ptr1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool7.not.i63 = icmp eq i32 %call1, 0
  br i1 %tobool7.not.i63, label %do.end6.i64.ceph_encode_string.exit67_crit_edge, label %if.then8.i65

do.end6.i64.ceph_encode_string.exit67_crit_edge:  ; preds = %do.end6.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_encode_string.exit67

if.then8.i65:                                     ; preds = %do.end6.i64
  call void @__sanitizer_cov_trace_pc() #9
  %9 = call ptr @memcpy(ptr %add.ptr.i58, ptr %cookie, i32 %call1)
  br label %ceph_encode_string.exit67

ceph_encode_string.exit67:                        ; preds = %if.then8.i65, %do.end6.i64.ceph_encode_string.exit67_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_cls_unlock.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_cls_unlock, %if.then13)) #7
          to label %do.end [label %if.then13], !srcloc !97

if.then13:                                        ; preds = %ceph_encode_string.exit67
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_cls_unlock.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([27 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 124, ptr noundef nonnull @.str.9, ptr noundef %lock_name, ptr noundef %cookie) #7
  br label %do.end

do.end:                                           ; preds = %if.then13, %ceph_encode_string.exit67
  %call16 = tail call i32 @ceph_osdc_call(ptr noundef %osdc, ptr noundef %oid, ptr noundef %oloc, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.12, i32 noundef 32, ptr noundef nonnull %call38.i.i.i, i32 noundef %add4, ptr noundef null, ptr noundef null) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_cls_unlock.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_cls_unlock, %if.then29)) #7
          to label %do.end33 [label %if.then29], !srcloc !97

if.then29:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_cls_unlock.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([27 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 129, ptr noundef nonnull @.str.9, i32 noundef %call16) #7
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %do.end
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %do.end33 ], [ -7, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_cls_break_lock(ptr noundef %osdc, ptr noundef %oid, ptr noundef %oloc, ptr noundef %lock_name, ptr noundef %cookie, ptr nocapture noundef readonly %locker) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %lock_name) #10
  %call1 = tail call i32 @strlen(ptr noundef %cookie) #10
  %add = add i32 %call, 4
  %add2 = add i32 %add, %call1
  %add5 = add i32 %add2, 13
  %add6 = add i32 %add2, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add6)
  %cmp = icmp ugt i32 %add6, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3072, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #7
  %add.ptr = getelementptr i8, ptr %call10, i32 %add6
  %0 = ptrtoint ptr %call10 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %call10, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %call10, i32 1
  %1 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %incdec.ptr.i.i, align 1
  %incdec.ptr.i1.i = getelementptr i8, ptr %call10, i32 2
  %2 = tail call i32 @llvm.bswap.i32(i32 %add5) #7
  %3 = ptrtoint ptr %incdec.ptr.i1.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %incdec.ptr.i1.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call10, i32 10
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %call
  %cmp.i = icmp ugt ptr %add.ptr1.i, %add.ptr
  br i1 %cmp.i, label %do.body3.i, label %do.end6.i, !prof !95

do.body3.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ceph/decode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end6.i:                                        ; preds = %if.end9
  %add.ptr.i.i = getelementptr i8, ptr %call10, i32 6
  %4 = tail call i32 @llvm.bswap.i32(i32 %call) #7
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not.i = icmp eq i32 %call, 0
  br i1 %tobool7.not.i, label %do.end6.i.ceph_encode_string.exit_crit_edge, label %if.then8.i

do.end6.i.ceph_encode_string.exit_crit_edge:      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_encode_string.exit

if.then8.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = call ptr @memcpy(ptr %add.ptr.i, ptr %lock_name, i32 %call)
  br label %ceph_encode_string.exit

ceph_encode_string.exit:                          ; preds = %if.then8.i, %do.end6.i.ceph_encode_string.exit_crit_edge
  %7 = call ptr @memcpy(ptr %add.ptr1.i, ptr %locker, i32 9)
  %add.ptr.i63 = getelementptr i8, ptr %add.ptr1.i, i32 9
  %add.ptr.i64 = getelementptr i8, ptr %add.ptr.i63, i32 4
  %add.ptr1.i65 = getelementptr i8, ptr %add.ptr.i64, i32 %call1
  %cmp.i66 = icmp ugt ptr %add.ptr1.i65, %add.ptr
  br i1 %cmp.i66, label %do.body3.i67, label %do.end6.i70, !prof !95

do.body3.i67:                                     ; preds = %ceph_encode_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ceph/decode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end6.i70:                                      ; preds = %ceph_encode_string.exit
  %8 = tail call i32 @llvm.bswap.i32(i32 %call1) #7
  %9 = ptrtoint ptr %add.ptr.i63 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %add.ptr.i63, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool7.not.i69 = icmp eq i32 %call1, 0
  br i1 %tobool7.not.i69, label %do.end6.i70.ceph_encode_string.exit73_crit_edge, label %if.then8.i71

do.end6.i70.ceph_encode_string.exit73_crit_edge:  ; preds = %do.end6.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_encode_string.exit73

if.then8.i71:                                     ; preds = %do.end6.i70
  call void @__sanitizer_cov_trace_pc() #9
  %10 = call ptr @memcpy(ptr %add.ptr.i64, ptr %cookie, i32 %call1)
  br label %ceph_encode_string.exit73

ceph_encode_string.exit73:                        ; preds = %if.then8.i71, %do.end6.i70.ceph_encode_string.exit73_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_cls_break_lock.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_cls_break_lock, %if.then15)) #7
          to label %do.end [label %if.then15], !srcloc !97

if.then15:                                        ; preds = %ceph_encode_string.exit73
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %locker to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %locker, align 1
  %conv = zext i8 %12 to i32
  %call17 = tail call ptr @ceph_entity_type_name(i32 noundef %conv) #7
  %num = getelementptr inbounds %struct.ceph_entity_name, ptr %locker, i32 0, i32 1
  %13 = ptrtoint ptr %num to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %num, align 1
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_cls_break_lock.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([27 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 179, ptr noundef nonnull @.str.13, ptr noundef %lock_name, ptr noundef %cookie, ptr noundef %call17, i64 noundef %15) #7
  br label %do.end

do.end:                                           ; preds = %if.then15, %ceph_encode_string.exit73
  %call19 = tail call i32 @ceph_osdc_call(ptr noundef %osdc, ptr noundef %oid, ptr noundef %oloc, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.16, i32 noundef 32, ptr noundef nonnull %call38.i.i.i, i32 noundef %add6, ptr noundef null, ptr noundef null) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_cls_break_lock.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_cls_break_lock, %if.then32)) #7
          to label %do.end36 [label %if.then32], !srcloc !97

if.then32:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_cls_break_lock.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([27 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 184, ptr noundef nonnull @.str.13, i32 noundef %call19) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.end
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %do.end36 ], [ -7, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_entity_type_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_cls_set_cookie(ptr noundef %osdc, ptr noundef %oid, ptr noundef %oloc, ptr noundef %lock_name, i8 noundef zeroext %type, ptr noundef %old_cookie, ptr noundef %tag, ptr noundef %new_cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %lock_name) #10
  %call1 = tail call i32 @strlen(ptr noundef %old_cookie) #10
  %call2 = tail call i32 @strlen(ptr noundef %tag) #10
  %call3 = tail call i32 @strlen(ptr noundef %new_cookie) #10
  %add5 = add i32 %call, 12
  %add6 = add i32 %add5, %call1
  %add7 = add i32 %add6, %call2
  %add8 = add i32 %add7, %call3
  %add10 = add i32 %add8, 5
  %add11 = add i32 %add8, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add11)
  %cmp = icmp ugt i32 %add11, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3072, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call15 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #7
  %add.ptr = getelementptr i8, ptr %call15, i32 %add11
  %0 = ptrtoint ptr %call15 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %call15, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %call15, i32 1
  %1 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %incdec.ptr.i.i, align 1
  %incdec.ptr.i1.i = getelementptr i8, ptr %call15, i32 2
  %2 = tail call i32 @llvm.bswap.i32(i32 %add10) #7
  %3 = ptrtoint ptr %incdec.ptr.i1.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %2, ptr %incdec.ptr.i1.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call15, i32 10
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %call
  %cmp.i = icmp ugt ptr %add.ptr1.i, %add.ptr
  br i1 %cmp.i, label %do.body3.i, label %do.end6.i, !prof !95

do.body3.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ceph/decode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end6.i:                                        ; preds = %if.end14
  %add.ptr.i.i = getelementptr i8, ptr %call15, i32 6
  %4 = tail call i32 @llvm.bswap.i32(i32 %call) #7
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not.i = icmp eq i32 %call, 0
  br i1 %tobool7.not.i, label %do.end6.i.ceph_encode_string.exit_crit_edge, label %if.then8.i

do.end6.i.ceph_encode_string.exit_crit_edge:      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_encode_string.exit

if.then8.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = call ptr @memcpy(ptr %add.ptr.i, ptr %lock_name, i32 %call)
  br label %ceph_encode_string.exit

ceph_encode_string.exit:                          ; preds = %if.then8.i, %do.end6.i.ceph_encode_string.exit_crit_edge
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %type, ptr %add.ptr1.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr1.i, i32 1
  %add.ptr.i76 = getelementptr i8, ptr %incdec.ptr.i, i32 4
  %add.ptr1.i77 = getelementptr i8, ptr %add.ptr.i76, i32 %call1
  %cmp.i78 = icmp ugt ptr %add.ptr1.i77, %add.ptr
  br i1 %cmp.i78, label %do.body3.i79, label %do.end6.i82, !prof !95

do.body3.i79:                                     ; preds = %ceph_encode_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ceph/decode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end6.i82:                                      ; preds = %ceph_encode_string.exit
  %8 = tail call i32 @llvm.bswap.i32(i32 %call1) #7
  %9 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool7.not.i81 = icmp eq i32 %call1, 0
  br i1 %tobool7.not.i81, label %do.end6.i82.ceph_encode_string.exit85_crit_edge, label %if.then8.i83

do.end6.i82.ceph_encode_string.exit85_crit_edge:  ; preds = %do.end6.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_encode_string.exit85

if.then8.i83:                                     ; preds = %do.end6.i82
  call void @__sanitizer_cov_trace_pc() #9
  %10 = call ptr @memcpy(ptr %add.ptr.i76, ptr %old_cookie, i32 %call1)
  br label %ceph_encode_string.exit85

ceph_encode_string.exit85:                        ; preds = %if.then8.i83, %do.end6.i82.ceph_encode_string.exit85_crit_edge
  %add.ptr.i86 = getelementptr i8, ptr %add.ptr1.i77, i32 4
  %add.ptr1.i87 = getelementptr i8, ptr %add.ptr.i86, i32 %call2
  %cmp.i88 = icmp ugt ptr %add.ptr1.i87, %add.ptr
  br i1 %cmp.i88, label %do.body3.i89, label %do.end6.i92, !prof !95

do.body3.i89:                                     ; preds = %ceph_encode_string.exit85
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ceph/decode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end6.i92:                                      ; preds = %ceph_encode_string.exit85
  %11 = tail call i32 @llvm.bswap.i32(i32 %call2) #7
  %12 = ptrtoint ptr %add.ptr1.i77 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %add.ptr1.i77, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool7.not.i91 = icmp eq i32 %call2, 0
  br i1 %tobool7.not.i91, label %do.end6.i92.ceph_encode_string.exit95_crit_edge, label %if.then8.i93

do.end6.i92.ceph_encode_string.exit95_crit_edge:  ; preds = %do.end6.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_encode_string.exit95

if.then8.i93:                                     ; preds = %do.end6.i92
  call void @__sanitizer_cov_trace_pc() #9
  %13 = call ptr @memcpy(ptr %add.ptr.i86, ptr %tag, i32 %call2)
  br label %ceph_encode_string.exit95

ceph_encode_string.exit95:                        ; preds = %if.then8.i93, %do.end6.i92.ceph_encode_string.exit95_crit_edge
  %add.ptr.i96 = getelementptr i8, ptr %add.ptr1.i87, i32 4
  %add.ptr1.i97 = getelementptr i8, ptr %add.ptr.i96, i32 %call3
  %cmp.i98 = icmp ugt ptr %add.ptr1.i97, %add.ptr
  br i1 %cmp.i98, label %do.body3.i99, label %do.end6.i102, !prof !95

do.body3.i99:                                     ; preds = %ceph_encode_string.exit95
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ceph/decode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end6.i102:                                     ; preds = %ceph_encode_string.exit95
  %14 = tail call i32 @llvm.bswap.i32(i32 %call3) #7
  %15 = ptrtoint ptr %add.ptr1.i87 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %add.ptr1.i87, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool7.not.i101 = icmp eq i32 %call3, 0
  br i1 %tobool7.not.i101, label %do.end6.i102.ceph_encode_string.exit105_crit_edge, label %if.then8.i103

do.end6.i102.ceph_encode_string.exit105_crit_edge: ; preds = %do.end6.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_encode_string.exit105

if.then8.i103:                                    ; preds = %do.end6.i102
  call void @__sanitizer_cov_trace_pc() #9
  %16 = call ptr @memcpy(ptr %add.ptr.i96, ptr %new_cookie, i32 %call3)
  br label %ceph_encode_string.exit105

ceph_encode_string.exit105:                       ; preds = %if.then8.i103, %do.end6.i102.ceph_encode_string.exit105_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_cls_set_cookie.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_cls_set_cookie, %if.then20)) #7
          to label %do.end [label %if.then20], !srcloc !97

if.then20:                                        ; preds = %ceph_encode_string.exit105
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %type to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_cls_set_cookie.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.19, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([27 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 230, ptr noundef nonnull @.str.17, ptr noundef %lock_name, i32 noundef %conv, ptr noundef %old_cookie, ptr noundef %tag, ptr noundef %new_cookie) #7
  br label %do.end

do.end:                                           ; preds = %if.then20, %ceph_encode_string.exit105
  %call23 = tail call i32 @ceph_osdc_call(ptr noundef %osdc, ptr noundef %oid, ptr noundef %oloc, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, i32 noundef 32, ptr noundef nonnull %call38.i.i.i, i32 noundef %add11, ptr noundef null, ptr noundef null) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_cls_set_cookie.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_cls_set_cookie, %if.then36)) #7
          to label %do.end40 [label %if.then36], !srcloc !97

if.then36:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_cls_set_cookie.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([27 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 235, ptr noundef nonnull @.str.17, i32 noundef %call23) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %do.end
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %do.end40 ], [ -7, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_free_lockers(ptr noundef %lockers, i32 noundef %num_lockers) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_lockers)
  %cmp4.not = icmp eq i32 %num_lockers, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %cookie = getelementptr %struct.ceph_locker, ptr %lockers, i32 %i.05, i32 0, i32 1
  %0 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cookie, align 4
  tail call void @kfree(ptr noundef %1) #7
  %inc = add nuw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %num_lockers
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %lockers) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_cls_lock_info(ptr noundef %osdc, ptr noundef %oid, ptr noundef %oloc, ptr noundef %lock_name, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %tag, ptr nocapture noundef %lockers, ptr nocapture noundef %num_lockers) #0 align 64 {
entry:
  %reply_page = alloca ptr, align 4
  %reply_len = alloca i32, align 4
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %lock_name) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reply_page) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reply_len) #7
  %0 = ptrtoint ptr %reply_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4096, ptr %reply_len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #7
  %add = add i32 %call, 4
  %add1 = add i32 %call, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add1)
  %cmp = icmp ugt i32 %add1, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3072, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call38.i.i.i64 = tail call ptr @__alloc_pages(i32 noundef 3072, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %1 = ptrtoint ptr %reply_page to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call38.i.i.i64, ptr %reply_page, align 4
  %tobool6.not = icmp eq ptr %call38.i.i.i64, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #7
  %2 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %call9, i32 %add1
  %3 = ptrtoint ptr %call9 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %call9, align 1
  %4 = load ptr, ptr %p, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %4, i32 1
  store ptr %incdec.ptr.i.i, ptr %p, align 4
  %5 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %incdec.ptr.i.i, align 1
  %6 = load ptr, ptr %p, align 4
  %incdec.ptr.i1.i = getelementptr i8, ptr %6, i32 1
  store ptr %incdec.ptr.i1.i, ptr %p, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %add) #7
  %8 = ptrtoint ptr %incdec.ptr.i1.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %incdec.ptr.i1.i, align 1
  %9 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  store ptr %add.ptr.i.i, ptr %p, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %call
  %cmp.i = icmp ugt ptr %add.ptr1.i, %add.ptr
  br i1 %cmp.i, label %do.body3.i, label %do.end6.i, !prof !95

do.body3.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ceph/decode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end6.i:                                        ; preds = %if.end8
  %11 = tail call i32 @llvm.bswap.i32(i32 %call) #7
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %add.ptr.i.i, align 1
  %13 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %14, i32 4
  store ptr %add.ptr.i.i65, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not.i = icmp eq i32 %call, 0
  br i1 %tobool7.not.i, label %do.end6.i.ceph_encode_string.exit_crit_edge, label %if.then8.i

do.end6.i.ceph_encode_string.exit_crit_edge:      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_encode_string.exit

if.then8.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = call ptr @memcpy(ptr %add.ptr.i.i65, ptr %lock_name, i32 %call)
  br label %ceph_encode_string.exit

ceph_encode_string.exit:                          ; preds = %if.then8.i, %do.end6.i.ceph_encode_string.exit_crit_edge
  %16 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p, align 4
  %add.ptr10.i = getelementptr i8, ptr %17, i32 %call
  store ptr %add.ptr10.i, ptr %p, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_cls_lock_info.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_cls_lock_info, %if.then14)) #7
          to label %do.end [label %if.then14], !srcloc !97

if.then14:                                        ; preds = %ceph_encode_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_cls_lock_info.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([27 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 370, ptr noundef nonnull @.str.21, ptr noundef %lock_name) #7
  br label %do.end

do.end:                                           ; preds = %if.then14, %ceph_encode_string.exit
  %call17 = call i32 @ceph_osdc_call(ptr noundef %osdc, ptr noundef %oid, ptr noundef %oloc, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.24, i32 noundef 16, ptr noundef nonnull %call38.i.i.i, i32 noundef %add1, ptr noundef nonnull %reply_page, ptr noundef nonnull %reply_len) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_cls_lock_info.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_cls_lock_info, %if.then30)) #7
          to label %do.end34 [label %if.then30], !srcloc !97

if.then30:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_cls_lock_info.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([27 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 375, ptr noundef nonnull @.str.21, i32 noundef %call17) #7
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17)
  %cmp35 = icmp sgt i32 %call17, -1
  br i1 %cmp35, label %if.then36, label %do.end34.if.end40_crit_edge

do.end34.if.end40_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then36:                                        ; preds = %do.end34
  %18 = ptrtoint ptr %reply_page to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reply_page, align 4
  %call37 = call ptr @page_address(ptr noundef %19) #7
  %20 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call37, ptr %p, align 4
  %21 = ptrtoint ptr %reply_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reply_len, align 4
  %add.ptr38 = getelementptr i8, ptr %call37, i32 %22
  %cmp.not.i.i.i = icmp ule ptr %call37, %add.ptr38
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr38 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %cmp1.i.i.i = icmp ugt i32 %22, 5
  %23 = and i1 %cmp1.i.i.i, %cmp.not.i.i.i
  br i1 %23, label %do.end.i.i, label %if.then36.if.end40_crit_edge, !prof !98

if.then36.if.end40_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

do.end.i.i:                                       ; preds = %if.then36
  %24 = ptrtoint ptr %call37 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %call37, align 1
  %incdec.ptr.i.i.i = getelementptr i8, ptr %call37, i32 1
  %26 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %incdec.ptr.i.i.i, ptr %p, align 4
  %27 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr.i.i.i, align 1
  %incdec.ptr.i1.i.i = getelementptr i8, ptr %call37, i32 2
  store ptr %incdec.ptr.i1.i.i, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp.i.i = icmp ugt i8 %28, 1
  br i1 %cmp.i.i, label %do.end9.i.i, label %if.end14.i.i

do.end9.i.i:                                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i.i = zext i8 %28 to i32
  %conv10.i.i = zext i8 %25 to i32
  %call13.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv10.i.i, i32 noundef %conv4.i.i, i32 noundef 1, ptr noundef nonnull @.str.27) #11
  br label %if.end40

if.end14.i.i:                                     ; preds = %do.end.i.i
  %29 = ptrtoint ptr %incdec.ptr.i1.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %incdec.ptr.i1.i.i, align 1
  %31 = call i32 @llvm.bswap.i32(i32 %30) #7
  %add.ptr.i.i.i = getelementptr i8, ptr %call37, i32 6
  %32 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i.i.i, ptr %p, align 4
  %cmp.not.i2.i.i = icmp ule ptr %add.ptr.i.i.i, %add.ptr38
  %gepdiff = add i32 %22, -6
  call void @__sanitizer_cov_trace_cmp4(i32 %gepdiff, i32 %31)
  %cmp1.i6.i.i = icmp uge i32 %gepdiff, %31
  %33 = select i1 %cmp.not.i2.i.i, i1 %cmp1.i6.i.i, i1 false
  br i1 %33, label %if.end.i, label %if.end14.i.i.if.end40_crit_edge, !prof !98

if.end14.i.i.if.end40_crit_edge:                  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end.i:                                         ; preds = %if.end14.i.i
  %34 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %add.ptr.i.i.i, align 1
  %36 = call i32 @llvm.bswap.i32(i32 %35) #7
  %add.ptr.i.i66 = getelementptr i8, ptr %call37, i32 10
  %37 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i.i66, ptr %p, align 4
  %38 = ptrtoint ptr %num_lockers to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %num_lockers, align 4
  %39 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %36, i32 152) #7
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !95

kcalloc.exit.thread.i:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %lockers to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %lockers, align 4
  br label %if.end40

if.end7.i.i.i:                                    ; preds = %if.end.i
  %42 = extractvalue { i32, i1 } %39, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %42, i32 noundef 3328) #12
  %43 = ptrtoint ptr %lockers to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call8.i.i.i, ptr %lockers, align 4
  %tobool3.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool3.not.i, label %if.end7.i.i.i.if.end40_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.if.end40_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %44 = ptrtoint ptr %num_lockers to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_lockers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp60.not.i = icmp eq i32 %45, 0
  br i1 %cmp60.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.061.i, 1
  %46 = ptrtoint ptr %num_lockers to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_lockers, align 4
  %cmp.i67 = icmp ult i32 %inc.i, %47
  br i1 %cmp.i67, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.061.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %48 = ptrtoint ptr %lockers to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lockers, align 4
  %add.ptr.i68 = getelementptr %struct.ceph_locker, ptr %49, i32 %i.061.i
  %call6.i = call fastcc i32 @decode_locker(ptr noundef nonnull %p, ptr noundef %add.ptr38, ptr noundef %add.ptr.i68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i69 = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i69, label %for.cond.i, label %for.body.i.err_free_lockers.i_crit_edge

for.body.i.err_free_lockers.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_lockers.i

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %50 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %p, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  %incdec.ptr.i.i70 = getelementptr i8, ptr %51, i32 1
  store ptr %incdec.ptr.i.i70, ptr %p, align 4
  %54 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %type, align 1
  %cmp.not.i.i39.i = icmp ule ptr %incdec.ptr.i.i70, %add.ptr38
  %sub.ptr.rhs.cast.i.i41.i = ptrtoint ptr %incdec.ptr.i.i70 to i32
  %sub.ptr.sub.i.i42.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i.i42.i)
  %cmp1.i.i43.i = icmp ugt i32 %sub.ptr.sub.i.i42.i, 3
  %55 = select i1 %cmp.not.i.i39.i, i1 %cmp1.i.i43.i, i1 false
  br i1 %55, label %do.end.i45.i, label %for.end.i.if.then13.i_crit_edge, !prof !98

for.end.i.if.then13.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i

do.end.i45.i:                                     ; preds = %for.end.i
  %56 = ptrtoint ptr %incdec.ptr.i.i70 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %incdec.ptr.i.i70, align 1
  %58 = call i32 @llvm.bswap.i32(i32 %57) #7
  %add.ptr.i.i44.i = getelementptr i8, ptr %51, i32 5
  %cmp.not.i1.i.i = icmp ule ptr %add.ptr.i.i44.i, %add.ptr38
  %sub.ptr.rhs.cast.i3.i.i = ptrtoint ptr %add.ptr.i.i44.i to i32
  %sub.ptr.sub.i4.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i4.i.i, i32 %58)
  %cmp1.i5.i.i = icmp uge i32 %sub.ptr.sub.i4.i.i, %58
  %59 = select i1 %cmp.not.i1.i.i, i1 %cmp1.i5.i.i, i1 false
  br i1 %59, label %if.end8.i.i.i, label %do.end.i45.i.if.then13.i_crit_edge

do.end.i45.i.if.then13.i_crit_edge:               ; preds = %do.end.i45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i

if.end8.i.i.i:                                    ; preds = %do.end.i45.i
  %add.i.i = add i32 %58, 1
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3072) #12
  %tobool10.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool10.not.i.i, label %if.end8.i.i.i.if.then13.i_crit_edge, label %if.end13.i.i

if.end8.i.i.i.if.then13.i_crit_edge:              ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i

if.end13.i.i:                                     ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool14.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool14.not.i.i, label %if.end13.i.i.ceph_extract_encoded_string.exit.i_crit_edge, label %if.then15.i.i

if.end13.i.i.ceph_extract_encoded_string.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_extract_encoded_string.exit.i

if.then15.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = call ptr @memcpy(ptr %call9.i.i.i, ptr %add.ptr.i.i44.i, i32 %58)
  br label %ceph_extract_encoded_string.exit.i

ceph_extract_encoded_string.exit.i:               ; preds = %if.then15.i.i, %if.end13.i.i.ceph_extract_encoded_string.exit.i_crit_edge
  %arrayidx.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %58
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx.i.i, align 1
  %62 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %p, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %63, i32 4
  %add.ptr17.i.i = getelementptr i8, ptr %add.ptr.i50.i, i32 %58
  store ptr %add.ptr17.i.i, ptr %p, align 4
  %cmp.i52.i = icmp ugt ptr %call9.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52.i, label %ceph_extract_encoded_string.exit.i.if.then13.i_crit_edge, label %if.end15.i

ceph_extract_encoded_string.exit.i.if.then13.i_crit_edge: ; preds = %ceph_extract_encoded_string.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i

if.then13.i:                                      ; preds = %ceph_extract_encoded_string.exit.i.if.then13.i_crit_edge, %if.end8.i.i.i.if.then13.i_crit_edge, %do.end.i45.i.if.then13.i_crit_edge, %for.end.i.if.then13.i_crit_edge
  %retval.0.i5159.i = phi ptr [ %call9.i.i.i, %ceph_extract_encoded_string.exit.i.if.then13.i_crit_edge ], [ inttoptr (i32 -34 to ptr), %for.end.i.if.then13.i_crit_edge ], [ inttoptr (i32 -34 to ptr), %do.end.i45.i.if.then13.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i.if.then13.i_crit_edge ]
  %64 = ptrtoint ptr %retval.0.i5159.i to i32
  br label %err_free_lockers.i

if.end15.i:                                       ; preds = %ceph_extract_encoded_string.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call9.i.i.i, ptr %tag, align 4
  br label %if.end40

err_free_lockers.i:                               ; preds = %if.then13.i, %for.body.i.err_free_lockers.i_crit_edge
  %ret.0.i = phi i32 [ %64, %if.then13.i ], [ %call6.i, %for.body.i.err_free_lockers.i_crit_edge ]
  %66 = ptrtoint ptr %lockers to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lockers, align 4
  %68 = ptrtoint ptr %num_lockers to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_lockers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp4.not.i.i = icmp eq i32 %69, 0
  br i1 %cmp4.not.i.i, label %err_free_lockers.i.ceph_free_lockers.exit.i_crit_edge, label %err_free_lockers.i.for.body.i.i_crit_edge

err_free_lockers.i.for.body.i.i_crit_edge:        ; preds = %err_free_lockers.i
  br label %for.body.i.i

err_free_lockers.i.ceph_free_lockers.exit.i_crit_edge: ; preds = %err_free_lockers.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_free_lockers.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %err_free_lockers.i.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %err_free_lockers.i.for.body.i.i_crit_edge ]
  %cookie.i.i = getelementptr %struct.ceph_locker, ptr %67, i32 %i.05.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cookie.i.i, align 4
  call void @kfree(ptr noundef %71) #7
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %69
  br i1 %exitcond.not.i.i, label %for.body.i.i.ceph_free_lockers.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.ceph_free_lockers.exit.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_free_lockers.exit.i

ceph_free_lockers.exit.i:                         ; preds = %for.body.i.i.ceph_free_lockers.exit.i_crit_edge, %err_free_lockers.i.ceph_free_lockers.exit.i_crit_edge
  call void @kfree(ptr noundef %67) #7
  br label %if.end40

if.end40:                                         ; preds = %ceph_free_lockers.exit.i, %if.end15.i, %if.end7.i.i.i.if.end40_crit_edge, %kcalloc.exit.thread.i, %if.end14.i.i.if.end40_crit_edge, %do.end9.i.i, %if.then36.if.end40_crit_edge, %do.end34.if.end40_crit_edge
  %ret.0 = phi i32 [ %call17, %do.end34.if.end40_crit_edge ], [ %ret.0.i, %ceph_free_lockers.exit.i ], [ 0, %if.end15.i ], [ -12, %if.end7.i.i.i.if.end40_crit_edge ], [ -12, %kcalloc.exit.thread.i ], [ -22, %do.end9.i.i ], [ -34, %if.end14.i.i.if.end40_crit_edge ], [ -34, %if.then36.if.end40_crit_edge ]
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #7
  %72 = ptrtoint ptr %reply_page to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reply_page, align 4
  call void @__free_pages(ptr noundef %73, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end40 ], [ -12, %if.then7 ], [ -7, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reply_len) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reply_page) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_cls_assert_locked(ptr noundef %req, i32 noundef %which, ptr nocapture noundef readonly %lock_name, i8 noundef zeroext %type, ptr nocapture noundef readonly %cookie, ptr nocapture noundef readonly %tag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %lock_name) #10
  %call1 = tail call i32 @strlen(ptr noundef %cookie) #10
  %call2 = tail call i32 @strlen(ptr noundef %tag) #10
  %add3 = add i32 %call, 8
  %add4 = add i32 %add3, %call1
  %add5 = add i32 %add4, %call2
  %add7 = add i32 %add5, 5
  %add8 = add i32 %add5, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add8)
  %cmp = icmp ugt i32 %add8, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call9 = tail call i32 @osd_req_op_cls_init(ptr noundef %req, i32 noundef %which, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call ptr @ceph_alloc_page_vector(i32 noundef 1, i32 noundef 3072) #7
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %1 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call12, align 4
  %call17 = tail call ptr @page_address(ptr noundef %2) #7
  %add.ptr = getelementptr i8, ptr %call17, i32 %add8
  %3 = ptrtoint ptr %call17 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %call17, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %call17, i32 1
  %4 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %incdec.ptr.i.i, align 1
  %incdec.ptr.i1.i = getelementptr i8, ptr %call17, i32 2
  %5 = tail call i32 @llvm.bswap.i32(i32 %add7) #7
  %6 = ptrtoint ptr %incdec.ptr.i1.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %incdec.ptr.i1.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call17, i32 10
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %call
  %cmp.i66 = icmp ugt ptr %add.ptr1.i, %add.ptr
  br i1 %cmp.i66, label %do.body3.i, label %do.end6.i, !prof !95

do.body3.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ceph/decode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end6.i:                                        ; preds = %if.end16
  %add.ptr.i.i = getelementptr i8, ptr %call17, i32 6
  %7 = tail call i32 @llvm.bswap.i32(i32 %call) #7
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not.i = icmp eq i32 %call, 0
  br i1 %tobool7.not.i, label %do.end6.i.ceph_encode_string.exit_crit_edge, label %if.then8.i

do.end6.i.ceph_encode_string.exit_crit_edge:      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_encode_string.exit

if.then8.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = call ptr @memcpy(ptr %add.ptr.i, ptr %lock_name, i32 %call)
  br label %ceph_encode_string.exit

ceph_encode_string.exit:                          ; preds = %if.then8.i, %do.end6.i.ceph_encode_string.exit_crit_edge
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %type, ptr %add.ptr1.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr1.i, i32 1
  %add.ptr.i68 = getelementptr i8, ptr %incdec.ptr.i, i32 4
  %add.ptr1.i69 = getelementptr i8, ptr %add.ptr.i68, i32 %call1
  %cmp.i70 = icmp ugt ptr %add.ptr1.i69, %add.ptr
  br i1 %cmp.i70, label %do.body3.i71, label %do.end6.i74, !prof !95

do.body3.i71:                                     ; preds = %ceph_encode_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ceph/decode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end6.i74:                                      ; preds = %ceph_encode_string.exit
  %11 = tail call i32 @llvm.bswap.i32(i32 %call1) #7
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool7.not.i73 = icmp eq i32 %call1, 0
  br i1 %tobool7.not.i73, label %do.end6.i74.ceph_encode_string.exit77_crit_edge, label %if.then8.i75

do.end6.i74.ceph_encode_string.exit77_crit_edge:  ; preds = %do.end6.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_encode_string.exit77

if.then8.i75:                                     ; preds = %do.end6.i74
  call void @__sanitizer_cov_trace_pc() #9
  %13 = call ptr @memcpy(ptr %add.ptr.i68, ptr %cookie, i32 %call1)
  br label %ceph_encode_string.exit77

ceph_encode_string.exit77:                        ; preds = %if.then8.i75, %do.end6.i74.ceph_encode_string.exit77_crit_edge
  %add.ptr.i78 = getelementptr i8, ptr %add.ptr1.i69, i32 4
  %add.ptr1.i79 = getelementptr i8, ptr %add.ptr.i78, i32 %call2
  %cmp.i80 = icmp ugt ptr %add.ptr1.i79, %add.ptr
  br i1 %cmp.i80, label %do.body3.i81, label %do.end6.i84, !prof !95

do.body3.i81:                                     ; preds = %ceph_encode_string.exit77
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/ceph/decode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #7, !srcloc !96
  unreachable

do.end6.i84:                                      ; preds = %ceph_encode_string.exit77
  %14 = tail call i32 @llvm.bswap.i32(i32 %call2) #7
  %15 = ptrtoint ptr %add.ptr1.i69 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %add.ptr1.i69, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool7.not.i83 = icmp eq i32 %call2, 0
  br i1 %tobool7.not.i83, label %do.end6.i84.ceph_encode_string.exit87_crit_edge, label %if.then8.i85

do.end6.i84.ceph_encode_string.exit87_crit_edge:  ; preds = %do.end6.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_encode_string.exit87

if.then8.i85:                                     ; preds = %do.end6.i84
  call void @__sanitizer_cov_trace_pc() #9
  %16 = call ptr @memcpy(ptr %add.ptr.i78, ptr %tag, i32 %call2)
  br label %ceph_encode_string.exit87

ceph_encode_string.exit87:                        ; preds = %if.then8.i85, %do.end6.i84.ceph_encode_string.exit87_crit_edge
  %cmp18.not = icmp eq ptr %add.ptr1.i79, %add.ptr
  br i1 %cmp18.not, label %ceph_encode_string.exit87.if.end33_crit_edge, label %do.end, !prof !98

ceph_encode_string.exit87.if.end33_crit_edge:     ; preds = %ceph_encode_string.exit87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.end:                                           ; preds = %ceph_encode_string.exit87
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 425, i32 noundef 9, ptr noundef null) #7
  br label %if.end33

if.end33:                                         ; preds = %do.end, %ceph_encode_string.exit87.if.end33_crit_edge
  %conv103 = zext i32 %add8 to i64
  tail call void @osd_req_op_cls_request_data_pages(ptr noundef %req, i32 noundef %which, ptr noundef %call12, i64 noundef %conv103, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then14 ], [ 0, %if.end33 ], [ -7, %entry.cleanup_crit_edge ], [ %call9, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @osd_req_op_cls_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_alloc_page_vector(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @osd_req_op_cls_request_data_pages(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decode_locker(ptr noundef %p, ptr noundef %end, ptr noundef %locker) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %cmp.not.i.i = icmp ule ptr %1, %end
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %end to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.ptr.sub.i.i)
  %cmp1.i.i = icmp ugt i32 %sub.ptr.sub.i.i, 5
  %2 = select i1 %cmp.not.i.i, i1 %cmp1.i.i, i1 false
  br i1 %2, label %do.end.i, label %entry.cleanup_crit_edge, !prof !98

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %1, i32 1
  %5 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %incdec.ptr.i.i, ptr %p, align 4
  %6 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %incdec.ptr.i.i, align 1
  %incdec.ptr.i1.i = getelementptr i8, ptr %1, i32 2
  store ptr %incdec.ptr.i1.i, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i = icmp ugt i8 %7, 1
  br i1 %cmp.i, label %do.end9.i, label %if.end14.i

do.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i = zext i8 %7 to i32
  %conv10.i = zext i8 %4 to i32
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv10.i, i32 noundef %conv4.i, i32 noundef 1, ptr noundef nonnull @.str.31) #11
  br label %cleanup

if.end14.i:                                       ; preds = %do.end.i
  %8 = ptrtoint ptr %incdec.ptr.i1.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %incdec.ptr.i1.i, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 6
  %11 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i.i, ptr %p, align 4
  %cmp.not.i2.i = icmp ule ptr %add.ptr.i.i, %end
  %sub.ptr.rhs.cast.i4.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i5.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i5.i, i32 %10)
  %cmp1.i6.i = icmp uge i32 %sub.ptr.sub.i5.i, %10
  %12 = select i1 %cmp.not.i2.i, i1 %cmp1.i6.i, i1 false
  br i1 %12, label %if.end, label %if.end14.i.cleanup_crit_edge, !prof !98

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end14.i
  %13 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p, align 4
  %15 = call ptr @memcpy(ptr %locker, ptr %14, i32 9)
  %16 = load ptr, ptr %p, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 9
  store ptr %add.ptr.i, ptr %p, align 4
  %cmp.not.i.i61 = icmp ule ptr %add.ptr.i, %end
  %sub.ptr.rhs.cast.i.i63 = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i.i64 = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i.i64)
  %cmp1.i.i65 = icmp ugt i32 %sub.ptr.sub.i.i64, 3
  %17 = select i1 %cmp.not.i.i61, i1 %cmp1.i.i65, i1 false
  br i1 %17, label %do.end.i67, label %if.end.if.then3_crit_edge, !prof !98

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

do.end.i67:                                       ; preds = %if.end
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %add.ptr.i, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  %add.ptr.i.i66 = getelementptr i8, ptr %16, i32 13
  %cmp.not.i1.i = icmp ule ptr %add.ptr.i.i66, %end
  %sub.ptr.rhs.cast.i3.i = ptrtoint ptr %add.ptr.i.i66 to i32
  %sub.ptr.sub.i4.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i4.i, i32 %20)
  %cmp1.i5.i = icmp uge i32 %sub.ptr.sub.i4.i, %20
  %21 = select i1 %cmp.not.i1.i, i1 %cmp1.i5.i, i1 false
  br i1 %21, label %if.end8.i.i, label %do.end.i67.if.then3_crit_edge

do.end.i67.if.then3_crit_edge:                    ; preds = %do.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.end8.i.i:                                      ; preds = %do.end.i67
  %add.i = add i32 %20, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3072) #12
  %tobool10.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not.i, label %if.end8.i.i.if.then3_crit_edge, label %if.end13.i

if.end8.i.i.if.then3_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.end13.i:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool14.not.i = icmp eq i32 %19, 0
  br i1 %tobool14.not.i, label %if.end13.i.ceph_extract_encoded_string.exit_crit_edge, label %if.then15.i

if.end13.i.ceph_extract_encoded_string.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ceph_extract_encoded_string.exit

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = call ptr @memcpy(ptr %call9.i.i, ptr %add.ptr.i.i66, i32 %20)
  br label %ceph_extract_encoded_string.exit

ceph_extract_encoded_string.exit:                 ; preds = %if.then15.i, %if.end13.i.ceph_extract_encoded_string.exit_crit_edge
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %20
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx.i, align 1
  %24 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p, align 4
  %add.ptr.i68 = getelementptr i8, ptr %25, i32 4
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i68, i32 %20
  store ptr %add.ptr17.i, ptr %p, align 4
  %cmp.i70 = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %ceph_extract_encoded_string.exit.if.then3_crit_edge, label %if.end5

ceph_extract_encoded_string.exit.if.then3_crit_edge: ; preds = %ceph_extract_encoded_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %ceph_extract_encoded_string.exit.if.then3_crit_edge, %if.end8.i.i.if.then3_crit_edge, %do.end.i67.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i6999 = phi ptr [ %call9.i.i, %ceph_extract_encoded_string.exit.if.then3_crit_edge ], [ inttoptr (i32 -34 to ptr), %if.end.if.then3_crit_edge ], [ inttoptr (i32 -34 to ptr), %do.end.i67.if.then3_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.if.then3_crit_edge ]
  %26 = ptrtoint ptr %retval.0.i6999 to i32
  br label %cleanup

if.end5:                                          ; preds = %ceph_extract_encoded_string.exit
  %cookie = getelementptr inbounds %struct.ceph_locker_id, ptr %locker, i32 0, i32 1
  %27 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call9.i.i, ptr %cookie, align 4
  %28 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p, align 4
  %cmp.not.i.i71 = icmp ule ptr %29, %end
  %sub.ptr.rhs.cast.i.i73 = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i74 = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.ptr.sub.i.i74)
  %cmp1.i.i75 = icmp ugt i32 %sub.ptr.sub.i.i74, 5
  %30 = select i1 %cmp.not.i.i71, i1 %cmp1.i.i75, i1 false
  br i1 %30, label %do.end.i79, label %if.end5.cleanup_crit_edge, !prof !98

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.i79:                                       ; preds = %if.end5
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %29, align 1
  %incdec.ptr.i.i76 = getelementptr i8, ptr %29, i32 1
  %33 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %incdec.ptr.i.i76, ptr %p, align 4
  %34 = ptrtoint ptr %incdec.ptr.i.i76 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %incdec.ptr.i.i76, align 1
  %incdec.ptr.i1.i77 = getelementptr i8, ptr %29, i32 2
  store ptr %incdec.ptr.i1.i77, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp.i78 = icmp ugt i8 %35, 1
  br i1 %cmp.i78, label %do.end9.i83, label %if.end14.i89

do.end9.i83:                                      ; preds = %do.end.i79
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i80 = zext i8 %35 to i32
  %conv10.i81 = zext i8 %32 to i32
  %call13.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv10.i81, i32 noundef %conv4.i80, i32 noundef 1, ptr noundef nonnull @.str.32) #11
  br label %cleanup

if.end14.i89:                                     ; preds = %do.end.i79
  %36 = ptrtoint ptr %incdec.ptr.i1.i77 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %incdec.ptr.i1.i77, align 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  %add.ptr.i.i84 = getelementptr i8, ptr %29, i32 6
  %39 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr.i.i84, ptr %p, align 4
  %cmp.not.i2.i85 = icmp ule ptr %add.ptr.i.i84, %end
  %sub.ptr.rhs.cast.i4.i86 = ptrtoint ptr %add.ptr.i.i84 to i32
  %sub.ptr.sub.i5.i87 = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i4.i86
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i5.i87, i32 %38)
  %cmp1.i6.i88 = icmp uge i32 %sub.ptr.sub.i5.i87, %38
  %40 = select i1 %cmp.not.i2.i85, i1 %cmp1.i6.i88, i1 false
  br i1 %40, label %if.end10, label %if.end14.i89.cleanup_crit_edge, !prof !98

if.end14.i89.cleanup_crit_edge:                   ; preds = %if.end14.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end14.i89
  %41 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %42, i32 8
  store ptr %add.ptr, ptr %p, align 4
  %info = getelementptr inbounds %struct.ceph_locker, ptr %locker, i32 0, i32 1
  %call11 = tail call i32 @ceph_decode_entity_addr(ptr noundef %p, ptr noundef %end, ptr noundef %info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %p, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %44, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #7
  %add.ptr.i93 = getelementptr i8, ptr %44, i32 4
  %add.ptr16 = getelementptr i8, ptr %add.ptr.i93, i32 %47
  %48 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr16, ptr %p, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decode_locker.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decode_locker, %if.then21)) #7
          to label %cleanup [label %if.then21], !srcloc !97

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %locker to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %locker, align 4
  %conv = zext i8 %50 to i32
  %call25 = tail call ptr @ceph_entity_type_name(i32 noundef %conv) #7
  %num = getelementptr inbounds %struct.ceph_entity_name, ptr %locker, i32 0, i32 1
  %51 = ptrtoint ptr %num to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %num, align 1
  %53 = tail call i64 @llvm.bswap.i64(i64 %52)
  %54 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cookie, align 4
  %call32 = tail call ptr @ceph_pr_addr(ptr noundef %info) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decode_locker.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.35, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([27 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 284, ptr noundef nonnull @.str.33, ptr noundef %call25, i64 noundef %53, ptr noundef %55, ptr noundef %call32) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end14, %if.end10.cleanup_crit_edge, %if.end14.i89.cleanup_crit_edge, %do.end9.i83, %if.end5.cleanup_crit_edge, %if.then3, %if.end14.i.cleanup_crit_edge, %do.end9.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.then3 ], [ %call11, %if.end10.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.end14 ], [ -22, %do.end9.i ], [ -34, %if.end14.i.cleanup_crit_edge ], [ -34, %entry.cleanup_crit_edge ], [ -22, %do.end9.i83 ], [ -34, %if.end14.i89.cleanup_crit_edge ], [ -34, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_decode_entity_addr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_pr_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !18, !19, !20, !21, !23, !25, !27, !29, !30, !31, !32, !34, !36, !38, !40, !41, !42, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !76, !78, !80, !82, !83, !84}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ceph/cls_lock_client.c", i32 73, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ceph_cls_lock.__UNIQUE_ID_ddebug308, !1, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ceph/cls_lock_client.c", i32 75, i32 40}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ceph/cls_lock_client.c", i32 79, i32 2}
!12 = !{ptr @ceph_cls_lock.__UNIQUE_ID_ddebug309, !11, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__ksymtab_ceph_cls_lock, !15, !"__ksymtab_ceph_cls_lock", i1 false, i1 false}
!15 = !{!"../net/ceph/cls_lock_client.c", i32 83, i32 1}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/ceph/cls_lock_client.c", i32 124, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ceph_cls_unlock.__UNIQUE_ID_ddebug310, !17, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!20 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/ceph/cls_lock_client.c", i32 125, i32 48}
!23 = !{ptr @ceph_cls_unlock.__UNIQUE_ID_ddebug311, !24, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!24 = !{!"../net/ceph/cls_lock_client.c", i32 129, i32 2}
!25 = !{ptr @__ksymtab_ceph_cls_unlock, !26, !"__ksymtab_ceph_cls_unlock", i1 false, i1 false}
!26 = !{!"../net/ceph/cls_lock_client.c", i32 133, i32 1}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/ceph/cls_lock_client.c", i32 178, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ceph_cls_break_lock.__UNIQUE_ID_ddebug312, !28, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!31 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/ceph/cls_lock_client.c", i32 180, i32 48}
!34 = !{ptr @ceph_cls_break_lock.__UNIQUE_ID_ddebug313, !35, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!35 = !{!"../net/ceph/cls_lock_client.c", i32 184, i32 2}
!36 = !{ptr @__ksymtab_ceph_cls_break_lock, !37, !"__ksymtab_ceph_cls_break_lock", i1 false, i1 false}
!37 = !{!"../net/ceph/cls_lock_client.c", i32 188, i32 1}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ceph/cls_lock_client.c", i32 229, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ceph_cls_set_cookie.__UNIQUE_ID_ddebug314, !39, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!42 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/ceph/cls_lock_client.c", i32 231, i32 48}
!45 = !{ptr @ceph_cls_set_cookie.__UNIQUE_ID_ddebug315, !46, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!46 = !{!"../net/ceph/cls_lock_client.c", i32 235, i32 2}
!47 = !{ptr @__ksymtab_ceph_cls_set_cookie, !48, !"__ksymtab_ceph_cls_set_cookie", i1 false, i1 false}
!48 = !{!"../net/ceph/cls_lock_client.c", i32 239, i32 1}
!49 = !{ptr @__ksymtab_ceph_free_lockers, !50, !"__ksymtab_ceph_free_lockers", i1 false, i1 false}
!50 = !{!"../net/ceph/cls_lock_client.c", i32 249, i32 1}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/ceph/cls_lock_client.c", i32 370, i32 2}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ceph_cls_lock_info.__UNIQUE_ID_ddebug317, !52, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!55 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/ceph/cls_lock_client.c", i32 371, i32 48}
!58 = !{ptr @ceph_cls_lock_info.__UNIQUE_ID_ddebug318, !59, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!59 = !{!"../net/ceph/cls_lock_client.c", i32 375, i32 2}
!60 = !{ptr @__ksymtab_ceph_cls_lock_info, !61, !"__ksymtab_ceph_cls_lock_info", i1 false, i1 false}
!61 = !{!"../net/ceph/cls_lock_client.c", i32 387, i32 1}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/ceph/cls_lock_client.c", i32 407, i32 48}
!64 = !{ptr @__ksymtab_ceph_cls_assert_locked, !65, !"__ksymtab_ceph_cls_assert_locked", i1 false, i1 false}
!65 = !{!"../net/ceph/cls_lock_client.c", i32 431, i32 1}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/ceph/cls_lock_client.c", i32 297, i32 39}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/ceph/decode.h", i32 346, i32 3}
!72 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ceph_start_decoding._entry, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @ceph_start_decoding._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/ceph/cls_lock_client.c", i32 258, i32 39}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/ceph/cls_lock_client.c", i32 269, i32 39}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/ceph/cls_lock_client.c", i32 282, i32 2}
!82 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @decode_locker.__UNIQUE_ID_ddebug316, !81, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!84 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!85 = !{!"sp"}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{i64 2152295597, i64 2152296089, i64 2152295634, i64 2152295690, i64 2152295724, i64 2152295748, i64 2152295789, i64 2152295810, i64 2152295838, i64 2152295872}
!97 = !{i64 2148234775, i64 2148234780, i64 2148234793, i64 2148234837, i64 2148234871, i64 2148234892}
!98 = !{!"branch_weights", i32 2000, i32 1}
