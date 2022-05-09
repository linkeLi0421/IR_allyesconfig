; ModuleID = '/llk/IR_all_yes/block/sed-opal.c_pt.bc'
source_filename = "../block/sed-opal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+free_opal_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_free_opal_dev\09\09\09\09"
module asm "\09.long\09__crc_free_opal_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_opal_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22free_opal_dev\22\09\09\09\09\09"
module asm "__kstrtabns_free_opal_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+init_opal_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_init_opal_dev\09\09\09\09"
module asm "\09.long\09__crc_init_opal_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_opal_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22init_opal_dev\22\09\09\09\09\09"
module asm "__kstrtabns_init_opal_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+opal_unlock_from_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_opal_unlock_from_suspend\09\09\09\09"
module asm "\09.long\09__crc_opal_unlock_from_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_opal_unlock_from_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22opal_unlock_from_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_opal_unlock_from_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sed_ioctl\22, \22a\22\09"
module asm "\09.weak\09__crc_sed_ioctl\09\09\09\09"
module asm "\09.long\09__crc_sed_ioctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sed_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22sed_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_sed_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.opal_dev = type { i8, i8, ptr, ptr, %struct.mutex, i16, i32, i32, i64, i64, i32, [2048 x i8], [2048 x i8], %struct.parsed_resp, i32, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.parsed_resp = type { i32, [64 x %struct.opal_resp_tok] }
%struct.opal_resp_tok = type { ptr, i32, i32, i32, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.opal_step = type { ptr, ptr }
%struct.opal_session_info = type { i32, i32, %struct.opal_key }
%struct.opal_key = type { i8, i8, [6 x i8], [256 x i8] }
%struct.opal_suspend_data = type { %struct.opal_lock_unlock, i8, %struct.list_head }
%struct.opal_lock_unlock = type { %struct.opal_session_info, i32, [4 x i8] }
%struct.opal_lr_act = type { %struct.opal_key, i32, i8, [9 x i8], [2 x i8] }
%struct.opal_new_pw = type { %struct.opal_session_info, %struct.opal_session_info }
%struct.opal_user_lr_setup = type { i64, i64, i32, i32, %struct.opal_session_info }
%struct.opal_mbr_data = type { %struct.opal_key, i8, [7 x i8] }
%struct.opal_mbr_done = type { %struct.opal_key, i8, [7 x i8] }
%struct.opal_shadow_mbr = type { %struct.opal_key, i64, i64, i64 }
%struct.opal_read_write_table = type { %struct.opal_key, i64, [8 x i8], i64, i64, i64, i64 }
%struct.d0_features = type { i16, i8, i8, [0 x i8] }
%struct.d0_geometry_features = type { [4 x i8], i8, [7 x i8], i32, i64, i64 }
%struct.opal_compacket = type { i32, [4 x i8], i32, i32, i32 }
%struct.opal_header = type { %struct.opal_compacket, %struct.opal_packet, %struct.opal_data_subpacket }
%struct.opal_packet = type { i32, i32, i32, i16, i16, i32, i32 }
%struct.opal_data_subpacket = type { [6 x i8], i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_free_opal_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_opal_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_free_opal_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_opal_dev to i32), ptr @__kstrtab_free_opal_dev, ptr @__kstrtabns_free_opal_dev }, section "___ksymtab+free_opal_dev", align 4
@init_opal_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->dev_lock\00", [17 x i8] zeroinitializer }, align 32
@init_opal_dev.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 2, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sed_opal\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_opal_dev\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"block/sed-opal.c\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Opal is not supported on this device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"sed_opal:OPAL: Opal is not supported on this device\0A\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_init_opal_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_opal_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_init_opal_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_opal_dev to i32), ptr @__kstrtab_init_opal_dev, ptr @__kstrtabns_init_opal_dev }, section "___ksymtab+init_opal_dev", align 4
@opal_unlock_from_suspend.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 2, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"opal_unlock_from_suspend\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to unlock LR %hhu with sum %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"sed_opal:OPAL: Failed to unlock LR %hhu with sum %d\0A\00", [43 x i8] zeroinitializer }, align 32
@opal_unlock_from_suspend.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.9, i8 2, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set MBR Done in S3 resume\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"sed_opal:OPAL: Failed to set MBR Done in S3 resume\0A\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_opal_unlock_from_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_opal_unlock_from_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_opal_unlock_from_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @opal_unlock_from_suspend to i32), ptr @__kstrtab_opal_unlock_from_suspend, ptr @__kstrtabns_opal_unlock_from_suspend }, section "___ksymtab+opal_unlock_from_suspend", align 4
@__kstrtab_sed_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_sed_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_sed_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sed_ioctl to i32), ptr @__kstrtab_sed_ioctl, ptr @__kstrtabns_sed_ioctl }, section "___ksymtab_gpl+sed_ioctl", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@opal_discovery0_end.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"opal_discovery0_end\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Discovery length overflows buffer (%zu+%u)/%u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"sed_opal:OPAL: Discovery length overflows buffer (%zu+%u)/%u\0A\00", [34 x i8] zeroinitializer }, align 32
@opal_discovery0_end.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.14, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Found OPAL feature description: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"sed_opal:OPAL: Found OPAL feature description: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@opal_discovery0_end.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.16, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"OPAL Unknown feature: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"sed_opal:OPAL: OPAL Unknown feature: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@opal_discovery0_end.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.18, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"This device is not Opal enabled. Not Supported!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"sed_opal:OPAL: This device is not Opal enabled. Not Supported!\0A\00", [32 x i8] zeroinitializer }, align 32
@opal_discovery0_end.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.20, i8 0, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Device doesn't support single user mode\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"sed_opal:OPAL: Device doesn't support single user mode\0A\00", [40 x i8] zeroinitializer }, align 32
@opal_discovery0_end.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.3, ptr @.str.22, i8 0, i8 125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Could not find OPAL comid for device. Returning early\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"sed_opal:OPAL: Could not find OPAL comid for device. Returning early\0A\00", [58 x i8] zeroinitializer }, align 32
@check_tper.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"check_tper\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TPer sync not supported. flags = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"sed_opal:OPAL: TPer sync not supported. flags = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@check_sum.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"check_sum\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Need at least one locking object.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"sed_opal:OPAL: Need at least one locking object.\0A\00", [46 x i8] zeroinitializer }, align 32
@check_sum.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.3, ptr @.str.30, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Number of locking objects: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sed_opal:OPAL: Number of locking objects: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@execute_step.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"execute_step\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Step %zu (%pS) failed with error %d: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"sed_opal:OPAL: Step %zu (%pS) failed with error %d: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Failed\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Unknown Error\00", [18 x i8] zeroinitializer }, align 32
@opal_errors = internal constant { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.36, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Success\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Not Authorized\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SP Busy\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SP Failed\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SP Disabled\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SP Frozen\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No Sessions Available\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Uniqueness Conflict\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Insufficient Space\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Insufficient Rows\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid Function\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid Parameter\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid Reference\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TPER Malfunction\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Transaction Failure\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Response Overflow\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Authority Locked Out\00", [43 x i8] zeroinitializer }, align 32
@opaluid = internal constant { [30 x [8 x i8]], [48 x i8] } { [30 x [8 x i8]] [[8 x i8] c"\00\00\00\00\00\00\00\FF", [8 x i8] c"\00\00\00\00\00\00\00\01", [8 x i8] c"\00\00\02\05\00\00\00\01", [8 x i8] c"\00\00\02\05\00\00\00\02", [8 x i8] c"\00\00\02\05\00\01\00\01", [8 x i8] c"\00\00\00\09\00\00\00\01", [8 x i8] c"\00\00\00\09\00\00\00\06", [8 x i8] c"\00\00\00\09\00\01\00\01", [8 x i8] c"\00\00\00\09\00\03\00\01", [8 x i8] c"\00\00\00\09\00\03\00\02", [8 x i8] c"\00\00\00\09\00\01\FF\01", [8 x i8] c"\00\00\00\09\00\00\80\01", [8 x i8] c"\00\00\00\09\00\00\84\01", [8 x i8] c"\00\00\00\01\00\00\00\01", [8 x i8] c"\00\00\08\02\00\00\00\01", [8 x i8] c"\00\00\00\08\00\03\E0\01", [8 x i8] c"\00\00\00\08\00\03\E8\01", [8 x i8] c"\00\00\08\03\00\00\00\01", [8 x i8] c"\00\00\08\04\00\00\00\00", [8 x i8] c"\00\00\00\09\00\00\00\00", [8 x i8] c"\00\00\00\0B\00\00\00\00", [8 x i8] c"\00\00\08\01\00\00\00\01", [8 x i8] c"\00\00\08\01\00\00\00\00", [8 x i8] c"\00\00\10\01\00\00\00\00", [8 x i8] c"\00\00\00\0B\00\00\84\02", [8 x i8] c"\00\00\00\0B\00\00\00\01", [8 x i8] c"\00\00\00\0B\00\01\00\01", [8 x i8] c"\00\00\0C\05\FF\FF\FF\FF", [8 x i8] c"\00\00\04\0E\FF\FF\FF\FF", [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF"], [48 x i8] zeroinitializer }, align 32
@opalmethod = internal constant { [16 x [8 x i8]], [32 x i8] } { [16 x [8 x i8]] [[8 x i8] c"\00\00\00\00\00\00\FF\01", [8 x i8] c"\00\00\00\00\00\00\FF\02", [8 x i8] c"\00\00\00\06\00\00\02\02", [8 x i8] c"\00\00\00\06\00\00\02\03", [8 x i8] c"\00\00\00\06\00\00\00\06", [8 x i8] c"\00\00\00\06\00\00\00\07", [8 x i8] c"\00\00\00\06\00\00\00\08", [8 x i8] c"\00\00\00\06\00\00\00\0C", [8 x i8] c"\00\00\00\06\00\00\00\0D", [8 x i8] c"\00\00\00\06\00\00\00\10", [8 x i8] c"\00\00\00\06\00\00\00\11", [8 x i8] c"\00\00\00\06\00\00\00\16", [8 x i8] c"\00\00\00\06\00\00\00\17", [8 x i8] c"\00\00\00\06\00\00\00\1C", [8 x i8] c"\00\00\00\06\00\00\06\01", [8 x i8] c"\00\00\00\06\00\00\08\03"], [32 x i8] zeroinitializer }, align 32
@start_auth_opal_session.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.3, ptr @.str.55, i8 1, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"start_auth_opal_session\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error building STARTSESSION command.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"sed_opal:OPAL: Error building STARTSESSION command.\0A\00", [43 x i8] zeroinitializer }, align 32
@add_token_u64.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"add_token_u64\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error adding u64: end of buffer.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sed_opal:OPAL: Error adding u64: end of buffer.\0A\00", [47 x i8] zeroinitializer }, align 32
@can_add.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"can_add\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error adding %zu bytes: end of buffer.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"sed_opal:OPAL: Error adding %zu bytes: end of buffer.\0A\00", [41 x i8] zeroinitializer }, align 32
@add_bytestring_header.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.3, ptr @.str.67, i8 0, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"add_bytestring_header\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error adding bytestring: end of buffer.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"sed_opal:OPAL: Error adding bytestring: end of buffer.\0A\00", [40 x i8] zeroinitializer }, align 32
@finalize_and_send.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.69, ptr @.str.3, ptr @.str.70, i8 1, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"finalize_and_send\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error finalizing command buffer: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"sed_opal:OPAL: Error finalizing command buffer: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@cmd_finalize.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.72, ptr @.str.3, ptr @.str.73, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cmd_finalize\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error finalizing command.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sed_opal:OPAL: Error finalizing command.\0A\00", [54 x i8] zeroinitializer }, align 32
@cmd_finalize.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.72, ptr @.str.3, ptr @.str.75, i8 0, i8 -77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error: Buffer overrun\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sed_opal:OPAL: Error: Buffer overrun\0A\00", [58 x i8] zeroinitializer }, align 32
@opal_recv_check.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"opal_recv_check\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Sent OPAL command: outstanding=%d, minTransfer=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"sed_opal:OPAL: Sent OPAL command: outstanding=%d, minTransfer=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@start_opal_session_cont.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.80, ptr @.str.3, ptr @.str.81, i8 1, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"start_opal_session_cont\00", [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't authenticate session\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sed_opal:OPAL: Couldn't authenticate session\0A\00", [50 x i8] zeroinitializer }, align 32
@parse_and_check_status.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.83, ptr @.str.3, ptr @.str.84, i8 0, i8 -3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"parse_and_check_status\00", [41 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't parse response.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"sed_opal:OPAL: Couldn't parse response.\0A\00", [55 x i8] zeroinitializer }, align 32
@response_parse.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.86, ptr @.str.3, ptr @.str.87, i8 0, i8 -38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"response_parse\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Response size: cp: %u, pkt: %u, subpkt: %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"sed_opal:OPAL: Response size: cp: %u, pkt: %u, subpkt: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@response_parse.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.86, ptr @.str.3, ptr @.str.89, i8 0, i8 -37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Bad header length. cp: %u, pkt: %u, subpkt: %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"sed_opal:OPAL: Bad header length. cp: %u, pkt: %u, subpkt: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@response_parse_short.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.91, ptr @.str.3, ptr @.str.92, i8 0, i8 -59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"response_parse_short\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"uint64 with more than 8 bytes\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sed_opal:OPAL: uint64 with more than 8 bytes\0A\00", [50 x i8] zeroinitializer }, align 32
@response_get_token.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.94, ptr @.str.3, ptr @.str.95, i8 0, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"response_get_token\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Response is NULL\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sed_opal:OPAL: Response is NULL\0A\00", [63 x i8] zeroinitializer }, align 32
@response_get_token.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.94, ptr @.str.3, ptr @.str.97, i8 0, i8 -71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Token number doesn't exist: %d, resp: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"sed_opal:OPAL: Token number doesn't exist: %d, resp: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@response_get_token.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.94, ptr @.str.3, ptr @.str.99, i8 0, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Token length must be non-zero\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sed_opal:OPAL: Token length must be non-zero\0A\00", [50 x i8] zeroinitializer }, align 32
@response_get_u64.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.101, ptr @.str.3, ptr @.str.102, i8 0, i8 -16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"response_get_u64\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Token is not unsigned int: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sed_opal:OPAL: Token is not unsigned int: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@response_get_u64.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.101, ptr @.str.3, ptr @.str.104, i8 0, i8 -15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Atom is not short or tiny: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sed_opal:OPAL: Atom is not short or tiny: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@lock_unlock_locking_range.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.106, ptr @.str.3, ptr @.str.107, i8 1, i8 -59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lock_unlock_locking_range\00", [38 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Tried to set an invalid locking state... returning to uland\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"sed_opal:OPAL: Tried to set an invalid locking state... returning to uland\0A\00", [52 x i8] zeroinitializer }, align 32
@lock_unlock_locking_range.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.106, ptr @.str.3, ptr @.str.109, i8 1, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error building SET command.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sed_opal:OPAL: Error building SET command.\0A\00", [52 x i8] zeroinitializer }, align 32
@lock_unlock_locking_range_sum.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.114, ptr @.str.3, ptr @.str.115, i8 1, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lock_unlock_locking_range_sum\00", [34 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Tried to set an invalid locking state.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"sed_opal:OPAL: Tried to set an invalid locking state.\0A\00", [41 x i8] zeroinitializer }, align 32
@lock_unlock_locking_range_sum.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.114, ptr @.str.3, ptr @.str.109, i8 1, i8 -43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@start_generic_opal_session.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.117, ptr @.str.3, ptr @.str.118, i8 1, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"start_generic_opal_session\00", [37 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Cannot start Admin SP session with auth %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"sed_opal:OPAL: Cannot start Admin SP session with auth %d\0A\00", [37 x i8] zeroinitializer }, align 32
@start_generic_opal_session.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.117, ptr @.str.3, ptr @.str.120, i8 1, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Error building start adminsp session command.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"sed_opal:OPAL: Error building start adminsp session command.\0A\00", [34 x i8] zeroinitializer }, align 32
@set_mbr_done.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.122, ptr @.str.3, ptr @.str.123, i8 1, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_mbr_done\00", [19 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error Building set MBR Done command\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"sed_opal:OPAL: Error Building set MBR Done command\0A\00", [44 x i8] zeroinitializer }, align 32
@get_msid_cpin_pin.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.125, ptr @.str.3, ptr @.str.126, i8 1, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_msid_cpin_pin\00", [46 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Couldn't extract MSID_CPIN from response\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"sed_opal:OPAL: Couldn't extract MSID_CPIN from response\0A\00", [39 x i8] zeroinitializer }, align 32
@response_get_string.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.128, ptr @.str.3, ptr @.str.129, i8 0, i8 -25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"response_get_string\00", [44 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Token is not a byte string!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sed_opal:OPAL: Token is not a byte string!\0A\00", [52 x i8] zeroinitializer }, align 32
@response_get_string.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.128, ptr @.str.3, ptr @.str.131, i8 0, i8 -21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Token has invalid width!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"sed_opal:OPAL: Token has invalid width!\0A\00", [55 x i8] zeroinitializer }, align 32
@set_sid_cpin_pin.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.133, ptr @.str.3, ptr @.str.134, i8 1, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"set_sid_cpin_pin\00", [47 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error building Set SID cpin\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sed_opal:OPAL: Error building Set SID cpin\0A\00", [52 x i8] zeroinitializer }, align 32
@get_lsp_lifecycle.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.136, ptr @.str.3, ptr @.str.137, i8 1, i8 -28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_lsp_lifecycle\00", [46 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Couldn't determine the status of the Lifecycle state\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"sed_opal:OPAL: Couldn't determine the status of the Lifecycle state\0A\00", [59 x i8] zeroinitializer }, align 32
@activate_lsp.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.139, ptr @.str.3, ptr @.str.140, i8 1, i8 -34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"activate_lsp\00", [19 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error building Activate LockingSP command.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"sed_opal:OPAL: Error building Activate LockingSP command.\0A\00", [37 x i8] zeroinitializer }, align 32
@set_new_pw.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.142, ptr @.str.3, ptr @.str.143, i8 1, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"set_new_pw\00", [21 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error building set password command.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"sed_opal:OPAL: Error building set password command.\0A\00", [43 x i8] zeroinitializer }, align 32
@opal_activate_user.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.145, ptr @.str.3, ptr @.str.146, i8 2, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"opal_activate_user\00", [45 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Who was not a valid user: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sed_opal:OPAL: Who was not a valid user: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@internal_activate_user.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.148, ptr @.str.3, ptr @.str.149, i8 1, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"internal_activate_user\00", [41 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error building Activate UserN command.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"sed_opal:OPAL: Error building Activate UserN command.\0A\00", [41 x i8] zeroinitializer }, align 32
@revert_tper.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.151, ptr @.str.3, ptr @.str.152, i8 1, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"revert_tper\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error building REVERT TPER command.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"sed_opal:OPAL: Error building REVERT TPER command.\0A\00", [44 x i8] zeroinitializer }, align 32
@setup_locking_range.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.154, ptr @.str.3, ptr @.str.155, i8 1, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.154 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"setup_locking_range\00", [44 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error building Setup Locking range command.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"sed_opal:OPAL: Error building Setup Locking range command.\0A\00", [36 x i8] zeroinitializer }, align 32
@enable_global_lr.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.157, ptr @.str.3, ptr @.str.158, i8 1, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"enable_global_lr\00", [47 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to create enable global lr command\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"sed_opal:OPAL: Failed to create enable global lr command\0A\00", [38 x i8] zeroinitializer }, align 32
@opal_add_user_to_lr.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.160, ptr @.str.3, ptr @.str.161, i8 2, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"opal_add_user_to_lr\00", [44 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Locking state was not RO or RW\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sed_opal:OPAL: Locking state was not RO or RW\0A\00", [49 x i8] zeroinitializer }, align 32
@opal_add_user_to_lr.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.160, ptr @.str.3, ptr @.str.163, i8 2, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Authority was not within the range of users: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"sed_opal:OPAL: Authority was not within the range of users: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@opal_add_user_to_lr.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.160, ptr @.str.3, ptr @.str.165, i8 2, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s not supported in sum. Use setup locking range\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"sed_opal:OPAL: %s not supported in sum. Use setup locking range\0A\00", [63 x i8] zeroinitializer }, align 32
@add_user_to_lr.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.167, ptr @.str.3, ptr @.str.168, i8 1, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"add_user_to_lr\00", [17 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Error building add user to locking range command.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"sed_opal:OPAL: Error building add user to locking range command.\0A\00", [62 x i8] zeroinitializer }, align 32
@set_mbr_enable_disable.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.170, ptr @.str.3, ptr @.str.171, i8 1, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set_mbr_enable_disable\00", [41 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error Building set MBR done command\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"sed_opal:OPAL: Error Building set MBR done command\0A\00", [44 x i8] zeroinitializer }, align 32
@generic_table_write_data.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.173, ptr @.str.3, ptr @.str.174, i8 1, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"generic_table_write_data\00", [39 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get the table size\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sed_opal:OPAL: Couldn't get the table size\0A\00", [52 x i8] zeroinitializer }, align 32
@generic_table_write_data.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.173, ptr @.str.3, ptr @.str.176, i8 1, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Does not fit in the table (%llu vs. %llu)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"sed_opal:OPAL: Does not fit in the table (%llu vs. %llu)\0A\00", [38 x i8] zeroinitializer }, align 32
@generic_table_write_data.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.173, ptr @.str.3, ptr @.str.178, i8 1, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Write bytes %zu+%llu/%llu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sed_opal:OPAL: Write bytes %zu+%llu/%llu\0A\00", [54 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.180 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@erase_locking_range.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.183, ptr @.str.3, ptr @.str.184, i8 1, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"erase_locking_range\00", [44 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error building Erase Locking Range Command.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"sed_opal:OPAL: Error building Erase Locking Range Command.\0A\00", [36 x i8] zeroinitializer }, align 32
@get_active_key_cont.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.186, ptr @.str.3, ptr @.str.187, i8 1, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.186 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"get_active_key_cont\00", [44 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: Couldn't extract the Activekey from the response\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"sed_opal:OPAL: %s: Couldn't extract the Activekey from the response\0A\00", [59 x i8] zeroinitializer }, align 32
@gen_key.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.189, ptr @.str.3, ptr @.str.190, i8 1, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.189 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gen_key\00", [24 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error building gen key command\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sed_opal:OPAL: Error building gen key command\0A\00", [49 x i8] zeroinitializer }, align 32
@opal_generic_read_write_table.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.192, ptr @.str.3, ptr @.str.193, i8 2, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.192 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"opal_generic_read_write_table\00", [34 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid bit set in the flag (%016llx).\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"sed_opal:OPAL: Invalid bit set in the flag (%016llx).\0A\00", [41 x i8] zeroinitializer }, align 32
@read_table_data.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.195, ptr @.str.3, ptr @.str.174, i8 1, i8 -9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.195 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read_table_data\00", [16 x i8] zeroinitializer }, align 32
@read_table_data.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.195, ptr @.str.3, ptr @.str.196, i8 1, i8 -6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.196 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Read size exceeds the Table size limits (%llu vs. %llu)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"sed_opal:OPAL: Read size exceeds the Table size limits (%llu vs. %llu)\0A\00", [56 x i8] zeroinitializer }, align 32
@read_table_data.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.195, ptr @.str.3, ptr @.str.198, i8 1, i8 -1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.198 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error building read table data command.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"sed_opal:OPAL: Error building read table data command.\0A\00", [40 x i8] zeroinitializer }, align 32
@read_table_data.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.195, ptr @.str.3, ptr @.str.200, i8 2, i8 3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.200 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error copying data to userspace\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"sed_opal:OPAL: Error copying data to userspace\0A\00", [48 x i8] zeroinitializer }, align 32
@read_table_data_cont.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.202, ptr @.str.3, ptr @.str.203, i8 1, i8 -15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.202 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read_table_data_cont\00", [43 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Couldn't read data from the table.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"sed_opal:OPAL: %s: Couldn't read data from the table.\0A\00", [41 x i8] zeroinitializer }, align 32
@switch.table.response_get_string = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 1, i32 2, i32 4], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 1091072222, i64 1091072226, i64 1091072232, i64 1091596513, i64 1091596517, i64 1091596518, i64 1091596519, i64 1091596521, i64 1092120796, i64 1092120797, i64 1092120799, i64 1092120804, i64 1092645098, i64 1093169379, i64 1094217963, i64 1109422304]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.206 = internal global [10 x i64] [i64 8, i64 16, i64 1, i64 2, i64 3, i64 256, i64 512, i64 513, i64 514, i64 515]
@__sancov_gen_cov_switch_values.207 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.208 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.209 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 7, i64 10]
@___asan_gen_.210 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 2150, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 2154, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 2543, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 2552, i32 5 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 441, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 469, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 484, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 492, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 497, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 501, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 275, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 297, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 301, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 387, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 253, i32 10 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 256, i32 10 }
@___asan_gen_.324 = private unnamed_addr constant [12 x i8] c"opal_errors\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 228, i32 27 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 229, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 230, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 232, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 233, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 234, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 235, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 236, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 237, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 238, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 239, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 240, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 241, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 242, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 244, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 245, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 246, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 247, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant [8 x i8] c"opaluid\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 102, i32 17 }
@___asan_gen_.381 = private unnamed_addr constant [11 x i8] c"opalmethod\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 179, i32 17 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1534, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 601, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 543, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 620, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1099, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 706, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 718, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 342, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1060, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1013, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 872, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 877, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 790, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 737, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 742, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 749, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 961, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 966, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1812, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1836, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1871, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1435, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1440, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1621, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1955, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 927, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 943, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1714, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1936, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1914, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1699, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 2510, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1576, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1548, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1391, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1341, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 2305, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 2311, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 2317, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1781, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1647, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1238, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1244, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1268, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 230, i32 6 }
@___asan_gen_.748 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.748, i32 214, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.751, i32 156, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1595, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1194, i32 3 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1174, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 2612, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 2015, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 2023, i32 3 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 2047, i32 4 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 2063, i32 4 }
@___asan_gen_.816 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.817 = private constant [20 x i8] c"../block/sed-opal.c\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.817, i32 1988, i32 3 }
@___asan_gen_.819 = private unnamed_addr constant [33 x i8] c"switch.table.response_get_string\00", align 1
@llvm.compiler.used = appending global [208 x ptr] [ptr @__ksymtab_free_opal_dev, ptr @__ksymtab_init_opal_dev, ptr @__ksymtab_opal_unlock_from_suspend, ptr @__ksymtab_sed_ioctl, ptr @init_opal_dev.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @opal_errors, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @opaluid, ptr @opalmethod, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @switch.table.response_get_string], section "llvm.metadata"
@0 = internal global [204 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_opal_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opal_errors to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opaluid to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opalmethod to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.response_get_string to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_opal_dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %dev_lock.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_lock.i, i32 noundef 0) #6
  %unlk_lst.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %unlk_lst.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unlk_lst.i, align 8
  %cmp.not23.i = icmp eq ptr %1, %unlk_lst.i
  br i1 %cmp.not23.i, label %if.end.clean_opal_dev.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.clean_opal_dev.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %clean_opal_dev.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in24.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %1, %if.end.for.body.i_crit_edge ]
  %suspend.0.i = getelementptr i8, ptr %.pn.in24.i, i32 -284
  %2 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in24.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in24.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in24.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %suspend.0.i) #6
  %cmp.not.i = icmp eq ptr %.pn.i, %unlk_lst.i
  br i1 %cmp.not.i, label %list_del.exit.i.clean_opal_dev.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

list_del.exit.i.clean_opal_dev.exit_crit_edge:    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clean_opal_dev.exit

clean_opal_dev.exit:                              ; preds = %list_del.exit.i.clean_opal_dev.exit_crit_edge, %if.end.clean_opal_dev.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %dev_lock.i) #6
  tail call void @kfree(ptr noundef nonnull %dev) #6
  br label %return

return:                                           ; preds = %clean_opal_dev.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @init_opal_dev(ptr noundef %data, ptr noundef %send_recv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 5800) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %unlk_lst = getelementptr inbounds %struct.opal_dev, ptr %call7.i, i32 0, i32 16
  %1 = ptrtoint ptr %unlk_lst to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %unlk_lst, ptr %unlk_lst, align 8
  %prev.i = getelementptr inbounds %struct.opal_dev, ptr %call7.i, i32 0, i32 16, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %unlk_lst, ptr %prev.i, align 4
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %call7.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %dev_lock, ptr noundef nonnull @.str, ptr noundef nonnull @init_opal_dev.__key) #6
  %data1 = getelementptr inbounds %struct.opal_dev, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %data1, align 4
  %send_recv2 = getelementptr inbounds %struct.opal_dev, ptr %call7.i, i32 0, i32 3
  %4 = ptrtoint ptr %send_recv2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %send_recv, ptr %send_recv2, align 8
  %call3 = tail call fastcc i32 @check_opal_support(ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.body5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_opal_dev.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_opal_dev, %if.then10)) #6
          to label %do.end13 [label %if.then10], !srcloc !392

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @init_opal_dev.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.5) #6
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %do.body5
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end13 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_opal_support(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %tsn.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tsn.i, align 8
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %1 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %hsn.i, align 4
  %prev_data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %prev_data.i, align 4
  %resp.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 12
  %3 = call ptr @memset(ptr %resp.i.i, i32 0, i32 2048)
  %comid.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %comid.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %comid.i.i, align 8
  %send_recv.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 3
  %5 = ptrtoint ptr %send_recv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %send_recv.i.i.i, align 8
  %data.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %call.i.i.i = tail call i32 %6(ptr noundef %8, i16 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef %resp.i.i, i32 noundef 2048, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i2.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i2.i, label %opal_discovery0.exit.i, label %entry.do.body.i.i_crit_edge

entry.do.body.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

opal_discovery0.exit.i:                           ; preds = %entry
  %call1.i.i = tail call fastcc i32 @opal_discovery0_end(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %opal_discovery0.exit.i.opal_discovery0_step.exit_crit_edge, label %opal_discovery0.exit.i.do.body.i.i_crit_edge

opal_discovery0.exit.i.do.body.i.i_crit_edge:     ; preds = %opal_discovery0.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

opal_discovery0.exit.i.opal_discovery0_step.exit_crit_edge: ; preds = %opal_discovery0.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %opal_discovery0_step.exit

do.body.i.i:                                      ; preds = %opal_discovery0.exit.i.do.body.i.i_crit_edge, %entry.do.body.i.i_crit_edge
  %retval.0.i5.i = phi i32 [ %call1.i.i, %opal_discovery0.exit.i.do.body.i.i_crit_edge ], [ %call.i.i.i, %entry.do.body.i.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @execute_step.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_opal_support, %if.then5.i.i)) #6
          to label %opal_discovery0_step.exit [label %if.then5.i.i], !srcloc !392

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %retval.0.i5.i)
  %cmp.i.i.i = icmp eq i32 %retval.0.i5.i, 63
  br i1 %cmp.i.i.i, label %if.then5.i.i.opal_error_to_human.exit.i.i_crit_edge, label %if.end.i.i.i

if.then5.i.i.opal_error_to_human.exit.i.i_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %opal_error_to_human.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %retval.0.i5.i)
  %cmp1.i.i.i = icmp ugt i32 %retval.0.i5.i, 18
  br i1 %cmp1.i.i.i, label %if.end.i.i.i.opal_error_to_human.exit.i.i_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.opal_error_to_human.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %opal_error_to_human.exit.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i = getelementptr [19 x ptr], ptr @opal_errors, i32 0, i32 %retval.0.i5.i
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i.i, align 4
  br label %opal_error_to_human.exit.i.i

opal_error_to_human.exit.i.i:                     ; preds = %if.end4.i.i.i, %if.end.i.i.i.opal_error_to_human.exit.i.i_crit_edge, %if.then5.i.i.opal_error_to_human.exit.i.i_crit_edge
  %retval.0.i14.i.i = phi ptr [ %10, %if.end4.i.i.i ], [ @.str.35, %if.then5.i.i.opal_error_to_human.exit.i.i_crit_edge ], [ @.str.36, %if.end.i.i.i.opal_error_to_human.exit.i.i_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @execute_step.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.34, i32 noundef 0, ptr noundef nonnull @opal_discovery0, i32 noundef %retval.0.i5.i, ptr noundef %retval.0.i14.i.i) #6
  br label %opal_discovery0_step.exit

opal_discovery0_step.exit:                        ; preds = %opal_error_to_human.exit.i.i, %do.body.i.i, %opal_discovery0.exit.i.opal_discovery0_step.exit_crit_edge
  %retval.0.i6.i = phi i32 [ 0, %opal_discovery0.exit.i.opal_discovery0_step.exit_crit_edge ], [ %retval.0.i5.i, %do.body.i.i ], [ %retval.0.i5.i, %opal_error_to_human.exit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i6.i)
  %tobool.not = icmp eq i32 %retval.0.i6.i, 0
  %frombool = zext i1 %tobool.not to i8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %dev, align 8
  tail call void @mutex_unlock(ptr noundef %dev_lock) #6
  ret i32 %retval.0.i6.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @opal_unlock_from_suspend(ptr noundef %dev) #0 align 64 {
entry:
  %mbr_done_tf.i = alloca i8, align 1
  %mbrdone_step.i = alloca [3 x %struct.opal_step], align 4
  %unlock_steps.i = alloca [3 x %struct.opal_step], align 4
  %unlock_sum_steps.i = alloca [3 x %struct.opal_step], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dev, align 8, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %tsn.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tsn.i, align 8
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %hsn.i, align 4
  %prev_data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %prev_data.i, align 4
  %unlk_lst = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 16
  %5 = ptrtoint ptr %unlk_lst to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn77 = load ptr, ptr %unlk_lst, align 4
  %cmp.not79 = icmp eq ptr %.pn77, %unlk_lst
  br i1 %cmp.not79, label %if.end3.for.end_crit_edge, label %for.body.lr.ph

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end3
  %6 = getelementptr inbounds %struct.opal_step, ptr %unlock_steps.i, i32 0, i32 1
  %7 = getelementptr inbounds [3 x %struct.opal_step], ptr %unlock_steps.i, i32 0, i32 1
  %8 = getelementptr inbounds [3 x %struct.opal_step], ptr %unlock_steps.i, i32 0, i32 1, i32 1
  %9 = getelementptr inbounds [3 x %struct.opal_step], ptr %unlock_steps.i, i32 0, i32 2
  %10 = getelementptr inbounds [3 x %struct.opal_step], ptr %unlock_steps.i, i32 0, i32 2, i32 1
  %11 = getelementptr inbounds %struct.opal_step, ptr %unlock_sum_steps.i, i32 0, i32 1
  %12 = getelementptr inbounds [3 x %struct.opal_step], ptr %unlock_sum_steps.i, i32 0, i32 1
  %13 = getelementptr inbounds [3 x %struct.opal_step], ptr %unlock_sum_steps.i, i32 0, i32 1, i32 1
  %14 = getelementptr inbounds [3 x %struct.opal_step], ptr %unlock_sum_steps.i, i32 0, i32 2
  %15 = getelementptr inbounds [3 x %struct.opal_step], ptr %unlock_sum_steps.i, i32 0, i32 2, i32 1
  %mbr_enabled = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 1
  %16 = getelementptr inbounds %struct.opal_step, ptr %mbrdone_step.i, i32 0, i32 1
  %17 = getelementptr inbounds [3 x %struct.opal_step], ptr %mbrdone_step.i, i32 0, i32 1
  %18 = getelementptr inbounds [3 x %struct.opal_step], ptr %mbrdone_step.i, i32 0, i32 1, i32 1
  %19 = getelementptr inbounds [3 x %struct.opal_step], ptr %mbrdone_step.i, i32 0, i32 2
  %20 = getelementptr inbounds [3 x %struct.opal_step], ptr %mbrdone_step.i, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn81 = phi ptr [ %.pn77, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %was_failure.0.off080 = phi i1 [ false, %for.body.lr.ph ], [ %was_failure.1.off0, %for.inc.for.body_crit_edge ]
  %suspend.082 = getelementptr i8, ptr %.pn81, i32 -284
  %21 = ptrtoint ptr %tsn.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %tsn.i, align 8
  %22 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %hsn.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %unlock_steps.i) #6
  %23 = ptrtoint ptr %unlock_steps.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @start_auth_opal_session, ptr %unlock_steps.i, align 4
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %suspend.082, ptr %6, align 4
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @lock_unlock_locking_range, ptr %7, align 4
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %suspend.082, ptr %8, align 4
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @end_opal_session, ptr %9, align 4
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %unlock_sum_steps.i) #6
  %29 = ptrtoint ptr %unlock_sum_steps.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @start_auth_opal_session, ptr %unlock_sum_steps.i, align 4
  %30 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %suspend.082, ptr %11, align 4
  %31 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @lock_unlock_locking_range_sum, ptr %12, align 4
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %suspend.082, ptr %13, align 4
  %33 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @end_opal_session, ptr %14, align 4
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %15, align 4
  %35 = ptrtoint ptr %suspend.082 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %suspend.082, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  %unlock_steps.unlock_sum_steps.i = select i1 %tobool.not.i, ptr %unlock_steps.i, ptr %unlock_sum_steps.i
  %call18.i = call fastcc i32 @execute_steps(ptr noundef nonnull %dev, ptr noundef nonnull %unlock_steps.unlock_sum_steps.i, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %unlock_sum_steps.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %unlock_steps.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool5.not = icmp eq i32 %call18.i, 0
  br i1 %tobool5.not, label %for.body.if.end18_crit_edge, label %do.body

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @opal_unlock_from_suspend.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opal_unlock_from_suspend, %if.then13)) #6
          to label %if.end18 [label %if.then13], !srcloc !392

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %opal_key = getelementptr i8, ptr %.pn81, i32 -276
  %37 = ptrtoint ptr %opal_key to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %opal_key, align 4
  %conv = zext i8 %38 to i32
  %39 = ptrtoint ptr %suspend.082 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %suspend.082, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @opal_unlock_from_suspend.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %40) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %do.body, %for.body.if.end18_crit_edge
  %was_failure.1.off0 = phi i1 [ %was_failure.0.off080, %for.body.if.end18_crit_edge ], [ true, %if.then13 ], [ true, %do.body ]
  %41 = ptrtoint ptr %mbr_enabled to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mbr_enabled, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool19.not = icmp eq i8 %42, 0
  br i1 %tobool19.not, label %if.end18.for.inc_crit_edge, label %if.then20

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then20:                                        ; preds = %if.end18
  %opal_key23 = getelementptr i8, ptr %.pn81, i32 -276
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mbr_done_tf.i) #6
  %43 = ptrtoint ptr %mbr_done_tf.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %mbr_done_tf.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mbrdone_step.i) #6
  %44 = ptrtoint ptr %mbrdone_step.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @start_admin1LSP_opal_session, ptr %mbrdone_step.i, align 4
  %45 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %opal_key23, ptr %16, align 4
  %46 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @set_mbr_done, ptr %17, align 4
  %47 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %mbr_done_tf.i, ptr %18, align 4
  %48 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @end_opal_session, ptr %19, align 4
  %49 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %20, align 4
  %call.i = call fastcc i32 @execute_steps(ptr noundef nonnull %dev, ptr noundef nonnull %mbrdone_step.i, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mbrdone_step.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mbr_done_tf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.then20.for.inc_crit_edge, label %do.body27

if.then20.for.inc_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body27:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @opal_unlock_from_suspend.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opal_unlock_from_suspend, %if.then39)) #6
          to label %for.inc [label %if.then39], !srcloc !392

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @opal_unlock_from_suspend.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.10) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then39, %do.body27, %if.then20.for.inc_crit_edge, %if.end18.for.inc_crit_edge
  %50 = ptrtoint ptr %.pn81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn = load ptr, ptr %.pn81, align 4
  %cmp.not = icmp eq ptr %.pn, %unlk_lst
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end3.for.end_crit_edge
  %was_failure.0.off0.lcssa = phi i1 [ false, %if.end3.for.end_crit_edge ], [ %was_failure.1.off0, %for.inc.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %dev_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %was_failure.0.off0.lcssa, %for.end ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sed_ioctl(ptr noundef %dev, i32 noundef %cmd, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dev, align 8, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %shr = lshr i32 %cmd, 16
  %and = and i32 %shr, 16383
  %call6 = tail call ptr @memdup_user(ptr noundef %arg, i32 noundef %and) #6
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end10.sw.epilog_crit_edge [
    i32 1092120796, label %sw.bb
    i32 1092120797, label %sw.bb12
    i32 1091072222, label %sw.bb14
    i32 1092120799, label %sw.bb16
    i32 1109422304, label %sw.bb18
    i32 1091596513, label %sw.bb20
    i32 1091072226, label %sw.bb22
    i32 1093169379, label %sw.bb24
    i32 1092120804, label %sw.bb26
    i32 1091596517, label %sw.bb28
    i32 1091596521, label %sw.bb30
    i32 1092645098, label %sw.bb32
    i32 1091596518, label %sw.bb34
    i32 1091596519, label %sw.bb36
    i32 1091072232, label %sw.bb38
    i32 1094217963, label %sw.bb40
  ]

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call fastcc i32 @opal_save(ptr noundef nonnull %dev, ptr noundef %call6)
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call fastcc i32 @opal_lock_unlock(ptr noundef nonnull %dev, ptr noundef %call6)
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call fastcc i32 @opal_take_ownership(ptr noundef nonnull %dev, ptr noundef %call6)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call fastcc i32 @opal_activate_lsp(ptr noundef nonnull %dev, ptr noundef %call6)
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call fastcc i32 @opal_set_new_pw(ptr noundef nonnull %dev, ptr noundef %call6)
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call fastcc i32 @opal_activate_user(ptr noundef nonnull %dev, ptr noundef %call6)
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call fastcc i32 @opal_reverttper(ptr noundef nonnull %dev, ptr noundef %call6, i1 noundef zeroext false)
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call fastcc i32 @opal_setup_locking_range(ptr noundef nonnull %dev, ptr noundef %call6)
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call fastcc i32 @opal_add_user_to_lr(ptr noundef nonnull %dev, ptr noundef %call6)
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call fastcc i32 @opal_enable_disable_shadow_mbr(ptr noundef nonnull %dev, ptr noundef %call6)
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call fastcc i32 @opal_set_mbr_done(ptr noundef nonnull %dev, ptr noundef %call6)
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = tail call fastcc i32 @opal_write_shadow_mbr(ptr noundef nonnull %dev, ptr noundef %call6)
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call fastcc i32 @opal_erase_locking_range(ptr noundef nonnull %dev, ptr noundef %call6)
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call fastcc i32 @opal_secure_erase_locking_range(ptr noundef nonnull %dev, ptr noundef %call6)
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call39 = tail call fastcc i32 @opal_reverttper(ptr noundef nonnull %dev, ptr noundef %call6, i1 noundef zeroext true)
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call41 = tail call fastcc i32 @opal_generic_read_write_table(ptr noundef nonnull %dev, ptr noundef %call6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb, %if.end10.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -25, %if.end10.sw.epilog_crit_edge ], [ %call41, %sw.bb40 ], [ %call39, %sw.bb38 ], [ %call37, %sw.bb36 ], [ %call35, %sw.bb34 ], [ %call33, %sw.bb32 ], [ %call31, %sw.bb30 ], [ %call29, %sw.bb28 ], [ %call27, %sw.bb26 ], [ %call25, %sw.bb24 ], [ %call23, %sw.bb22 ], [ %call21, %sw.bb20 ], [ %call19, %sw.bb18 ], [ %call17, %sw.bb16 ], [ %call15, %sw.bb14 ], [ %call13, %sw.bb12 ], [ %call11, %sw.bb ]
  tail call void @kfree(ptr noundef %call6) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then8, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then8 ], [ %ret.0, %sw.epilog ], [ -13, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ], [ -524, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opal_save(ptr noundef %dev, ptr nocapture noundef readonly %lk_unlk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 292) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memcpy(ptr %call7.i.i, ptr %lk_unlk, i32 280)
  %opal_key = getelementptr inbounds %struct.opal_session_info, ptr %lk_unlk, i32 0, i32 2
  %2 = ptrtoint ptr %opal_key to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opal_key, align 4
  %lr1 = getelementptr inbounds %struct.opal_suspend_data, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %lr1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %lr1, align 8
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %5 = ptrtoint ptr %tsn.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tsn.i, align 8
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %hsn.i, align 4
  %prev_data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %7 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %prev_data.i, align 4
  %unlk_lst.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %unlk_lst.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %unlk_lst.i
  br i1 %cmp.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %lr.i = getelementptr i8, ptr %.pn.i, i32 -4
  %9 = ptrtoint ptr %lr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lr.i, align 4
  %11 = ptrtoint ptr %lr1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %lr1, align 8
  %cmp4.i = icmp eq i8 %10, %12
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %iter.0.le.i = getelementptr i8, ptr %.pn.i, i32 -284
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %iter.0.le.i) #6
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i, %for.cond.i.for.end.i_crit_edge
  %node12.i = getelementptr inbounds %struct.opal_suspend_data, ptr %call7.i.i, i32 0, i32 2
  %prev.i21.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 16, i32 1
  %21 = ptrtoint ptr %prev.i21.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i21.i, align 4
  %call.i.i22.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node12.i, ptr noundef %22, ptr noundef %unlk_lst.i) #6
  br i1 %call.i.i22.i, label %if.end.i.i23.i, label %for.end.i.add_suspend_info.exit_crit_edge

for.end.i.add_suspend_info.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_suspend_info.exit

if.end.i.i23.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %prev.i21.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %node12.i, ptr %prev.i21.i, align 4
  %24 = ptrtoint ptr %node12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %unlk_lst.i, ptr %node12.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.opal_suspend_data, ptr %call7.i.i, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i, align 8
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %node12.i, ptr %22, align 4
  br label %add_suspend_info.exit

add_suspend_info.exit:                            ; preds = %if.end.i.i23.i, %for.end.i.add_suspend_info.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %dev_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %add_suspend_info.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %add_suspend_info.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opal_lock_unlock(ptr noundef %dev, ptr noundef %lk_unlk) unnamed_addr #0 align 64 {
entry:
  %unlock_steps.i = alloca [3 x %struct.opal_step], align 4
  %unlock_sum_steps.i = alloca [3 x %struct.opal_step], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %who = getelementptr inbounds %struct.opal_session_info, ptr %lk_unlk, i32 0, i32 1
  %0 = ptrtoint ptr %who to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %who, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp = icmp ugt i32 %1, 9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %unlock_steps.i) #6
  %2 = getelementptr inbounds %struct.opal_step, ptr %unlock_steps.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x %struct.opal_step], ptr %unlock_steps.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x %struct.opal_step], ptr %unlock_steps.i, i32 0, i32 1, i32 1
  %5 = getelementptr inbounds [3 x %struct.opal_step], ptr %unlock_steps.i, i32 0, i32 2
  %6 = getelementptr inbounds [3 x %struct.opal_step], ptr %unlock_steps.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %unlock_steps.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @start_auth_opal_session, ptr %unlock_steps.i, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %lk_unlk, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @lock_unlock_locking_range, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %lk_unlk, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @end_opal_session, ptr %5, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %unlock_sum_steps.i) #6
  %13 = getelementptr inbounds %struct.opal_step, ptr %unlock_sum_steps.i, i32 0, i32 1
  %14 = getelementptr inbounds [3 x %struct.opal_step], ptr %unlock_sum_steps.i, i32 0, i32 1
  %15 = getelementptr inbounds [3 x %struct.opal_step], ptr %unlock_sum_steps.i, i32 0, i32 1, i32 1
  %16 = getelementptr inbounds [3 x %struct.opal_step], ptr %unlock_sum_steps.i, i32 0, i32 2
  %17 = getelementptr inbounds [3 x %struct.opal_step], ptr %unlock_sum_steps.i, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %unlock_sum_steps.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @start_auth_opal_session, ptr %unlock_sum_steps.i, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %lk_unlk, ptr %13, align 4
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @lock_unlock_locking_range_sum, ptr %14, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %lk_unlk, ptr %15, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @end_opal_session, ptr %16, align 4
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %17, align 4
  %24 = ptrtoint ptr %lk_unlk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %lk_unlk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  %unlock_steps.unlock_sum_steps.i = select i1 %tobool.not.i, ptr %unlock_steps.i, ptr %unlock_sum_steps.i
  %call18.i = call fastcc i32 @execute_steps(ptr noundef %dev, ptr noundef nonnull %unlock_steps.unlock_sum_steps.i, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %unlock_sum_steps.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %unlock_steps.i) #6
  tail call void @mutex_unlock(ptr noundef %dev_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opal_take_ownership(ptr noundef %dev, ptr noundef %opal) unnamed_addr #0 align 64 {
entry:
  %owner_steps = alloca [6 x %struct.opal_step], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %owner_steps) #6
  %0 = ptrtoint ptr %owner_steps to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @start_anybodyASP_opal_session, ptr %owner_steps, align 4
  %data = getelementptr inbounds %struct.opal_step, ptr %owner_steps, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %data, align 4
  %arrayinit.element = getelementptr inbounds %struct.opal_step, ptr %owner_steps, i32 1
  %2 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @get_msid_cpin_pin, ptr %arrayinit.element, align 4
  %data2 = getelementptr inbounds %struct.opal_step, ptr %owner_steps, i32 1, i32 1
  %3 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %data2, align 4
  %arrayinit.element3 = getelementptr inbounds %struct.opal_step, ptr %owner_steps, i32 2
  %4 = ptrtoint ptr %arrayinit.element3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @end_opal_session, ptr %arrayinit.element3, align 4
  %data5 = getelementptr inbounds %struct.opal_step, ptr %owner_steps, i32 2, i32 1
  %5 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %data5, align 4
  %arrayinit.element6 = getelementptr inbounds %struct.opal_step, ptr %owner_steps, i32 3
  %6 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @start_SIDASP_opal_session, ptr %arrayinit.element6, align 4
  %data8 = getelementptr inbounds %struct.opal_step, ptr %owner_steps, i32 3, i32 1
  %7 = ptrtoint ptr %data8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %opal, ptr %data8, align 4
  %arrayinit.element9 = getelementptr inbounds %struct.opal_step, ptr %owner_steps, i32 4
  %8 = ptrtoint ptr %arrayinit.element9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @set_sid_cpin_pin, ptr %arrayinit.element9, align 4
  %data11 = getelementptr inbounds %struct.opal_step, ptr %owner_steps, i32 4, i32 1
  %9 = ptrtoint ptr %data11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %opal, ptr %data11, align 4
  %arrayinit.element12 = getelementptr inbounds %struct.opal_step, ptr %owner_steps, i32 5
  %10 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @end_opal_session, ptr %arrayinit.element12, align 4
  %data14 = getelementptr inbounds %struct.opal_step, ptr %owner_steps, i32 5, i32 1
  %11 = ptrtoint ptr %data14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %data14, align 4
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %12 = ptrtoint ptr %tsn.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tsn.i, align 8
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %13 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %hsn.i, align 4
  %prev_data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %14 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %prev_data.i, align 4
  %call = call fastcc i32 @execute_steps(ptr noundef nonnull %dev, ptr noundef nonnull %owner_steps, i32 noundef 6)
  tail call void @mutex_unlock(ptr noundef %dev_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %owner_steps) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opal_activate_lsp(ptr noundef %dev, ptr noundef %opal_lr_act) unnamed_addr #0 align 64 {
entry:
  %active_steps = alloca [4 x %struct.opal_step], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %active_steps) #6
  %0 = getelementptr inbounds %struct.opal_step, ptr %active_steps, i32 0, i32 1
  %1 = getelementptr inbounds [4 x %struct.opal_step], ptr %active_steps, i32 0, i32 1
  %2 = getelementptr inbounds [4 x %struct.opal_step], ptr %active_steps, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds [4 x %struct.opal_step], ptr %active_steps, i32 0, i32 2
  %4 = getelementptr inbounds [4 x %struct.opal_step], ptr %active_steps, i32 0, i32 2, i32 1
  %5 = getelementptr inbounds [4 x %struct.opal_step], ptr %active_steps, i32 0, i32 3
  %6 = getelementptr inbounds [4 x %struct.opal_step], ptr %active_steps, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %active_steps to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @start_SIDASP_opal_session, ptr %active_steps, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %opal_lr_act, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @get_lsp_lifecycle, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @activate_lsp, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %opal_lr_act, ptr %4, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @end_opal_session, ptr %5, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %6, align 4
  %num_lrs = getelementptr inbounds %struct.opal_lr_act, ptr %opal_lr_act, i32 0, i32 2
  %15 = ptrtoint ptr %num_lrs to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_lrs, align 4
  %17 = add i8 %16, -10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %17)
  %18 = icmp ult i8 %17, -9
  br i1 %18, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %19 = ptrtoint ptr %tsn.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %tsn.i, align 8
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %20 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %hsn.i, align 4
  %prev_data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %21 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %prev_data.i, align 4
  %call = call fastcc i32 @execute_steps(ptr noundef %dev, ptr noundef nonnull %active_steps, i32 noundef 4)
  tail call void @mutex_unlock(ptr noundef %dev_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %active_steps) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opal_set_new_pw(ptr noundef %dev, ptr noundef %opal_pw) unnamed_addr #0 align 64 {
entry:
  %pw_steps = alloca [3 x %struct.opal_step], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pw_steps) #6
  %0 = getelementptr inbounds %struct.opal_step, ptr %pw_steps, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.opal_step], ptr %pw_steps, i32 0, i32 1
  %2 = getelementptr inbounds [3 x %struct.opal_step], ptr %pw_steps, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds [3 x %struct.opal_step], ptr %pw_steps, i32 0, i32 2
  %4 = getelementptr inbounds [3 x %struct.opal_step], ptr %pw_steps, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %pw_steps to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @start_auth_opal_session, ptr %pw_steps, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %opal_pw, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @set_new_pw, ptr %1, align 4
  %new_user_pw = getelementptr inbounds %struct.opal_new_pw, ptr %opal_pw, i32 0, i32 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %new_user_pw, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @end_opal_session, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %who = getelementptr inbounds %struct.opal_session_info, ptr %opal_pw, i32 0, i32 1
  %11 = ptrtoint ptr %who to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %who, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %12)
  %cmp = icmp ugt i32 %12, 9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %who8 = getelementptr inbounds %struct.opal_new_pw, ptr %opal_pw, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %who8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %who8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %14)
  %cmp9 = icmp ugt i32 %14, 9
  br i1 %cmp9, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %15 = ptrtoint ptr %tsn.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tsn.i, align 8
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %16 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %hsn.i, align 4
  %prev_data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %17 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %prev_data.i, align 4
  %call = call fastcc i32 @execute_steps(ptr noundef %dev, ptr noundef nonnull %pw_steps, i32 noundef 3)
  tail call void @mutex_unlock(ptr noundef %dev_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pw_steps) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opal_activate_user(ptr noundef %dev, ptr noundef %opal_session) unnamed_addr #0 align 64 {
entry:
  %act_steps = alloca [3 x %struct.opal_step], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %act_steps) #6
  %0 = getelementptr inbounds %struct.opal_step, ptr %act_steps, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.opal_step], ptr %act_steps, i32 0, i32 1
  %2 = getelementptr inbounds [3 x %struct.opal_step], ptr %act_steps, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds [3 x %struct.opal_step], ptr %act_steps, i32 0, i32 2
  %4 = getelementptr inbounds [3 x %struct.opal_step], ptr %act_steps, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %act_steps to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @start_admin1LSP_opal_session, ptr %act_steps, align 4
  %opal_key = getelementptr inbounds %struct.opal_session_info, ptr %opal_session, i32 0, i32 2
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %opal_key, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @internal_activate_user, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %opal_session, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @end_opal_session, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %who = getelementptr inbounds %struct.opal_session_info, ptr %opal_session, i32 0, i32 1
  %11 = ptrtoint ptr %who to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %who, align 4
  %13 = add i32 %12, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %13)
  %14 = icmp ult i32 %13, -9
  br i1 %14, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @opal_activate_user.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opal_activate_user, %if.then10)) #6
          to label %cleanup [label %if.then10], !srcloc !392

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %who to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %who, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @opal_activate_user.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.147, i32 noundef %16) #6
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %17 = ptrtoint ptr %tsn.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tsn.i, align 8
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %18 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %hsn.i, align 4
  %prev_data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %19 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %prev_data.i, align 4
  %call13 = call fastcc i32 @execute_steps(ptr noundef %dev, ptr noundef nonnull %act_steps, i32 noundef 3)
  tail call void @mutex_unlock(ptr noundef %dev_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %do.body
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ -22, %if.then10 ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %act_steps) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opal_reverttper(ptr noundef %dev, ptr noundef %opal, i1 noundef zeroext %psid) unnamed_addr #0 align 64 {
entry:
  %revert_steps = alloca [2 x %struct.opal_step], align 4
  %psid_revert_steps = alloca [2 x %struct.opal_step], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %revert_steps) #6
  %0 = getelementptr inbounds %struct.opal_step, ptr %revert_steps, i32 0, i32 1
  %1 = getelementptr inbounds [2 x %struct.opal_step], ptr %revert_steps, i32 0, i32 1
  %2 = getelementptr inbounds [2 x %struct.opal_step], ptr %revert_steps, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %revert_steps to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @start_SIDASP_opal_session, ptr %revert_steps, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %opal, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @revert_tper, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %psid_revert_steps) #6
  %7 = getelementptr inbounds %struct.opal_step, ptr %psid_revert_steps, i32 0, i32 1
  %8 = getelementptr inbounds [2 x %struct.opal_step], ptr %psid_revert_steps, i32 0, i32 1
  %9 = getelementptr inbounds [2 x %struct.opal_step], ptr %psid_revert_steps, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %psid_revert_steps to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @start_PSID_opal_session, ptr %psid_revert_steps, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %opal, ptr %7, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @revert_tper, ptr %8, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %9, align 4
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %14 = ptrtoint ptr %tsn.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tsn.i, align 8
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %15 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %hsn.i, align 4
  %prev_data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %16 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %prev_data.i, align 4
  %psid_revert_steps.revert_steps = select i1 %psid, ptr %psid_revert_steps, ptr %revert_steps
  %call10 = call fastcc i32 @execute_steps(ptr noundef %dev, ptr noundef nonnull %psid_revert_steps.revert_steps, i32 noundef 2)
  tail call void @mutex_unlock(ptr noundef %dev_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  br i1 %tobool12.not, label %if.then13, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then13:                                        ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  %unlk_lst.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 16
  %17 = ptrtoint ptr %unlk_lst.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unlk_lst.i, align 8
  %cmp.not23.i = icmp eq ptr %18, %unlk_lst.i
  br i1 %cmp.not23.i, label %if.then13.clean_opal_dev.exit_crit_edge, label %if.then13.for.body.i_crit_edge

if.then13.for.body.i_crit_edge:                   ; preds = %if.then13
  br label %for.body.i

if.then13.clean_opal_dev.exit_crit_edge:          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %clean_opal_dev.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then13.for.body.i_crit_edge
  %.pn.in24.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %18, %if.then13.for.body.i_crit_edge ]
  %suspend.0.i = getelementptr i8, ptr %.pn.in24.i, i32 -284
  %19 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i = load ptr, ptr %.pn.in24.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %.pn.in24.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %26 = ptrtoint ptr %.pn.in24.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in24.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %suspend.0.i) #6
  %cmp.not.i = icmp eq ptr %.pn.i, %unlk_lst.i
  br i1 %cmp.not.i, label %list_del.exit.i.clean_opal_dev.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

list_del.exit.i.clean_opal_dev.exit_crit_edge:    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clean_opal_dev.exit

clean_opal_dev.exit:                              ; preds = %list_del.exit.i.clean_opal_dev.exit_crit_edge, %if.then13.clean_opal_dev.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %dev_lock) #6
  br label %if.end14

if.end14:                                         ; preds = %clean_opal_dev.exit, %entry.if.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %psid_revert_steps) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %revert_steps) #6
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opal_setup_locking_range(ptr noundef %dev, ptr noundef %opal_lrs) unnamed_addr #0 align 64 {
entry:
  %lr_steps = alloca [3 x %struct.opal_step], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lr_steps) #6
  %0 = getelementptr inbounds %struct.opal_step, ptr %lr_steps, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.opal_step], ptr %lr_steps, i32 0, i32 1
  %2 = getelementptr inbounds [3 x %struct.opal_step], ptr %lr_steps, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds [3 x %struct.opal_step], ptr %lr_steps, i32 0, i32 2
  %4 = getelementptr inbounds [3 x %struct.opal_step], ptr %lr_steps, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %lr_steps to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @start_auth_opal_session, ptr %lr_steps, align 4
  %session = getelementptr inbounds %struct.opal_user_lr_setup, ptr %opal_lrs, i32 0, i32 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %session, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @setup_locking_range, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %opal_lrs, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @end_opal_session, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %11 = ptrtoint ptr %tsn.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tsn.i, align 8
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %12 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %hsn.i, align 4
  %prev_data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %13 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %prev_data.i, align 4
  %call = call fastcc i32 @execute_steps(ptr noundef %dev, ptr noundef nonnull %lr_steps, i32 noundef 3)
  tail call void @mutex_unlock(ptr noundef %dev_lock) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lr_steps) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opal_add_user_to_lr(ptr noundef %dev, ptr noundef %lk_unlk) unnamed_addr #0 align 64 {
entry:
  %steps = alloca [3 x %struct.opal_step], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %steps) #6
  %0 = getelementptr inbounds %struct.opal_step, ptr %steps, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.opal_step], ptr %steps, i32 0, i32 1
  %2 = getelementptr inbounds [3 x %struct.opal_step], ptr %steps, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds [3 x %struct.opal_step], ptr %steps, i32 0, i32 2
  %4 = getelementptr inbounds [3 x %struct.opal_step], ptr %steps, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %steps to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @start_admin1LSP_opal_session, ptr %steps, align 4
  %opal_key = getelementptr inbounds %struct.opal_session_info, ptr %lk_unlk, i32 0, i32 2
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %opal_key, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @add_user_to_lr, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %lk_unlk, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @end_opal_session, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %l_state = getelementptr inbounds %struct.opal_lock_unlock, ptr %lk_unlk, i32 0, i32 1
  %11 = ptrtoint ptr %l_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %l_state, align 4
  %.off = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end11, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @opal_add_user_to_lr.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opal_add_user_to_lr, %if.then10)) #6
          to label %cleanup [label %if.then10], !srcloc !392

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @opal_add_user_to_lr.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.162) #6
  br label %cleanup

if.end11:                                         ; preds = %entry
  %who = getelementptr inbounds %struct.opal_session_info, ptr %lk_unlk, i32 0, i32 1
  %13 = ptrtoint ptr %who to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %who, align 4
  %15 = add i32 %14, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %15)
  %16 = icmp ult i32 %15, -9
  br i1 %16, label %do.body18, label %if.end36

do.body18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @opal_add_user_to_lr.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opal_add_user_to_lr, %if.then30)) #6
          to label %cleanup [label %if.then30], !srcloc !392

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %who to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %who, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @opal_add_user_to_lr.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.164, i32 noundef %18) #6
  br label %cleanup

if.end36:                                         ; preds = %if.end11
  %19 = ptrtoint ptr %lk_unlk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lk_unlk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool38.not = icmp eq i32 %20, 0
  br i1 %tobool38.not, label %if.end56, label %do.body40

do.body40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @opal_add_user_to_lr.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opal_add_user_to_lr, %if.then52)) #6
          to label %cleanup [label %if.then52], !srcloc !392

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @opal_add_user_to_lr.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.160) #6
  br label %cleanup

if.end56:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %21 = ptrtoint ptr %tsn.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %tsn.i, align 8
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %22 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %hsn.i, align 4
  %prev_data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %23 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %prev_data.i, align 4
  %call57 = call fastcc i32 @execute_steps(ptr noundef %dev, ptr noundef nonnull %steps, i32 noundef 3)
  tail call void @mutex_unlock(ptr noundef %dev_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then52, %do.body40, %if.then30, %do.body18, %if.then10, %do.body
  %retval.0 = phi i32 [ %call57, %if.end56 ], [ -22, %if.then10 ], [ -22, %if.then30 ], [ -22, %if.then52 ], [ -22, %do.body ], [ -22, %do.body18 ], [ -22, %do.body40 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %steps) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opal_enable_disable_shadow_mbr(ptr noundef %dev, ptr noundef %opal_mbr) unnamed_addr #0 align 64 {
entry:
  %enable_disable = alloca i8, align 1
  %mbr_steps = alloca [6 x %struct.opal_step], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable_disable) #6
  %enable_disable1 = getelementptr inbounds %struct.opal_mbr_data, ptr %opal_mbr, i32 0, i32 1
  %0 = ptrtoint ptr %enable_disable1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable_disable1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %conv3 = zext i1 %cmp to i8
  %2 = ptrtoint ptr %enable_disable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv3, ptr %enable_disable, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %mbr_steps) #6
  %3 = ptrtoint ptr %mbr_steps to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @start_admin1LSP_opal_session, ptr %mbr_steps, align 4
  %data = getelementptr inbounds %struct.opal_step, ptr %mbr_steps, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %opal_mbr, ptr %data, align 4
  %arrayinit.element = getelementptr inbounds %struct.opal_step, ptr %mbr_steps, i32 1
  %5 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @set_mbr_done, ptr %arrayinit.element, align 4
  %data5 = getelementptr inbounds %struct.opal_step, ptr %mbr_steps, i32 1, i32 1
  %6 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %enable_disable, ptr %data5, align 4
  %arrayinit.element6 = getelementptr inbounds %struct.opal_step, ptr %mbr_steps, i32 2
  %7 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @end_opal_session, ptr %arrayinit.element6, align 4
  %data8 = getelementptr inbounds %struct.opal_step, ptr %mbr_steps, i32 2, i32 1
  %8 = ptrtoint ptr %data8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %data8, align 4
  %arrayinit.element9 = getelementptr inbounds %struct.opal_step, ptr %mbr_steps, i32 3
  %9 = ptrtoint ptr %arrayinit.element9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @start_admin1LSP_opal_session, ptr %arrayinit.element9, align 4
  %data11 = getelementptr inbounds %struct.opal_step, ptr %mbr_steps, i32 3, i32 1
  %10 = ptrtoint ptr %data11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %opal_mbr, ptr %data11, align 4
  %arrayinit.element13 = getelementptr inbounds %struct.opal_step, ptr %mbr_steps, i32 4
  %11 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @set_mbr_enable_disable, ptr %arrayinit.element13, align 4
  %data15 = getelementptr inbounds %struct.opal_step, ptr %mbr_steps, i32 4, i32 1
  %12 = ptrtoint ptr %data15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %enable_disable, ptr %data15, align 4
  %arrayinit.element16 = getelementptr inbounds %struct.opal_step, ptr %mbr_steps, i32 5
  %13 = ptrtoint ptr %arrayinit.element16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @end_opal_session, ptr %arrayinit.element16, align 4
  %data18 = getelementptr inbounds %struct.opal_step, ptr %mbr_steps, i32 5, i32 1
  %14 = ptrtoint ptr %data18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %data18, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %switch = icmp ult i8 %1, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %15 = ptrtoint ptr %tsn.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tsn.i, align 8
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %16 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %hsn.i, align 4
  %prev_data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %17 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %prev_data.i, align 4
  %call = call fastcc i32 @execute_steps(ptr noundef %dev, ptr noundef nonnull %mbr_steps, i32 noundef 6)
  call void @mutex_unlock(ptr noundef %dev_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %mbr_steps) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable_disable) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opal_set_mbr_done(ptr noundef %dev, ptr noundef %mbr_done) unnamed_addr #0 align 64 {
entry:
  %mbr_done_tf = alloca i8, align 1
  %mbr_steps = alloca [3 x %struct.opal_step], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mbr_done_tf) #6
  %done_flag = getelementptr inbounds %struct.opal_mbr_done, ptr %mbr_done, i32 0, i32 1
  %0 = ptrtoint ptr %done_flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %done_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %conv2 = zext i1 %cmp to i8
  %2 = ptrtoint ptr %mbr_done_tf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv2, ptr %mbr_done_tf, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mbr_steps) #6
  %3 = getelementptr inbounds %struct.opal_step, ptr %mbr_steps, i32 0, i32 1
  %4 = getelementptr inbounds [3 x %struct.opal_step], ptr %mbr_steps, i32 0, i32 1
  %5 = getelementptr inbounds [3 x %struct.opal_step], ptr %mbr_steps, i32 0, i32 1, i32 1
  %6 = getelementptr inbounds [3 x %struct.opal_step], ptr %mbr_steps, i32 0, i32 2
  %7 = getelementptr inbounds [3 x %struct.opal_step], ptr %mbr_steps, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %mbr_steps to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @start_admin1LSP_opal_session, ptr %mbr_steps, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mbr_done, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @set_mbr_done, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mbr_done_tf, ptr %5, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @end_opal_session, ptr %6, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %switch = icmp ult i8 %1, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %14 = ptrtoint ptr %tsn.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tsn.i, align 8
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %15 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %hsn.i, align 4
  %prev_data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %16 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %prev_data.i, align 4
  %call = call fastcc i32 @execute_steps(ptr noundef %dev, ptr noundef nonnull %mbr_steps, i32 noundef 3)
  call void @mutex_unlock(ptr noundef %dev_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mbr_steps) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mbr_done_tf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opal_write_shadow_mbr(ptr noundef %dev, ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  %mbr_steps = alloca [3 x %struct.opal_step], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mbr_steps) #6
  %0 = getelementptr inbounds %struct.opal_step, ptr %mbr_steps, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.opal_step], ptr %mbr_steps, i32 0, i32 1
  %2 = getelementptr inbounds [3 x %struct.opal_step], ptr %mbr_steps, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds [3 x %struct.opal_step], ptr %mbr_steps, i32 0, i32 2
  %4 = getelementptr inbounds [3 x %struct.opal_step], ptr %mbr_steps, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %mbr_steps to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @start_admin1LSP_opal_session, ptr %mbr_steps, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %info, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @write_shadow_mbr, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %info, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @end_opal_session, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %size = getelementptr inbounds %struct.opal_shadow_mbr, ptr %info, i32 0, i32 3
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp = icmp eq i64 %12, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %13 = ptrtoint ptr %tsn.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tsn.i, align 8
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %14 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %hsn.i, align 4
  %prev_data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %15 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %prev_data.i, align 4
  %call = call fastcc i32 @execute_steps(ptr noundef %dev, ptr noundef nonnull %mbr_steps, i32 noundef 3)
  tail call void @mutex_unlock(ptr noundef %dev_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mbr_steps) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opal_erase_locking_range(ptr noundef %dev, ptr noundef %opal_session) unnamed_addr #0 align 64 {
entry:
  %erase_steps = alloca [3 x %struct.opal_step], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %erase_steps) #6
  %0 = getelementptr inbounds %struct.opal_step, ptr %erase_steps, i32 0, i32 1
  %1 = getelementptr inbounds [3 x %struct.opal_step], ptr %erase_steps, i32 0, i32 1
  %2 = getelementptr inbounds [3 x %struct.opal_step], ptr %erase_steps, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds [3 x %struct.opal_step], ptr %erase_steps, i32 0, i32 2
  %4 = getelementptr inbounds [3 x %struct.opal_step], ptr %erase_steps, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %erase_steps to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @start_auth_opal_session, ptr %erase_steps, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %opal_session, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @erase_locking_range, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %opal_session, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @end_opal_session, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %4, align 4
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %11 = ptrtoint ptr %tsn.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tsn.i, align 8
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %12 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %hsn.i, align 4
  %prev_data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %13 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %prev_data.i, align 4
  %call = call fastcc i32 @execute_steps(ptr noundef %dev, ptr noundef nonnull %erase_steps, i32 noundef 3)
  tail call void @mutex_unlock(ptr noundef %dev_lock) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %erase_steps) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opal_secure_erase_locking_range(ptr noundef %dev, ptr noundef %opal_session) unnamed_addr #0 align 64 {
entry:
  %erase_steps = alloca [4 x %struct.opal_step], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %erase_steps) #6
  %0 = getelementptr inbounds %struct.opal_step, ptr %erase_steps, i32 0, i32 1
  %1 = getelementptr inbounds [4 x %struct.opal_step], ptr %erase_steps, i32 0, i32 1
  %2 = getelementptr inbounds [4 x %struct.opal_step], ptr %erase_steps, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds [4 x %struct.opal_step], ptr %erase_steps, i32 0, i32 2
  %4 = getelementptr inbounds [4 x %struct.opal_step], ptr %erase_steps, i32 0, i32 2, i32 1
  %5 = getelementptr inbounds [4 x %struct.opal_step], ptr %erase_steps, i32 0, i32 3
  %6 = getelementptr inbounds [4 x %struct.opal_step], ptr %erase_steps, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %erase_steps to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @start_auth_opal_session, ptr %erase_steps, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %opal_session, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @get_active_key, ptr %1, align 4
  %opal_key = getelementptr inbounds %struct.opal_session_info, ptr %opal_session, i32 0, i32 2
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %opal_key, ptr %2, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @gen_key, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %4, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @end_opal_session, ptr %5, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %6, align 4
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %15 = ptrtoint ptr %tsn.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tsn.i, align 8
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %16 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %hsn.i, align 4
  %prev_data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %17 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %prev_data.i, align 4
  %call = call fastcc i32 @execute_steps(ptr noundef %dev, ptr noundef nonnull %erase_steps, i32 noundef 4)
  tail call void @mutex_unlock(ptr noundef %dev_lock) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %erase_steps) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opal_generic_read_write_table(ptr noundef %dev, ptr noundef %rw_tbl) unnamed_addr #0 align 64 {
entry:
  %write_table_steps.i = alloca [3 x %struct.opal_step], align 4
  %read_table_steps.i = alloca [3 x %struct.opal_step], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_lock = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_lock, i32 noundef 0) #6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %tsn.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tsn.i, align 8
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %1 = ptrtoint ptr %hsn.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %hsn.i, align 4
  %prev_data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %prev_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %prev_data.i, align 4
  %flags = getelementptr inbounds %struct.opal_read_write_table, ptr %rw_tbl, i32 0, i32 5
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %flags, align 8
  %shr.i = lshr i64 %4, 32
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = tail call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #6, !range !394
  %add.i = sub nuw nsw i32 64, %5
  br label %fls64.exit

if.end.i:                                         ; preds = %entry
  %conv1.i = trunc i64 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %tobool.not.i5.i = icmp eq i32 %conv1.i, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i, i1 true) #6, !range !394
  %sub.i6.i = sub nuw nsw i32 32, %6
  br i1 %tobool.not.i5.i, label %if.end.i.do.body_crit_edge, label %if.end.i.fls64.exit_crit_edge

if.end.i.fls64.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fls64.exit

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

fls64.exit:                                       ; preds = %if.end.i.fls64.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub.i6.i, %if.end.i.fls64.exit_crit_edge ]
  %7 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %retval.0.i, label %fls64.exit.do.body_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

fls64.exit.do.body_crit_edge:                     ; preds = %fls64.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb:                                            ; preds = %fls64.exit
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %read_table_steps.i) #6
  %8 = getelementptr inbounds %struct.opal_step, ptr %read_table_steps.i, i32 0, i32 1
  %9 = getelementptr inbounds [3 x %struct.opal_step], ptr %read_table_steps.i, i32 0, i32 1
  %10 = getelementptr inbounds [3 x %struct.opal_step], ptr %read_table_steps.i, i32 0, i32 1, i32 1
  %11 = getelementptr inbounds [3 x %struct.opal_step], ptr %read_table_steps.i, i32 0, i32 2
  %12 = getelementptr inbounds [3 x %struct.opal_step], ptr %read_table_steps.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %read_table_steps.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @start_admin1LSP_opal_session, ptr %read_table_steps.i, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rw_tbl, ptr %8, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @read_table_data, ptr %9, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rw_tbl, ptr %10, align 4
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @end_opal_session, ptr %11, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %12, align 4
  %size.i = getelementptr inbounds %struct.opal_read_write_table, ptr %rw_tbl, i32 0, i32 4
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool.not.i17 = icmp eq i64 %20, 0
  br i1 %tobool.not.i17, label %sw.bb.opal_read_table.exit_crit_edge, label %if.end.i18

sw.bb.opal_read_table.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %opal_read_table.exit

if.end.i18:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call fastcc i32 @execute_steps(ptr noundef %dev, ptr noundef nonnull %read_table_steps.i, i32 noundef 3) #6
  br label %opal_read_table.exit

opal_read_table.exit:                             ; preds = %if.end.i18, %sw.bb.opal_read_table.exit_crit_edge
  %retval.0.i19 = phi i32 [ %call.i, %if.end.i18 ], [ 0, %sw.bb.opal_read_table.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %read_table_steps.i) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %fls64.exit
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %write_table_steps.i) #6
  %21 = getelementptr inbounds %struct.opal_step, ptr %write_table_steps.i, i32 0, i32 1
  %22 = getelementptr inbounds [3 x %struct.opal_step], ptr %write_table_steps.i, i32 0, i32 1
  %23 = getelementptr inbounds [3 x %struct.opal_step], ptr %write_table_steps.i, i32 0, i32 1, i32 1
  %24 = getelementptr inbounds [3 x %struct.opal_step], ptr %write_table_steps.i, i32 0, i32 2
  %25 = getelementptr inbounds [3 x %struct.opal_step], ptr %write_table_steps.i, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %write_table_steps.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @start_admin1LSP_opal_session, ptr %write_table_steps.i, align 4
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %rw_tbl, ptr %21, align 4
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @write_table_data, ptr %22, align 4
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rw_tbl, ptr %23, align 4
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @end_opal_session, ptr %24, align 4
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %25, align 4
  %size.i20 = getelementptr inbounds %struct.opal_read_write_table, ptr %rw_tbl, i32 0, i32 4
  %32 = ptrtoint ptr %size.i20 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %size.i20, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool.not.i21 = icmp eq i64 %33, 0
  br i1 %tobool.not.i21, label %sw.bb2.opal_write_table.exit_crit_edge, label %if.end.i23

sw.bb2.opal_write_table.exit_crit_edge:           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %opal_write_table.exit

if.end.i23:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %call.i22 = call fastcc i32 @execute_steps(ptr noundef %dev, ptr noundef nonnull %write_table_steps.i, i32 noundef 3) #6
  br label %opal_write_table.exit

opal_write_table.exit:                            ; preds = %if.end.i23, %sw.bb2.opal_write_table.exit_crit_edge
  %retval.0.i24 = phi i32 [ %call.i22, %if.end.i23 ], [ 0, %sw.bb2.opal_write_table.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %write_table_steps.i) #6
  br label %sw.epilog

do.body:                                          ; preds = %fls64.exit.do.body_crit_edge, %if.end.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @opal_generic_read_write_table.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opal_generic_read_write_table, %if.then)) #6
          to label %sw.epilog [label %if.then], !srcloc !392

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %flags, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @opal_generic_read_write_table.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.194, i64 noundef %35) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body, %opal_write_table.exit, %opal_read_table.exit
  %ret.0 = phi i32 [ %retval.0.i24, %opal_write_table.exit ], [ %retval.0.i19, %opal_read_table.exit ], [ -22, %if.then ], [ -22, %do.body ]
  tail call void @mutex_unlock(ptr noundef %dev_lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @opal_discovery0(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %resp = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 12
  %0 = call ptr @memset(ptr %resp, i32 0, i32 2048)
  %comid = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %comid to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %comid, align 8
  %send_recv.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %send_recv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %send_recv.i, align 8
  %data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %call.i = tail call i32 %3(ptr noundef %5, i16 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef %resp, i32 noundef 2048, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @opal_discovery0_end(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opal_discovery0_end(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %resp = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resp, align 4
  %mbr_enabled = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %mbr_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %mbr_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %1)
  %cmp = icmp ugt i32 %1, 2000
  br i1 %cmp, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @opal_discovery0_end.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opal_discovery0_end, %if.then9)) #6
          to label %cleanup [label %if.then9], !srcloc !392

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @opal_discovery0_end.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.13, i32 noundef 48, i32 noundef %1, i32 noundef 2048) #6
  br label %cleanup

if.end10:                                         ; preds = %entry
  %add.ptr = getelementptr i8, ptr %resp, i32 %1
  %add.ptr11 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 12, i32 48
  %cmp12220.not = icmp ult ptr %add.ptr11, %add.ptr
  br i1 %cmp12220.not, label %while.body.lr.ph, label %if.end10.do.body99_crit_edge

if.end10.do.body99_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body99

while.body.lr.ph:                                 ; preds = %if.end10
  %align.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 8
  %lowest_lba.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %found_com_id.0.off0226 = phi i1 [ false, %while.body.lr.ph ], [ %found_com_id.1.off0, %sw.epilog.while.body_crit_edge ]
  %supported.0.off0225 = phi i1 [ true, %while.body.lr.ph ], [ %supported.1.off0, %sw.epilog.while.body_crit_edge ]
  %single_user.0.off0224 = phi i1 [ false, %while.body.lr.ph ], [ %single_user.1.off0, %sw.epilog.while.body_crit_edge ]
  %cpos.0222 = phi ptr [ %add.ptr11, %while.body.lr.ph ], [ %add.ptr77, %sw.epilog.while.body_crit_edge ]
  %comid.0221 = phi i16 [ 0, %while.body.lr.ph ], [ %comid.1, %sw.epilog.while.body_crit_edge ]
  %3 = ptrtoint ptr %cpos.0222 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cpos.0222, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.206)
  switch i16 %4, label %sw.caserange [
    i16 1, label %sw.bb
    i16 513, label %sw.bb17
    i16 3, label %sw.bb22
    i16 2, label %sw.bb23
    i16 256, label %while.body.do.body30_crit_edge
    i16 514, label %while.body.do.body30_crit_edge245
    i16 512, label %sw.bb48
    i16 515, label %sw.bb52
  ]

while.body.do.body30_crit_edge245:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

while.body.do.body30_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

sw.bb:                                            ; preds = %while.body
  %features = getelementptr inbounds %struct.d0_features, ptr %cpos.0222, i32 0, i32 3
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %features, align 4
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %do.body.i, label %sw.bb.check_tper.exit_crit_edge

sw.bb.check_tper.exit_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_tper.exit

do.body.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_tper.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opal_discovery0_end, %if.then4.i)) #6
          to label %check_tper.exit [label %if.then4.i], !srcloc !392

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %features to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %features, align 4
  %conv6.i = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @check_tper.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.26, i32 noundef %conv6.i) #6
  br label %check_tper.exit

check_tper.exit:                                  ; preds = %if.then4.i, %do.body.i, %sw.bb.check_tper.exit_crit_edge
  %11 = xor i1 %tobool.not.i, true
  br label %sw.epilog

sw.bb17:                                          ; preds = %while.body
  %features18 = getelementptr inbounds %struct.d0_features, ptr %cpos.0222, i32 0, i32 3
  %12 = ptrtoint ptr %features18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %features18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %do.body.i213, label %do.body5.i

do.body.i213:                                     ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_sum.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opal_discovery0_end, %if.then3.i)) #6
          to label %check_sum.exit [label %if.then3.i], !srcloc !392

if.then3.i:                                       ; preds = %do.body.i213
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @check_sum.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.29) #6
  br label %check_sum.exit

do.body5.i:                                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_sum.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opal_discovery0_end, %if.then17.i)) #6
          to label %check_sum.exit [label %if.then17.i], !srcloc !392

if.then17.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @check_sum.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.31, i32 noundef %13) #6
  br label %check_sum.exit

check_sum.exit:                                   ; preds = %if.then17.i, %do.body5.i, %if.then3.i, %do.body.i213
  %14 = xor i1 %cmp.i, true
  br label %sw.epilog

sw.bb22:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %alignment_granularity.i = getelementptr inbounds %struct.d0_geometry_features, ptr %cpos.0222, i32 0, i32 4
  %15 = ptrtoint ptr %alignment_granularity.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %alignment_granularity.i, align 8
  %17 = ptrtoint ptr %align.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %align.i, align 8
  %lowest_aligned_lba.i = getelementptr inbounds %struct.d0_geometry_features, ptr %cpos.0222, i32 0, i32 5
  %18 = ptrtoint ptr %lowest_aligned_lba.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %lowest_aligned_lba.i, align 8
  %20 = ptrtoint ptr %lowest_lba.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %lowest_lba.i, align 8
  br label %sw.epilog

sw.bb23:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %features24 = getelementptr inbounds %struct.d0_features, ptr %cpos.0222, i32 0, i32 3
  %21 = ptrtoint ptr %features24 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %features24, align 4
  %23 = lshr i8 %22, 4
  %.lobit = and i8 %23, 1
  %24 = ptrtoint ptr %mbr_enabled to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.lobit, ptr %mbr_enabled, align 1
  br label %sw.epilog

do.body30:                                        ; preds = %while.body.do.body30_crit_edge, %while.body.do.body30_crit_edge245
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @opal_discovery0_end.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opal_discovery0_end, %if.then42)) #6
          to label %sw.epilog [label %if.then42], !srcloc !392

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %cpos.0222 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cpos.0222, align 2
  %conv44 = zext i16 %26 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @opal_discovery0_end.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.15, i32 noundef %conv44) #6
  br label %sw.epilog

sw.bb48:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %features49 = getelementptr inbounds %struct.d0_features, ptr %cpos.0222, i32 0, i32 3
  %27 = ptrtoint ptr %features49 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %features49, align 2
  br label %sw.epilog

sw.bb52:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %features53 = getelementptr inbounds %struct.d0_features, ptr %cpos.0222, i32 0, i32 3
  %29 = ptrtoint ptr %features53 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %features53, align 4
  br label %sw.epilog

sw.caserange:                                     ; preds = %while.body
  %conv = zext i16 %4 to i32
  %31 = add nsw i32 %conv, -49151
  call void @__sanitizer_cov_trace_const_cmp4(i32 16385, i32 %31)
  %inbounds = icmp ult i32 %31, 16385
  br i1 %inbounds, label %sw.caserange.sw.epilog_crit_edge, label %do.body57

sw.caserange.sw.epilog_crit_edge:                 ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body57:                                        ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @opal_discovery0_end.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opal_discovery0_end, %if.then69)) #6
          to label %sw.epilog [label %if.then69], !srcloc !392

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %cpos.0222 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %cpos.0222, align 2
  %conv71 = zext i16 %33 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @opal_discovery0_end.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.17, i32 noundef %conv71) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then69, %do.body57, %sw.caserange.sw.epilog_crit_edge, %sw.bb52, %sw.bb48, %if.then42, %do.body30, %sw.bb23, %sw.bb22, %check_sum.exit, %check_tper.exit
  %comid.1 = phi i16 [ %comid.0221, %sw.caserange.sw.epilog_crit_edge ], [ %comid.0221, %if.then69 ], [ %30, %sw.bb52 ], [ %28, %sw.bb48 ], [ %comid.0221, %if.then42 ], [ %comid.0221, %sw.bb23 ], [ %comid.0221, %sw.bb22 ], [ %comid.0221, %check_sum.exit ], [ %comid.0221, %check_tper.exit ], [ %comid.0221, %do.body30 ], [ %comid.0221, %do.body57 ]
  %single_user.1.off0 = phi i1 [ %single_user.0.off0224, %sw.caserange.sw.epilog_crit_edge ], [ %single_user.0.off0224, %if.then69 ], [ %single_user.0.off0224, %sw.bb52 ], [ %single_user.0.off0224, %sw.bb48 ], [ %single_user.0.off0224, %if.then42 ], [ %single_user.0.off0224, %sw.bb23 ], [ %single_user.0.off0224, %sw.bb22 ], [ %14, %check_sum.exit ], [ %single_user.0.off0224, %check_tper.exit ], [ %single_user.0.off0224, %do.body30 ], [ %single_user.0.off0224, %do.body57 ]
  %supported.1.off0 = phi i1 [ %supported.0.off0225, %sw.caserange.sw.epilog_crit_edge ], [ %supported.0.off0225, %if.then69 ], [ %supported.0.off0225, %sw.bb52 ], [ %supported.0.off0225, %sw.bb48 ], [ %supported.0.off0225, %if.then42 ], [ %supported.0.off0225, %sw.bb23 ], [ %supported.0.off0225, %sw.bb22 ], [ %supported.0.off0225, %check_sum.exit ], [ %11, %check_tper.exit ], [ %supported.0.off0225, %do.body30 ], [ %supported.0.off0225, %do.body57 ]
  %found_com_id.1.off0 = phi i1 [ %found_com_id.0.off0226, %sw.caserange.sw.epilog_crit_edge ], [ %found_com_id.0.off0226, %if.then69 ], [ true, %sw.bb52 ], [ true, %sw.bb48 ], [ %found_com_id.0.off0226, %if.then42 ], [ %found_com_id.0.off0226, %sw.bb23 ], [ %found_com_id.0.off0226, %sw.bb22 ], [ %found_com_id.0.off0226, %check_sum.exit ], [ %found_com_id.0.off0226, %check_tper.exit ], [ %found_com_id.0.off0226, %do.body30 ], [ %found_com_id.0.off0226, %do.body57 ]
  %length75 = getelementptr inbounds %struct.d0_features, ptr %cpos.0222, i32 0, i32 2
  %34 = ptrtoint ptr %length75 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %length75, align 1
  %conv76 = zext i8 %35 to i32
  %add = add nuw nsw i32 %conv76, 4
  %add.ptr77 = getelementptr i8, ptr %cpos.0222, i32 %add
  %cmp12 = icmp uge ptr %add.ptr77, %add.ptr
  %supported.0.off0.not = xor i1 %supported.1.off0, true
  %brmerge = select i1 %cmp12, i1 true, i1 %supported.0.off0.not
  br i1 %brmerge, label %while.end, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %sw.epilog
  br i1 %supported.1.off0, label %if.end96, label %do.body80

do.body80:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @opal_discovery0_end.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opal_discovery0_end, %if.then92)) #6
          to label %cleanup [label %if.then92], !srcloc !392

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @opal_discovery0_end.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.19) #6
  br label %cleanup

if.end96:                                         ; preds = %while.end
  br i1 %single_user.1.off0, label %if.end96.if.end115_crit_edge, label %if.end96.do.body99_crit_edge

if.end96.do.body99_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body99

if.end96.if.end115_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

do.body99:                                        ; preds = %if.end96.do.body99_crit_edge, %if.end10.do.body99_crit_edge
  %comid.0.lcssa234242 = phi i16 [ %comid.1, %if.end96.do.body99_crit_edge ], [ 0, %if.end10.do.body99_crit_edge ]
  %found_com_id.0.off0.lcssa236240 = phi i1 [ %found_com_id.1.off0, %if.end96.do.body99_crit_edge ], [ false, %if.end10.do.body99_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @opal_discovery0_end.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opal_discovery0_end, %if.then111)) #6
          to label %if.end115 [label %if.then111], !srcloc !392

if.then111:                                       ; preds = %do.body99
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @opal_discovery0_end.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.21) #6
  br i1 %found_com_id.0.off0.lcssa236240, label %if.then111.if.end134_crit_edge, label %if.then111.do.body118_crit_edge

if.then111.do.body118_crit_edge:                  ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body118

if.then111.if.end134_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.end115:                                        ; preds = %do.body99, %if.end96.if.end115_crit_edge
  %comid.0.lcssa234243 = phi i16 [ %comid.0.lcssa234242, %do.body99 ], [ %comid.1, %if.end96.if.end115_crit_edge ]
  %found_com_id.0.off0.lcssa236241 = phi i1 [ %found_com_id.0.off0.lcssa236240, %do.body99 ], [ %found_com_id.1.off0, %if.end96.if.end115_crit_edge ]
  br i1 %found_com_id.0.off0.lcssa236241, label %if.end115.if.end134_crit_edge, label %if.end115.do.body118_crit_edge

if.end115.do.body118_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body118

if.end115.if.end134_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

do.body118:                                       ; preds = %if.end115.do.body118_crit_edge, %if.then111.do.body118_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @opal_discovery0_end.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opal_discovery0_end, %if.then130)) #6
          to label %cleanup [label %if.then130], !srcloc !392

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @opal_discovery0_end.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.23) #6
  br label %cleanup

if.end134:                                        ; preds = %if.end115.if.end134_crit_edge, %if.then111.if.end134_crit_edge
  %comid.0.lcssa234243244 = phi i16 [ %comid.0.lcssa234242, %if.then111.if.end134_crit_edge ], [ %comid.0.lcssa234243, %if.end115.if.end134_crit_edge ]
  %comid135 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 5
  %36 = ptrtoint ptr %comid135 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %comid.0.lcssa234243244, ptr %comid135, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end134, %if.then130, %do.body118, %if.then92, %do.body80, %if.then9, %do.body
  %retval.0 = phi i32 [ 0, %if.end134 ], [ -14, %if.then9 ], [ -95, %if.then92 ], [ -95, %if.then130 ], [ -14, %do.body ], [ -95, %do.body80 ], [ -95, %do.body118 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_auth_opal_session(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %key_len = getelementptr inbounds %struct.opal_session_info, ptr %data, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key_len, align 1
  %conv = zext i8 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #6
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  %key2 = getelementptr inbounds %struct.opal_session_info, ptr %data, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %opal_key = getelementptr inbounds %struct.opal_session_info, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %opal_key to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %opal_key, align 4
  %add.i = add i8 %6, 1
  br label %if.end18

if.else:                                          ; preds = %entry
  %who = getelementptr inbounds %struct.opal_session_info, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %who to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %who, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %if.end15, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %9 = trunc i32 %8 to i8
  br label %if.end18

if.end15:                                         ; preds = %if.else
  %10 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool16.not = icmp eq i32 %.pr, 0
  br i1 %tobool16.not, label %if.end15.if.end18_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end18:                                         ; preds = %if.end15.if.end18_crit_edge, %if.then8, %if.then
  %lk_ul_user.sroa.11.0176 = phi i8 [ 1, %if.end15.if.end18_crit_edge ], [ 3, %if.then8 ], [ 3, %if.then ]
  %lk_ul_user.sroa.13.0175 = phi i8 [ 1, %if.end15.if.end18_crit_edge ], [ %9, %if.then8 ], [ %add.i, %if.then ]
  %call19 = tail call fastcc i32 @cmd_start(ptr noundef %dev, ptr noundef nonnull @opaluid, ptr noundef getelementptr inbounds ([16 x [8 x i8]], ptr @opalmethod, i32 0, i32 1))
  %11 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call19, ptr %err, align 4
  call fastcc void @add_token_u64(ptr noundef nonnull %err, ptr noundef %dev, i64 noundef 65)
  %12 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i141 = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i141, label %if.end.i.i144, label %if.end18.do.body.i148_crit_edge

if.end18.do.body.i148_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i148

if.end.i.i144:                                    ; preds = %if.end18
  %pos.i.i.i142 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %14 = ptrtoint ptr %pos.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pos.i.i.i142, align 8
  %16 = add i32 %15, -2040
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %16)
  %cmp.i.i143 = icmp ult i32 %16, 9
  br i1 %cmp.i.i143, label %do.body.i.i145, label %if.end11.i

do.body.i.i145:                                   ; preds = %if.end.i.i144
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_auth_opal_session, %if.then6.i.i146)) #6
          to label %do.end.i.i147 [label %if.then6.i.i146], !srcloc !392

if.then6.i.i146:                                  ; preds = %do.body.i.i145
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 9) #6
  br label %do.end.i.i147

do.end.i.i147:                                    ; preds = %if.then6.i.i146, %do.body.i.i145
  %17 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -34, ptr %err, align 4
  br label %do.body.i148

do.body.i148:                                     ; preds = %do.end.i.i147, %if.end18.do.body.i148_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_bytestring_header.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_auth_opal_session, %add_bytestring_header.exit.thread)) #6
          to label %add_bytestring_header.exit [label %add_bytestring_header.exit.thread], !srcloc !392

add_bytestring_header.exit.thread:                ; preds = %do.body.i148
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_bytestring_header.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.68) #6
  br label %add_token_bytestring.exit

if.end11.i:                                       ; preds = %if.end.i.i144
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i.i = add i32 %15, 1
  %18 = ptrtoint ptr %pos.i.i.i142 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %inc.i.i.i, ptr %pos.i.i.i142, align 8
  %arrayidx.i.i.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %15
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -88, ptr %arrayidx.i.i.i, align 1
  %20 = load i32, ptr %pos.i.i.i142, align 8
  %arrayidx.i149 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %20
  br label %add_bytestring_header.exit

add_bytestring_header.exit:                       ; preds = %if.end11.i, %do.body.i148
  %retval.0.i150 = phi ptr [ %arrayidx.i149, %if.end11.i ], [ null, %do.body.i148 ]
  %tobool.not.i = icmp eq ptr %retval.0.i150, null
  br i1 %tobool.not.i, label %add_bytestring_header.exit.add_token_bytestring.exit_crit_edge, label %if.end.i

add_bytestring_header.exit.add_token_bytestring.exit_crit_edge: ; preds = %add_bytestring_header.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_bytestring.exit

if.end.i:                                         ; preds = %add_bytestring_header.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %retval.0.i150 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 2220498092034, ptr %retval.0.i150, align 1
  %pos.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %22 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pos.i, align 8
  %add.i57 = add i32 %23, 8
  store i32 %add.i57, ptr %pos.i, align 8
  br label %add_token_bytestring.exit

add_token_bytestring.exit:                        ; preds = %if.end.i, %add_bytestring_header.exit.add_token_bytestring.exit_crit_edge, %add_bytestring_header.exit.thread
  %24 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %add_token_bytestring.exit.add_token_u8.exit81_crit_edge

add_token_bytestring.exit.add_token_u8.exit81_crit_edge: ; preds = %add_token_bytestring.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit81

if.end.i.i:                                       ; preds = %add_token_bytestring.exit
  %pos.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %26 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %27)
  %cmp.i.i = icmp eq i32 %27, 2048
  br i1 %cmp.i.i, label %do.body.i.i, label %add_token_u8.exit

do.body.i.i:                                      ; preds = %if.end.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_auth_opal_session, %if.then6.i.i)) #6
          to label %do.end.i.i [label %if.then6.i.i], !srcloc !392

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i, %do.body.i.i
  %28 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit81

add_token_u8.exit:                                ; preds = %if.end.i.i
  %inc.i = add i32 %27, 1
  %29 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc.i, ptr %pos.i.i.i, align 8
  %arrayidx.i58 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %27
  %30 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %arrayidx.i58, align 1
  %31 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr179 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr179)
  %tobool.not.i.i60 = icmp eq i32 %.pr179, 0
  br i1 %tobool.not.i.i60, label %if.end.i.i63, label %add_token_u8.exit.add_token_u8.exit81_crit_edge

add_token_u8.exit.add_token_u8.exit81_crit_edge:  ; preds = %add_token_u8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit81

if.end.i.i63:                                     ; preds = %add_token_u8.exit
  %32 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %33)
  %cmp.i.i62 = icmp eq i32 %33, 2048
  br i1 %cmp.i.i62, label %do.body.i.i64, label %add_token_u8.exit70

do.body.i.i64:                                    ; preds = %if.end.i.i63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_auth_opal_session, %if.then6.i.i65)) #6
          to label %do.end.i.i66 [label %if.then6.i.i65], !srcloc !392

if.then6.i.i65:                                   ; preds = %do.body.i.i64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i66

do.end.i.i66:                                     ; preds = %if.then6.i.i65, %do.body.i.i64
  %34 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit81

add_token_u8.exit70:                              ; preds = %if.end.i.i63
  %inc.i67 = add i32 %33, 1
  %35 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %inc.i67, ptr %pos.i.i.i, align 8
  %arrayidx.i68 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %33
  %36 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -14, ptr %arrayidx.i68, align 1
  %37 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr181.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr181.pr)
  %tobool.not.i.i71 = icmp eq i32 %.pr181.pr, 0
  br i1 %tobool.not.i.i71, label %if.end.i.i74, label %add_token_u8.exit70.add_token_u8.exit81_crit_edge

add_token_u8.exit70.add_token_u8.exit81_crit_edge: ; preds = %add_token_u8.exit70
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit81

if.end.i.i74:                                     ; preds = %add_token_u8.exit70
  %38 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %39)
  %cmp.i.i73 = icmp eq i32 %39, 2048
  br i1 %cmp.i.i73, label %do.body.i.i75, label %if.end.i80

do.body.i.i75:                                    ; preds = %if.end.i.i74
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_auth_opal_session, %if.then6.i.i76)) #6
          to label %do.end.i.i77 [label %if.then6.i.i76], !srcloc !392

if.then6.i.i76:                                   ; preds = %do.body.i.i75
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i77

do.end.i.i77:                                     ; preds = %if.then6.i.i76, %do.body.i.i75
  %40 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit81

if.end.i80:                                       ; preds = %if.end.i.i74
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i78 = add i32 %39, 1
  %41 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %inc.i78, ptr %pos.i.i.i, align 8
  %arrayidx.i79 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %39
  %42 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx.i79, align 1
  br label %add_token_u8.exit81

add_token_u8.exit81:                              ; preds = %if.end.i80, %do.end.i.i77, %add_token_u8.exit70.add_token_u8.exit81_crit_edge, %do.end.i.i66, %add_token_u8.exit.add_token_u8.exit81_crit_edge, %do.end.i.i, %add_token_bytestring.exit.add_token_u8.exit81_crit_edge
  %call.i82 = call fastcc ptr @add_bytestring_header(ptr noundef nonnull %err, ptr noundef %dev, i32 noundef %conv) #6
  %tobool.not.i83 = icmp eq ptr %call.i82, null
  br i1 %tobool.not.i83, label %add_token_u8.exit81.add_token_bytestring.exit87_crit_edge, label %if.end.i86

add_token_u8.exit81.add_token_bytestring.exit87_crit_edge: ; preds = %add_token_u8.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_bytestring.exit87

if.end.i86:                                       ; preds = %add_token_u8.exit81
  call void @__sanitizer_cov_trace_pc() #8
  %43 = call ptr @memcpy(ptr %call.i82, ptr %key2, i32 %conv)
  %pos.i84 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %44 = ptrtoint ptr %pos.i84 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pos.i84, align 8
  %add.i85 = add i32 %45, %conv
  store i32 %add.i85, ptr %pos.i84, align 8
  br label %add_token_bytestring.exit87

add_token_bytestring.exit87:                      ; preds = %if.end.i86, %add_token_u8.exit81.add_token_bytestring.exit87_crit_edge
  %46 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i88 = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i88, label %if.end.i.i91, label %add_token_bytestring.exit87.do.body.i159_crit_edge

add_token_bytestring.exit87.do.body.i159_crit_edge: ; preds = %add_token_bytestring.exit87
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i159

if.end.i.i91:                                     ; preds = %add_token_bytestring.exit87
  %pos.i.i.i89 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %48 = ptrtoint ptr %pos.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pos.i.i.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %49)
  %cmp.i.i90 = icmp eq i32 %49, 2048
  br i1 %cmp.i.i90, label %do.body.i.i92, label %add_token_u8.exit98

do.body.i.i92:                                    ; preds = %if.end.i.i91
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_auth_opal_session, %if.then6.i.i93)) #6
          to label %do.end.i.i94 [label %if.then6.i.i93], !srcloc !392

if.then6.i.i93:                                   ; preds = %do.body.i.i92
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i94

do.end.i.i94:                                     ; preds = %if.then6.i.i93, %do.body.i.i92
  %50 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -34, ptr %err, align 4
  br label %do.body.i159

add_token_u8.exit98:                              ; preds = %if.end.i.i91
  %inc.i95 = add i32 %49, 1
  %51 = ptrtoint ptr %pos.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %inc.i95, ptr %pos.i.i.i89, align 8
  %arrayidx.i96 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %49
  %52 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -13, ptr %arrayidx.i96, align 1
  %53 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr183 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr183)
  %tobool.not.i.i99 = icmp eq i32 %.pr183, 0
  br i1 %tobool.not.i.i99, label %if.end.i.i102, label %add_token_u8.exit98.do.body.i159_crit_edge

add_token_u8.exit98.do.body.i159_crit_edge:       ; preds = %add_token_u8.exit98
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i159

if.end.i.i102:                                    ; preds = %add_token_u8.exit98
  %54 = ptrtoint ptr %pos.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pos.i.i.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %55)
  %cmp.i.i101 = icmp eq i32 %55, 2048
  br i1 %cmp.i.i101, label %do.body.i.i103, label %add_token_u8.exit109

do.body.i.i103:                                   ; preds = %if.end.i.i102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_auth_opal_session, %if.then6.i.i104)) #6
          to label %do.end.i.i105 [label %if.then6.i.i104], !srcloc !392

if.then6.i.i104:                                  ; preds = %do.body.i.i103
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i105

do.end.i.i105:                                    ; preds = %if.then6.i.i104, %do.body.i.i103
  %56 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -34, ptr %err, align 4
  br label %do.body.i159

add_token_u8.exit109:                             ; preds = %if.end.i.i102
  %inc.i106 = add i32 %55, 1
  %57 = ptrtoint ptr %pos.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %inc.i106, ptr %pos.i.i.i89, align 8
  %arrayidx.i107 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %55
  %58 = ptrtoint ptr %arrayidx.i107 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -14, ptr %arrayidx.i107, align 1
  %59 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr185.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr185.pr)
  %tobool.not.i.i110 = icmp eq i32 %.pr185.pr, 0
  br i1 %tobool.not.i.i110, label %if.end.i.i113, label %add_token_u8.exit109.do.body.i159_crit_edge

add_token_u8.exit109.do.body.i159_crit_edge:      ; preds = %add_token_u8.exit109
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i159

if.end.i.i113:                                    ; preds = %add_token_u8.exit109
  %60 = ptrtoint ptr %pos.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pos.i.i.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %61)
  %cmp.i.i112 = icmp eq i32 %61, 2048
  br i1 %cmp.i.i112, label %do.body.i.i114, label %add_token_u8.exit120

do.body.i.i114:                                   ; preds = %if.end.i.i113
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_auth_opal_session, %if.then6.i.i115)) #6
          to label %do.end.i.i116 [label %if.then6.i.i115], !srcloc !392

if.then6.i.i115:                                  ; preds = %do.body.i.i114
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i116

do.end.i.i116:                                    ; preds = %if.then6.i.i115, %do.body.i.i114
  %62 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -34, ptr %err, align 4
  br label %do.body.i159

add_token_u8.exit120:                             ; preds = %if.end.i.i113
  %inc.i117 = add i32 %61, 1
  %63 = ptrtoint ptr %pos.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %inc.i117, ptr %pos.i.i.i89, align 8
  %arrayidx.i118 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %61
  %64 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 3, ptr %arrayidx.i118, align 1
  %65 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr187.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr187.pr)
  %tobool.not.i.i151 = icmp eq i32 %.pr187.pr, 0
  br i1 %tobool.not.i.i151, label %if.end.i.i155, label %add_token_u8.exit120.do.body.i159_crit_edge

add_token_u8.exit120.do.body.i159_crit_edge:      ; preds = %add_token_u8.exit120
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i159

if.end.i.i155:                                    ; preds = %add_token_u8.exit120
  %66 = ptrtoint ptr %pos.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pos.i.i.i89, align 8
  %68 = add i32 %67, -2040
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %68)
  %cmp.i.i154 = icmp ult i32 %68, 9
  br i1 %cmp.i.i154, label %do.body.i.i156, label %if.end11.i169

do.body.i.i156:                                   ; preds = %if.end.i.i155
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_auth_opal_session, %if.then6.i.i157)) #6
          to label %do.end.i.i158 [label %if.then6.i.i157], !srcloc !392

if.then6.i.i157:                                  ; preds = %do.body.i.i156
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 9) #6
  br label %do.end.i.i158

do.end.i.i158:                                    ; preds = %if.then6.i.i157, %do.body.i.i156
  %69 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -34, ptr %err, align 4
  br label %do.body.i159

do.body.i159:                                     ; preds = %do.end.i.i158, %add_token_u8.exit120.do.body.i159_crit_edge, %do.end.i.i116, %add_token_u8.exit109.do.body.i159_crit_edge, %do.end.i.i105, %add_token_u8.exit98.do.body.i159_crit_edge, %do.end.i.i94, %add_token_bytestring.exit87.do.body.i159_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_bytestring_header.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_auth_opal_session, %add_bytestring_header.exit171.thread)) #6
          to label %add_bytestring_header.exit171 [label %add_bytestring_header.exit171.thread], !srcloc !392

add_bytestring_header.exit171.thread:             ; preds = %do.body.i159
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_bytestring_header.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.68) #6
  br label %add_token_bytestring.exit126

if.end11.i169:                                    ; preds = %if.end.i.i155
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i.i165 = add i32 %67, 1
  %70 = ptrtoint ptr %pos.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %inc.i.i.i165, ptr %pos.i.i.i89, align 8
  %arrayidx.i.i.i166 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %67
  %71 = ptrtoint ptr %arrayidx.i.i.i166 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -88, ptr %arrayidx.i.i.i166, align 1
  %72 = load i32, ptr %pos.i.i.i89, align 8
  %arrayidx.i168 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %72
  br label %add_bytestring_header.exit171

add_bytestring_header.exit171:                    ; preds = %if.end11.i169, %do.body.i159
  %retval.0.i170 = phi ptr [ %arrayidx.i168, %if.end11.i169 ], [ null, %do.body.i159 ]
  %tobool.not.i122 = icmp eq ptr %retval.0.i170, null
  br i1 %tobool.not.i122, label %add_bytestring_header.exit171.add_token_bytestring.exit126_crit_edge, label %if.end.i125

add_bytestring_header.exit171.add_token_bytestring.exit126_crit_edge: ; preds = %add_bytestring_header.exit171
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_bytestring.exit126

if.end.i125:                                      ; preds = %add_bytestring_header.exit171
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %retval.0.i170 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %retval.0.i170, align 1
  %lk_ul_user.sroa.7.0.retval.0.i170.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i170, i32 1
  %74 = ptrtoint ptr %lk_ul_user.sroa.7.0.retval.0.i170.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %lk_ul_user.sroa.7.0.retval.0.i170.sroa_idx, align 1
  %lk_ul_user.sroa.8.0.retval.0.i170.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i170, i32 2
  %75 = ptrtoint ptr %lk_ul_user.sroa.8.0.retval.0.i170.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %lk_ul_user.sroa.8.0.retval.0.i170.sroa_idx, align 1
  %lk_ul_user.sroa.9.0.retval.0.i170.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i170, i32 3
  %76 = ptrtoint ptr %lk_ul_user.sroa.9.0.retval.0.i170.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 9, ptr %lk_ul_user.sroa.9.0.retval.0.i170.sroa_idx, align 1
  %lk_ul_user.sroa.10.0.retval.0.i170.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i170, i32 4
  %77 = ptrtoint ptr %lk_ul_user.sroa.10.0.retval.0.i170.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %lk_ul_user.sroa.10.0.retval.0.i170.sroa_idx, align 1
  %lk_ul_user.sroa.11.0.retval.0.i170.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i170, i32 5
  %78 = ptrtoint ptr %lk_ul_user.sroa.11.0.retval.0.i170.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %lk_ul_user.sroa.11.0176, ptr %lk_ul_user.sroa.11.0.retval.0.i170.sroa_idx, align 1
  %lk_ul_user.sroa.12.0.retval.0.i170.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i170, i32 6
  %79 = ptrtoint ptr %lk_ul_user.sroa.12.0.retval.0.i170.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %lk_ul_user.sroa.12.0.retval.0.i170.sroa_idx, align 1
  %lk_ul_user.sroa.13.0.retval.0.i170.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i170, i32 7
  %80 = ptrtoint ptr %lk_ul_user.sroa.13.0.retval.0.i170.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %lk_ul_user.sroa.13.0175, ptr %lk_ul_user.sroa.13.0.retval.0.i170.sroa_idx, align 1
  %pos.i123 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %81 = ptrtoint ptr %pos.i123 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pos.i123, align 8
  %add.i124 = add i32 %82, 8
  store i32 %add.i124, ptr %pos.i123, align 8
  br label %add_token_bytestring.exit126

add_token_bytestring.exit126:                     ; preds = %if.end.i125, %add_bytestring_header.exit171.add_token_bytestring.exit126_crit_edge, %add_bytestring_header.exit171.thread
  %83 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i.i127 = icmp eq i32 %84, 0
  br i1 %tobool.not.i.i127, label %if.end.i.i130, label %add_token_bytestring.exit126.do.body_crit_edge

add_token_bytestring.exit126.do.body_crit_edge:   ; preds = %add_token_bytestring.exit126
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i.i130:                                    ; preds = %add_token_bytestring.exit126
  %pos.i.i.i128 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %85 = ptrtoint ptr %pos.i.i.i128 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pos.i.i.i128, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %86)
  %cmp.i.i129 = icmp eq i32 %86, 2048
  br i1 %cmp.i.i129, label %do.body.i.i131, label %add_token_u8.exit137

do.body.i.i131:                                   ; preds = %if.end.i.i130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_auth_opal_session, %if.then6.i.i132)) #6
          to label %do.end.i.i133 [label %if.then6.i.i132], !srcloc !392

if.then6.i.i132:                                  ; preds = %do.body.i.i131
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i133

do.end.i.i133:                                    ; preds = %if.then6.i.i132, %do.body.i.i131
  %87 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -34, ptr %err, align 4
  br label %do.body

add_token_u8.exit137:                             ; preds = %if.end.i.i130
  %inc.i134 = add i32 %86, 1
  %88 = ptrtoint ptr %pos.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %inc.i134, ptr %pos.i.i.i128, align 8
  %arrayidx.i135 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %86
  %89 = ptrtoint ptr %arrayidx.i135 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -13, ptr %arrayidx.i135, align 1
  %90 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr191 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr191)
  %tobool22.not = icmp eq i32 %.pr191, 0
  br i1 %tobool22.not, label %if.end30, label %add_token_u8.exit137.do.body_crit_edge

add_token_u8.exit137.do.body_crit_edge:           ; preds = %add_token_u8.exit137
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %add_token_u8.exit137.do.body_crit_edge, %do.end.i.i133, %add_token_bytestring.exit126.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_auth_opal_session.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_auth_opal_session, %if.then28)) #6
          to label %do.end [label %if.then28], !srcloc !392

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @start_auth_opal_session.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.56) #6
  br label %do.end

do.end:                                           ; preds = %if.then28, %do.body
  %91 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %err, align 4
  br label %cleanup

if.end30:                                         ; preds = %add_token_u8.exit137
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %93 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %hsn.i, align 4
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %95 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tsn.i, align 8
  %call.i138 = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %94, i32 noundef %96) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool.not.i139 = icmp eq i32 %call.i138, 0
  br i1 %tobool.not.i139, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_auth_opal_session, %if.then5.i)) #6
          to label %cleanup [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i138) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @start_opal_session_cont) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i, %do.end, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %92, %do.end ], [ %.pr, %if.end15.cleanup_crit_edge ], [ %call7.i, %if.end6.i ], [ %call.i138, %if.then5.i ], [ %call.i138, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lock_unlock_locking_range(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %lr_buffer = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lr_buffer) #6
  %opal_key = getelementptr inbounds %struct.opal_session_info, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %opal_key to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %opal_key, align 4
  %2 = ptrtoint ptr %lr_buffer to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 8804682956801, ptr %lr_buffer, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp5.i = icmp eq i8 %1, 0
  br i1 %cmp5.i, label %entry.build_locking_range.exit_crit_edge, label %if.end8.i

entry.build_locking_range.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %build_locking_range.exit

if.end8.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = getelementptr inbounds [8 x i8], ptr %lr_buffer, i32 0, i32 7
  %4 = getelementptr inbounds [8 x i8], ptr %lr_buffer, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %4, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %1, ptr %3, align 1
  br label %build_locking_range.exit

build_locking_range.exit:                         ; preds = %if.end8.i, %entry.build_locking_range.exit_crit_edge
  %l_state = getelementptr inbounds %struct.opal_lock_unlock, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %l_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %l_state, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %8, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %build_locking_range.exit.sw.epilog_crit_edge
  ]

build_locking_range.exit.sw.epilog_crit_edge:     ; preds = %build_locking_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %build_locking_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %build_locking_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %build_locking_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lock_unlock_locking_range.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range, %if.then5)) #6
          to label %cleanup [label %if.then5], !srcloc !392

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lock_unlock_locking_range.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.108) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %build_locking_range.exit.sw.epilog_crit_edge
  %write_locked.0 = phi i8 [ 1, %build_locking_range.exit.sw.epilog_crit_edge ], [ 0, %sw.bb1 ], [ 1, %sw.bb ]
  %read_locked.0 = phi i8 [ 1, %build_locking_range.exit.sw.epilog_crit_edge ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  %call8 = call fastcc i32 @cmd_start(ptr noundef %dev, ptr noundef nonnull %lr_buffer, ptr noundef getelementptr inbounds ([16 x [8 x i8]], ptr @opalmethod, i32 0, i32 12))
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not.i.i = icmp eq i32 %call8, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.epilog.do.body11_crit_edge

sw.epilog.do.body11_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

if.end.i.i:                                       ; preds = %sw.epilog
  %pos.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %10 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 2048
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end.i.i55

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range, %do.body11.sink.split)) #6
          to label %do.body11 [label %do.body11.sink.split], !srcloc !392

if.end.i.i55:                                     ; preds = %if.end.i.i
  %inc.i = add i32 %11, 1
  %12 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc.i, ptr %pos.i.i.i, align 8
  %arrayidx.i51 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %11
  %13 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -14, ptr %arrayidx.i51, align 1
  %14 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %14)
  %cmp.i.i54 = icmp eq i32 %14, 2048
  br i1 %cmp.i.i54, label %do.body.i.i56, label %if.end.i.i66

do.body.i.i56:                                    ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range, %do.body11.sink.split)) #6
          to label %do.body11 [label %do.body11.sink.split], !srcloc !392

if.end.i.i66:                                     ; preds = %if.end.i.i55
  %inc.i59 = add i32 %14, 1
  %15 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc.i59, ptr %pos.i.i.i, align 8
  %arrayidx.i60 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %14
  %16 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx.i60, align 1
  %17 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %17)
  %cmp.i.i65 = icmp eq i32 %17, 2048
  br i1 %cmp.i.i65, label %do.body.i.i67, label %if.end.i.i77

do.body.i.i67:                                    ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range, %do.body11.sink.split)) #6
          to label %do.body11 [label %do.body11.sink.split], !srcloc !392

if.end.i.i77:                                     ; preds = %if.end.i.i66
  %inc.i70 = add i32 %17, 1
  %18 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %inc.i70, ptr %pos.i.i.i, align 8
  %arrayidx.i71 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %17
  %19 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -16, ptr %arrayidx.i71, align 1
  %20 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %20)
  %cmp.i.i76 = icmp eq i32 %20, 2048
  br i1 %cmp.i.i76, label %do.body.i.i78, label %if.end.i.i88

do.body.i.i78:                                    ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range, %do.body11.sink.split)) #6
          to label %do.body11 [label %do.body11.sink.split], !srcloc !392

if.end.i.i88:                                     ; preds = %if.end.i.i77
  %inc.i81 = add i32 %20, 1
  %21 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %inc.i81, ptr %pos.i.i.i, align 8
  %arrayidx.i82 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %20
  %22 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -14, ptr %arrayidx.i82, align 1
  %23 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %23)
  %cmp.i.i87 = icmp eq i32 %23, 2048
  br i1 %cmp.i.i87, label %do.body.i.i89, label %if.end.i.i99

do.body.i.i89:                                    ; preds = %if.end.i.i88
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range, %do.body11.sink.split)) #6
          to label %do.body11 [label %do.body11.sink.split], !srcloc !392

if.end.i.i99:                                     ; preds = %if.end.i.i88
  %inc.i92 = add i32 %23, 1
  %24 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %inc.i92, ptr %pos.i.i.i, align 8
  %arrayidx.i93 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %23
  %25 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 7, ptr %arrayidx.i93, align 1
  %26 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %26)
  %cmp.i.i98 = icmp eq i32 %26, 2048
  br i1 %cmp.i.i98, label %do.body.i.i100, label %if.end.i.i110

do.body.i.i100:                                   ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range, %do.body11.sink.split)) #6
          to label %do.body11 [label %do.body11.sink.split], !srcloc !392

if.end.i.i110:                                    ; preds = %if.end.i.i99
  %inc.i103 = add i32 %26, 1
  %27 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %inc.i103, ptr %pos.i.i.i, align 8
  %arrayidx.i104 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %26
  %28 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %read_locked.0, ptr %arrayidx.i104, align 1
  %29 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %29)
  %cmp.i.i109 = icmp eq i32 %29, 2048
  br i1 %cmp.i.i109, label %do.body.i.i111, label %if.end.i.i121

do.body.i.i111:                                   ; preds = %if.end.i.i110
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range, %do.body11.sink.split)) #6
          to label %do.body11 [label %do.body11.sink.split], !srcloc !392

if.end.i.i121:                                    ; preds = %if.end.i.i110
  %inc.i114 = add i32 %29, 1
  %30 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %inc.i114, ptr %pos.i.i.i, align 8
  %arrayidx.i115 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %29
  %31 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -13, ptr %arrayidx.i115, align 1
  %32 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %32)
  %cmp.i.i120 = icmp eq i32 %32, 2048
  br i1 %cmp.i.i120, label %do.body.i.i122, label %if.end.i.i132

do.body.i.i122:                                   ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range, %do.body11.sink.split)) #6
          to label %do.body11 [label %do.body11.sink.split], !srcloc !392

if.end.i.i132:                                    ; preds = %if.end.i.i121
  %inc.i125 = add i32 %32, 1
  %33 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %inc.i125, ptr %pos.i.i.i, align 8
  %arrayidx.i126 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %32
  %34 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -14, ptr %arrayidx.i126, align 1
  %35 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %35)
  %cmp.i.i131 = icmp eq i32 %35, 2048
  br i1 %cmp.i.i131, label %do.body.i.i133, label %if.end.i.i143

do.body.i.i133:                                   ; preds = %if.end.i.i132
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range, %do.body11.sink.split)) #6
          to label %do.body11 [label %do.body11.sink.split], !srcloc !392

if.end.i.i143:                                    ; preds = %if.end.i.i132
  %inc.i136 = add i32 %35, 1
  %36 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %inc.i136, ptr %pos.i.i.i, align 8
  %arrayidx.i137 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %35
  %37 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 8, ptr %arrayidx.i137, align 1
  %38 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %38)
  %cmp.i.i142 = icmp eq i32 %38, 2048
  br i1 %cmp.i.i142, label %do.body.i.i144, label %if.end.i.i154

do.body.i.i144:                                   ; preds = %if.end.i.i143
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range, %do.body11.sink.split)) #6
          to label %do.body11 [label %do.body11.sink.split], !srcloc !392

if.end.i.i154:                                    ; preds = %if.end.i.i143
  %inc.i147 = add i32 %38, 1
  %39 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %inc.i147, ptr %pos.i.i.i, align 8
  %arrayidx.i148 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %38
  %40 = ptrtoint ptr %arrayidx.i148 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %write_locked.0, ptr %arrayidx.i148, align 1
  %41 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %41)
  %cmp.i.i153 = icmp eq i32 %41, 2048
  br i1 %cmp.i.i153, label %do.body.i.i155, label %if.end.i.i165

do.body.i.i155:                                   ; preds = %if.end.i.i154
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range, %do.body11.sink.split)) #6
          to label %do.body11 [label %do.body11.sink.split], !srcloc !392

if.end.i.i165:                                    ; preds = %if.end.i.i154
  %inc.i158 = add i32 %41, 1
  %42 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %inc.i158, ptr %pos.i.i.i, align 8
  %arrayidx.i159 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %41
  %43 = ptrtoint ptr %arrayidx.i159 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -13, ptr %arrayidx.i159, align 1
  %44 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %44)
  %cmp.i.i164 = icmp eq i32 %44, 2048
  br i1 %cmp.i.i164, label %do.body.i.i166, label %if.end.i.i176

do.body.i.i166:                                   ; preds = %if.end.i.i165
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range, %do.body11.sink.split)) #6
          to label %do.body11 [label %do.body11.sink.split], !srcloc !392

if.end.i.i176:                                    ; preds = %if.end.i.i165
  %inc.i169 = add i32 %44, 1
  %45 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %inc.i169, ptr %pos.i.i.i, align 8
  %arrayidx.i170 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %44
  %46 = ptrtoint ptr %arrayidx.i170 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -15, ptr %arrayidx.i170, align 1
  %47 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %47)
  %cmp.i.i175 = icmp eq i32 %47, 2048
  br i1 %cmp.i.i175, label %do.body.i.i177, label %if.end27

do.body.i.i177:                                   ; preds = %if.end.i.i176
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range, %do.body11.sink.split)) #6
          to label %do.body11 [label %do.body11.sink.split], !srcloc !392

do.body11.sink.split:                             ; preds = %do.body.i.i177, %do.body.i.i166, %do.body.i.i155, %do.body.i.i144, %do.body.i.i133, %do.body.i.i122, %do.body.i.i111, %do.body.i.i100, %do.body.i.i89, %do.body.i.i78, %do.body.i.i67, %do.body.i.i56, %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.body11

do.body11:                                        ; preds = %do.body11.sink.split, %do.body.i.i177, %do.body.i.i166, %do.body.i.i155, %do.body.i.i144, %do.body.i.i133, %do.body.i.i122, %do.body.i.i111, %do.body.i.i100, %do.body.i.i89, %do.body.i.i78, %do.body.i.i67, %do.body.i.i56, %do.body.i.i, %sw.epilog.do.body11_crit_edge
  %err.12274 = phi i32 [ -34, %do.body.i.i ], [ -34, %do.body.i.i56 ], [ -34, %do.body.i.i67 ], [ -34, %do.body.i.i78 ], [ -34, %do.body.i.i89 ], [ -34, %do.body.i.i100 ], [ -34, %do.body.i.i111 ], [ -34, %do.body.i.i122 ], [ -34, %do.body.i.i133 ], [ -34, %do.body.i.i144 ], [ -34, %do.body.i.i155 ], [ -34, %do.body.i.i166 ], [ -34, %do.body.i.i177 ], [ %call8, %sw.epilog.do.body11_crit_edge ], [ -34, %do.body11.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lock_unlock_locking_range.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range, %if.then23)) #6
          to label %cleanup [label %if.then23], !srcloc !392

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lock_unlock_locking_range.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.110) #6
  br label %cleanup

if.end27:                                         ; preds = %if.end.i.i176
  %inc.i180 = add i32 %47, 1
  %48 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %inc.i180, ptr %pos.i.i.i, align 8
  %arrayidx.i181 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %47
  %49 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -13, ptr %arrayidx.i181, align 1
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %50 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hsn.i, align 4
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %52 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tsn.i, align 8
  %call.i = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %51, i32 noundef %53) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range, %if.then5.i)) #6
          to label %cleanup [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @parse_and_check_status) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i, %if.then23, %do.body11, %if.then5, %do.body
  %retval.0 = phi i32 [ 12, %if.then5 ], [ 12, %do.body ], [ %err.12274, %do.body11 ], [ %err.12274, %if.then23 ], [ %call7.i, %if.end6.i ], [ %call.i, %if.then5.i ], [ %call.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lr_buffer) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @end_opal_session(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
if.end:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pos.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %cmd.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 11
  %0 = call ptr @memset(ptr %cmd.i, i32 0, i32 2048)
  %comid = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %comid to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %comid, align 8
  %3 = lshr i16 %2, 8
  %conv2.i = trunc i16 %3 to i8
  %extendedComID.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 4
  %4 = ptrtoint ptr %extendedComID.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2.i, ptr %extendedComID.i, align 4
  %conv3.i = trunc i16 %2 to i8
  %arrayidx6.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 5
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv3.i, ptr %arrayidx6.i, align 1
  %arrayidx12.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 7
  %6 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx12.i, align 1
  %7 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 57, ptr %pos.i, align 8
  %arrayidx.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 56
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -6, ptr %arrayidx.i, align 1
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %9 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hsn.i, align 4
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %11 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tsn.i, align 8
  %call.i = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %10, i32 noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@end_opal_session, %if.then5.i)) #6
          to label %cleanup [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @end_session_cont) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i
  %retval.0.i = phi i32 [ %call7.i, %if.end6.i ], [ %call.i, %if.then5.i ], [ %call.i, %do.body.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lock_unlock_locking_range_sum(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %lr_buffer = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lr_buffer) #6
  %pos.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 56, ptr %pos.i, align 8
  %cmd.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 11
  %1 = call ptr @memset(ptr %cmd.i, i32 0, i32 2048)
  %comid = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %comid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %comid, align 8
  %4 = lshr i16 %3, 8
  %conv2.i = trunc i16 %4 to i8
  %extendedComID.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 4
  %5 = ptrtoint ptr %extendedComID.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2.i, ptr %extendedComID.i, align 4
  %conv3.i = trunc i16 %3 to i8
  %arrayidx6.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 5
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3.i, ptr %arrayidx6.i, align 1
  %arrayidx12.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 7
  %7 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx12.i, align 1
  %opal_key = getelementptr inbounds %struct.opal_session_info, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %opal_key to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %opal_key, align 4
  %10 = ptrtoint ptr %lr_buffer to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 8804682956801, ptr %lr_buffer, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp5.i = icmp eq i8 %9, 0
  br i1 %cmp5.i, label %entry.build_locking_range.exit_crit_edge, label %if.end8.i

entry.build_locking_range.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %build_locking_range.exit

if.end8.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = getelementptr inbounds [8 x i8], ptr %lr_buffer, i32 0, i32 7
  %12 = getelementptr inbounds [8 x i8], ptr %lr_buffer, i32 0, i32 5
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %12, align 1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %9, ptr %11, align 1
  br label %build_locking_range.exit

build_locking_range.exit:                         ; preds = %if.end8.i, %entry.build_locking_range.exit_crit_edge
  %l_state = getelementptr inbounds %struct.opal_lock_unlock, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %l_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %l_state, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %16, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %build_locking_range.exit.sw.epilog_crit_edge
  ]

build_locking_range.exit.sw.epilog_crit_edge:     ; preds = %build_locking_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %build_locking_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %build_locking_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %build_locking_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lock_unlock_locking_range_sum.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range_sum, %if.then5)) #6
          to label %cleanup [label %if.then5], !srcloc !392

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lock_unlock_locking_range_sum.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.116) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %build_locking_range.exit.sw.epilog_crit_edge
  %tobool9 = phi i1 [ true, %build_locking_range.exit.sw.epilog_crit_edge ], [ false, %sw.bb1 ], [ true, %sw.bb ]
  %tobool8 = phi i1 [ true, %build_locking_range.exit.sw.epilog_crit_edge ], [ false, %sw.bb1 ], [ false, %sw.bb ]
  %call10 = call fastcc i32 @generic_lr_enable_disable(ptr noundef %dev, ptr noundef nonnull %lr_buffer, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext %tobool8, i1 noundef zeroext %tobool9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.body13, label %if.end29

do.body13:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lock_unlock_locking_range_sum.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range_sum, %if.then25)) #6
          to label %cleanup [label %if.then25], !srcloc !392

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lock_unlock_locking_range_sum.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.110) #6
  br label %cleanup

if.end29:                                         ; preds = %sw.epilog
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %18 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hsn.i, align 4
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %20 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tsn.i, align 8
  %call.i = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %19, i32 noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lock_unlock_locking_range_sum, %if.then5.i)) #6
          to label %cleanup [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @parse_and_check_status) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i, %if.then25, %do.body13, %if.then5, %do.body
  %retval.0 = phi i32 [ 12, %if.then5 ], [ %call10, %if.then25 ], [ 12, %do.body ], [ %call10, %do.body13 ], [ %call7.i, %if.end6.i ], [ %call.i, %if.then5.i ], [ %call.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lr_buffer) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @execute_steps(ptr noundef %dev, ptr nocapture noundef readonly %steps, i32 noundef %n_steps) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %resp.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 12
  %0 = call ptr @memset(ptr %resp.i.i, i32 0, i32 2048)
  %comid.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %comid.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %comid.i.i, align 8
  %send_recv.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %send_recv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %send_recv.i.i.i, align 8
  %data.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i.i, align 4
  %call.i.i.i = tail call i32 %3(ptr noundef %5, i16 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef %resp.i.i, i32 noundef 2048, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i2.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i2.i, label %opal_discovery0.exit.i, label %entry.do.body.i.i_crit_edge

entry.do.body.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

opal_discovery0.exit.i:                           ; preds = %entry
  %call1.i.i = tail call fastcc i32 @opal_discovery0_end(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.preheader, label %opal_discovery0.exit.i.do.body.i.i_crit_edge

opal_discovery0.exit.i.do.body.i.i_crit_edge:     ; preds = %opal_discovery0.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %opal_discovery0.exit.i.do.body.i.i_crit_edge, %entry.do.body.i.i_crit_edge
  %retval.0.i5.i = phi i32 [ %call1.i.i, %opal_discovery0.exit.i.do.body.i.i_crit_edge ], [ %call.i.i.i, %entry.do.body.i.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @execute_step.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@execute_steps, %if.then5.i.i)) #6
          to label %cleanup [label %if.then5.i.i], !srcloc !392

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %retval.0.i5.i)
  %cmp.i.i.i = icmp eq i32 %retval.0.i5.i, 63
  br i1 %cmp.i.i.i, label %if.then5.i.i.opal_discovery0_step.exit.thread_crit_edge, label %if.end.i.i.i

if.then5.i.i.opal_discovery0_step.exit.thread_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %opal_discovery0_step.exit.thread

if.end.i.i.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %retval.0.i5.i)
  %cmp1.i.i.i = icmp ugt i32 %retval.0.i5.i, 18
  br i1 %cmp1.i.i.i, label %if.end.i.i.i.opal_discovery0_step.exit.thread_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.opal_discovery0_step.exit.thread_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %opal_discovery0_step.exit.thread

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i = getelementptr [19 x ptr], ptr @opal_errors, i32 0, i32 %retval.0.i5.i
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i.i, align 4
  br label %opal_discovery0_step.exit.thread

opal_discovery0_step.exit.thread:                 ; preds = %if.end4.i.i.i, %if.end.i.i.i.opal_discovery0_step.exit.thread_crit_edge, %if.then5.i.i.opal_discovery0_step.exit.thread_crit_edge
  %retval.0.i14.i.i = phi ptr [ %7, %if.end4.i.i.i ], [ @.str.35, %if.then5.i.i.opal_discovery0_step.exit.thread_crit_edge ], [ @.str.36, %if.end.i.i.i.opal_discovery0_step.exit.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @execute_step.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.34, i32 noundef 0, ptr noundef nonnull @opal_discovery0, i32 noundef %retval.0.i5.i, ptr noundef %retval.0.i14.i.i) #6
  br label %cleanup

for.cond.preheader:                               ; preds = %opal_discovery0.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_steps)
  %cmp23.not = icmp eq i32 %n_steps, 0
  br i1 %cmp23.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %state.024 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.opal_step, ptr %steps, i32 %state.024
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %data.i = getelementptr %struct.opal_step, ptr %steps, i32 %state.024, i32 1
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %call.i = tail call i32 %9(ptr noundef %dev, ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc, label %do.body.i

do.body.i:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @execute_step.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@execute_steps, %if.then5.i)) #6
          to label %out_error [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %call.i)
  %cmp.i.i = icmp eq i32 %call.i, 63
  br i1 %cmp.i.i, label %if.then5.i.opal_error_to_human.exit.i_crit_edge, label %if.end.i.i

if.then5.i.opal_error_to_human.exit.i_crit_edge:  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %opal_error_to_human.exit.i

if.end.i.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %call.i)
  %cmp1.i.i = icmp ugt i32 %call.i, 18
  br i1 %cmp1.i.i, label %if.end.i.i.opal_error_to_human.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.opal_error_to_human.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %opal_error_to_human.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr [19 x ptr], ptr @opal_errors, i32 0, i32 %call.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  br label %opal_error_to_human.exit.i

opal_error_to_human.exit.i:                       ; preds = %if.end4.i.i, %if.end.i.i.opal_error_to_human.exit.i_crit_edge, %if.then5.i.opal_error_to_human.exit.i_crit_edge
  %retval.0.i14.i = phi ptr [ %15, %if.end4.i.i ], [ @.str.35, %if.then5.i.opal_error_to_human.exit.i_crit_edge ], [ @.str.36, %if.end.i.i.opal_error_to_human.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @execute_step.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.34, i32 noundef %state.024, ptr noundef %13, i32 noundef %call.i, ptr noundef %retval.0.i14.i) #6
  br label %out_error

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %state.024, 1
  %exitcond.not = icmp eq i32 %inc, %n_steps
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out_error:                                        ; preds = %opal_error_to_human.exit.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state.024)
  %cmp5.not = icmp eq i32 %state.024, 0
  br i1 %cmp5.not, label %out_error.cleanup_crit_edge, label %if.then6

out_error.cleanup_crit_edge:                      ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @end_opal_session_error(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %out_error.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %opal_discovery0_step.exit.thread, %do.body.i.i
  %retval.0 = phi i32 [ %call.i, %if.then6 ], [ %call.i, %out_error.cleanup_crit_edge ], [ %retval.0.i5.i, %opal_discovery0_step.exit.thread ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %retval.0.i5.i, %do.body.i.i ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cmd_start(ptr noundef %dev, ptr nocapture noundef readonly %uid, ptr nocapture noundef readonly %method) unnamed_addr #0 align 64 {
if.end.i.i29:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pos.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %cmd.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 11
  %0 = call ptr @memset(ptr %cmd.i, i32 0, i32 2048)
  %comid = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %comid to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %comid, align 8
  %3 = lshr i16 %2, 8
  %conv2.i = trunc i16 %3 to i8
  %extendedComID.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 4
  %4 = ptrtoint ptr %extendedComID.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2.i, ptr %extendedComID.i, align 4
  %conv3.i = trunc i16 %2 to i8
  %arrayidx6.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 5
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv3.i, ptr %arrayidx6.i, align 1
  %arrayidx12.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 7
  %6 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx12.i, align 1
  %arrayidx.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 56
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -8, ptr %arrayidx.i, align 1
  %8 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 58, ptr %pos.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 57
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -88, ptr %arrayidx.i.i.i, align 1
  %arrayidx.i33 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 58
  %tobool.not.i = icmp eq ptr %arrayidx.i33, null
  br i1 %tobool.not.i, label %if.end.i.i29.if.end.i.i38_crit_edge, label %if.end.i8

if.end.i.i29.if.end.i.i38_crit_edge:              ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i38

if.end.i8:                                        ; preds = %if.end.i.i29
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %uid to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %uid, align 1
  %12 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %arrayidx.i33, align 1
  %13 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pos.i, align 8
  %add.i = add i32 %14, 8
  store i32 %add.i, ptr %pos.i, align 8
  br label %if.end.i.i38

if.end.i.i38:                                     ; preds = %if.end.i8, %if.end.i.i29.if.end.i.i38_crit_edge
  %15 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pos.i, align 8
  %17 = add i32 %16, -2040
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %17)
  %cmp.i.i37 = icmp ult i32 %17, 9
  br i1 %cmp.i.i37, label %do.body.i.i39, label %if.end11.i52

do.body.i.i39:                                    ; preds = %if.end.i.i38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmd_start, %if.then6.i.i40)) #6
          to label %do.body.i42 [label %if.then6.i.i40], !srcloc !392

if.then6.i.i40:                                   ; preds = %do.body.i.i39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 9) #6
  br label %do.body.i42

do.body.i42:                                      ; preds = %if.then6.i.i40, %do.body.i.i39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_bytestring_header.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmd_start, %add_token_bytestring.exit14.thread)) #6
          to label %add_bytestring_header.exit54 [label %add_token_bytestring.exit14.thread], !srcloc !392

add_token_bytestring.exit14.thread:               ; preds = %do.body.i42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_bytestring_header.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.68) #6
  br label %add_token_u8.exit25

if.end11.i52:                                     ; preds = %if.end.i.i38
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i.i48 = add i32 %16, 1
  %18 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %inc.i.i.i48, ptr %pos.i, align 8
  %arrayidx.i.i.i49 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %16
  %19 = ptrtoint ptr %arrayidx.i.i.i49 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -88, ptr %arrayidx.i.i.i49, align 1
  %20 = load i32, ptr %pos.i, align 8
  %arrayidx.i51 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %20
  br label %add_bytestring_header.exit54

add_bytestring_header.exit54:                     ; preds = %if.end11.i52, %do.body.i42
  %err.4 = phi i32 [ -34, %do.body.i42 ], [ 0, %if.end11.i52 ]
  %retval.0.i53 = phi ptr [ null, %do.body.i42 ], [ %arrayidx.i51, %if.end11.i52 ]
  %tobool.not.i10 = icmp eq ptr %retval.0.i53, null
  br i1 %tobool.not.i10, label %add_bytestring_header.exit54.add_token_bytestring.exit14_crit_edge, label %if.end.i13

add_bytestring_header.exit54.add_token_bytestring.exit14_crit_edge: ; preds = %add_bytestring_header.exit54
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_bytestring.exit14

if.end.i13:                                       ; preds = %add_bytestring_header.exit54
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %method to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %method, align 1
  %23 = ptrtoint ptr %retval.0.i53 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %retval.0.i53, align 1
  %24 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pos.i, align 8
  %add.i12 = add i32 %25, 8
  store i32 %add.i12, ptr %pos.i, align 8
  br label %add_token_bytestring.exit14

add_token_bytestring.exit14:                      ; preds = %if.end.i13, %add_bytestring_header.exit54.add_token_bytestring.exit14_crit_edge
  br i1 %cmp.i.i37, label %add_token_bytestring.exit14.add_token_u8.exit25_crit_edge, label %if.end.i.i18

add_token_bytestring.exit14.add_token_u8.exit25_crit_edge: ; preds = %add_token_bytestring.exit14
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit25

if.end.i.i18:                                     ; preds = %add_token_bytestring.exit14
  %26 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pos.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %27)
  %cmp.i.i17 = icmp eq i32 %27, 2048
  br i1 %cmp.i.i17, label %do.body.i.i19, label %if.end.i24

do.body.i.i19:                                    ; preds = %if.end.i.i18
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmd_start, %if.then6.i.i20)) #6
          to label %add_token_u8.exit25 [label %if.then6.i.i20], !srcloc !392

if.then6.i.i20:                                   ; preds = %do.body.i.i19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit25

if.end.i24:                                       ; preds = %if.end.i.i18
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i22 = add i32 %27, 1
  %28 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc.i22, ptr %pos.i, align 8
  %arrayidx.i23 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %27
  %29 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -16, ptr %arrayidx.i23, align 1
  br label %add_token_u8.exit25

add_token_u8.exit25:                              ; preds = %if.end.i24, %if.then6.i.i20, %do.body.i.i19, %add_token_bytestring.exit14.add_token_u8.exit25_crit_edge, %add_token_bytestring.exit14.thread
  %err.5 = phi i32 [ 0, %if.end.i24 ], [ %err.4, %add_token_bytestring.exit14.add_token_u8.exit25_crit_edge ], [ -34, %add_token_bytestring.exit14.thread ], [ -34, %if.then6.i.i20 ], [ -34, %do.body.i.i19 ]
  ret i32 %err.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_token_u64(ptr nocapture noundef %err, ptr nocapture noundef %cmd, i64 noundef %number) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %number)
  %tobool.not = icmp ult i64 %number, 64
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = trunc i64 %number to i8
  %0 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then
  %pos.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %cmd, i32 0, i32 10
  %2 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 2048
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end.i26

do.body.i.i:                                      ; preds = %if.end.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_token_u64, %if.then6.i.i)) #6
          to label %do.end.i.i [label %if.then6.i.i], !srcloc !392

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i, %do.body.i.i
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -34, ptr %err, align 4
  br label %cleanup

if.end.i26:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i = add i32 %3, 1
  %5 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc.i, ptr %pos.i.i.i, align 8
  %arrayidx.i = getelementptr %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 %3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx.i, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr.i = lshr i64 %number, 32
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #6, !range !394
  %add.i = sub nuw nsw i32 64, %7
  br label %fls64.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i = trunc i64 %number to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %tobool.not.i5.i = icmp eq i32 %conv1.i, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i, i1 true) #6, !range !394
  %sub.i6.i = sub nuw nsw i32 32, %8
  %cond.i7.i = select i1 %tobool.not.i5.i, i32 0, i32 %sub.i6.i
  br label %fls64.exit

fls64.exit:                                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ %cond.i7.i, %if.end.i ]
  %div44.lhs.trunc = add nuw nsw i32 %retval.0.i, 7
  %div444546 = lshr i32 %div44.lhs.trunc, 3
  %add1 = add nuw nsw i32 %div444546, 1
  %9 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i27 = icmp eq i32 %10, 0
  br i1 %tobool.not.i27, label %if.end.i28, label %fls64.exit.do.body_crit_edge

fls64.exit.do.body_crit_edge:                     ; preds = %fls64.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i28:                                       ; preds = %fls64.exit
  %pos.i.i = getelementptr inbounds %struct.opal_dev, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pos.i.i, align 8
  %sub.i.i = sub i32 2048, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %div444546)
  %cmp.i.not = icmp ugt i32 %sub.i.i, %div444546
  br i1 %cmp.i.not, label %if.end10, label %do.body.i

do.body.i:                                        ; preds = %if.end.i28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_token_u64, %if.then6.i)) #6
          to label %do.end.i [label %if.then6.i], !srcloc !392

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef %add1) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %13 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -34, ptr %err, align 4
  br label %do.body

do.body:                                          ; preds = %do.end.i, %fls64.exit.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_token_u64.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_token_u64, %if.then8)) #6
          to label %cleanup [label %if.then8], !srcloc !392

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_token_u64.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.62) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end.i28
  %14 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pos.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %15)
  %cmp.i.i.i = icmp eq i32 %15, 2048
  br i1 %cmp.i.i.i, label %do.body.i.i.i, label %if.end.i.i30

do.body.i.i.i:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_token_u64, %if.then6.i.i.i)) #6
          to label %add_short_atom_header.exit [label %if.then6.i.i.i], !srcloc !392

if.then6.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_short_atom_header.exit

if.end.i.i30:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %16 = trunc i32 %div444546 to i8
  %conv11.i = or i8 %16, -128
  %inc.i.i = add i32 %15, 1
  %17 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc.i.i, ptr %pos.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 %15
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv11.i, ptr %arrayidx.i.i, align 1
  br label %add_short_atom_header.exit

add_short_atom_header.exit:                       ; preds = %if.end.i.i30, %if.then6.i.i.i, %do.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool11.not47 = icmp eq i32 %retval.0.i, 0
  br i1 %tobool11.not47, label %add_short_atom_header.exit.cleanup_crit_edge, label %add_short_atom_header.exit.while.body_crit_edge

add_short_atom_header.exit.while.body_crit_edge:  ; preds = %add_short_atom_header.exit
  br label %while.body

add_short_atom_header.exit.cleanup_crit_edge:     ; preds = %add_short_atom_header.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %add_token_u8.exit41.while.body_crit_edge, %add_short_atom_header.exit.while.body_crit_edge
  %len.048 = phi i32 [ %dec, %add_token_u8.exit41.while.body_crit_edge ], [ %div444546, %add_short_atom_header.exit.while.body_crit_edge ]
  %dec = add nsw i32 %len.048, -1
  %mul = shl i32 %dec, 3
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %number, %sh_prom
  %conv12 = trunc i64 %shr to i8
  %19 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i31 = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i31, label %if.end.i.i34, label %while.body.add_token_u8.exit41_crit_edge

while.body.add_token_u8.exit41_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit41

if.end.i.i34:                                     ; preds = %while.body
  %21 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pos.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %22)
  %cmp.i.i33 = icmp eq i32 %22, 2048
  br i1 %cmp.i.i33, label %do.body.i.i35, label %if.end.i40

do.body.i.i35:                                    ; preds = %if.end.i.i34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_token_u64, %if.then6.i.i36)) #6
          to label %do.end.i.i37 [label %if.then6.i.i36], !srcloc !392

if.then6.i.i36:                                   ; preds = %do.body.i.i35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i37

do.end.i.i37:                                     ; preds = %if.then6.i.i36, %do.body.i.i35
  %23 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit41

if.end.i40:                                       ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i38 = add i32 %22, 1
  %24 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %inc.i38, ptr %pos.i.i, align 8
  %arrayidx.i39 = getelementptr %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 %22
  %25 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv12, ptr %arrayidx.i39, align 1
  br label %add_token_u8.exit41

add_token_u8.exit41:                              ; preds = %if.end.i40, %do.end.i.i37, %while.body.add_token_u8.exit41_crit_edge
  %tobool11.not = icmp eq i32 %dec, 0
  br i1 %tobool11.not, label %add_token_u8.exit41.cleanup_crit_edge, label %add_token_u8.exit41.while.body_crit_edge

add_token_u8.exit41.while.body_crit_edge:         ; preds = %add_token_u8.exit41
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

add_token_u8.exit41.cleanup_crit_edge:            ; preds = %add_token_u8.exit41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %add_token_u8.exit41.cleanup_crit_edge, %add_short_atom_header.exit.cleanup_crit_edge, %if.then8, %do.body, %if.end.i26, %do.end.i.i, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_opal_session_cont(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %resp.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 12
  %parsed.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 13
  %call.i = tail call fastcc i32 @response_parse(ptr noundef %resp.i, ptr noundef %parsed.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_and_check_status.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_opal_session_cont, %parse_and_check_status.exit.thread)) #6
          to label %parse_and_check_status.exit [label %parse_and_check_status.exit.thread], !srcloc !392

parse_and_check_status.exit.thread:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_and_check_status.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.85) #6
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call fastcc zeroext i8 @response_status(ptr noundef %parsed.i) #6
  %conv.i = zext i8 %call9.i to i32
  br label %parse_and_check_status.exit

parse_and_check_status.exit:                      ; preds = %if.end7.i, %do.body.i
  %retval.0.i27 = phi i32 [ %conv.i, %if.end7.i ], [ %call.i, %do.body.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i27)
  %tobool.not = icmp eq i32 %retval.0.i27, 0
  br i1 %tobool.not, label %if.end, label %parse_and_check_status.exit.cleanup_crit_edge

parse_and_check_status.exit.cleanup_crit_edge:    ; preds = %parse_and_check_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %parse_and_check_status.exit
  %call1 = tail call fastcc i64 @response_get_u64(ptr noundef %parsed.i, i32 noundef 4)
  %conv = trunc i64 %call1 to i32
  %call3 = tail call fastcc i64 @response_get_u64(ptr noundef %parsed.i, i32 noundef 5)
  %conv4 = trunc i64 %call3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %conv)
  %cmp.not = icmp ne i32 %conv, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv4)
  %cmp6 = icmp ult i32 %conv4, 4096
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp6
  br i1 %or.cond, label %do.body, label %if.end15

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_opal_session_cont.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_opal_session_cont, %if.then13)) #6
          to label %cleanup [label %if.then13], !srcloc !392

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @start_opal_session_cont.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.82) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %hsn16 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %hsn16 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65, ptr %hsn16, align 4
  %tsn17 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %1 = ptrtoint ptr %tsn17 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv4, ptr %tsn17, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %do.body, %parse_and_check_status.exit.cleanup_crit_edge, %parse_and_check_status.exit.thread
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %retval.0.i27, %parse_and_check_status.exit.cleanup_crit_edge ], [ -1, %if.then13 ], [ %call.i, %parse_and_check_status.exit.thread ], [ -1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @add_bytestring_header(ptr nocapture noundef %err, ptr noundef %cmd, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %tobool.not = icmp ult i32 %len, 16
  %spec.select = select i1 %tobool.not, i32 1, i32 2
  %add = add i32 %spec.select, %len
  %0 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i:                                         ; preds = %entry
  %pos.i.i = getelementptr inbounds %struct.opal_dev, ptr %cmd, i32 0, i32 10
  %2 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos.i.i, align 8
  %sub.i.i = sub i32 2048, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %add)
  %cmp.i = icmp ult i32 %sub.i.i, %add
  br i1 %cmp.i, label %do.body.i, label %if.end8

do.body.i:                                        ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_bytestring_header, %if.then6.i)) #6
          to label %do.end.i [label %if.then6.i], !srcloc !392

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef %add) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -34, ptr %err, align 4
  br label %do.body

do.body:                                          ; preds = %do.end.i, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_bytestring_header.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_bytestring_header, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !392

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_bytestring_header.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.68) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end.i
  br i1 %tobool.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %5 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pos.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 2048
  br i1 %cmp.i.i.i, label %do.body.i.i.i, label %if.end.i.i

do.body.i.i.i:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_bytestring_header, %if.then6.i.i.i)) #6
          to label %if.end11 [label %if.then6.i.i.i], !srcloc !392

if.then6.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %if.end11

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %7 = trunc i32 %len to i8
  %conv11.i = or i8 %7, -96
  %inc.i.i = add i32 %6, 1
  %8 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc.i.i, ptr %pos.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 %6
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv11.i, ptr %arrayidx.i.i, align 1
  br label %if.end11

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %10 = lshr i32 %len, 8
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 7
  %conv11.i22 = or i8 %12, -48
  %13 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pos.i.i, align 8
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %pos.i.i, align 8
  %arrayidx.i = getelementptr %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv11.i22, ptr %arrayidx.i, align 1
  %conv13.i = trunc i32 %len to i8
  %16 = load i32, ptr %pos.i.i, align 8
  %inc16.i = add i32 %16, 1
  store i32 %inc16.i, ptr %pos.i.i, align 8
  %arrayidx17.i = getelementptr %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 %16
  %17 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv13.i, ptr %arrayidx17.i, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end.i.i, %if.then6.i.i.i, %do.body.i.i.i
  %18 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pos.i.i, align 8
  %arrayidx = getelementptr %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 %19
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then6, %do.body
  %retval.0 = phi ptr [ %arrayidx, %if.end11 ], [ null, %if.then6 ], [ null, %do.body ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cmd_finalize(ptr noundef %cmd, i32 noundef %hsn, i32 noundef %tsn) unnamed_addr #0 align 64 {
if.end.i.i:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pos.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %cmd, i32 0, i32 10
  %0 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 2048
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end.i.i66

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmd_finalize, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i66:                                     ; preds = %if.end.i.i
  %inc.i = add i32 %1, 1
  %2 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc.i, ptr %pos.i.i.i, align 8
  %arrayidx.i = getelementptr %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 %1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -15, ptr %arrayidx.i, align 1
  %4 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %4)
  %cmp.i.i65 = icmp eq i32 %4, 2048
  br i1 %cmp.i.i65, label %do.body.i.i67, label %if.end.i.i77

do.body.i.i67:                                    ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmd_finalize, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i77:                                     ; preds = %if.end.i.i66
  %inc.i70 = add i32 %4, 1
  %5 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc.i70, ptr %pos.i.i.i, align 8
  %arrayidx.i71 = getelementptr %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 %4
  %6 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -7, ptr %arrayidx.i71, align 1
  %7 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %7)
  %cmp.i.i76 = icmp eq i32 %7, 2048
  br i1 %cmp.i.i76, label %do.body.i.i78, label %if.end.i.i88

do.body.i.i78:                                    ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmd_finalize, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i88:                                     ; preds = %if.end.i.i77
  %inc.i81 = add i32 %7, 1
  %8 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc.i81, ptr %pos.i.i.i, align 8
  %arrayidx.i82 = getelementptr %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 %7
  %9 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -16, ptr %arrayidx.i82, align 1
  %10 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %10)
  %cmp.i.i87 = icmp eq i32 %10, 2048
  br i1 %cmp.i.i87, label %do.body.i.i89, label %if.end.i.i99

do.body.i.i89:                                    ; preds = %if.end.i.i88
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmd_finalize, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i99:                                     ; preds = %if.end.i.i88
  %inc.i92 = add i32 %10, 1
  %11 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc.i92, ptr %pos.i.i.i, align 8
  %arrayidx.i93 = getelementptr %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 %10
  %12 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx.i93, align 1
  %13 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %13)
  %cmp.i.i98 = icmp eq i32 %13, 2048
  br i1 %cmp.i.i98, label %do.body.i.i100, label %if.end.i.i110

do.body.i.i100:                                   ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmd_finalize, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i110:                                    ; preds = %if.end.i.i99
  %inc.i103 = add i32 %13, 1
  %14 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc.i103, ptr %pos.i.i.i, align 8
  %arrayidx.i104 = getelementptr %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 %13
  %15 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx.i104, align 1
  %16 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %16)
  %cmp.i.i109 = icmp eq i32 %16, 2048
  br i1 %cmp.i.i109, label %do.body.i.i111, label %if.end.i.i121

do.body.i.i111:                                   ; preds = %if.end.i.i110
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmd_finalize, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i121:                                    ; preds = %if.end.i.i110
  %inc.i114 = add i32 %16, 1
  %17 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc.i114, ptr %pos.i.i.i, align 8
  %arrayidx.i115 = getelementptr %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 %16
  %18 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx.i115, align 1
  %19 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %19)
  %cmp.i.i120 = icmp eq i32 %19, 2048
  br i1 %cmp.i.i120, label %do.body.i.i122, label %if.end5

do.body.i.i122:                                   ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmd_finalize, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

do.body.sink.split:                               ; preds = %do.body.i.i122, %do.body.i.i111, %do.body.i.i100, %do.body.i.i89, %do.body.i.i78, %do.body.i.i67, %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %do.body.i.i122, %do.body.i.i111, %do.body.i.i100, %do.body.i.i89, %do.body.i.i78, %do.body.i.i67, %do.body.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmd_finalize.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmd_finalize, %if.then4)) #6
          to label %cleanup [label %if.then4], !srcloc !392

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmd_finalize.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.74) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i121
  %inc.i125 = add i32 %19, 1
  %20 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc.i125, ptr %pos.i.i.i, align 8
  %arrayidx.i126 = getelementptr %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 %19
  %21 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -15, ptr %arrayidx.i126, align 1
  %pkt = getelementptr inbounds %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 20
  %22 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %tsn, ptr %pkt, align 4
  %hsn9 = getelementptr inbounds %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 24
  %23 = ptrtoint ptr %hsn9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %hsn, ptr %hsn9, align 4
  %24 = load i32, ptr %pos.i.i.i, align 8
  %sub = add i32 %24, -56
  %length = getelementptr inbounds %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 52
  %25 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %length, align 4
  %rem177 = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem177)
  %tobool11.not178 = icmp eq i32 %rem177, 0
  br i1 %tobool11.not178, label %if.end5.while.end_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  br label %while.body

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %if.end5.while.body_crit_edge
  %26 = phi i32 [ %.pr, %if.end30.while.body_crit_edge ], [ %24, %if.end5.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %26)
  %cmp = icmp ugt i32 %26, 2047
  br i1 %cmp, label %do.body14, label %if.end30

do.body14:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmd_finalize.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmd_finalize, %if.then26)) #6
          to label %cleanup [label %if.then26], !srcloc !392

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmd_finalize.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.76) #6
  br label %cleanup

if.end30:                                         ; preds = %while.body
  %inc = add nuw nsw i32 %26, 1
  %27 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %inc, ptr %pos.i.i.i, align 8
  %arrayidx = getelementptr %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 %26
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx, align 1
  %.pr = load i32, ptr %pos.i.i.i, align 8
  %rem = and i32 %.pr, 3
  %tobool11.not = icmp eq i32 %rem, 0
  br i1 %tobool11.not, label %if.end30.while.end_crit_edge, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end30.while.end_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end30.while.end_crit_edge, %if.end5.while.end_crit_edge
  %.lcssa = phi i32 [ %24, %if.end5.while.end_crit_edge ], [ %.pr, %if.end30.while.end_crit_edge ]
  %sub35 = add i32 %.lcssa, -44
  %length37 = getelementptr inbounds %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 40
  %29 = ptrtoint ptr %length37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub35, ptr %length37, align 4
  %sub39 = add i32 %.lcssa, -20
  %length40 = getelementptr inbounds %struct.opal_dev, ptr %cmd, i32 0, i32 11, i32 16
  %30 = ptrtoint ptr %length40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub39, ptr %length40, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then26, %do.body14, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %while.end ], [ -14, %if.then4 ], [ -34, %if.then26 ], [ -14, %do.body ], [ -34, %do.body14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @opal_send_recv(ptr noundef %dev, ptr nocapture noundef readonly %cont) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %send_recv.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %send_recv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %send_recv.i, align 8
  %data.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %comid.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %comid.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %comid.i, align 8
  %cmd.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 11
  %call.i = tail call i32 %1(ptr noundef %3, i16 noundef zeroext %5, i8 noundef zeroext 1, ptr noundef %cmd.i, i32 noundef 2048, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %send_recv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %send_recv.i, align 8
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %comid.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %comid.i, align 8
  %resp.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 12
  %call.i21 = tail call i32 %7(ptr noundef %9, i16 noundef zeroext %11, i8 noundef zeroext 1, ptr noundef %resp.i, i32 noundef 2048, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool2.not = icmp eq i32 %call.i21, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %minTransfer8.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 12, i32 12
  %outstandingData.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 12, i32 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.end11.i.do.body.i_crit_edge, %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @opal_recv_check.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@opal_send_recv, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !392

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %outstandingData.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %outstandingData.i, align 4
  %14 = ptrtoint ptr %minTransfer8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %minTransfer8.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @opal_recv_check.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.79, i32 noundef %13, i32 noundef %15) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %16 = ptrtoint ptr %outstandingData.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %outstandingData.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  br i1 %cmp.i, label %do.end.i.if.end8_crit_edge, label %lor.lhs.false.i

do.end.i.if.end8_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

lor.lhs.false.i:                                  ; preds = %do.end.i
  %18 = ptrtoint ptr %minTransfer8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %minTransfer8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp9.not.i = icmp eq i32 %19, 0
  br i1 %cmp9.not.i, label %if.end11.i, label %lor.lhs.false.i.if.end8_crit_edge

lor.lhs.false.i.if.end8_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end11.i:                                       ; preds = %lor.lhs.false.i
  %20 = call ptr @memset(ptr %resp.i, i32 0, i32 2048)
  %21 = ptrtoint ptr %send_recv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %send_recv.i, align 8
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %25 = ptrtoint ptr %comid.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %comid.i, align 8
  %call.i.i = tail call i32 %22(ptr noundef %24, i16 noundef zeroext %26, i8 noundef zeroext 1, ptr noundef %resp.i, i32 noundef 2048, i1 noundef zeroext false) #6
  %tobool14.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not.i, label %if.end11.i.do.body.i_crit_edge, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11.i.do.body.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end8:                                          ; preds = %lor.lhs.false.i.if.end8_crit_edge, %do.end.i.if.end8_crit_edge
  %call9 = tail call i32 %cont(ptr noundef %dev) #6, !callees !395
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end11.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i21, %if.end.cleanup_crit_edge ], [ %call.i.i, %if.end11.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_and_check_status(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %resp = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 12
  %parsed = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 13
  %call = tail call fastcc i32 @response_parse(ptr noundef %resp, ptr noundef %parsed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_and_check_status.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parse_and_check_status, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !392

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_and_check_status.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.85) #6
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call fastcc zeroext i8 @response_status(ptr noundef %parsed)
  %conv = zext i8 %call9 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %do.body
  %retval.0 = phi i32 [ %conv, %if.end7 ], [ %call, %if.then6 ], [ %call, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @response_get_u64(ptr noundef readonly %resp, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %resp, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_token.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_get_u64, %if.then4.i)) #6
          to label %response_get_token.exit [label %if.then4.i], !srcloc !392

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_token.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.96) #6
  br label %cleanup

if.end6.i:                                        ; preds = %entry
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resp, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %n)
  %cmp.not.i = icmp sgt i32 %1, %n
  br i1 %cmp.not.i, label %if.end26.i, label %do.body8.i

do.body8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_token.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_get_u64, %if.then20.i)) #6
          to label %response_get_token.exit [label %if.then20.i], !srcloc !392

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resp, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_token.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.98, i32 noundef %n, i32 noundef %3) #6
  br label %cleanup

if.end26.i:                                       ; preds = %if.end6.i
  %len.i = getelementptr %struct.parsed_resp, ptr %resp, i32 0, i32 1, i32 %n, i32 1
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp27.i = icmp eq i32 %5, 0
  br i1 %cmp27.i, label %do.body29.i, label %if.end46.i

do.body29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_token.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_get_u64, %if.then41.i)) #6
          to label %response_get_token.exit [label %if.then41.i], !srcloc !392

if.then41.i:                                      ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_token.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.100) #6
  br label %cleanup

if.end46.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.parsed_resp, ptr %resp, i32 0, i32 1, i32 %n
  br label %response_get_token.exit

response_get_token.exit:                          ; preds = %if.end46.i, %do.body29.i, %do.body8.i, %do.body.i
  %retval.0.i41 = phi ptr [ %arrayidx.i, %if.end46.i ], [ inttoptr (i32 -22 to ptr), %do.body.i ], [ inttoptr (i32 -22 to ptr), %do.body8.i ], [ inttoptr (i32 -22 to ptr), %do.body29.i ]
  %cmp.i = icmp ugt ptr %retval.0.i41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %response_get_token.exit.cleanup_crit_edge, label %if.end

response_get_token.exit.cleanup_crit_edge:        ; preds = %response_get_token.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %response_get_token.exit
  %type = getelementptr inbounds %struct.opal_resp_tok, ptr %retval.0.i41, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 226, i32 %7)
  %cmp.not = icmp eq i32 %7, 226
  br i1 %cmp.not, label %if.end9, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_u64.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_get_u64, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !392

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_u64.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.103, i32 noundef %9) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %width = getelementptr inbounds %struct.opal_resp_tok, ptr %retval.0.i41, i32 0, i32 3
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %switch = icmp ult i32 %11, 2
  br i1 %switch, label %if.end31, label %do.body14

do.body14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_u64.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_get_u64, %if.then26)) #6
          to label %cleanup [label %if.then26], !srcloc !392

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_u64.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.105, i32 noundef %13) #6
  br label %cleanup

if.end31:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %stored = getelementptr inbounds %struct.opal_resp_tok, ptr %retval.0.i41, i32 0, i32 4
  %14 = ptrtoint ptr %stored to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %stored, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then26, %do.body14, %if.then6, %do.body, %response_get_token.exit.cleanup_crit_edge, %if.then41.i, %if.then20.i, %if.then4.i
  %retval.0 = phi i64 [ %15, %if.end31 ], [ 0, %response_get_token.exit.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.then26 ], [ 0, %do.body ], [ 0, %do.body14 ], [ 0, %if.then4.i ], [ 0, %if.then20.i ], [ 0, %if.then41.i ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @response_parse(ptr noundef %buf, ptr noundef %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  %tobool1.not = icmp eq ptr %resp, null
  %or.cond3 = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond3, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %buf, i32 56
  %length4 = getelementptr inbounds %struct.opal_compacket, ptr %buf, i32 0, i32 4
  %0 = ptrtoint ptr %length4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length4, align 4
  %length5 = getelementptr inbounds %struct.opal_header, ptr %buf, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %length5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length5, align 4
  %length6 = getelementptr inbounds %struct.opal_header, ptr %buf, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %length6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_parse.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_parse, %if.then10)) #6
          to label %do.end [label %if.then10], !srcloc !392

if.then10:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_parse.__UNIQUE_ID_ddebug264, ptr noundef nonnull @.str.88, i32 noundef %1, i32 noundef %3, i32 noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12 = icmp eq i32 %3, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp14 = icmp eq i32 %5, 0
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1992, i32 %5)
  %cmp16 = icmp ugt i32 %5, 1992
  %or.cond2 = select i1 %or.cond1, i1 true, i1 %cmp16
  br i1 %or.cond2, label %do.body18, label %if.end34

do.body18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_parse.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_parse, %if.then30)) #6
          to label %cleanup [label %if.then30], !srcloc !392

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_parse.__UNIQUE_ID_ddebug265, ptr noundef nonnull @.str.90, i32 noundef %1, i32 noundef %3, i32 noundef %5) #6
  br label %cleanup

if.end34:                                         ; preds = %do.end
  %add.ptr35 = getelementptr i8, ptr %buf, i32 2048
  %cmp36 = icmp ugt ptr %add.ptr, %add.ptr35
  br i1 %cmp36, label %if.end34.cleanup_crit_edge, label %while.body.preheader

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.preheader:                             ; preds = %if.end34
  %toks = getelementptr inbounds %struct.parsed_resp, ptr %resp, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end73.while.body_crit_edge, %while.body.preheader
  %iter.055 = phi ptr [ %incdec.ptr, %if.end73.while.body_crit_edge ], [ %toks, %while.body.preheader ]
  %num_entries.054 = phi i32 [ %inc, %if.end73.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %pos.050 = phi ptr [ %add.ptr74, %if.end73.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %total.049 = phi i32 [ %sub, %if.end73.while.body_crit_edge ], [ %5, %while.body.preheader ]
  %6 = ptrtoint ptr %pos.050 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pos.050, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp40 = icmp sgt i8 %7, -1
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %while.body
  %8 = ptrtoint ptr %iter.055 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pos.050, ptr %iter.055, align 8
  %len.i = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 1
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %len.i, align 4
  %width.i = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 3
  %10 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %width.i, align 4
  %11 = ptrtoint ptr %pos.050 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pos.050, align 1
  %13 = and i8 %12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %type2.i = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 2
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 225, ptr %type2.i, align 8
  br label %if.end73

if.else.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %type2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 226, ptr %type2.i, align 8
  %16 = ptrtoint ptr %pos.050 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pos.050, align 1
  %18 = and i8 %17, 63
  %19 = zext i8 %18 to i64
  %stored.i = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 4
  %20 = ptrtoint ptr %stored.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %stored.i, align 8
  br label %if.end73

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %7)
  %cmp46 = icmp ult i8 %7, -64
  br i1 %cmp46, label %if.then48, label %if.else50

if.then48:                                        ; preds = %if.else
  %21 = ptrtoint ptr %iter.055 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pos.050, ptr %iter.055, align 8
  %22 = ptrtoint ptr %pos.050 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pos.050, align 1
  %24 = and i8 %23, 15
  %narrow.i = add nuw nsw i8 %24, 1
  %add.i = zext i8 %narrow.i to i32
  %len.i7 = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 1
  %25 = ptrtoint ptr %len.i7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %len.i7, align 4
  %width.i8 = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 3
  %26 = ptrtoint ptr %width.i8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %width.i8, align 4
  %27 = load i8, ptr %pos.050, align 1
  %conv3.i = zext i8 %27 to i32
  %and4.i = and i32 %conv3.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i9 = icmp eq i32 %and4.i, 0
  br i1 %tobool.not.i9, label %if.else.i11, label %if.then.i10

if.then.i10:                                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %type.i = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 2
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 224, ptr %type.i, align 8
  br label %if.end29.i

if.else.i11:                                      ; preds = %if.then48
  %and7.i = and i32 %conv3.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %type12.i = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 2
  br i1 %tobool8.not.i, label %if.else11.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.else.i11
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %type12.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 225, ptr %type12.i, align 8
  br label %if.end29.i

if.else11.i:                                      ; preds = %if.else.i11
  %30 = ptrtoint ptr %type12.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 226, ptr %type12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %24)
  %cmp.i = icmp ugt i8 %24, 8
  br i1 %cmp.i, label %do.body.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.else11.i
  %i.050.i = add nsw i32 %add.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp2251.not.i = icmp eq i8 %24, 0
  br i1 %cmp2251.not.i, label %if.end29.critedge.i, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

do.body.i:                                        ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_parse_short.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_parse, %if.end69.thread43)) #6
          to label %if.end69 [label %if.end69.thread43], !srcloc !392

if.end69.thread43:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_parse_short.__UNIQUE_ID_ddebug263, ptr noundef nonnull @.str.93) #6
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.054.i = phi i32 [ %i.0.i, %for.body.i.for.body.i_crit_edge ], [ %i.050.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %u_integer.053.i = phi i64 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %b.052.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx24.i = getelementptr i8, ptr %pos.050, i32 %i.054.i
  %31 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %32 to i64
  %mul.i = shl i32 %b.052.i, 3
  %sh_prom.i = zext i32 %mul.i to i64
  %shl.i = shl i64 %conv25.i, %sh_prom.i
  %or.i = or i64 %shl.i, %u_integer.053.i
  %inc.i = add nuw nsw i32 %b.052.i, 1
  %i.0.i = add nsw i32 %i.054.i, -1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.050.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %stored.i12 = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 4
  %33 = ptrtoint ptr %stored.i12 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %or.i, ptr %stored.i12, align 8
  br label %if.end29.i

if.end29.critedge.i:                              ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %stored.c.i = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 4
  %34 = ptrtoint ptr %stored.c.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %stored.c.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end29.critedge.i, %for.end.i, %if.then9.i, %if.then.i10
  %35 = ptrtoint ptr %len.i7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i7, align 4
  br label %if.end69

if.else50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %7)
  %cmp53 = icmp ult i8 %7, -32
  br i1 %cmp53, label %if.then55, label %if.else57

if.then55:                                        ; preds = %if.else50
  %37 = ptrtoint ptr %iter.055 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %pos.050, ptr %iter.055, align 8
  %38 = ptrtoint ptr %pos.050 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pos.050, align 1
  %40 = and i8 %39, 7
  %and.i = zext i8 %40 to i32
  %shl.i13 = shl nuw nsw i32 %and.i, 8
  %arrayidx2.i = getelementptr i8, ptr %pos.050, i32 1
  %41 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i14 = zext i8 %42 to i32
  %or.i15 = add nuw nsw i32 %conv3.i14, 2
  %add.i16 = add nuw nsw i32 %or.i15, %shl.i13
  %len.i17 = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 1
  %43 = ptrtoint ptr %len.i17 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add.i16, ptr %len.i17, align 4
  %width.i18 = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 3
  %44 = ptrtoint ptr %width.i18 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %width.i18, align 4
  %45 = load i8, ptr %pos.050, align 1
  %conv5.i = zext i8 %45 to i32
  %and6.i = and i32 %conv5.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i19 = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i19, label %if.else.i22, label %if.then.i21

if.then.i21:                                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  %type.i20 = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 2
  %46 = ptrtoint ptr %type.i20 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 224, ptr %type.i20, align 8
  br label %if.end73

if.else.i22:                                      ; preds = %if.then55
  %and9.i = and i32 %conv5.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %type14.i = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 2
  br i1 %tobool10.not.i, label %if.else13.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.else.i22
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %type14.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 225, ptr %type14.i, align 8
  br label %if.end73

if.else13.i:                                      ; preds = %if.else.i22
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %type14.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 226, ptr %type14.i, align 8
  br label %if.end73

if.else57:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_const_cmp1(i8 -28, i8 %7)
  %cmp60 = icmp ult i8 %7, -28
  %49 = ptrtoint ptr %iter.055 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %pos.050, ptr %iter.055, align 8
  br i1 %cmp60, label %if.then62, label %if.else64

if.then62:                                        ; preds = %if.else57
  %arrayidx.i = getelementptr i8, ptr %pos.050, i32 1
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %51 to i32
  %shl.i23 = shl nuw nsw i32 %conv.i, 16
  %arrayidx2.i24 = getelementptr i8, ptr %pos.050, i32 2
  %52 = ptrtoint ptr %arrayidx2.i24 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx2.i24, align 1
  %conv3.i25 = zext i8 %53 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i25, 8
  %or.i26 = or i32 %shl4.i, %shl.i23
  %arrayidx5.i = getelementptr i8, ptr %pos.050, i32 3
  %54 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %55 to i32
  %or7.i = or i32 %or.i26, %conv6.i
  %add.i27 = add nuw nsw i32 %or7.i, 4
  %len.i28 = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 1
  %56 = ptrtoint ptr %len.i28 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add.i27, ptr %len.i28, align 4
  %width.i29 = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 3
  %57 = ptrtoint ptr %width.i29 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3, ptr %width.i29, align 4
  %58 = ptrtoint ptr %pos.050 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pos.050, align 1
  %conv9.i = zext i8 %59 to i32
  %and.i30 = and i32 %conv9.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool.not.i31 = icmp eq i32 %and.i30, 0
  br i1 %tobool.not.i31, label %if.else.i34, label %if.then.i33

if.then.i33:                                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  %type.i32 = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 2
  %60 = ptrtoint ptr %type.i32 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 224, ptr %type.i32, align 8
  br label %if.end73

if.else.i34:                                      ; preds = %if.then62
  %and12.i = and i32 %conv9.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %type17.i = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 2
  br i1 %tobool13.not.i, label %if.else16.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.else.i34
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %type17.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 225, ptr %type17.i, align 8
  br label %if.end73

if.else16.i:                                      ; preds = %if.else.i34
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %type17.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 226, ptr %type17.i, align 8
  br label %if.end73

if.else64:                                        ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #8
  %len.i35 = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 1
  %63 = ptrtoint ptr %len.i35 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %len.i35, align 4
  %type.i36 = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 2
  %64 = ptrtoint ptr %type.i36 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 227, ptr %type.i36, align 8
  %width.i37 = getelementptr inbounds %struct.opal_resp_tok, ptr %iter.055, i32 0, i32 3
  %65 = ptrtoint ptr %width.i37 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 4, ptr %width.i37, align 4
  br label %if.end73

if.end69:                                         ; preds = %if.end29.i, %do.body.i
  %token_length.0 = phi i32 [ %36, %if.end29.i ], [ -22, %do.body.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %token_length.0)
  %cmp70 = icmp slt i32 %token_length.0, 0
  br i1 %cmp70, label %if.end69.cleanup_crit_edge, label %if.end69.if.end73_crit_edge

if.end69.if.end73_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end73:                                         ; preds = %if.end69.if.end73_crit_edge, %if.else64, %if.else16.i, %if.then14.i, %if.then.i33, %if.else13.i, %if.then11.i, %if.then.i21, %if.else.i, %if.then.i
  %token_length.042 = phi i32 [ %token_length.0, %if.end69.if.end73_crit_edge ], [ %add.i27, %if.else16.i ], [ %add.i27, %if.then14.i ], [ %add.i27, %if.then.i33 ], [ %add.i16, %if.else13.i ], [ %add.i16, %if.then11.i ], [ %add.i16, %if.then.i21 ], [ 1, %if.else.i ], [ 1, %if.then.i ], [ 1, %if.else64 ]
  %add.ptr74 = getelementptr i8, ptr %pos.050, i32 %token_length.042
  %sub = sub i32 %total.049, %token_length.042
  %incdec.ptr = getelementptr %struct.opal_resp_tok, ptr %iter.055, i32 1
  %inc = add i32 %num_entries.054, 1
  %cmp39 = icmp sgt i32 %sub, 0
  br i1 %cmp39, label %if.end73.while.body_crit_edge, label %while.end

if.end73.while.body_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %inc, ptr %resp, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end69.cleanup_crit_edge, %if.end69.thread43, %if.end34.cleanup_crit_edge, %if.then30, %do.body18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -14, %entry.cleanup_crit_edge ], [ -14, %if.end34.cleanup_crit_edge ], [ -22, %do.body18 ], [ -22, %if.then30 ], [ -22, %if.end69.thread43 ], [ %token_length.0, %if.end69.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @response_status(ptr noundef %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %resp, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_token.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_status, %if.end.thread)) #6
          to label %response_get_token.exit [label %if.end.thread], !srcloc !392

if.end6.i:                                        ; preds = %entry
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp sgt i32 %1, 0
  br i1 %cmp.not.i, label %if.end26.i, label %do.body8.i

do.body8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_token.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_status, %if.then20.i)) #6
          to label %response_get_token.exit [label %if.then20.i], !srcloc !392

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resp, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_token.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.98, i32 noundef 0, i32 noundef %3) #6
  br label %if.end

if.end26.i:                                       ; preds = %if.end6.i
  %len.i = getelementptr %struct.parsed_resp, ptr %resp, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp27.i = icmp eq i32 %5, 0
  br i1 %cmp27.i, label %do.body29.i, label %if.end46.i

do.body29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_token.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_status, %if.then41.i)) #6
          to label %response_get_token.exit [label %if.then41.i], !srcloc !392

if.then41.i:                                      ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_token.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.100) #6
  br label %if.end

if.end46.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.parsed_resp, ptr %resp, i32 0, i32 1, i32 0
  br label %response_get_token.exit

response_get_token.exit:                          ; preds = %if.end46.i, %do.body29.i, %do.body8.i, %do.body.i
  %retval.0.i = phi ptr [ %arrayidx.i, %if.end46.i ], [ inttoptr (i32 -22 to ptr), %do.body.i ], [ inttoptr (i32 -22 to ptr), %do.body8.i ], [ inttoptr (i32 -22 to ptr), %do.body29.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %response_get_token.exit.if.end_crit_edge, label %lor.lhs.false.i

response_get_token.exit.if.end_crit_edge:         ; preds = %response_get_token.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i:                                  ; preds = %response_get_token.exit
  %type.i = getelementptr inbounds %struct.opal_resp_tok, ptr %retval.0.i, i32 0, i32 2
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 227, i32 %7)
  %cmp.not.i27 = icmp eq i32 %7, 227
  br i1 %cmp.not.i27, label %response_token_matches.exit, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

response_token_matches.exit:                      ; preds = %lor.lhs.false.i
  %8 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %retval.0.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %11)
  %cmp3.not.i = icmp eq i8 %11, -6
  br i1 %cmp3.not.i, label %response_token_matches.exit.cleanup_crit_edge, label %response_token_matches.exit.if.end_crit_edge

response_token_matches.exit.if.end_crit_edge:     ; preds = %response_token_matches.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

response_token_matches.exit.cleanup_crit_edge:    ; preds = %response_token_matches.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %response_token_matches.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %response_get_token.exit.if.end_crit_edge, %if.then41.i, %if.then20.i
  %12 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp = icmp slt i32 %13, 5
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.thread:                                    ; preds = %do.body.i
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_token.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.96) #6
  call void @__asan_load4_noabort(i32 0)
  %14 = load i32, ptr null, align 2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp86 = icmp slt i32 %14, 5
  br i1 %cmp86, label %if.end.thread.cleanup_crit_edge, label %if.end.thread.do.body.i30_crit_edge

if.end.thread.do.body.i30_crit_edge:              ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i30

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sub = add nsw i32 %13, -5
  br i1 %tobool.not.i, label %if.end3.do.body.i30_crit_edge, label %if.end26.i38

if.end3.do.body.i30_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i30

do.body.i30:                                      ; preds = %if.end3.do.body.i30_crit_edge, %if.end.thread.do.body.i30_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_token.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_status, %if.then4.i31)) #6
          to label %response_get_token.exit44 [label %if.then4.i31], !srcloc !392

if.then4.i31:                                     ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_token.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.96) #6
  br label %cleanup

if.end26.i38:                                     ; preds = %if.end3
  %len.i36 = getelementptr %struct.parsed_resp, ptr %resp, i32 0, i32 1, i32 %sub, i32 1
  %15 = ptrtoint ptr %len.i36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp27.i37 = icmp eq i32 %16, 0
  br i1 %cmp27.i37, label %do.body29.i39, label %if.end46.i42

do.body29.i39:                                    ; preds = %if.end26.i38
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_token.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_status, %if.then41.i40)) #6
          to label %response_get_token.exit44 [label %if.then41.i40], !srcloc !392

if.then41.i40:                                    ; preds = %do.body29.i39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_token.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.100) #6
  br label %cleanup

if.end46.i42:                                     ; preds = %if.end26.i38
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i41 = getelementptr %struct.parsed_resp, ptr %resp, i32 0, i32 1, i32 %sub
  br label %response_get_token.exit44

response_get_token.exit44:                        ; preds = %if.end46.i42, %do.body29.i39, %do.body.i30
  %retval.0.i43 = phi ptr [ %arrayidx.i41, %if.end46.i42 ], [ inttoptr (i32 -22 to ptr), %do.body.i30 ], [ inttoptr (i32 -22 to ptr), %do.body29.i39 ]
  %cmp.i.i45 = icmp ugt ptr %retval.0.i43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i45, label %response_get_token.exit44.cleanup_crit_edge, label %lor.lhs.false.i48

response_get_token.exit44.cleanup_crit_edge:      ; preds = %response_get_token.exit44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i48:                                ; preds = %response_get_token.exit44
  %type.i46 = getelementptr inbounds %struct.opal_resp_tok, ptr %retval.0.i43, i32 0, i32 2
  %17 = ptrtoint ptr %type.i46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 227, i32 %18)
  %cmp.not.i47 = icmp eq i32 %18, 227
  br i1 %cmp.not.i47, label %response_token_matches.exit52, label %lor.lhs.false.i48.cleanup_crit_edge

lor.lhs.false.i48.cleanup_crit_edge:              ; preds = %lor.lhs.false.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

response_token_matches.exit52:                    ; preds = %lor.lhs.false.i48
  %19 = ptrtoint ptr %retval.0.i43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %retval.0.i43, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %22)
  %cmp3.not.i49 = icmp eq i8 %22, -16
  br i1 %cmp3.not.i49, label %if.end8, label %response_token_matches.exit52.cleanup_crit_edge

response_token_matches.exit52.cleanup_crit_edge:  ; preds = %response_token_matches.exit52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %response_token_matches.exit52
  %23 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %resp, align 8
  %sub10 = add i32 %24, -1
  br i1 %tobool.not.i, label %do.body.i54, label %if.end6.i57

do.body.i54:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_token.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_status, %if.then4.i55)) #6
          to label %response_get_token.exit68 [label %if.then4.i55], !srcloc !392

if.then4.i55:                                     ; preds = %do.body.i54
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_token.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.96) #6
  br label %cleanup

if.end6.i57:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %24)
  %cmp.not.i56.not = icmp eq i32 %24, -2147483648
  br i1 %cmp.not.i56.not, label %do.body8.i58, label %if.end26.i62

do.body8.i58:                                     ; preds = %if.end6.i57
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_token.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_status, %if.then20.i59)) #6
          to label %response_get_token.exit68 [label %if.then20.i59], !srcloc !392

if.then20.i59:                                    ; preds = %do.body8.i58
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resp, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_token.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.98, i32 noundef %sub10, i32 noundef %26) #6
  br label %cleanup

if.end26.i62:                                     ; preds = %if.end6.i57
  %len.i60 = getelementptr %struct.parsed_resp, ptr %resp, i32 0, i32 1, i32 %sub10, i32 1
  %27 = ptrtoint ptr %len.i60 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp27.i61 = icmp eq i32 %28, 0
  br i1 %cmp27.i61, label %do.body29.i63, label %if.end46.i66

do.body29.i63:                                    ; preds = %if.end26.i62
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_token.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_status, %if.then41.i64)) #6
          to label %response_get_token.exit68 [label %if.then41.i64], !srcloc !392

if.then41.i64:                                    ; preds = %do.body29.i63
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_token.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.100) #6
  br label %cleanup

if.end46.i66:                                     ; preds = %if.end26.i62
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i65 = getelementptr %struct.parsed_resp, ptr %resp, i32 0, i32 1, i32 %sub10
  br label %response_get_token.exit68

response_get_token.exit68:                        ; preds = %if.end46.i66, %do.body29.i63, %do.body8.i58, %do.body.i54
  %retval.0.i67 = phi ptr [ %arrayidx.i65, %if.end46.i66 ], [ inttoptr (i32 -22 to ptr), %do.body.i54 ], [ inttoptr (i32 -22 to ptr), %do.body8.i58 ], [ inttoptr (i32 -22 to ptr), %do.body29.i63 ]
  %cmp.i.i69 = icmp ugt ptr %retval.0.i67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i69, label %response_get_token.exit68.cleanup_crit_edge, label %lor.lhs.false.i72

response_get_token.exit68.cleanup_crit_edge:      ; preds = %response_get_token.exit68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i72:                                ; preds = %response_get_token.exit68
  %type.i70 = getelementptr inbounds %struct.opal_resp_tok, ptr %retval.0.i67, i32 0, i32 2
  %29 = ptrtoint ptr %type.i70 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type.i70, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 227, i32 %30)
  %cmp.not.i71 = icmp eq i32 %30, 227
  br i1 %cmp.not.i71, label %response_token_matches.exit76, label %lor.lhs.false.i72.cleanup_crit_edge

lor.lhs.false.i72.cleanup_crit_edge:              ; preds = %lor.lhs.false.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

response_token_matches.exit76:                    ; preds = %lor.lhs.false.i72
  %31 = ptrtoint ptr %retval.0.i67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %retval.0.i67, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %34)
  %cmp3.not.i73 = icmp eq i8 %34, -15
  br i1 %cmp3.not.i73, label %if.end14, label %response_token_matches.exit76.cleanup_crit_edge

response_token_matches.exit76.cleanup_crit_edge:  ; preds = %response_token_matches.exit76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %response_token_matches.exit76
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %resp, align 8
  %sub16 = add i32 %36, -4
  %call17 = tail call fastcc i64 @response_get_u64(ptr noundef %resp, i32 noundef %sub16)
  %conv = trunc i64 %call17 to i8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %response_token_matches.exit76.cleanup_crit_edge, %lor.lhs.false.i72.cleanup_crit_edge, %response_get_token.exit68.cleanup_crit_edge, %if.then41.i64, %if.then20.i59, %if.then4.i55, %response_token_matches.exit52.cleanup_crit_edge, %lor.lhs.false.i48.cleanup_crit_edge, %response_get_token.exit44.cleanup_crit_edge, %if.then41.i40, %if.then4.i31, %if.end.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge, %response_token_matches.exit.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv, %if.end14 ], [ 0, %response_token_matches.exit.cleanup_crit_edge ], [ -119, %if.end.cleanup_crit_edge ], [ -119, %response_token_matches.exit52.cleanup_crit_edge ], [ -119, %response_token_matches.exit76.cleanup_crit_edge ], [ -119, %if.end.thread.cleanup_crit_edge ], [ -119, %lor.lhs.false.i48.cleanup_crit_edge ], [ -119, %response_get_token.exit44.cleanup_crit_edge ], [ -119, %if.then4.i31 ], [ -119, %if.then41.i40 ], [ -119, %lor.lhs.false.i72.cleanup_crit_edge ], [ -119, %response_get_token.exit68.cleanup_crit_edge ], [ -119, %if.then4.i55 ], [ -119, %if.then20.i59 ], [ -119, %if.then41.i64 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @end_session_cont(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hsn = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %hsn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %hsn, align 4
  %tsn = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %1 = ptrtoint ptr %tsn to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tsn, align 8
  %resp.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 12
  %parsed.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 13
  %call.i = tail call fastcc i32 @response_parse(ptr noundef %resp.i, ptr noundef %parsed.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_and_check_status.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@end_session_cont, %if.then6.i)) #6
          to label %parse_and_check_status.exit [label %if.then6.i], !srcloc !392

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_and_check_status.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.85) #6
  br label %parse_and_check_status.exit

if.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call fastcc zeroext i8 @response_status(ptr noundef %parsed.i) #6
  %conv.i = zext i8 %call9.i to i32
  br label %parse_and_check_status.exit

parse_and_check_status.exit:                      ; preds = %if.end7.i, %if.then6.i, %do.body.i
  %retval.0.i = phi i32 [ %conv.i, %if.end7.i ], [ %call.i, %if.then6.i ], [ %call.i, %do.body.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generic_lr_enable_disable(ptr noundef %dev, ptr nocapture noundef readonly %uid, i1 noundef zeroext %rle, i1 noundef zeroext %wle, i1 noundef zeroext %rl, i1 noundef zeroext %wl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %rle to i8
  %frombool1 = zext i1 %wle to i8
  %frombool2 = zext i1 %rl to i8
  %frombool3 = zext i1 %wl to i8
  %call = tail call fastcc i32 @cmd_start(ptr noundef %dev, ptr noundef %uid, ptr noundef getelementptr inbounds ([16 x [8 x i8]], ptr @opalmethod, i32 0, i32 12))
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not.i.i = icmp eq i32 %call, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.add_token_u8.exit250_crit_edge

entry.add_token_u8.exit250_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit250

if.end.i.i:                                       ; preds = %entry
  %pos.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 2048
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end.i.i34

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i], !srcloc !392

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i34:                                     ; preds = %if.end.i.i
  %inc.i = add i32 %1, 1
  %2 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc.i, ptr %pos.i.i.i, align 8
  %arrayidx.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -14, ptr %arrayidx.i, align 1
  %4 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %4)
  %cmp.i.i33 = icmp eq i32 %4, 2048
  br i1 %cmp.i.i33, label %do.body.i.i35, label %if.end.i.i45

do.body.i.i35:                                    ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i36)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i36], !srcloc !392

if.then6.i.i36:                                   ; preds = %do.body.i.i35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i45:                                     ; preds = %if.end.i.i34
  %inc.i38 = add i32 %4, 1
  %5 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc.i38, ptr %pos.i.i.i, align 8
  %arrayidx.i39 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %4
  %6 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx.i39, align 1
  %7 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %7)
  %cmp.i.i44 = icmp eq i32 %7, 2048
  br i1 %cmp.i.i44, label %do.body.i.i46, label %if.end.i.i56

do.body.i.i46:                                    ; preds = %if.end.i.i45
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i47)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i47], !srcloc !392

if.then6.i.i47:                                   ; preds = %do.body.i.i46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i56:                                     ; preds = %if.end.i.i45
  %inc.i49 = add i32 %7, 1
  %8 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc.i49, ptr %pos.i.i.i, align 8
  %arrayidx.i50 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %7
  %9 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -16, ptr %arrayidx.i50, align 1
  %10 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %10)
  %cmp.i.i55 = icmp eq i32 %10, 2048
  br i1 %cmp.i.i55, label %do.body.i.i57, label %if.end.i.i67

do.body.i.i57:                                    ; preds = %if.end.i.i56
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i58)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i58], !srcloc !392

if.then6.i.i58:                                   ; preds = %do.body.i.i57
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i67:                                     ; preds = %if.end.i.i56
  %inc.i60 = add i32 %10, 1
  %11 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc.i60, ptr %pos.i.i.i, align 8
  %arrayidx.i61 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %10
  %12 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -14, ptr %arrayidx.i61, align 1
  %13 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %13)
  %cmp.i.i66 = icmp eq i32 %13, 2048
  br i1 %cmp.i.i66, label %do.body.i.i68, label %if.end.i.i78

do.body.i.i68:                                    ; preds = %if.end.i.i67
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i69)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i69], !srcloc !392

if.then6.i.i69:                                   ; preds = %do.body.i.i68
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i78:                                     ; preds = %if.end.i.i67
  %inc.i71 = add i32 %13, 1
  %14 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc.i71, ptr %pos.i.i.i, align 8
  %arrayidx.i72 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %13
  %15 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 5, ptr %arrayidx.i72, align 1
  %16 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %16)
  %cmp.i.i77 = icmp eq i32 %16, 2048
  br i1 %cmp.i.i77, label %do.body.i.i79, label %if.end.i.i89

do.body.i.i79:                                    ; preds = %if.end.i.i78
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i80)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i80], !srcloc !392

if.then6.i.i80:                                   ; preds = %do.body.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i89:                                     ; preds = %if.end.i.i78
  %inc.i82 = add i32 %16, 1
  %17 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc.i82, ptr %pos.i.i.i, align 8
  %arrayidx.i83 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %16
  %18 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %arrayidx.i83, align 1
  %19 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %19)
  %cmp.i.i88 = icmp eq i32 %19, 2048
  br i1 %cmp.i.i88, label %do.body.i.i90, label %if.end.i.i100

do.body.i.i90:                                    ; preds = %if.end.i.i89
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i91)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i91], !srcloc !392

if.then6.i.i91:                                   ; preds = %do.body.i.i90
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i100:                                    ; preds = %if.end.i.i89
  %inc.i93 = add i32 %19, 1
  %20 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc.i93, ptr %pos.i.i.i, align 8
  %arrayidx.i94 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %19
  %21 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -13, ptr %arrayidx.i94, align 1
  %22 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %22)
  %cmp.i.i99 = icmp eq i32 %22, 2048
  br i1 %cmp.i.i99, label %do.body.i.i101, label %if.end.i.i111

do.body.i.i101:                                   ; preds = %if.end.i.i100
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i102)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i102], !srcloc !392

if.then6.i.i102:                                  ; preds = %do.body.i.i101
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i111:                                    ; preds = %if.end.i.i100
  %inc.i104 = add i32 %22, 1
  %23 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %inc.i104, ptr %pos.i.i.i, align 8
  %arrayidx.i105 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %22
  %24 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -14, ptr %arrayidx.i105, align 1
  %25 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %25)
  %cmp.i.i110 = icmp eq i32 %25, 2048
  br i1 %cmp.i.i110, label %do.body.i.i112, label %if.end.i.i122

do.body.i.i112:                                   ; preds = %if.end.i.i111
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i113)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i113], !srcloc !392

if.then6.i.i113:                                  ; preds = %do.body.i.i112
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i122:                                    ; preds = %if.end.i.i111
  %inc.i115 = add i32 %25, 1
  %26 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %inc.i115, ptr %pos.i.i.i, align 8
  %arrayidx.i116 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %25
  %27 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 6, ptr %arrayidx.i116, align 1
  %28 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %28)
  %cmp.i.i121 = icmp eq i32 %28, 2048
  br i1 %cmp.i.i121, label %do.body.i.i123, label %if.end.i.i133

do.body.i.i123:                                   ; preds = %if.end.i.i122
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i124)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i124], !srcloc !392

if.then6.i.i124:                                  ; preds = %do.body.i.i123
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i133:                                    ; preds = %if.end.i.i122
  %inc.i126 = add i32 %28, 1
  %29 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc.i126, ptr %pos.i.i.i, align 8
  %arrayidx.i127 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %28
  %30 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool1, ptr %arrayidx.i127, align 1
  %31 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %31)
  %cmp.i.i132 = icmp eq i32 %31, 2048
  br i1 %cmp.i.i132, label %do.body.i.i134, label %if.end.i.i144

do.body.i.i134:                                   ; preds = %if.end.i.i133
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i135)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i135], !srcloc !392

if.then6.i.i135:                                  ; preds = %do.body.i.i134
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i144:                                    ; preds = %if.end.i.i133
  %inc.i137 = add i32 %31, 1
  %32 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %inc.i137, ptr %pos.i.i.i, align 8
  %arrayidx.i138 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %31
  %33 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -13, ptr %arrayidx.i138, align 1
  %34 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %34)
  %cmp.i.i143 = icmp eq i32 %34, 2048
  br i1 %cmp.i.i143, label %do.body.i.i145, label %if.end.i.i155

do.body.i.i145:                                   ; preds = %if.end.i.i144
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i146)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i146], !srcloc !392

if.then6.i.i146:                                  ; preds = %do.body.i.i145
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i155:                                    ; preds = %if.end.i.i144
  %inc.i148 = add i32 %34, 1
  %35 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %inc.i148, ptr %pos.i.i.i, align 8
  %arrayidx.i149 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %34
  %36 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -14, ptr %arrayidx.i149, align 1
  %37 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %37)
  %cmp.i.i154 = icmp eq i32 %37, 2048
  br i1 %cmp.i.i154, label %do.body.i.i156, label %if.end.i.i166

do.body.i.i156:                                   ; preds = %if.end.i.i155
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i157)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i157], !srcloc !392

if.then6.i.i157:                                  ; preds = %do.body.i.i156
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i166:                                    ; preds = %if.end.i.i155
  %inc.i159 = add i32 %37, 1
  %38 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %inc.i159, ptr %pos.i.i.i, align 8
  %arrayidx.i160 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %37
  %39 = ptrtoint ptr %arrayidx.i160 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 7, ptr %arrayidx.i160, align 1
  %40 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %40)
  %cmp.i.i165 = icmp eq i32 %40, 2048
  br i1 %cmp.i.i165, label %do.body.i.i167, label %if.end.i.i177

do.body.i.i167:                                   ; preds = %if.end.i.i166
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i168)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i168], !srcloc !392

if.then6.i.i168:                                  ; preds = %do.body.i.i167
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i177:                                    ; preds = %if.end.i.i166
  %inc.i170 = add i32 %40, 1
  %41 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %inc.i170, ptr %pos.i.i.i, align 8
  %arrayidx.i171 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %40
  %42 = ptrtoint ptr %arrayidx.i171 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %frombool2, ptr %arrayidx.i171, align 1
  %43 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %43)
  %cmp.i.i176 = icmp eq i32 %43, 2048
  br i1 %cmp.i.i176, label %do.body.i.i178, label %if.end.i.i188

do.body.i.i178:                                   ; preds = %if.end.i.i177
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i179)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i179], !srcloc !392

if.then6.i.i179:                                  ; preds = %do.body.i.i178
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i188:                                    ; preds = %if.end.i.i177
  %inc.i181 = add i32 %43, 1
  %44 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %inc.i181, ptr %pos.i.i.i, align 8
  %arrayidx.i182 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %43
  %45 = ptrtoint ptr %arrayidx.i182 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -13, ptr %arrayidx.i182, align 1
  %46 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %46)
  %cmp.i.i187 = icmp eq i32 %46, 2048
  br i1 %cmp.i.i187, label %do.body.i.i189, label %if.end.i.i199

do.body.i.i189:                                   ; preds = %if.end.i.i188
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i190)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i190], !srcloc !392

if.then6.i.i190:                                  ; preds = %do.body.i.i189
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i199:                                    ; preds = %if.end.i.i188
  %inc.i192 = add i32 %46, 1
  %47 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %inc.i192, ptr %pos.i.i.i, align 8
  %arrayidx.i193 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %46
  %48 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -14, ptr %arrayidx.i193, align 1
  %49 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %49)
  %cmp.i.i198 = icmp eq i32 %49, 2048
  br i1 %cmp.i.i198, label %do.body.i.i200, label %if.end.i.i210

do.body.i.i200:                                   ; preds = %if.end.i.i199
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i201)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i201], !srcloc !392

if.then6.i.i201:                                  ; preds = %do.body.i.i200
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i210:                                    ; preds = %if.end.i.i199
  %inc.i203 = add i32 %49, 1
  %50 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %inc.i203, ptr %pos.i.i.i, align 8
  %arrayidx.i204 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %49
  %51 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 8, ptr %arrayidx.i204, align 1
  %52 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %52)
  %cmp.i.i209 = icmp eq i32 %52, 2048
  br i1 %cmp.i.i209, label %do.body.i.i211, label %if.end.i.i221

do.body.i.i211:                                   ; preds = %if.end.i.i210
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i212)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i212], !srcloc !392

if.then6.i.i212:                                  ; preds = %do.body.i.i211
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i221:                                    ; preds = %if.end.i.i210
  %inc.i214 = add i32 %52, 1
  %53 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %inc.i214, ptr %pos.i.i.i, align 8
  %arrayidx.i215 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %52
  %54 = ptrtoint ptr %arrayidx.i215 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %frombool3, ptr %arrayidx.i215, align 1
  %55 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %55)
  %cmp.i.i220 = icmp eq i32 %55, 2048
  br i1 %cmp.i.i220, label %do.body.i.i222, label %if.end.i.i232

do.body.i.i222:                                   ; preds = %if.end.i.i221
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i223)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i223], !srcloc !392

if.then6.i.i223:                                  ; preds = %do.body.i.i222
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i232:                                    ; preds = %if.end.i.i221
  %inc.i225 = add i32 %55, 1
  %56 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %inc.i225, ptr %pos.i.i.i, align 8
  %arrayidx.i226 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %55
  %57 = ptrtoint ptr %arrayidx.i226 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -13, ptr %arrayidx.i226, align 1
  %58 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %58)
  %cmp.i.i231 = icmp eq i32 %58, 2048
  br i1 %cmp.i.i231, label %do.body.i.i233, label %if.end.i.i243

do.body.i.i233:                                   ; preds = %if.end.i.i232
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i234)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i234], !srcloc !392

if.then6.i.i234:                                  ; preds = %do.body.i.i233
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i.i243:                                    ; preds = %if.end.i.i232
  %inc.i236 = add i32 %58, 1
  %59 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %inc.i236, ptr %pos.i.i.i, align 8
  %arrayidx.i237 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %58
  %60 = ptrtoint ptr %arrayidx.i237 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -15, ptr %arrayidx.i237, align 1
  %61 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %61)
  %cmp.i.i242 = icmp eq i32 %61, 2048
  br i1 %cmp.i.i242, label %do.body.i.i244, label %if.end.i249

do.body.i.i244:                                   ; preds = %if.end.i.i243
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_lr_enable_disable, %if.then6.i.i245)) #6
          to label %add_token_u8.exit250 [label %if.then6.i.i245], !srcloc !392

if.then6.i.i245:                                  ; preds = %do.body.i.i244
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %add_token_u8.exit250

if.end.i249:                                      ; preds = %if.end.i.i243
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i247 = add i32 %61, 1
  %62 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %inc.i247, ptr %pos.i.i.i, align 8
  %arrayidx.i248 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %61
  %63 = ptrtoint ptr %arrayidx.i248 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -13, ptr %arrayidx.i248, align 1
  br label %add_token_u8.exit250

add_token_u8.exit250:                             ; preds = %if.end.i249, %if.then6.i.i245, %do.body.i.i244, %if.then6.i.i234, %do.body.i.i233, %if.then6.i.i223, %do.body.i.i222, %if.then6.i.i212, %do.body.i.i211, %if.then6.i.i201, %do.body.i.i200, %if.then6.i.i190, %do.body.i.i189, %if.then6.i.i179, %do.body.i.i178, %if.then6.i.i168, %do.body.i.i167, %if.then6.i.i157, %do.body.i.i156, %if.then6.i.i146, %do.body.i.i145, %if.then6.i.i135, %do.body.i.i134, %if.then6.i.i124, %do.body.i.i123, %if.then6.i.i113, %do.body.i.i112, %if.then6.i.i102, %do.body.i.i101, %if.then6.i.i91, %do.body.i.i90, %if.then6.i.i80, %do.body.i.i79, %if.then6.i.i69, %do.body.i.i68, %if.then6.i.i58, %do.body.i.i57, %if.then6.i.i47, %do.body.i.i46, %if.then6.i.i36, %do.body.i.i35, %if.then6.i.i, %do.body.i.i, %entry.add_token_u8.exit250_crit_edge
  %err.20 = phi i32 [ 0, %if.end.i249 ], [ -34, %do.body.i.i ], [ -34, %do.body.i.i35 ], [ -34, %do.body.i.i46 ], [ -34, %do.body.i.i57 ], [ -34, %do.body.i.i68 ], [ -34, %do.body.i.i79 ], [ -34, %do.body.i.i90 ], [ -34, %do.body.i.i101 ], [ -34, %do.body.i.i112 ], [ -34, %do.body.i.i123 ], [ -34, %do.body.i.i134 ], [ -34, %do.body.i.i145 ], [ -34, %do.body.i.i156 ], [ -34, %do.body.i.i167 ], [ -34, %do.body.i.i178 ], [ -34, %do.body.i.i189 ], [ -34, %do.body.i.i200 ], [ -34, %do.body.i.i211 ], [ -34, %do.body.i.i222 ], [ -34, %do.body.i.i233 ], [ -34, %if.then6.i.i245 ], [ -34, %do.body.i.i244 ], [ -34, %if.then6.i.i234 ], [ -34, %if.then6.i.i223 ], [ -34, %if.then6.i.i212 ], [ -34, %if.then6.i.i201 ], [ -34, %if.then6.i.i190 ], [ -34, %if.then6.i.i179 ], [ -34, %if.then6.i.i168 ], [ -34, %if.then6.i.i157 ], [ -34, %if.then6.i.i146 ], [ -34, %if.then6.i.i135 ], [ -34, %if.then6.i.i124 ], [ -34, %if.then6.i.i113 ], [ -34, %if.then6.i.i102 ], [ -34, %if.then6.i.i91 ], [ -34, %if.then6.i.i80 ], [ -34, %if.then6.i.i69 ], [ -34, %if.then6.i.i58 ], [ -34, %if.then6.i.i47 ], [ -34, %if.then6.i.i36 ], [ -34, %if.then6.i.i ], [ %call, %entry.add_token_u8.exit250_crit_edge ]
  ret i32 %err.20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @end_opal_session_error(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pos.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %cmd.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 11
  %0 = call ptr @memset(ptr %cmd.i.i, i32 0, i32 2048)
  %comid.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %comid.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %comid.i, align 8
  %3 = lshr i16 %2, 8
  %conv2.i.i = trunc i16 %3 to i8
  %extendedComID.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 4
  %4 = ptrtoint ptr %extendedComID.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv2.i.i, ptr %extendedComID.i.i, align 4
  %conv3.i.i = trunc i16 %2 to i8
  %arrayidx6.i.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 5
  %5 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv3.i.i, ptr %arrayidx6.i.i, align 1
  %6 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 57, ptr %pos.i.i, align 8
  %arrayidx.i.i2 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 56
  %7 = ptrtoint ptr %arrayidx.i.i2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -6, ptr %arrayidx.i.i2, align 1
  %hsn.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %8 = ptrtoint ptr %hsn.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hsn.i.i, align 4
  %tsn.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %10 = ptrtoint ptr %tsn.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tsn.i.i, align 8
  %call.i.i = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %9, i32 noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end6.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@end_opal_session_error, %end_opal_session.exit.thread)) #6
          to label %end_opal_session.exit [label %end_opal_session.exit.thread], !srcloc !392

end_opal_session.exit.thread:                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i.i) #6
  br label %do.body.i

if.end6.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @end_session_cont) #6
  br label %end_opal_session.exit

end_opal_session.exit:                            ; preds = %if.end6.i.i, %do.body.i.i
  %retval.0.i.i = phi i32 [ %call7.i.i, %if.end6.i.i ], [ %call.i.i, %do.body.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %end_opal_session.exit.execute_step.exit_crit_edge, label %end_opal_session.exit.do.body.i_crit_edge

end_opal_session.exit.do.body.i_crit_edge:        ; preds = %end_opal_session.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

end_opal_session.exit.execute_step.exit_crit_edge: ; preds = %end_opal_session.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %execute_step.exit

do.body.i:                                        ; preds = %end_opal_session.exit.do.body.i_crit_edge, %end_opal_session.exit.thread
  %retval.0.i.i5 = phi i32 [ %call.i.i, %end_opal_session.exit.thread ], [ %retval.0.i.i, %end_opal_session.exit.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @execute_step.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@end_opal_session_error, %if.then5.i)) #6
          to label %execute_step.exit [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %retval.0.i.i5)
  %cmp.i.i = icmp eq i32 %retval.0.i.i5, 63
  br i1 %cmp.i.i, label %if.then5.i.opal_error_to_human.exit.i_crit_edge, label %if.end.i.i

if.then5.i.opal_error_to_human.exit.i_crit_edge:  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %opal_error_to_human.exit.i

if.end.i.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %retval.0.i.i5)
  %cmp1.i.i = icmp ugt i32 %retval.0.i.i5, 18
  br i1 %cmp1.i.i, label %if.end.i.i.opal_error_to_human.exit.i_crit_edge, label %if.end4.i.i

if.end.i.i.opal_error_to_human.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %opal_error_to_human.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr [19 x ptr], ptr @opal_errors, i32 0, i32 %retval.0.i.i5
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  br label %opal_error_to_human.exit.i

opal_error_to_human.exit.i:                       ; preds = %if.end4.i.i, %if.end.i.i.opal_error_to_human.exit.i_crit_edge, %if.then5.i.opal_error_to_human.exit.i_crit_edge
  %retval.0.i14.i = phi ptr [ %13, %if.end4.i.i ], [ @.str.35, %if.then5.i.opal_error_to_human.exit.i_crit_edge ], [ @.str.36, %if.end.i.i.opal_error_to_human.exit.i_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @execute_step.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.34, i32 noundef 0, ptr noundef nonnull @end_opal_session, i32 noundef %retval.0.i.i5, ptr noundef %retval.0.i14.i) #6
  br label %execute_step.exit

execute_step.exit:                                ; preds = %opal_error_to_human.exit.i, %do.body.i, %end_opal_session.exit.execute_step.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_admin1LSP_opal_session(ptr noundef %dev, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %key1 = getelementptr inbounds %struct.opal_key, ptr %data, i32 0, i32 3
  %key_len = getelementptr inbounds %struct.opal_key, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key_len, align 1
  %call = tail call fastcc i32 @start_generic_opal_session(ptr noundef %dev, i32 noundef 7, i32 noundef 3, ptr noundef %key1, i8 noundef zeroext %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_mbr_done(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cmd_start(ptr noundef %dev, ptr noundef getelementptr inbounds ([30 x [8 x i8]], ptr @opaluid, i32 0, i32 17), ptr noundef getelementptr inbounds ([16 x [8 x i8]], ptr @opalmethod, i32 0, i32 12))
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not.i.i = icmp eq i32 %call, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i.i:                                       ; preds = %entry
  %pos.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 2048
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end.i.i22

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_done, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i22:                                     ; preds = %if.end.i.i
  %inc.i = add i32 %1, 1
  %2 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc.i, ptr %pos.i.i.i, align 8
  %arrayidx.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -14, ptr %arrayidx.i, align 1
  %4 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %4)
  %cmp.i.i21 = icmp eq i32 %4, 2048
  br i1 %cmp.i.i21, label %do.body.i.i23, label %if.end.i.i33

do.body.i.i23:                                    ; preds = %if.end.i.i22
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_done, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i33:                                     ; preds = %if.end.i.i22
  %inc.i26 = add i32 %4, 1
  %5 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc.i26, ptr %pos.i.i.i, align 8
  %arrayidx.i27 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %4
  %6 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx.i27, align 1
  %7 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %7)
  %cmp.i.i32 = icmp eq i32 %7, 2048
  br i1 %cmp.i.i32, label %do.body.i.i34, label %if.end.i.i44

do.body.i.i34:                                    ; preds = %if.end.i.i33
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_done, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i44:                                     ; preds = %if.end.i.i33
  %inc.i37 = add i32 %7, 1
  %8 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc.i37, ptr %pos.i.i.i, align 8
  %arrayidx.i38 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %7
  %9 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -16, ptr %arrayidx.i38, align 1
  %10 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %10)
  %cmp.i.i43 = icmp eq i32 %10, 2048
  br i1 %cmp.i.i43, label %do.body.i.i45, label %if.end.i.i55

do.body.i.i45:                                    ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_done, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i55:                                     ; preds = %if.end.i.i44
  %inc.i48 = add i32 %10, 1
  %11 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc.i48, ptr %pos.i.i.i, align 8
  %arrayidx.i49 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %10
  %12 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -14, ptr %arrayidx.i49, align 1
  %13 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %13)
  %cmp.i.i54 = icmp eq i32 %13, 2048
  br i1 %cmp.i.i54, label %do.body.i.i56, label %if.end.i.i66

do.body.i.i56:                                    ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_done, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i66:                                     ; preds = %if.end.i.i55
  %inc.i59 = add i32 %13, 1
  %14 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc.i59, ptr %pos.i.i.i, align 8
  %arrayidx.i60 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %13
  %15 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %arrayidx.i60, align 1
  %16 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %16)
  %cmp.i.i65 = icmp eq i32 %16, 2048
  br i1 %cmp.i.i65, label %do.body.i.i67, label %if.end.i.i77

do.body.i.i67:                                    ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_done, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i77:                                     ; preds = %if.end.i.i66
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %data, align 1
  %inc.i70 = add i32 %16, 1
  %19 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %inc.i70, ptr %pos.i.i.i, align 8
  %arrayidx.i71 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %16
  %20 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %18, ptr %arrayidx.i71, align 1
  %21 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %21)
  %cmp.i.i76 = icmp eq i32 %21, 2048
  br i1 %cmp.i.i76, label %do.body.i.i78, label %if.end.i.i88

do.body.i.i78:                                    ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_done, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i88:                                     ; preds = %if.end.i.i77
  %inc.i81 = add i32 %21, 1
  %22 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc.i81, ptr %pos.i.i.i, align 8
  %arrayidx.i82 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %21
  %23 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -13, ptr %arrayidx.i82, align 1
  %24 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %24)
  %cmp.i.i87 = icmp eq i32 %24, 2048
  br i1 %cmp.i.i87, label %do.body.i.i89, label %if.end.i.i99

do.body.i.i89:                                    ; preds = %if.end.i.i88
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_done, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i99:                                     ; preds = %if.end.i.i88
  %inc.i92 = add i32 %24, 1
  %25 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %inc.i92, ptr %pos.i.i.i, align 8
  %arrayidx.i93 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %24
  %26 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -15, ptr %arrayidx.i93, align 1
  %27 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %27)
  %cmp.i.i98 = icmp eq i32 %27, 2048
  br i1 %cmp.i.i98, label %do.body.i.i100, label %if.end6

do.body.i.i100:                                   ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_done, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

do.body.sink.split:                               ; preds = %do.body.i.i100, %do.body.i.i89, %do.body.i.i78, %do.body.i.i67, %do.body.i.i56, %do.body.i.i45, %do.body.i.i34, %do.body.i.i23, %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %do.body.i.i100, %do.body.i.i89, %do.body.i.i78, %do.body.i.i67, %do.body.i.i56, %do.body.i.i45, %do.body.i.i34, %do.body.i.i23, %do.body.i.i, %entry.do.body_crit_edge
  %err.8168 = phi i32 [ -34, %do.body.i.i67 ], [ -34, %do.body.i.i78 ], [ -34, %do.body.i.i89 ], [ -34, %do.body.i.i100 ], [ %call, %entry.do.body_crit_edge ], [ -34, %do.body.i.i56 ], [ -34, %do.body.i.i34 ], [ -34, %do.body.i.i ], [ -34, %do.body.i.i23 ], [ -34, %do.body.i.i45 ], [ -34, %do.body.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_mbr_done.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_done, %if.then5)) #6
          to label %cleanup [label %if.then5], !srcloc !392

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_mbr_done.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.124) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i99
  %inc.i103 = add i32 %27, 1
  %28 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc.i103, ptr %pos.i.i.i, align 8
  %arrayidx.i104 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %27
  %29 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -13, ptr %arrayidx.i104, align 1
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %30 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hsn.i, align 4
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %32 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tsn.i, align 8
  %call.i = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %31, i32 noundef %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_done, %if.then5.i)) #6
          to label %cleanup [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @parse_and_check_status) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i, %if.then5, %do.body
  %retval.0 = phi i32 [ %err.8168, %do.body ], [ %err.8168, %if.then5 ], [ %call7.i, %if.end6.i ], [ %call.i, %if.then5.i ], [ %call.i, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @start_generic_opal_session(ptr noundef %dev, i32 noundef %auth, i32 noundef %sp_type, ptr noundef readonly %key, i8 noundef zeroext %key_len) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #6
  %cmp = icmp ne ptr %key, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %auth)
  %cmp1.not = icmp eq i32 %auth, 5
  %or.cond = or i1 %cmp1.not, %cmp
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @cmd_start(ptr noundef %dev, ptr noundef nonnull @opaluid, ptr noundef getelementptr inbounds ([16 x [8 x i8]], ptr @opalmethod, i32 0, i32 1))
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %err, align 4
  call fastcc void @add_token_u64(ptr noundef nonnull %err, ptr noundef %dev, i64 noundef 65)
  %arrayidx = getelementptr [30 x [8 x i8]], ptr @opaluid, i32 0, i32 %sp_type
  %1 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i132 = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i132, label %if.end.i.i135, label %if.end.do.body.i139_crit_edge

if.end.do.body.i139_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i139

if.end.i.i135:                                    ; preds = %if.end
  %pos.i.i.i133 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %3 = ptrtoint ptr %pos.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pos.i.i.i133, align 8
  %5 = add i32 %4, -2040
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp.i.i134 = icmp ult i32 %5, 9
  br i1 %cmp.i.i134, label %do.body.i.i136, label %if.end11.i

do.body.i.i136:                                   ; preds = %if.end.i.i135
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_generic_opal_session, %if.then6.i.i137)) #6
          to label %do.end.i.i138 [label %if.then6.i.i137], !srcloc !392

if.then6.i.i137:                                  ; preds = %do.body.i.i136
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 9) #6
  br label %do.end.i.i138

do.end.i.i138:                                    ; preds = %if.then6.i.i137, %do.body.i.i136
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -34, ptr %err, align 4
  br label %do.body.i139

do.body.i139:                                     ; preds = %do.end.i.i138, %if.end.do.body.i139_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_bytestring_header.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_generic_opal_session, %add_bytestring_header.exit.thread)) #6
          to label %add_bytestring_header.exit [label %add_bytestring_header.exit.thread], !srcloc !392

add_bytestring_header.exit.thread:                ; preds = %do.body.i139
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_bytestring_header.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.68) #6
  br label %add_token_bytestring.exit

if.end11.i:                                       ; preds = %if.end.i.i135
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i.i = add i32 %4, 1
  %7 = ptrtoint ptr %pos.i.i.i133 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc.i.i.i, ptr %pos.i.i.i133, align 8
  %arrayidx.i.i.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %4
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -88, ptr %arrayidx.i.i.i, align 1
  %9 = load i32, ptr %pos.i.i.i133, align 8
  %arrayidx.i140 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %9
  br label %add_bytestring_header.exit

add_bytestring_header.exit:                       ; preds = %if.end11.i, %do.body.i139
  %retval.0.i141 = phi ptr [ %arrayidx.i140, %if.end11.i ], [ null, %do.body.i139 ]
  %tobool.not.i = icmp eq ptr %retval.0.i141, null
  br i1 %tobool.not.i, label %add_bytestring_header.exit.add_token_bytestring.exit_crit_edge, label %if.end.i

add_bytestring_header.exit.add_token_bytestring.exit_crit_edge: ; preds = %add_bytestring_header.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_bytestring.exit

if.end.i:                                         ; preds = %add_bytestring_header.exit
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %retval.0.i141 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %retval.0.i141, align 1
  %pos.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %13 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pos.i, align 8
  %add.i = add i32 %14, 8
  store i32 %add.i, ptr %pos.i, align 8
  br label %add_token_bytestring.exit

add_token_bytestring.exit:                        ; preds = %if.end.i, %add_bytestring_header.exit.add_token_bytestring.exit_crit_edge, %add_bytestring_header.exit.thread
  %15 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %add_token_bytestring.exit.add_token_u8.exit_crit_edge

add_token_bytestring.exit.add_token_u8.exit_crit_edge: ; preds = %add_token_bytestring.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit

if.end.i.i:                                       ; preds = %add_token_bytestring.exit
  %pos.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %17 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 2048
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end.i50

do.body.i.i:                                      ; preds = %if.end.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_generic_opal_session, %if.then6.i.i)) #6
          to label %do.end.i.i [label %if.then6.i.i], !srcloc !392

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i, %do.body.i.i
  %19 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit

if.end.i50:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i = add i32 %18, 1
  %20 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc.i, ptr %pos.i.i.i, align 8
  %arrayidx.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %18
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %arrayidx.i, align 1
  br label %add_token_u8.exit

add_token_u8.exit:                                ; preds = %if.end.i50, %do.end.i.i, %add_token_bytestring.exit.add_token_u8.exit_crit_edge
  %22 = zext i32 %auth to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %auth, label %do.body [
    i32 5, label %add_token_u8.exit.sw.epilog_crit_edge
    i32 7, label %add_token_u8.exit.sw.bb_crit_edge
    i32 6, label %add_token_u8.exit.sw.bb_crit_edge191
    i32 10, label %add_token_u8.exit.sw.bb_crit_edge192
  ]

add_token_u8.exit.sw.bb_crit_edge192:             ; preds = %add_token_u8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

add_token_u8.exit.sw.bb_crit_edge191:             ; preds = %add_token_u8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

add_token_u8.exit.sw.bb_crit_edge:                ; preds = %add_token_u8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

add_token_u8.exit.sw.epilog_crit_edge:            ; preds = %add_token_u8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %add_token_u8.exit.sw.bb_crit_edge, %add_token_u8.exit.sw.bb_crit_edge191, %add_token_u8.exit.sw.bb_crit_edge192
  %23 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i51 = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i51, label %if.end.i.i54, label %sw.bb.add_token_u8.exit72_crit_edge

sw.bb.add_token_u8.exit72_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit72

if.end.i.i54:                                     ; preds = %sw.bb
  %pos.i.i.i52 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %25 = ptrtoint ptr %pos.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pos.i.i.i52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %26)
  %cmp.i.i53 = icmp eq i32 %26, 2048
  br i1 %cmp.i.i53, label %do.body.i.i55, label %add_token_u8.exit61

do.body.i.i55:                                    ; preds = %if.end.i.i54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_generic_opal_session, %if.then6.i.i56)) #6
          to label %do.end.i.i57 [label %if.then6.i.i56], !srcloc !392

if.then6.i.i56:                                   ; preds = %do.body.i.i55
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i57

do.end.i.i57:                                     ; preds = %if.then6.i.i56, %do.body.i.i55
  %27 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit72

add_token_u8.exit61:                              ; preds = %if.end.i.i54
  %inc.i58 = add i32 %26, 1
  %28 = ptrtoint ptr %pos.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc.i58, ptr %pos.i.i.i52, align 8
  %arrayidx.i59 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %26
  %29 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -14, ptr %arrayidx.i59, align 1
  %30 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i.i62 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i.i62, label %if.end.i.i65, label %add_token_u8.exit61.add_token_u8.exit72_crit_edge

add_token_u8.exit61.add_token_u8.exit72_crit_edge: ; preds = %add_token_u8.exit61
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit72

if.end.i.i65:                                     ; preds = %add_token_u8.exit61
  %31 = ptrtoint ptr %pos.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pos.i.i.i52, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %32)
  %cmp.i.i64 = icmp eq i32 %32, 2048
  br i1 %cmp.i.i64, label %do.body.i.i66, label %if.end.i71

do.body.i.i66:                                    ; preds = %if.end.i.i65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_generic_opal_session, %if.then6.i.i67)) #6
          to label %do.end.i.i68 [label %if.then6.i.i67], !srcloc !392

if.then6.i.i67:                                   ; preds = %do.body.i.i66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i68

do.end.i.i68:                                     ; preds = %if.then6.i.i67, %do.body.i.i66
  %33 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit72

if.end.i71:                                       ; preds = %if.end.i.i65
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i69 = add i32 %32, 1
  %34 = ptrtoint ptr %pos.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %inc.i69, ptr %pos.i.i.i52, align 8
  %arrayidx.i70 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %32
  %35 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx.i70, align 1
  br label %add_token_u8.exit72

add_token_u8.exit72:                              ; preds = %if.end.i71, %do.end.i.i68, %add_token_u8.exit61.add_token_u8.exit72_crit_edge, %do.end.i.i57, %sw.bb.add_token_u8.exit72_crit_edge
  %conv2 = zext i8 %key_len to i32
  %call.i73 = call fastcc ptr @add_bytestring_header(ptr noundef nonnull %err, ptr noundef %dev, i32 noundef %conv2) #6
  %tobool.not.i74 = icmp eq ptr %call.i73, null
  br i1 %tobool.not.i74, label %add_token_u8.exit72.add_token_bytestring.exit78_crit_edge, label %if.end.i77

add_token_u8.exit72.add_token_bytestring.exit78_crit_edge: ; preds = %add_token_u8.exit72
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_bytestring.exit78

if.end.i77:                                       ; preds = %add_token_u8.exit72
  call void @__sanitizer_cov_trace_pc() #8
  %36 = call ptr @memcpy(ptr %call.i73, ptr %key, i32 %conv2)
  %pos.i75 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %37 = ptrtoint ptr %pos.i75 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pos.i75, align 8
  %add.i76 = add i32 %38, %conv2
  store i32 %add.i76, ptr %pos.i75, align 8
  br label %add_token_bytestring.exit78

add_token_bytestring.exit78:                      ; preds = %if.end.i77, %add_token_u8.exit72.add_token_bytestring.exit78_crit_edge
  %39 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i79 = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i79, label %if.end.i.i82, label %add_token_bytestring.exit78.add_token_u8.exit111.thread_crit_edge

add_token_bytestring.exit78.add_token_u8.exit111.thread_crit_edge: ; preds = %add_token_bytestring.exit78
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit111.thread

if.end.i.i82:                                     ; preds = %add_token_bytestring.exit78
  %pos.i.i.i80 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %41 = ptrtoint ptr %pos.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pos.i.i.i80, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %42)
  %cmp.i.i81 = icmp eq i32 %42, 2048
  br i1 %cmp.i.i81, label %do.body.i.i83, label %add_token_u8.exit89

do.body.i.i83:                                    ; preds = %if.end.i.i82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_generic_opal_session, %if.then6.i.i84)) #6
          to label %do.end.i.i85 [label %if.then6.i.i84], !srcloc !392

if.then6.i.i84:                                   ; preds = %do.body.i.i83
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i85

do.end.i.i85:                                     ; preds = %if.then6.i.i84, %do.body.i.i83
  %43 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit111.thread

add_token_u8.exit89:                              ; preds = %if.end.i.i82
  %inc.i86 = add i32 %42, 1
  %44 = ptrtoint ptr %pos.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %inc.i86, ptr %pos.i.i.i80, align 8
  %arrayidx.i87 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %42
  %45 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -13, ptr %arrayidx.i87, align 1
  %46 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr166 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr166)
  %tobool.not.i.i90 = icmp eq i32 %.pr166, 0
  br i1 %tobool.not.i.i90, label %if.end.i.i93, label %add_token_u8.exit89.add_token_u8.exit111.thread187_crit_edge

add_token_u8.exit89.add_token_u8.exit111.thread187_crit_edge: ; preds = %add_token_u8.exit89
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit111.thread187

if.end.i.i93:                                     ; preds = %add_token_u8.exit89
  %47 = ptrtoint ptr %pos.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pos.i.i.i80, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %48)
  %cmp.i.i92 = icmp eq i32 %48, 2048
  br i1 %cmp.i.i92, label %do.body.i.i94, label %add_token_u8.exit100

do.body.i.i94:                                    ; preds = %if.end.i.i93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_generic_opal_session, %if.then6.i.i95)) #6
          to label %do.end.i.i96 [label %if.then6.i.i95], !srcloc !392

if.then6.i.i95:                                   ; preds = %do.body.i.i94
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i96

do.end.i.i96:                                     ; preds = %if.then6.i.i95, %do.body.i.i94
  %49 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit111.thread187

add_token_u8.exit100:                             ; preds = %if.end.i.i93
  %inc.i97 = add i32 %48, 1
  %50 = ptrtoint ptr %pos.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %inc.i97, ptr %pos.i.i.i80, align 8
  %arrayidx.i98 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %48
  %51 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -14, ptr %arrayidx.i98, align 1
  %52 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr168.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr168.pr)
  %tobool.not.i.i101 = icmp eq i32 %.pr168.pr, 0
  br i1 %tobool.not.i.i101, label %if.end.i.i104, label %add_token_u8.exit100.add_token_u8.exit111.thread_crit_edge

add_token_u8.exit100.add_token_u8.exit111.thread_crit_edge: ; preds = %add_token_u8.exit100
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit111.thread

if.end.i.i104:                                    ; preds = %add_token_u8.exit100
  %53 = ptrtoint ptr %pos.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pos.i.i.i80, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %54)
  %cmp.i.i103 = icmp eq i32 %54, 2048
  br i1 %cmp.i.i103, label %do.body.i.i105, label %add_token_u8.exit111

do.body.i.i105:                                   ; preds = %if.end.i.i104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_generic_opal_session, %if.then6.i.i106)) #6
          to label %do.end.i.i107 [label %if.then6.i.i106], !srcloc !392

if.then6.i.i106:                                  ; preds = %do.body.i.i105
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i107

do.end.i.i107:                                    ; preds = %if.then6.i.i106, %do.body.i.i105
  %55 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit111.thread

add_token_u8.exit111.thread:                      ; preds = %do.end.i.i107, %add_token_u8.exit100.add_token_u8.exit111.thread_crit_edge, %do.end.i.i85, %add_token_bytestring.exit78.add_token_u8.exit111.thread_crit_edge
  %arrayidx3171 = getelementptr [30 x [8 x i8]], ptr @opaluid, i32 0, i32 %auth
  br label %do.body.i150

add_token_u8.exit111.thread187:                   ; preds = %do.end.i.i96, %add_token_u8.exit89.add_token_u8.exit111.thread187_crit_edge
  %arrayidx3189 = getelementptr [30 x [8 x i8]], ptr @opaluid, i32 0, i32 %auth
  br label %do.body.i150

add_token_u8.exit111:                             ; preds = %if.end.i.i104
  %inc.i108 = add i32 %54, 1
  %56 = ptrtoint ptr %pos.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %inc.i108, ptr %pos.i.i.i80, align 8
  %arrayidx.i109 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %54
  %57 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 3, ptr %arrayidx.i109, align 1
  %58 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr170.pr = load i32, ptr %err, align 4
  %arrayidx3 = getelementptr [30 x [8 x i8]], ptr @opaluid, i32 0, i32 %auth
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr170.pr)
  %tobool.not.i.i142 = icmp eq i32 %.pr170.pr, 0
  br i1 %tobool.not.i.i142, label %if.end.i.i146, label %add_token_u8.exit111.do.body.i150_crit_edge

add_token_u8.exit111.do.body.i150_crit_edge:      ; preds = %add_token_u8.exit111
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i150

if.end.i.i146:                                    ; preds = %add_token_u8.exit111
  %59 = ptrtoint ptr %pos.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pos.i.i.i80, align 8
  %61 = add i32 %60, -2040
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %61)
  %cmp.i.i145 = icmp ult i32 %61, 9
  br i1 %cmp.i.i145, label %do.body.i.i147, label %if.end11.i160

do.body.i.i147:                                   ; preds = %if.end.i.i146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_generic_opal_session, %if.then6.i.i148)) #6
          to label %do.end.i.i149 [label %if.then6.i.i148], !srcloc !392

if.then6.i.i148:                                  ; preds = %do.body.i.i147
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 9) #6
  br label %do.end.i.i149

do.end.i.i149:                                    ; preds = %if.then6.i.i148, %do.body.i.i147
  %62 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -34, ptr %err, align 4
  br label %do.body.i150

do.body.i150:                                     ; preds = %do.end.i.i149, %add_token_u8.exit111.do.body.i150_crit_edge, %add_token_u8.exit111.thread187, %add_token_u8.exit111.thread
  %arrayidx3174 = phi ptr [ %arrayidx3171, %add_token_u8.exit111.thread ], [ %arrayidx3, %do.end.i.i149 ], [ %arrayidx3, %add_token_u8.exit111.do.body.i150_crit_edge ], [ %arrayidx3189, %add_token_u8.exit111.thread187 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_bytestring_header.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_generic_opal_session, %add_bytestring_header.exit162.thread)) #6
          to label %add_bytestring_header.exit162 [label %add_bytestring_header.exit162.thread], !srcloc !392

add_bytestring_header.exit162.thread:             ; preds = %do.body.i150
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_bytestring_header.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.68) #6
  br label %add_token_bytestring.exit117

if.end11.i160:                                    ; preds = %if.end.i.i146
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i.i156 = add i32 %60, 1
  %63 = ptrtoint ptr %pos.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %inc.i.i.i156, ptr %pos.i.i.i80, align 8
  %arrayidx.i.i.i157 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %60
  %64 = ptrtoint ptr %arrayidx.i.i.i157 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -88, ptr %arrayidx.i.i.i157, align 1
  %65 = load i32, ptr %pos.i.i.i80, align 8
  %arrayidx.i159 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %65
  br label %add_bytestring_header.exit162

add_bytestring_header.exit162:                    ; preds = %if.end11.i160, %do.body.i150
  %arrayidx3173 = phi ptr [ %arrayidx3, %if.end11.i160 ], [ %arrayidx3174, %do.body.i150 ]
  %retval.0.i161 = phi ptr [ %arrayidx.i159, %if.end11.i160 ], [ null, %do.body.i150 ]
  %tobool.not.i113 = icmp eq ptr %retval.0.i161, null
  br i1 %tobool.not.i113, label %add_bytestring_header.exit162.add_token_bytestring.exit117_crit_edge, label %if.end.i116

add_bytestring_header.exit162.add_token_bytestring.exit117_crit_edge: ; preds = %add_bytestring_header.exit162
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_bytestring.exit117

if.end.i116:                                      ; preds = %add_bytestring_header.exit162
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %arrayidx3173 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %67 = load i64, ptr %arrayidx3173, align 1
  %68 = ptrtoint ptr %retval.0.i161 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 8)
  store i64 %67, ptr %retval.0.i161, align 1
  %pos.i114 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %69 = ptrtoint ptr %pos.i114 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pos.i114, align 8
  %add.i115 = add i32 %70, 8
  store i32 %add.i115, ptr %pos.i114, align 8
  br label %add_token_bytestring.exit117

add_token_bytestring.exit117:                     ; preds = %if.end.i116, %add_bytestring_header.exit162.add_token_bytestring.exit117_crit_edge, %add_bytestring_header.exit162.thread
  %71 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i.i118 = icmp eq i32 %72, 0
  br i1 %tobool.not.i.i118, label %if.end.i.i121, label %add_token_bytestring.exit117.do.body12_crit_edge

add_token_bytestring.exit117.do.body12_crit_edge: ; preds = %add_token_bytestring.exit117
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

if.end.i.i121:                                    ; preds = %add_token_bytestring.exit117
  %pos.i.i.i119 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %73 = ptrtoint ptr %pos.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pos.i.i.i119, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %74)
  %cmp.i.i120 = icmp eq i32 %74, 2048
  br i1 %cmp.i.i120, label %do.body.i.i122, label %if.end.i127

do.body.i.i122:                                   ; preds = %if.end.i.i121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_generic_opal_session, %if.then6.i.i123)) #6
          to label %do.end.i.i124 [label %if.then6.i.i123], !srcloc !392

if.then6.i.i123:                                  ; preds = %do.body.i.i122
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i124

do.end.i.i124:                                    ; preds = %if.then6.i.i123, %do.body.i.i122
  %75 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -34, ptr %err, align 4
  br label %do.body12

if.end.i127:                                      ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i125 = add i32 %74, 1
  %76 = ptrtoint ptr %pos.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %inc.i125, ptr %pos.i.i.i119, align 8
  %arrayidx.i126 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %74
  %77 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -13, ptr %arrayidx.i126, align 1
  br label %sw.epilog

do.body:                                          ; preds = %add_token_u8.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_generic_opal_session.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_generic_opal_session, %if.then8)) #6
          to label %cleanup [label %if.then8], !srcloc !392

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @start_generic_opal_session.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.119, i32 noundef %auth) #6
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.i127, %add_token_u8.exit.sw.epilog_crit_edge
  %78 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pr179 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr179)
  %tobool10.not = icmp eq i32 %.pr179, 0
  br i1 %tobool10.not, label %if.end28, label %sw.epilog.do.body12_crit_edge

sw.epilog.do.body12_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

do.body12:                                        ; preds = %sw.epilog.do.body12_crit_edge, %do.end.i.i124, %add_token_bytestring.exit117.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_generic_opal_session.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_generic_opal_session, %if.then24)) #6
          to label %do.end27 [label %if.then24], !srcloc !392

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @start_generic_opal_session.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.121) #6
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body12
  %79 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %err, align 4
  br label %cleanup

if.end28:                                         ; preds = %sw.epilog
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %81 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %hsn.i, align 4
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %83 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tsn.i, align 8
  %call.i129 = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %82, i32 noundef %84) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool.not.i130 = icmp eq i32 %call.i129, 0
  br i1 %tobool.not.i130, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@start_generic_opal_session, %if.then5.i)) #6
          to label %cleanup [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i129) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @start_opal_session_cont) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i, %do.end27, %if.then8, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %80, %do.end27 ], [ 12, %entry.cleanup_crit_edge ], [ 12, %if.then8 ], [ 12, %do.body ], [ %call7.i, %if.end6.i ], [ %call.i129, %if.then5.i ], [ %call.i129, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_anybodyASP_opal_session(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @start_generic_opal_session(ptr noundef %dev, i32 noundef 5, i32 noundef 2, ptr noundef null, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_msid_cpin_pin(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %msid_pin = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msid_pin) #6
  %0 = ptrtoint ptr %msid_pin to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %msid_pin, align 4, !annotation !396
  %call = tail call fastcc i32 @generic_get_column(ptr noundef %dev, ptr noundef getelementptr inbounds ([30 x [8 x i8]], ptr @opaluid, i32 0, i32 24), i64 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parsed = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 13
  %call1 = call fastcc i32 @response_get_string(ptr noundef %parsed, i32 noundef 4, ptr noundef nonnull %msid_pin)
  %1 = ptrtoint ptr %msid_pin to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %msid_pin, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %do.body, label %if.end10

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_msid_cpin_pin.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_msid_cpin_pin, %if.then8)) #6
          to label %cleanup [label %if.then8], !srcloc !392

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_msid_cpin_pin.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.127) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @kmemdup(ptr noundef nonnull %2, i32 noundef %call1, i32 noundef 3264) #6
  %prev_data = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %3 = ptrtoint ptr %prev_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %prev_data, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %prev_d_len = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %prev_d_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %prev_d_len, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end10.cleanup_crit_edge, %if.then8, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %call, %entry.cleanup_crit_edge ], [ 12, %if.then8 ], [ -12, %if.end10.cleanup_crit_edge ], [ 12, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msid_pin) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_SIDASP_opal_session(ptr noundef %dev, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prev_data = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %prev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %key1 = getelementptr inbounds %struct.opal_key, ptr %data, i32 0, i32 3
  %key_len = getelementptr inbounds %struct.opal_key, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %key_len, align 1
  %call = tail call fastcc i32 @start_generic_opal_session(ptr noundef %dev, i32 noundef 6, i32 noundef 2, ptr noundef %key1, i8 noundef zeroext %3)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev_d_len = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %prev_d_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prev_d_len, align 8
  %conv = trunc i32 %5 to i8
  %call2 = tail call fastcc i32 @start_generic_opal_session(ptr noundef %dev, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %1, i8 noundef zeroext %conv)
  tail call void @kfree(ptr noundef nonnull %1) #6
  %6 = ptrtoint ptr %prev_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %prev_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call2, %if.else ], [ %call, %if.then ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_sid_cpin_pin(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %cpin_uid = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cpin_uid) #6
  %0 = ptrtoint ptr %cpin_uid to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 47244640257, ptr %cpin_uid, align 8
  %key1 = getelementptr inbounds %struct.opal_key, ptr %data, i32 0, i32 3
  %key_len = getelementptr inbounds %struct.opal_key, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %key_len, align 1
  %conv = zext i8 %2 to i32
  %call = call fastcc i32 @generic_pw_cmd(ptr noundef %key1, i32 noundef %conv, ptr noundef nonnull %cpin_uid, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_sid_cpin_pin.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_sid_cpin_pin, %if.then8)) #6
          to label %cleanup [label %if.then8], !srcloc !392

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_sid_cpin_pin.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.135) #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hsn.i, align 4
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %5 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tsn.i, align 8
  %call.i = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %4, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_sid_cpin_pin, %if.then5.i)) #6
          to label %cleanup [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @parse_and_check_status) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i, %if.then8, %do.body
  %retval.0 = phi i32 [ -34, %if.then8 ], [ -34, %do.body ], [ %call7.i, %if.end6.i ], [ %call.i, %if.then5.i ], [ %call.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cpin_uid) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generic_get_column(ptr noundef %dev, ptr nocapture noundef readonly %table, i64 noundef %column) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #6
  %call = tail call fastcc i32 @cmd_start(ptr noundef %dev, ptr noundef %table, ptr noundef getelementptr inbounds ([16 x [8 x i8]], ptr @opalmethod, i32 0, i32 11))
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not.i.i = icmp eq i32 %call, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.add_token_u8.exit35_crit_edge

entry.add_token_u8.exit35_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit35

if.end.i.i:                                       ; preds = %entry
  %pos.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 2048
  br i1 %cmp.i.i, label %do.body.i.i, label %add_token_u8.exit

do.body.i.i:                                      ; preds = %if.end.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_get_column, %if.then6.i.i)) #6
          to label %do.end.i.i [label %if.then6.i.i], !srcloc !392

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i, %do.body.i.i
  %3 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit35

add_token_u8.exit:                                ; preds = %if.end.i.i
  %inc.i = add i32 %2, 1
  %4 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inc.i, ptr %pos.i.i.i, align 8
  %arrayidx.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %2
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -16, ptr %arrayidx.i, align 1
  %6 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i.i14 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i.i14, label %if.end.i.i17, label %add_token_u8.exit.add_token_u8.exit35_crit_edge

add_token_u8.exit.add_token_u8.exit35_crit_edge:  ; preds = %add_token_u8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit35

if.end.i.i17:                                     ; preds = %add_token_u8.exit
  %7 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %8)
  %cmp.i.i16 = icmp eq i32 %8, 2048
  br i1 %cmp.i.i16, label %do.body.i.i18, label %add_token_u8.exit24

do.body.i.i18:                                    ; preds = %if.end.i.i17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_get_column, %if.then6.i.i19)) #6
          to label %do.end.i.i20 [label %if.then6.i.i19], !srcloc !392

if.then6.i.i19:                                   ; preds = %do.body.i.i18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i20

do.end.i.i20:                                     ; preds = %if.then6.i.i19, %do.body.i.i18
  %9 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit35

add_token_u8.exit24:                              ; preds = %if.end.i.i17
  %inc.i21 = add i32 %8, 1
  %10 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc.i21, ptr %pos.i.i.i, align 8
  %arrayidx.i22 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %8
  %11 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -14, ptr %arrayidx.i22, align 1
  %12 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr92.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr92.pr)
  %tobool.not.i.i25 = icmp eq i32 %.pr92.pr, 0
  br i1 %tobool.not.i.i25, label %if.end.i.i28, label %add_token_u8.exit24.add_token_u8.exit35_crit_edge

add_token_u8.exit24.add_token_u8.exit35_crit_edge: ; preds = %add_token_u8.exit24
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit35

if.end.i.i28:                                     ; preds = %add_token_u8.exit24
  %13 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %14)
  %cmp.i.i27 = icmp eq i32 %14, 2048
  br i1 %cmp.i.i27, label %do.body.i.i29, label %if.end.i34

do.body.i.i29:                                    ; preds = %if.end.i.i28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_get_column, %if.then6.i.i30)) #6
          to label %do.end.i.i31 [label %if.then6.i.i30], !srcloc !392

if.then6.i.i30:                                   ; preds = %do.body.i.i29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i31

do.end.i.i31:                                     ; preds = %if.then6.i.i30, %do.body.i.i29
  %15 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit35

if.end.i34:                                       ; preds = %if.end.i.i28
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i32 = add i32 %14, 1
  %16 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc.i32, ptr %pos.i.i.i, align 8
  %arrayidx.i33 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %14
  %17 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %arrayidx.i33, align 1
  br label %add_token_u8.exit35

add_token_u8.exit35:                              ; preds = %if.end.i34, %do.end.i.i31, %add_token_u8.exit24.add_token_u8.exit35_crit_edge, %do.end.i.i20, %add_token_u8.exit.add_token_u8.exit35_crit_edge, %do.end.i.i, %entry.add_token_u8.exit35_crit_edge
  call fastcc void @add_token_u64(ptr noundef nonnull %err, ptr noundef %dev, i64 noundef %column)
  %18 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i36 = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i36, label %if.end.i.i39, label %add_token_u8.exit35.add_token_u8.exit68_crit_edge

add_token_u8.exit35.add_token_u8.exit68_crit_edge: ; preds = %add_token_u8.exit35
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit68

if.end.i.i39:                                     ; preds = %add_token_u8.exit35
  %pos.i.i.i37 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %20 = ptrtoint ptr %pos.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pos.i.i.i37, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %21)
  %cmp.i.i38 = icmp eq i32 %21, 2048
  br i1 %cmp.i.i38, label %do.body.i.i40, label %add_token_u8.exit46

do.body.i.i40:                                    ; preds = %if.end.i.i39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_get_column, %if.then6.i.i41)) #6
          to label %do.end.i.i42 [label %if.then6.i.i41], !srcloc !392

if.then6.i.i41:                                   ; preds = %do.body.i.i40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i42

do.end.i.i42:                                     ; preds = %if.then6.i.i41, %do.body.i.i40
  %22 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit68

add_token_u8.exit46:                              ; preds = %if.end.i.i39
  %inc.i43 = add i32 %21, 1
  %23 = ptrtoint ptr %pos.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %inc.i43, ptr %pos.i.i.i37, align 8
  %arrayidx.i44 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %21
  %24 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -13, ptr %arrayidx.i44, align 1
  %25 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr94 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr94)
  %tobool.not.i.i47 = icmp eq i32 %.pr94, 0
  br i1 %tobool.not.i.i47, label %if.end.i.i50, label %add_token_u8.exit46.add_token_u8.exit68_crit_edge

add_token_u8.exit46.add_token_u8.exit68_crit_edge: ; preds = %add_token_u8.exit46
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit68

if.end.i.i50:                                     ; preds = %add_token_u8.exit46
  %26 = ptrtoint ptr %pos.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pos.i.i.i37, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %27)
  %cmp.i.i49 = icmp eq i32 %27, 2048
  br i1 %cmp.i.i49, label %do.body.i.i51, label %add_token_u8.exit57

do.body.i.i51:                                    ; preds = %if.end.i.i50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_get_column, %if.then6.i.i52)) #6
          to label %do.end.i.i53 [label %if.then6.i.i52], !srcloc !392

if.then6.i.i52:                                   ; preds = %do.body.i.i51
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i53

do.end.i.i53:                                     ; preds = %if.then6.i.i52, %do.body.i.i51
  %28 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit68

add_token_u8.exit57:                              ; preds = %if.end.i.i50
  %inc.i54 = add i32 %27, 1
  %29 = ptrtoint ptr %pos.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc.i54, ptr %pos.i.i.i37, align 8
  %arrayidx.i55 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %27
  %30 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -14, ptr %arrayidx.i55, align 1
  %31 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr96.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr96.pr)
  %tobool.not.i.i58 = icmp eq i32 %.pr96.pr, 0
  br i1 %tobool.not.i.i58, label %if.end.i.i61, label %add_token_u8.exit57.add_token_u8.exit68_crit_edge

add_token_u8.exit57.add_token_u8.exit68_crit_edge: ; preds = %add_token_u8.exit57
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit68

if.end.i.i61:                                     ; preds = %add_token_u8.exit57
  %32 = ptrtoint ptr %pos.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pos.i.i.i37, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %33)
  %cmp.i.i60 = icmp eq i32 %33, 2048
  br i1 %cmp.i.i60, label %do.body.i.i62, label %if.end.i67

do.body.i.i62:                                    ; preds = %if.end.i.i61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_get_column, %if.then6.i.i63)) #6
          to label %do.end.i.i64 [label %if.then6.i.i63], !srcloc !392

if.then6.i.i63:                                   ; preds = %do.body.i.i62
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i64

do.end.i.i64:                                     ; preds = %if.then6.i.i63, %do.body.i.i62
  %34 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit68

if.end.i67:                                       ; preds = %if.end.i.i61
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i65 = add i32 %33, 1
  %35 = ptrtoint ptr %pos.i.i.i37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %inc.i65, ptr %pos.i.i.i37, align 8
  %arrayidx.i66 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %33
  %36 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 4, ptr %arrayidx.i66, align 1
  br label %add_token_u8.exit68

add_token_u8.exit68:                              ; preds = %if.end.i67, %do.end.i.i64, %add_token_u8.exit57.add_token_u8.exit68_crit_edge, %do.end.i.i53, %add_token_u8.exit46.add_token_u8.exit68_crit_edge, %do.end.i.i42, %add_token_u8.exit35.add_token_u8.exit68_crit_edge
  call fastcc void @add_token_u64(ptr noundef nonnull %err, ptr noundef %dev, i64 noundef %column)
  %37 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i69 = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i69, label %if.end.i.i72, label %add_token_u8.exit68.cleanup_crit_edge

add_token_u8.exit68.cleanup_crit_edge:            ; preds = %add_token_u8.exit68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i72:                                     ; preds = %add_token_u8.exit68
  %pos.i.i.i70 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %39 = ptrtoint ptr %pos.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pos.i.i.i70, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %40)
  %cmp.i.i71 = icmp eq i32 %40, 2048
  br i1 %cmp.i.i71, label %do.body.i.i73, label %add_token_u8.exit79

do.body.i.i73:                                    ; preds = %if.end.i.i72
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_get_column, %if.then6.i.i74)) #6
          to label %cleanup [label %if.then6.i.i74], !srcloc !392

if.then6.i.i74:                                   ; preds = %do.body.i.i73
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %cleanup

add_token_u8.exit79:                              ; preds = %if.end.i.i72
  %inc.i76 = add i32 %40, 1
  %41 = ptrtoint ptr %pos.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %inc.i76, ptr %pos.i.i.i70, align 8
  %arrayidx.i77 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %40
  %42 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -13, ptr %arrayidx.i77, align 1
  %43 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr98 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr98)
  %tobool.not.i.i80 = icmp eq i32 %.pr98, 0
  br i1 %tobool.not.i.i80, label %if.end.i.i83, label %add_token_u8.exit79.cleanup_crit_edge

add_token_u8.exit79.cleanup_crit_edge:            ; preds = %add_token_u8.exit79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i83:                                     ; preds = %add_token_u8.exit79
  %44 = ptrtoint ptr %pos.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pos.i.i.i70, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %45)
  %cmp.i.i82 = icmp eq i32 %45, 2048
  br i1 %cmp.i.i82, label %do.body.i.i84, label %add_token_u8.exit90

do.body.i.i84:                                    ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_get_column, %if.then6.i.i85)) #6
          to label %cleanup [label %if.then6.i.i85], !srcloc !392

if.then6.i.i85:                                   ; preds = %do.body.i.i84
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %cleanup

add_token_u8.exit90:                              ; preds = %if.end.i.i83
  %inc.i87 = add i32 %45, 1
  %46 = ptrtoint ptr %pos.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %inc.i87, ptr %pos.i.i.i70, align 8
  %arrayidx.i88 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %45
  %47 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -15, ptr %arrayidx.i88, align 1
  %48 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr100.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr100.pr)
  %tobool.not = icmp eq i32 %.pr100.pr, 0
  br i1 %tobool.not, label %if.end, label %add_token_u8.exit90.cleanup_crit_edge

add_token_u8.exit90.cleanup_crit_edge:            ; preds = %add_token_u8.exit90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %add_token_u8.exit90
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %49 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hsn.i, align 4
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %51 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tsn.i, align 8
  %call.i = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %50, i32 noundef %52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_get_column, %if.then5.i)) #6
          to label %cleanup [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @parse_and_check_status) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i, %add_token_u8.exit90.cleanup_crit_edge, %if.then6.i.i85, %do.body.i.i84, %add_token_u8.exit79.cleanup_crit_edge, %if.then6.i.i74, %do.body.i.i73, %add_token_u8.exit68.cleanup_crit_edge
  %retval.0 = phi i32 [ %.pr100.pr, %add_token_u8.exit90.cleanup_crit_edge ], [ %call7.i, %if.end6.i ], [ %call.i, %if.then5.i ], [ %call.i, %do.body.i ], [ %.pr98, %add_token_u8.exit79.cleanup_crit_edge ], [ %38, %add_token_u8.exit68.cleanup_crit_edge ], [ -34, %if.then6.i.i74 ], [ -34, %do.body.i.i73 ], [ -34, %if.then6.i.i85 ], [ -34, %do.body.i.i84 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @response_get_string(ptr noundef readonly %resp, i32 noundef %n, ptr nocapture noundef writeonly %store) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %store to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %store, align 4
  %tobool.not.i = icmp eq ptr %resp, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_token.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_get_string, %if.then4.i)) #6
          to label %response_get_token.exit [label %if.then4.i], !srcloc !392

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_token.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.96) #6
  br label %cleanup

if.end6.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %resp, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %n)
  %cmp.not.i = icmp sgt i32 %2, %n
  br i1 %cmp.not.i, label %if.end26.i, label %do.body8.i

do.body8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_token.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_get_string, %if.then20.i)) #6
          to label %response_get_token.exit [label %if.then20.i], !srcloc !392

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resp, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_token.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.98, i32 noundef %n, i32 noundef %4) #6
  br label %cleanup

if.end26.i:                                       ; preds = %if.end6.i
  %len.i = getelementptr %struct.parsed_resp, ptr %resp, i32 0, i32 1, i32 %n, i32 1
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp27.i = icmp eq i32 %6, 0
  br i1 %cmp27.i, label %do.body29.i, label %if.end46.i

do.body29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_token.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_get_string, %if.then41.i)) #6
          to label %response_get_token.exit [label %if.then41.i], !srcloc !392

if.then41.i:                                      ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_token.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.100) #6
  br label %cleanup

if.end46.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.parsed_resp, ptr %resp, i32 0, i32 1, i32 %n
  br label %response_get_token.exit

response_get_token.exit:                          ; preds = %if.end46.i, %do.body29.i, %do.body8.i, %do.body.i
  %retval.0.i38 = phi ptr [ %arrayidx.i, %if.end46.i ], [ inttoptr (i32 -22 to ptr), %do.body.i ], [ inttoptr (i32 -22 to ptr), %do.body8.i ], [ inttoptr (i32 -22 to ptr), %do.body29.i ]
  %cmp.i = icmp ugt ptr %retval.0.i38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %response_get_token.exit.cleanup_crit_edge, label %if.end

response_get_token.exit.cleanup_crit_edge:        ; preds = %response_get_token.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %response_get_token.exit
  %type = getelementptr inbounds %struct.opal_resp_tok, ptr %retval.0.i38, i32 0, i32 2
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %8)
  %cmp.not = icmp eq i32 %8, 224
  br i1 %cmp.not, label %if.end8, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_string.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_get_string, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !392

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_string.__UNIQUE_ID_ddebug266, ptr noundef nonnull @.str.130) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %width = getelementptr inbounds %struct.opal_resp_tok, ptr %retval.0.i38, i32 0, i32 3
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %switch.lookup, label %do.body11

do.body11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @response_get_string.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@response_get_string, %if.then23)) #6
          to label %cleanup [label %if.then23], !srcloc !392

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @response_get_string.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.132) #6
  br label %cleanup

switch.lookup:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.response_get_string, i32 0, i32 %10
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %13 = ptrtoint ptr %retval.0.i38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %retval.0.i38, align 8
  %add.ptr = getelementptr i8, ptr %14, i32 %switch.load
  %15 = ptrtoint ptr %store to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %store, align 4
  %len = getelementptr inbounds %struct.opal_resp_tok, ptr %retval.0.i38, i32 0, i32 1
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %sub = sub i32 %17, %switch.load
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.then23, %do.body11, %if.then6, %do.body, %response_get_token.exit.cleanup_crit_edge, %if.then41.i, %if.then20.i, %if.then4.i
  %retval.0 = phi i32 [ %sub, %switch.lookup ], [ 0, %response_get_token.exit.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.then23 ], [ 0, %do.body ], [ 0, %do.body11 ], [ 0, %if.then4.i ], [ 0, %if.then20.i ], [ 0, %if.then41.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generic_pw_cmd(ptr nocapture noundef readonly %key, i32 noundef %key_len, ptr nocapture noundef readonly %cpin_uid, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #6
  %call = tail call fastcc i32 @cmd_start(ptr noundef %dev, ptr noundef %cpin_uid, ptr noundef getelementptr inbounds ([16 x [8 x i8]], ptr @opalmethod, i32 0, i32 12))
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not.i.i = icmp eq i32 %call, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.add_token_u8.exit53_crit_edge

entry.add_token_u8.exit53_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit53

if.end.i.i:                                       ; preds = %entry
  %pos.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %1 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 2048
  br i1 %cmp.i.i, label %do.body.i.i, label %add_token_u8.exit

do.body.i.i:                                      ; preds = %if.end.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_pw_cmd, %if.then6.i.i)) #6
          to label %do.end.i.i [label %if.then6.i.i], !srcloc !392

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i, %do.body.i.i
  %3 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit53

add_token_u8.exit:                                ; preds = %if.end.i.i
  %inc.i = add i32 %2, 1
  %4 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %inc.i, ptr %pos.i.i.i, align 8
  %arrayidx.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %2
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -14, ptr %arrayidx.i, align 1
  %6 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i.i10 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i.i10, label %if.end.i.i13, label %add_token_u8.exit.add_token_u8.exit53_crit_edge

add_token_u8.exit.add_token_u8.exit53_crit_edge:  ; preds = %add_token_u8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit53

if.end.i.i13:                                     ; preds = %add_token_u8.exit
  %7 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %8)
  %cmp.i.i12 = icmp eq i32 %8, 2048
  br i1 %cmp.i.i12, label %do.body.i.i14, label %add_token_u8.exit20

do.body.i.i14:                                    ; preds = %if.end.i.i13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_pw_cmd, %if.then6.i.i15)) #6
          to label %do.end.i.i16 [label %if.then6.i.i15], !srcloc !392

if.then6.i.i15:                                   ; preds = %do.body.i.i14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i16

do.end.i.i16:                                     ; preds = %if.then6.i.i15, %do.body.i.i14
  %9 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit53

add_token_u8.exit20:                              ; preds = %if.end.i.i13
  %inc.i17 = add i32 %8, 1
  %10 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc.i17, ptr %pos.i.i.i, align 8
  %arrayidx.i18 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %8
  %11 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx.i18, align 1
  %12 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr89.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr89.pr)
  %tobool.not.i.i21 = icmp eq i32 %.pr89.pr, 0
  br i1 %tobool.not.i.i21, label %if.end.i.i24, label %add_token_u8.exit20.add_token_u8.exit53_crit_edge

add_token_u8.exit20.add_token_u8.exit53_crit_edge: ; preds = %add_token_u8.exit20
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit53

if.end.i.i24:                                     ; preds = %add_token_u8.exit20
  %13 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %14)
  %cmp.i.i23 = icmp eq i32 %14, 2048
  br i1 %cmp.i.i23, label %do.body.i.i25, label %add_token_u8.exit31

do.body.i.i25:                                    ; preds = %if.end.i.i24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_pw_cmd, %if.then6.i.i26)) #6
          to label %do.end.i.i27 [label %if.then6.i.i26], !srcloc !392

if.then6.i.i26:                                   ; preds = %do.body.i.i25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i27

do.end.i.i27:                                     ; preds = %if.then6.i.i26, %do.body.i.i25
  %15 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit53

add_token_u8.exit31:                              ; preds = %if.end.i.i24
  %inc.i28 = add i32 %14, 1
  %16 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc.i28, ptr %pos.i.i.i, align 8
  %arrayidx.i29 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %14
  %17 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -16, ptr %arrayidx.i29, align 1
  %18 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr91.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr91.pr)
  %tobool.not.i.i32 = icmp eq i32 %.pr91.pr, 0
  br i1 %tobool.not.i.i32, label %if.end.i.i35, label %add_token_u8.exit31.add_token_u8.exit53_crit_edge

add_token_u8.exit31.add_token_u8.exit53_crit_edge: ; preds = %add_token_u8.exit31
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit53

if.end.i.i35:                                     ; preds = %add_token_u8.exit31
  %19 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %20)
  %cmp.i.i34 = icmp eq i32 %20, 2048
  br i1 %cmp.i.i34, label %do.body.i.i36, label %add_token_u8.exit42

do.body.i.i36:                                    ; preds = %if.end.i.i35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_pw_cmd, %if.then6.i.i37)) #6
          to label %do.end.i.i38 [label %if.then6.i.i37], !srcloc !392

if.then6.i.i37:                                   ; preds = %do.body.i.i36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i38

do.end.i.i38:                                     ; preds = %if.then6.i.i37, %do.body.i.i36
  %21 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit53

add_token_u8.exit42:                              ; preds = %if.end.i.i35
  %inc.i39 = add i32 %20, 1
  %22 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc.i39, ptr %pos.i.i.i, align 8
  %arrayidx.i40 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %20
  %23 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -14, ptr %arrayidx.i40, align 1
  %24 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr93.pr.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr93.pr.pr)
  %tobool.not.i.i43 = icmp eq i32 %.pr93.pr.pr, 0
  br i1 %tobool.not.i.i43, label %if.end.i.i46, label %add_token_u8.exit42.add_token_u8.exit53_crit_edge

add_token_u8.exit42.add_token_u8.exit53_crit_edge: ; preds = %add_token_u8.exit42
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit53

if.end.i.i46:                                     ; preds = %add_token_u8.exit42
  %25 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %26)
  %cmp.i.i45 = icmp eq i32 %26, 2048
  br i1 %cmp.i.i45, label %do.body.i.i47, label %if.end.i52

do.body.i.i47:                                    ; preds = %if.end.i.i46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_pw_cmd, %if.then6.i.i48)) #6
          to label %do.end.i.i49 [label %if.then6.i.i48], !srcloc !392

if.then6.i.i48:                                   ; preds = %do.body.i.i47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i49

do.end.i.i49:                                     ; preds = %if.then6.i.i48, %do.body.i.i47
  %27 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit53

if.end.i52:                                       ; preds = %if.end.i.i46
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i50 = add i32 %26, 1
  %28 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc.i50, ptr %pos.i.i.i, align 8
  %arrayidx.i51 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %26
  %29 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %arrayidx.i51, align 1
  br label %add_token_u8.exit53

add_token_u8.exit53:                              ; preds = %if.end.i52, %do.end.i.i49, %add_token_u8.exit42.add_token_u8.exit53_crit_edge, %do.end.i.i38, %add_token_u8.exit31.add_token_u8.exit53_crit_edge, %do.end.i.i27, %add_token_u8.exit20.add_token_u8.exit53_crit_edge, %do.end.i.i16, %add_token_u8.exit.add_token_u8.exit53_crit_edge, %do.end.i.i, %entry.add_token_u8.exit53_crit_edge
  %call.i = call fastcc ptr @add_bytestring_header(ptr noundef nonnull %err, ptr noundef %dev, i32 noundef %key_len) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %add_token_u8.exit53.add_token_bytestring.exit_crit_edge, label %if.end.i54

add_token_u8.exit53.add_token_bytestring.exit_crit_edge: ; preds = %add_token_u8.exit53
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_bytestring.exit

if.end.i54:                                       ; preds = %add_token_u8.exit53
  call void @__sanitizer_cov_trace_pc() #8
  %30 = call ptr @memcpy(ptr %call.i, ptr %key, i32 %key_len)
  %pos.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %31 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pos.i, align 8
  %add.i = add i32 %32, %key_len
  store i32 %add.i, ptr %pos.i, align 8
  br label %add_token_bytestring.exit

add_token_bytestring.exit:                        ; preds = %if.end.i54, %add_token_u8.exit53.add_token_bytestring.exit_crit_edge
  %33 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i55 = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i55, label %if.end.i.i58, label %add_token_bytestring.exit.add_token_u8.exit87_crit_edge

add_token_bytestring.exit.add_token_u8.exit87_crit_edge: ; preds = %add_token_bytestring.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit87

if.end.i.i58:                                     ; preds = %add_token_bytestring.exit
  %pos.i.i.i56 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %35 = ptrtoint ptr %pos.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pos.i.i.i56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %36)
  %cmp.i.i57 = icmp eq i32 %36, 2048
  br i1 %cmp.i.i57, label %do.body.i.i59, label %add_token_u8.exit65

do.body.i.i59:                                    ; preds = %if.end.i.i58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_pw_cmd, %if.then6.i.i60)) #6
          to label %do.end.i.i61 [label %if.then6.i.i60], !srcloc !392

if.then6.i.i60:                                   ; preds = %do.body.i.i59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i61

do.end.i.i61:                                     ; preds = %if.then6.i.i60, %do.body.i.i59
  %37 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit87

add_token_u8.exit65:                              ; preds = %if.end.i.i58
  %inc.i62 = add i32 %36, 1
  %38 = ptrtoint ptr %pos.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %inc.i62, ptr %pos.i.i.i56, align 8
  %arrayidx.i63 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %36
  %39 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -13, ptr %arrayidx.i63, align 1
  %40 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr95 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr95)
  %tobool.not.i.i66 = icmp eq i32 %.pr95, 0
  br i1 %tobool.not.i.i66, label %if.end.i.i69, label %add_token_u8.exit65.add_token_u8.exit87_crit_edge

add_token_u8.exit65.add_token_u8.exit87_crit_edge: ; preds = %add_token_u8.exit65
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit87

if.end.i.i69:                                     ; preds = %add_token_u8.exit65
  %41 = ptrtoint ptr %pos.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pos.i.i.i56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %42)
  %cmp.i.i68 = icmp eq i32 %42, 2048
  br i1 %cmp.i.i68, label %do.body.i.i70, label %add_token_u8.exit76

do.body.i.i70:                                    ; preds = %if.end.i.i69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_pw_cmd, %if.then6.i.i71)) #6
          to label %do.end.i.i72 [label %if.then6.i.i71], !srcloc !392

if.then6.i.i71:                                   ; preds = %do.body.i.i70
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i72

do.end.i.i72:                                     ; preds = %if.then6.i.i71, %do.body.i.i70
  %43 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit87

add_token_u8.exit76:                              ; preds = %if.end.i.i69
  %inc.i73 = add i32 %42, 1
  %44 = ptrtoint ptr %pos.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %inc.i73, ptr %pos.i.i.i56, align 8
  %arrayidx.i74 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %42
  %45 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -15, ptr %arrayidx.i74, align 1
  %46 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr97.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr97.pr)
  %tobool.not.i.i77 = icmp eq i32 %.pr97.pr, 0
  br i1 %tobool.not.i.i77, label %if.end.i.i80, label %add_token_u8.exit76.add_token_u8.exit87_crit_edge

add_token_u8.exit76.add_token_u8.exit87_crit_edge: ; preds = %add_token_u8.exit76
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit87

if.end.i.i80:                                     ; preds = %add_token_u8.exit76
  %47 = ptrtoint ptr %pos.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pos.i.i.i56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %48)
  %cmp.i.i79 = icmp eq i32 %48, 2048
  br i1 %cmp.i.i79, label %do.body.i.i81, label %if.end.i86

do.body.i.i81:                                    ; preds = %if.end.i.i80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_pw_cmd, %if.then6.i.i82)) #6
          to label %do.end.i.i83 [label %if.then6.i.i82], !srcloc !392

if.then6.i.i82:                                   ; preds = %do.body.i.i81
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i83

do.end.i.i83:                                     ; preds = %if.then6.i.i82, %do.body.i.i81
  %49 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit87

if.end.i86:                                       ; preds = %if.end.i.i80
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i84 = add i32 %48, 1
  %50 = ptrtoint ptr %pos.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %inc.i84, ptr %pos.i.i.i56, align 8
  %arrayidx.i85 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %48
  %51 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -13, ptr %arrayidx.i85, align 1
  br label %add_token_u8.exit87

add_token_u8.exit87:                              ; preds = %if.end.i86, %do.end.i.i83, %add_token_u8.exit76.add_token_u8.exit87_crit_edge, %do.end.i.i72, %add_token_u8.exit65.add_token_u8.exit87_crit_edge, %do.end.i.i61, %add_token_bytestring.exit.add_token_u8.exit87_crit_edge
  %52 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %err, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #6
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_lsp_lifecycle(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @generic_get_column(ptr noundef %dev, ptr noundef getelementptr inbounds ([30 x [8 x i8]], ptr @opaluid, i32 0, i32 3), i64 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parsed = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 13
  %call1 = tail call fastcc i64 @response_get_u64(ptr noundef %parsed, i32 noundef 4)
  %conv215 = and i64 %call1, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %conv215)
  %cmp.not = icmp eq i64 %conv215, 8
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_lsp_lifecycle.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_lsp_lifecycle, %if.then9)) #6
          to label %cleanup [label %if.then9], !srcloc !392

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_lsp_lifecycle.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.138) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -19, %if.then9 ], [ 0, %if.end.cleanup_crit_edge ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @activate_lsp(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #6
  %call = tail call fastcc i32 @cmd_start(ptr noundef %dev, ptr noundef getelementptr inbounds ([30 x [8 x i8]], ptr @opaluid, i32 0, i32 3), ptr noundef getelementptr inbounds ([16 x [8 x i8]], ptr @opalmethod, i32 0, i32 3))
  %sum = getelementptr inbounds %struct.opal_lr_act, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %sum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %entry
  %lr = getelementptr inbounds %struct.opal_lr_act, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %lr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp5.i = icmp eq i8 %3, 0
  %spec.select = select i1 %cmp5.i, i8 1, i8 %3
  %spec.select131 = select i1 %cmp5.i, i8 0, i8 3
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %err, align 4
  %pos.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %5 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 2048
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end.i

do.body.i.i:                                      ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@activate_lsp, %if.then6.i.i)) #6
          to label %do.end.i.i [label %if.then6.i.i], !srcloc !392

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i, %do.body.i.i
  %7 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i = add i32 %6, 1
  %8 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc.i, ptr %pos.i.i.i, align 8
  %arrayidx.i37 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %6
  %9 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -14, ptr %arrayidx.i37, align 1
  br label %add_token_u8.exit

add_token_u8.exit:                                ; preds = %if.end.i, %do.end.i.i
  call fastcc void @add_token_u64(ptr noundef nonnull %err, ptr noundef %dev, i64 noundef 393216)
  %10 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i38 = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i38, label %if.end.i.i41, label %add_token_u8.exit.do.body.i88_crit_edge

add_token_u8.exit.do.body.i88_crit_edge:          ; preds = %add_token_u8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i88

if.end.i.i41:                                     ; preds = %add_token_u8.exit
  %12 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %13)
  %cmp.i.i40 = icmp eq i32 %13, 2048
  br i1 %cmp.i.i40, label %do.body.i.i42, label %add_token_u8.exit48

do.body.i.i42:                                    ; preds = %if.end.i.i41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@activate_lsp, %if.then6.i.i43)) #6
          to label %do.end.i.i44 [label %if.then6.i.i43], !srcloc !392

if.then6.i.i43:                                   ; preds = %do.body.i.i42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i44

do.end.i.i44:                                     ; preds = %if.then6.i.i43, %do.body.i.i42
  %14 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -34, ptr %err, align 4
  br label %do.body.i88

add_token_u8.exit48:                              ; preds = %if.end.i.i41
  %inc.i45 = add i32 %13, 1
  %15 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc.i45, ptr %pos.i.i.i, align 8
  %arrayidx.i46 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %13
  %16 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -16, ptr %arrayidx.i46, align 1
  %17 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i.i81 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i.i81, label %if.end.i.i84, label %add_token_u8.exit48.do.body.i88_crit_edge

add_token_u8.exit48.do.body.i88_crit_edge:        ; preds = %add_token_u8.exit48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i88

if.end.i.i84:                                     ; preds = %add_token_u8.exit48
  %18 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pos.i.i.i, align 8
  %20 = add i32 %19, -2040
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %20)
  %cmp.i.i83 = icmp ult i32 %20, 9
  br i1 %cmp.i.i83, label %do.body.i.i85, label %if.end11.i

do.body.i.i85:                                    ; preds = %if.end.i.i84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@activate_lsp, %if.then6.i.i86)) #6
          to label %do.end.i.i87 [label %if.then6.i.i86], !srcloc !392

if.then6.i.i86:                                   ; preds = %do.body.i.i85
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 9) #6
  br label %do.end.i.i87

do.end.i.i87:                                     ; preds = %if.then6.i.i86, %do.body.i.i85
  %21 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -34, ptr %err, align 4
  br label %do.body.i88

do.body.i88:                                      ; preds = %do.end.i.i87, %add_token_u8.exit48.do.body.i88_crit_edge, %do.end.i.i44, %add_token_u8.exit.do.body.i88_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_bytestring_header.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@activate_lsp, %add_bytestring_header.exit.thread)) #6
          to label %add_bytestring_header.exit [label %add_bytestring_header.exit.thread], !srcloc !392

add_bytestring_header.exit.thread:                ; preds = %do.body.i88
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_bytestring_header.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.68) #6
  br label %add_token_bytestring.exit

if.end11.i:                                       ; preds = %if.end.i.i84
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i.i = add i32 %19, 1
  %22 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc.i.i.i, ptr %pos.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %19
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -88, ptr %arrayidx.i.i.i, align 1
  %24 = load i32, ptr %pos.i.i.i, align 8
  %arrayidx.i90 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %24
  br label %add_bytestring_header.exit

add_bytestring_header.exit:                       ; preds = %if.end11.i, %do.body.i88
  %retval.0.i91 = phi ptr [ %arrayidx.i90, %if.end11.i ], [ null, %do.body.i88 ]
  %tobool.not.i = icmp eq ptr %retval.0.i91, null
  br i1 %tobool.not.i, label %add_bytestring_header.exit.add_token_bytestring.exit_crit_edge, label %if.end.i49

add_bytestring_header.exit.add_token_bytestring.exit_crit_edge: ; preds = %add_bytestring_header.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_bytestring.exit

if.end.i49:                                       ; preds = %add_bytestring_header.exit
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %retval.0.i91 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %retval.0.i91, align 1
  %user_lr.sroa.6.0.retval.0.i91.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i91, i32 1
  %26 = ptrtoint ptr %user_lr.sroa.6.0.retval.0.i91.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %user_lr.sroa.6.0.retval.0.i91.sroa_idx, align 1
  %user_lr.sroa.7.0.retval.0.i91.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i91, i32 2
  %27 = ptrtoint ptr %user_lr.sroa.7.0.retval.0.i91.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 8, ptr %user_lr.sroa.7.0.retval.0.i91.sroa_idx, align 1
  %user_lr.sroa.8.0.retval.0.i91.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i91, i32 3
  %28 = ptrtoint ptr %user_lr.sroa.8.0.retval.0.i91.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %user_lr.sroa.8.0.retval.0.i91.sroa_idx, align 1
  %user_lr.sroa.9.0.retval.0.i91.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i91, i32 4
  %29 = ptrtoint ptr %user_lr.sroa.9.0.retval.0.i91.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %user_lr.sroa.9.0.retval.0.i91.sroa_idx, align 1
  %user_lr.sroa.10.0.retval.0.i91.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i91, i32 5
  %30 = ptrtoint ptr %user_lr.sroa.10.0.retval.0.i91.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %spec.select131, ptr %user_lr.sroa.10.0.retval.0.i91.sroa_idx, align 1
  %user_lr.sroa.12.0.retval.0.i91.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i91, i32 6
  %31 = ptrtoint ptr %user_lr.sroa.12.0.retval.0.i91.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %user_lr.sroa.12.0.retval.0.i91.sroa_idx, align 1
  %user_lr.sroa.13.0.retval.0.i91.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i91, i32 7
  %32 = ptrtoint ptr %user_lr.sroa.13.0.retval.0.i91.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %spec.select, ptr %user_lr.sroa.13.0.retval.0.i91.sroa_idx, align 1
  %33 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pos.i.i.i, align 8
  %add.i = add i32 %34, 8
  store i32 %add.i, ptr %pos.i.i.i, align 8
  br label %add_token_bytestring.exit

add_token_bytestring.exit:                        ; preds = %if.end.i49, %add_bytestring_header.exit.add_token_bytestring.exit_crit_edge, %add_bytestring_header.exit.thread
  %num_lrs = getelementptr inbounds %struct.opal_lr_act, ptr %data, i32 0, i32 2
  %35 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %35)
  %err.promoted = load i32, ptr %err, align 4
  %36 = ptrtoint ptr %num_lrs to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %num_lrs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp133 = icmp ugt i8 %37, 1
  br i1 %cmp133, label %add_token_bytestring.exit.for.body_crit_edge, label %add_token_bytestring.exit.for.end_crit_edge

add_token_bytestring.exit.for.end_crit_edge:      ; preds = %add_token_bytestring.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

add_token_bytestring.exit.for.body_crit_edge:     ; preds = %add_token_bytestring.exit
  br label %for.body

for.body:                                         ; preds = %add_token_bytestring.exit55.for.body_crit_edge, %add_token_bytestring.exit.for.body_crit_edge
  %i.0134 = phi i32 [ %inc, %add_token_bytestring.exit55.for.body_crit_edge ], [ 1, %add_token_bytestring.exit.for.body_crit_edge ]
  %38 = phi i32 [ %59, %add_token_bytestring.exit55.for.body_crit_edge ], [ %err.promoted, %add_token_bytestring.exit.for.body_crit_edge ]
  %arrayidx7 = getelementptr %struct.opal_lr_act, ptr %data, i32 0, i32 3, i32 %i.0134
  %39 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i92 = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i92, label %if.end.i.i96, label %for.body.do.body.i100_crit_edge

for.body.do.body.i100_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i100

if.end.i.i96:                                     ; preds = %for.body
  %41 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pos.i.i.i, align 8
  %43 = add i32 %42, -2040
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %43)
  %cmp.i.i95 = icmp ult i32 %43, 9
  br i1 %cmp.i.i95, label %do.body.i.i97, label %if.end11.i110

do.body.i.i97:                                    ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@activate_lsp, %if.then6.i.i98)) #6
          to label %do.body.i100 [label %if.then6.i.i98], !srcloc !392

if.then6.i.i98:                                   ; preds = %do.body.i.i97
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 9) #6
  br label %do.body.i100

do.body.i100:                                     ; preds = %if.then6.i.i98, %do.body.i.i97, %for.body.do.body.i100_crit_edge
  %44 = phi i32 [ %38, %for.body.do.body.i100_crit_edge ], [ -34, %if.then6.i.i98 ], [ -34, %do.body.i.i97 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_bytestring_header.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@activate_lsp, %add_bytestring_header.exit112.thread)) #6
          to label %add_bytestring_header.exit112 [label %add_bytestring_header.exit112.thread], !srcloc !392

add_bytestring_header.exit112.thread:             ; preds = %do.body.i100
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_bytestring_header.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.68) #6
  br label %add_token_bytestring.exit55

if.end11.i110:                                    ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i.i106 = add i32 %42, 1
  %45 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %inc.i.i.i106, ptr %pos.i.i.i, align 8
  %arrayidx.i.i.i107 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %42
  %46 = ptrtoint ptr %arrayidx.i.i.i107 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -88, ptr %arrayidx.i.i.i107, align 1
  %47 = load i32, ptr %pos.i.i.i, align 8
  %arrayidx.i109 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %47
  br label %add_bytestring_header.exit112

add_bytestring_header.exit112:                    ; preds = %if.end11.i110, %do.body.i100
  %48 = phi i32 [ 0, %if.end11.i110 ], [ %44, %do.body.i100 ]
  %retval.0.i111 = phi ptr [ %arrayidx.i109, %if.end11.i110 ], [ null, %do.body.i100 ]
  %tobool.not.i51 = icmp eq ptr %retval.0.i111, null
  br i1 %tobool.not.i51, label %add_bytestring_header.exit112.add_token_bytestring.exit55_crit_edge, label %if.end.i54

add_bytestring_header.exit112.add_token_bytestring.exit55_crit_edge: ; preds = %add_bytestring_header.exit112
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_bytestring.exit55

if.end.i54:                                       ; preds = %add_bytestring_header.exit112
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %retval.0.i111 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %retval.0.i111, align 1
  %user_lr.sroa.6.0.retval.0.i111.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i111, i32 1
  %50 = ptrtoint ptr %user_lr.sroa.6.0.retval.0.i111.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %user_lr.sroa.6.0.retval.0.i111.sroa_idx, align 1
  %user_lr.sroa.7.0.retval.0.i111.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i111, i32 2
  %51 = ptrtoint ptr %user_lr.sroa.7.0.retval.0.i111.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 8, ptr %user_lr.sroa.7.0.retval.0.i111.sroa_idx, align 1
  %user_lr.sroa.8.0.retval.0.i111.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i111, i32 3
  %52 = ptrtoint ptr %user_lr.sroa.8.0.retval.0.i111.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %user_lr.sroa.8.0.retval.0.i111.sroa_idx, align 1
  %user_lr.sroa.9.0.retval.0.i111.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i111, i32 4
  %53 = ptrtoint ptr %user_lr.sroa.9.0.retval.0.i111.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %user_lr.sroa.9.0.retval.0.i111.sroa_idx, align 1
  %user_lr.sroa.10.0.retval.0.i111.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i111, i32 5
  %54 = ptrtoint ptr %user_lr.sroa.10.0.retval.0.i111.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %spec.select131, ptr %user_lr.sroa.10.0.retval.0.i111.sroa_idx, align 1
  %user_lr.sroa.12.0.retval.0.i111.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i111, i32 6
  %55 = ptrtoint ptr %user_lr.sroa.12.0.retval.0.i111.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %user_lr.sroa.12.0.retval.0.i111.sroa_idx, align 1
  %user_lr.sroa.13.0.retval.0.i111.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i111, i32 7
  %56 = ptrtoint ptr %user_lr.sroa.13.0.retval.0.i111.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %40, ptr %user_lr.sroa.13.0.retval.0.i111.sroa_idx, align 1
  %57 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pos.i.i.i, align 8
  %add.i53 = add i32 %58, 8
  store i32 %add.i53, ptr %pos.i.i.i, align 8
  br label %add_token_bytestring.exit55

add_token_bytestring.exit55:                      ; preds = %if.end.i54, %add_bytestring_header.exit112.add_token_bytestring.exit55_crit_edge, %add_bytestring_header.exit112.thread
  %59 = phi i32 [ %44, %add_bytestring_header.exit112.thread ], [ %48, %add_bytestring_header.exit112.add_token_bytestring.exit55_crit_edge ], [ %48, %if.end.i54 ]
  %inc = add nuw nsw i32 %i.0134, 1
  %60 = ptrtoint ptr %num_lrs to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %num_lrs, align 4
  %conv = zext i8 %61 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %add_token_bytestring.exit55.for.body_crit_edge, label %add_token_bytestring.exit55.for.end_crit_edge

add_token_bytestring.exit55.for.end_crit_edge:    ; preds = %add_token_bytestring.exit55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

add_token_bytestring.exit55.for.body_crit_edge:   ; preds = %add_token_bytestring.exit55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %add_token_bytestring.exit55.for.end_crit_edge, %add_token_bytestring.exit.for.end_crit_edge
  %.lcssa = phi i32 [ %err.promoted, %add_token_bytestring.exit.for.end_crit_edge ], [ %59, %add_token_bytestring.exit55.for.end_crit_edge ]
  %62 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.lcssa, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.lcssa)
  %tobool.not.i.i56 = icmp eq i32 %.lcssa, 0
  br i1 %tobool.not.i.i56, label %if.end.i.i59, label %for.end.if.end10thread-pre-split_crit_edge

for.end.if.end10thread-pre-split_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10thread-pre-split

if.end.i.i59:                                     ; preds = %for.end
  %63 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %64)
  %cmp.i.i58 = icmp eq i32 %64, 2048
  br i1 %cmp.i.i58, label %do.body.i.i60, label %add_token_u8.exit66

do.body.i.i60:                                    ; preds = %if.end.i.i59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@activate_lsp, %if.then6.i.i61)) #6
          to label %do.end.i.i62 [label %if.then6.i.i61], !srcloc !392

if.then6.i.i61:                                   ; preds = %do.body.i.i60
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i62

do.end.i.i62:                                     ; preds = %if.then6.i.i61, %do.body.i.i60
  %65 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -34, ptr %err, align 4
  br label %if.end10thread-pre-split

add_token_u8.exit66:                              ; preds = %if.end.i.i59
  %inc.i63 = add i32 %64, 1
  %66 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %inc.i63, ptr %pos.i.i.i, align 8
  %arrayidx.i64 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %64
  %67 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -15, ptr %arrayidx.i64, align 1
  %68 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr126 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr126)
  %tobool.not.i.i67 = icmp eq i32 %.pr126, 0
  br i1 %tobool.not.i.i67, label %if.end.i.i70, label %add_token_u8.exit66.do.body_crit_edge

add_token_u8.exit66.do.body_crit_edge:            ; preds = %add_token_u8.exit66
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i.i70:                                     ; preds = %add_token_u8.exit66
  %69 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %70)
  %cmp.i.i69 = icmp eq i32 %70, 2048
  br i1 %cmp.i.i69, label %do.body.i.i71, label %if.end.i76

do.body.i.i71:                                    ; preds = %if.end.i.i70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@activate_lsp, %if.then6.i.i72)) #6
          to label %do.end.i.i73 [label %if.then6.i.i72], !srcloc !392

if.then6.i.i72:                                   ; preds = %do.body.i.i71
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i73

do.end.i.i73:                                     ; preds = %if.then6.i.i72, %do.body.i.i71
  %71 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -34, ptr %err, align 4
  br label %do.body

if.end.i76:                                       ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i74 = add i32 %70, 1
  %72 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %inc.i74, ptr %pos.i.i.i, align 8
  %arrayidx.i75 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %70
  %73 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -13, ptr %arrayidx.i75, align 1
  br label %if.end10thread-pre-split

if.end10thread-pre-split:                         ; preds = %if.end.i76, %do.end.i.i62, %for.end.if.end10thread-pre-split_crit_edge
  %74 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr128 = load i32, ptr %err, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10thread-pre-split, %entry.if.end10_crit_edge
  %75 = phi i32 [ %.pr128, %if.end10thread-pre-split ], [ %call, %entry.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool11.not = icmp eq i32 %75, 0
  br i1 %tobool11.not, label %if.end19, label %if.end10.do.body_crit_edge

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %if.end10.do.body_crit_edge, %do.end.i.i73, %add_token_u8.exit66.do.body_crit_edge
  %76 = phi i32 [ %75, %if.end10.do.body_crit_edge ], [ %.pr126, %add_token_u8.exit66.do.body_crit_edge ], [ -34, %do.end.i.i73 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @activate_lsp.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@activate_lsp, %if.then17)) #6
          to label %cleanup [label %if.then17], !srcloc !392

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @activate_lsp.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.141) #6
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %77 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %hsn.i, align 4
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %79 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tsn.i, align 8
  %call.i78 = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %78, i32 noundef %80) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79 = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i79, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@activate_lsp, %if.then5.i)) #6
          to label %cleanup [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i78) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @parse_and_check_status) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i, %if.then17, %do.body
  %retval.0 = phi i32 [ %76, %do.body ], [ %76, %if.then17 ], [ %call7.i, %if.end6.i ], [ %call.i78, %if.then5.i ], [ %call.i78, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_new_pw(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %cpin_uid = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cpin_uid) #6
  %0 = getelementptr inbounds [8 x i8], ptr %cpin_uid, i32 0, i32 7
  %1 = ptrtoint ptr %cpin_uid to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 47244705793, ptr %cpin_uid, align 8
  %who = getelementptr inbounds %struct.opal_session_info, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %who to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %who, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %4 = getelementptr inbounds [8 x i8], ptr %cpin_uid, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %4, align 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %opal_key = getelementptr inbounds %struct.opal_session_info, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %opal_key to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %opal_key, align 4
  %add = add i8 %9, 1
  br label %if.end7.sink.split

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = trunc i32 %3 to i8
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.else, %if.then1
  %add.sink = phi i8 [ %add, %if.then1 ], [ %conv5, %if.else ]
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %add.sink, ptr %0, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %entry.if.end7_crit_edge
  %key = getelementptr inbounds %struct.opal_session_info, ptr %data, i32 0, i32 2, i32 3
  %key_len = getelementptr inbounds %struct.opal_session_info, ptr %data, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %key_len, align 1
  %conv11 = zext i8 %12 to i32
  %call = call fastcc i32 @generic_pw_cmd(ptr noundef %key, i32 noundef %conv11, ptr noundef nonnull %cpin_uid, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool13.not = icmp eq i32 %call, 0
  br i1 %tobool13.not, label %if.end21, label %do.body

do.body:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_new_pw.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_new_pw, %if.then19)) #6
          to label %cleanup [label %if.then19], !srcloc !392

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_new_pw.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.144) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end7
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %13 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hsn.i, align 4
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %15 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tsn.i, align 8
  %call.i = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %14, i32 noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_new_pw, %if.then5.i)) #6
          to label %cleanup [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @parse_and_check_status) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i, %if.then19, %do.body
  %retval.0 = phi i32 [ -34, %if.then19 ], [ -34, %do.body ], [ %call7.i, %if.end6.i ], [ %call.i, %if.then5.i ], [ %call.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cpin_uid) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @internal_activate_user(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %uid = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uid) #6
  %0 = getelementptr inbounds [8 x i8], ptr %uid, i32 0, i32 7
  %1 = ptrtoint ptr %uid to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 38654902273, ptr %uid, align 8
  %who = getelementptr inbounds %struct.opal_session_info, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %who to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %who, align 4
  %conv = trunc i32 %3 to i8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %0, align 1
  %call = call fastcc i32 @cmd_start(ptr noundef %dev, ptr noundef nonnull %uid, ptr noundef getelementptr inbounds ([16 x [8 x i8]], ptr @opalmethod, i32 0, i32 12))
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not.i.i = icmp eq i32 %call, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i.i:                                       ; preds = %entry
  %pos.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %5 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 2048
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end.i.i24

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@internal_activate_user, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i24:                                     ; preds = %if.end.i.i
  %inc.i = add i32 %6, 1
  %7 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc.i, ptr %pos.i.i.i, align 8
  %arrayidx.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %6
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -14, ptr %arrayidx.i, align 1
  %9 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %9)
  %cmp.i.i23 = icmp eq i32 %9, 2048
  br i1 %cmp.i.i23, label %do.body.i.i25, label %if.end.i.i35

do.body.i.i25:                                    ; preds = %if.end.i.i24
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@internal_activate_user, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i35:                                     ; preds = %if.end.i.i24
  %inc.i28 = add i32 %9, 1
  %10 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc.i28, ptr %pos.i.i.i, align 8
  %arrayidx.i29 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %9
  %11 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx.i29, align 1
  %12 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %12)
  %cmp.i.i34 = icmp eq i32 %12, 2048
  br i1 %cmp.i.i34, label %do.body.i.i36, label %if.end.i.i46

do.body.i.i36:                                    ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@internal_activate_user, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i46:                                     ; preds = %if.end.i.i35
  %inc.i39 = add i32 %12, 1
  %13 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %inc.i39, ptr %pos.i.i.i, align 8
  %arrayidx.i40 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %12
  %14 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -16, ptr %arrayidx.i40, align 1
  %15 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %15)
  %cmp.i.i45 = icmp eq i32 %15, 2048
  br i1 %cmp.i.i45, label %do.body.i.i47, label %if.end.i.i57

do.body.i.i47:                                    ; preds = %if.end.i.i46
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@internal_activate_user, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i57:                                     ; preds = %if.end.i.i46
  %inc.i50 = add i32 %15, 1
  %16 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc.i50, ptr %pos.i.i.i, align 8
  %arrayidx.i51 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %15
  %17 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -14, ptr %arrayidx.i51, align 1
  %18 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %18)
  %cmp.i.i56 = icmp eq i32 %18, 2048
  br i1 %cmp.i.i56, label %do.body.i.i58, label %if.end.i.i68

do.body.i.i58:                                    ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@internal_activate_user, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i68:                                     ; preds = %if.end.i.i57
  %inc.i61 = add i32 %18, 1
  %19 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %inc.i61, ptr %pos.i.i.i, align 8
  %arrayidx.i62 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %18
  %20 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 5, ptr %arrayidx.i62, align 1
  %21 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %21)
  %cmp.i.i67 = icmp eq i32 %21, 2048
  br i1 %cmp.i.i67, label %do.body.i.i69, label %if.end.i.i79

do.body.i.i69:                                    ; preds = %if.end.i.i68
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@internal_activate_user, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i79:                                     ; preds = %if.end.i.i68
  %inc.i72 = add i32 %21, 1
  %22 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc.i72, ptr %pos.i.i.i, align 8
  %arrayidx.i73 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %21
  %23 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %arrayidx.i73, align 1
  %24 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %24)
  %cmp.i.i78 = icmp eq i32 %24, 2048
  br i1 %cmp.i.i78, label %do.body.i.i80, label %if.end.i.i90

do.body.i.i80:                                    ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@internal_activate_user, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i90:                                     ; preds = %if.end.i.i79
  %inc.i83 = add i32 %24, 1
  %25 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %inc.i83, ptr %pos.i.i.i, align 8
  %arrayidx.i84 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %24
  %26 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -13, ptr %arrayidx.i84, align 1
  %27 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %27)
  %cmp.i.i89 = icmp eq i32 %27, 2048
  br i1 %cmp.i.i89, label %do.body.i.i91, label %if.end.i.i101

do.body.i.i91:                                    ; preds = %if.end.i.i90
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@internal_activate_user, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i101:                                    ; preds = %if.end.i.i90
  %inc.i94 = add i32 %27, 1
  %28 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc.i94, ptr %pos.i.i.i, align 8
  %arrayidx.i95 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %27
  %29 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -15, ptr %arrayidx.i95, align 1
  %30 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %30)
  %cmp.i.i100 = icmp eq i32 %30, 2048
  br i1 %cmp.i.i100, label %do.body.i.i102, label %if.end7

do.body.i.i102:                                   ; preds = %if.end.i.i101
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@internal_activate_user, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

do.body.sink.split:                               ; preds = %do.body.i.i102, %do.body.i.i91, %do.body.i.i80, %do.body.i.i69, %do.body.i.i58, %do.body.i.i47, %do.body.i.i36, %do.body.i.i25, %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %do.body.i.i102, %do.body.i.i91, %do.body.i.i80, %do.body.i.i69, %do.body.i.i58, %do.body.i.i47, %do.body.i.i36, %do.body.i.i25, %do.body.i.i, %entry.do.body_crit_edge
  %err.8170 = phi i32 [ -34, %do.body.i.i ], [ -34, %do.body.i.i25 ], [ -34, %do.body.i.i36 ], [ -34, %do.body.i.i47 ], [ -34, %do.body.i.i58 ], [ -34, %do.body.i.i69 ], [ -34, %do.body.i.i80 ], [ -34, %do.body.i.i91 ], [ -34, %do.body.i.i102 ], [ %call, %entry.do.body_crit_edge ], [ -34, %do.body.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @internal_activate_user.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@internal_activate_user, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !392

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @internal_activate_user.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.150) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end.i.i101
  %inc.i105 = add i32 %30, 1
  %31 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %inc.i105, ptr %pos.i.i.i, align 8
  %arrayidx.i106 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %30
  %32 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -13, ptr %arrayidx.i106, align 1
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %33 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hsn.i, align 4
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %35 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tsn.i, align 8
  %call.i = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %34, i32 noundef %36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@internal_activate_user, %if.then5.i)) #6
          to label %cleanup [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @parse_and_check_status) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i, %if.then6, %do.body
  %retval.0 = phi i32 [ %err.8170, %do.body ], [ %err.8170, %if.then6 ], [ %call7.i, %if.end6.i ], [ %call.i, %if.then5.i ], [ %call.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uid) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @revert_tper(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cmd_start(ptr noundef %dev, ptr noundef getelementptr inbounds ([30 x [8 x i8]], ptr @opaluid, i32 0, i32 2), ptr noundef getelementptr inbounds ([16 x [8 x i8]], ptr @opalmethod, i32 0, i32 2))
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @revert_tper.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@revert_tper, %if.then5)) #6
          to label %cleanup [label %if.then5], !srcloc !392

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @revert_tper.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.153) #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hsn.i, align 4
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tsn.i, align 8
  %call.i = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %1, i32 noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@revert_tper, %if.then5.i)) #6
          to label %cleanup [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @parse_and_check_status) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i, %if.then5, %do.body
  %retval.0 = phi i32 [ %call, %if.then5 ], [ %call, %do.body ], [ %call7.i, %if.end6.i ], [ %call.i, %if.then5.i ], [ %call.i, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_PSID_opal_session(ptr noundef %dev, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.opal_key, ptr %data, i32 0, i32 3
  %key_len = getelementptr inbounds %struct.opal_key, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %key_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key_len, align 1
  %call = tail call fastcc i32 @start_generic_opal_session(ptr noundef %dev, i32 noundef 10, i32 noundef 2, ptr noundef %key, i8 noundef zeroext %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @setup_locking_range(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %uid = alloca [8 x i8], align 8
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uid) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #6
  %opal_key = getelementptr inbounds %struct.opal_user_lr_setup, ptr %data, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %opal_key to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %opal_key, align 8
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 8804682956801, ptr %uid, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp5.i = icmp eq i8 %1, 0
  br i1 %cmp5.i, label %if.then3, label %if.else

if.then3:                                         ; preds = %entry
  %3 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %err, align 4
  %RLE.i = getelementptr inbounds %struct.opal_user_lr_setup, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %RLE.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %RLE.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i = icmp ne i32 %5, 0
  %WLE.i = getelementptr inbounds %struct.opal_user_lr_setup, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %WLE.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %WLE.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.i = icmp ne i32 %7, 0
  %call.i = call fastcc i32 @generic_lr_enable_disable(ptr noundef %dev, ptr noundef nonnull %uid, i1 noundef zeroext %tobool.i, i1 noundef zeroext %tobool2.i, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.then3.enable_global_lr.exit_crit_edge, label %do.body.i

if.then3.enable_global_lr.exit_crit_edge:         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %enable_global_lr.exit

do.body.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enable_global_lr.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then11.i)) #6
          to label %enable_global_lr.exit [label %if.then11.i], !srcloc !392

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @enable_global_lr.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.159) #6
  br label %enable_global_lr.exit

enable_global_lr.exit:                            ; preds = %if.then11.i, %do.body.i, %if.then3.enable_global_lr.exit_crit_edge
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i, ptr %err, align 4
  br label %if.end17

if.else:                                          ; preds = %entry
  %9 = getelementptr inbounds [8 x i8], ptr %uid, i32 0, i32 7
  %10 = getelementptr inbounds [8 x i8], ptr %uid, i32 0, i32 5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %10, align 1
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %1, ptr %9, align 1
  %13 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %err, align 4
  %call7 = call fastcc i32 @cmd_start(ptr noundef %dev, ptr noundef nonnull %uid, ptr noundef getelementptr inbounds ([16 x [8 x i8]], ptr @opalmethod, i32 0, i32 12))
  %14 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call7, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not.i.i = icmp eq i32 %call7, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else.add_token_u8.exit107_crit_edge

if.else.add_token_u8.exit107_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit107

if.end.i.i:                                       ; preds = %if.else
  %pos.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %15 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 2048
  br i1 %cmp.i.i, label %do.body.i.i, label %add_token_u8.exit

do.body.i.i:                                      ; preds = %if.end.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then6.i.i)) #6
          to label %do.end.i.i [label %if.then6.i.i], !srcloc !392

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i, %do.body.i.i
  %17 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit107

add_token_u8.exit:                                ; preds = %if.end.i.i
  %inc.i = add i32 %16, 1
  %18 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %inc.i, ptr %pos.i.i.i, align 8
  %arrayidx.i63 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %16
  %19 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -14, ptr %arrayidx.i63, align 1
  %20 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i.i64 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i.i64, label %if.end.i.i67, label %add_token_u8.exit.add_token_u8.exit107_crit_edge

add_token_u8.exit.add_token_u8.exit107_crit_edge: ; preds = %add_token_u8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit107

if.end.i.i67:                                     ; preds = %add_token_u8.exit
  %21 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %22)
  %cmp.i.i66 = icmp eq i32 %22, 2048
  br i1 %cmp.i.i66, label %do.body.i.i68, label %add_token_u8.exit74

do.body.i.i68:                                    ; preds = %if.end.i.i67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then6.i.i69)) #6
          to label %do.end.i.i70 [label %if.then6.i.i69], !srcloc !392

if.then6.i.i69:                                   ; preds = %do.body.i.i68
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i70

do.end.i.i70:                                     ; preds = %if.then6.i.i69, %do.body.i.i68
  %23 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit107

add_token_u8.exit74:                              ; preds = %if.end.i.i67
  %inc.i71 = add i32 %22, 1
  %24 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %inc.i71, ptr %pos.i.i.i, align 8
  %arrayidx.i72 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %22
  %25 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %arrayidx.i72, align 1
  %26 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr244.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr244.pr)
  %tobool.not.i.i75 = icmp eq i32 %.pr244.pr, 0
  br i1 %tobool.not.i.i75, label %if.end.i.i78, label %add_token_u8.exit74.add_token_u8.exit107_crit_edge

add_token_u8.exit74.add_token_u8.exit107_crit_edge: ; preds = %add_token_u8.exit74
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit107

if.end.i.i78:                                     ; preds = %add_token_u8.exit74
  %27 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %28)
  %cmp.i.i77 = icmp eq i32 %28, 2048
  br i1 %cmp.i.i77, label %do.body.i.i79, label %add_token_u8.exit85

do.body.i.i79:                                    ; preds = %if.end.i.i78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then6.i.i80)) #6
          to label %do.end.i.i81 [label %if.then6.i.i80], !srcloc !392

if.then6.i.i80:                                   ; preds = %do.body.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i81

do.end.i.i81:                                     ; preds = %if.then6.i.i80, %do.body.i.i79
  %29 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit107

add_token_u8.exit85:                              ; preds = %if.end.i.i78
  %inc.i82 = add i32 %28, 1
  %30 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %inc.i82, ptr %pos.i.i.i, align 8
  %arrayidx.i83 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %28
  %31 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -16, ptr %arrayidx.i83, align 1
  %32 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr246.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr246.pr)
  %tobool.not.i.i86 = icmp eq i32 %.pr246.pr, 0
  br i1 %tobool.not.i.i86, label %if.end.i.i89, label %add_token_u8.exit85.add_token_u8.exit107_crit_edge

add_token_u8.exit85.add_token_u8.exit107_crit_edge: ; preds = %add_token_u8.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit107

if.end.i.i89:                                     ; preds = %add_token_u8.exit85
  %33 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %34)
  %cmp.i.i88 = icmp eq i32 %34, 2048
  br i1 %cmp.i.i88, label %do.body.i.i90, label %add_token_u8.exit96

do.body.i.i90:                                    ; preds = %if.end.i.i89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then6.i.i91)) #6
          to label %do.end.i.i92 [label %if.then6.i.i91], !srcloc !392

if.then6.i.i91:                                   ; preds = %do.body.i.i90
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i92

do.end.i.i92:                                     ; preds = %if.then6.i.i91, %do.body.i.i90
  %35 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit107

add_token_u8.exit96:                              ; preds = %if.end.i.i89
  %inc.i93 = add i32 %34, 1
  %36 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %inc.i93, ptr %pos.i.i.i, align 8
  %arrayidx.i94 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %34
  %37 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -14, ptr %arrayidx.i94, align 1
  %38 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr248.pr.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr248.pr.pr)
  %tobool.not.i.i97 = icmp eq i32 %.pr248.pr.pr, 0
  br i1 %tobool.not.i.i97, label %if.end.i.i100, label %add_token_u8.exit96.add_token_u8.exit107_crit_edge

add_token_u8.exit96.add_token_u8.exit107_crit_edge: ; preds = %add_token_u8.exit96
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit107

if.end.i.i100:                                    ; preds = %add_token_u8.exit96
  %39 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %40)
  %cmp.i.i99 = icmp eq i32 %40, 2048
  br i1 %cmp.i.i99, label %do.body.i.i101, label %if.end.i106

do.body.i.i101:                                   ; preds = %if.end.i.i100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then6.i.i102)) #6
          to label %do.end.i.i103 [label %if.then6.i.i102], !srcloc !392

if.then6.i.i102:                                  ; preds = %do.body.i.i101
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i103

do.end.i.i103:                                    ; preds = %if.then6.i.i102, %do.body.i.i101
  %41 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit107

if.end.i106:                                      ; preds = %if.end.i.i100
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i104 = add i32 %40, 1
  %42 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %inc.i104, ptr %pos.i.i.i, align 8
  %arrayidx.i105 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %40
  %43 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 3, ptr %arrayidx.i105, align 1
  br label %add_token_u8.exit107

add_token_u8.exit107:                             ; preds = %if.end.i106, %do.end.i.i103, %add_token_u8.exit96.add_token_u8.exit107_crit_edge, %do.end.i.i92, %add_token_u8.exit85.add_token_u8.exit107_crit_edge, %do.end.i.i81, %add_token_u8.exit74.add_token_u8.exit107_crit_edge, %do.end.i.i70, %add_token_u8.exit.add_token_u8.exit107_crit_edge, %do.end.i.i, %if.else.add_token_u8.exit107_crit_edge
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %data, align 8
  call fastcc void @add_token_u64(ptr noundef nonnull %err, ptr noundef %dev, i64 noundef %45)
  %46 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i108 = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i108, label %if.end.i.i111, label %add_token_u8.exit107.add_token_u8.exit140_crit_edge

add_token_u8.exit107.add_token_u8.exit140_crit_edge: ; preds = %add_token_u8.exit107
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit140

if.end.i.i111:                                    ; preds = %add_token_u8.exit107
  %pos.i.i.i109 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %48 = ptrtoint ptr %pos.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pos.i.i.i109, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %49)
  %cmp.i.i110 = icmp eq i32 %49, 2048
  br i1 %cmp.i.i110, label %do.body.i.i112, label %add_token_u8.exit118

do.body.i.i112:                                   ; preds = %if.end.i.i111
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then6.i.i113)) #6
          to label %do.end.i.i114 [label %if.then6.i.i113], !srcloc !392

if.then6.i.i113:                                  ; preds = %do.body.i.i112
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i114

do.end.i.i114:                                    ; preds = %if.then6.i.i113, %do.body.i.i112
  %50 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit140

add_token_u8.exit118:                             ; preds = %if.end.i.i111
  %inc.i115 = add i32 %49, 1
  %51 = ptrtoint ptr %pos.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %inc.i115, ptr %pos.i.i.i109, align 8
  %arrayidx.i116 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %49
  %52 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -13, ptr %arrayidx.i116, align 1
  %53 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr250 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr250)
  %tobool.not.i.i119 = icmp eq i32 %.pr250, 0
  br i1 %tobool.not.i.i119, label %if.end.i.i122, label %add_token_u8.exit118.add_token_u8.exit140_crit_edge

add_token_u8.exit118.add_token_u8.exit140_crit_edge: ; preds = %add_token_u8.exit118
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit140

if.end.i.i122:                                    ; preds = %add_token_u8.exit118
  %54 = ptrtoint ptr %pos.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pos.i.i.i109, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %55)
  %cmp.i.i121 = icmp eq i32 %55, 2048
  br i1 %cmp.i.i121, label %do.body.i.i123, label %add_token_u8.exit129

do.body.i.i123:                                   ; preds = %if.end.i.i122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then6.i.i124)) #6
          to label %do.end.i.i125 [label %if.then6.i.i124], !srcloc !392

if.then6.i.i124:                                  ; preds = %do.body.i.i123
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i125

do.end.i.i125:                                    ; preds = %if.then6.i.i124, %do.body.i.i123
  %56 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit140

add_token_u8.exit129:                             ; preds = %if.end.i.i122
  %inc.i126 = add i32 %55, 1
  %57 = ptrtoint ptr %pos.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %inc.i126, ptr %pos.i.i.i109, align 8
  %arrayidx.i127 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %55
  %58 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -14, ptr %arrayidx.i127, align 1
  %59 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr252.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr252.pr)
  %tobool.not.i.i130 = icmp eq i32 %.pr252.pr, 0
  br i1 %tobool.not.i.i130, label %if.end.i.i133, label %add_token_u8.exit129.add_token_u8.exit140_crit_edge

add_token_u8.exit129.add_token_u8.exit140_crit_edge: ; preds = %add_token_u8.exit129
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit140

if.end.i.i133:                                    ; preds = %add_token_u8.exit129
  %60 = ptrtoint ptr %pos.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pos.i.i.i109, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %61)
  %cmp.i.i132 = icmp eq i32 %61, 2048
  br i1 %cmp.i.i132, label %do.body.i.i134, label %if.end.i139

do.body.i.i134:                                   ; preds = %if.end.i.i133
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then6.i.i135)) #6
          to label %do.end.i.i136 [label %if.then6.i.i135], !srcloc !392

if.then6.i.i135:                                  ; preds = %do.body.i.i134
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i136

do.end.i.i136:                                    ; preds = %if.then6.i.i135, %do.body.i.i134
  %62 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit140

if.end.i139:                                      ; preds = %if.end.i.i133
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i137 = add i32 %61, 1
  %63 = ptrtoint ptr %pos.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %inc.i137, ptr %pos.i.i.i109, align 8
  %arrayidx.i138 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %61
  %64 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 4, ptr %arrayidx.i138, align 1
  br label %add_token_u8.exit140

add_token_u8.exit140:                             ; preds = %if.end.i139, %do.end.i.i136, %add_token_u8.exit129.add_token_u8.exit140_crit_edge, %do.end.i.i125, %add_token_u8.exit118.add_token_u8.exit140_crit_edge, %do.end.i.i114, %add_token_u8.exit107.add_token_u8.exit140_crit_edge
  %range_length = getelementptr inbounds %struct.opal_user_lr_setup, ptr %data, i32 0, i32 1
  %65 = ptrtoint ptr %range_length to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %range_length, align 8
  call fastcc void @add_token_u64(ptr noundef nonnull %err, ptr noundef %dev, i64 noundef %66)
  %67 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i.i141 = icmp eq i32 %68, 0
  br i1 %tobool.not.i.i141, label %if.end.i.i144, label %add_token_u8.exit140.add_token_u8.exit173_crit_edge

add_token_u8.exit140.add_token_u8.exit173_crit_edge: ; preds = %add_token_u8.exit140
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit173

if.end.i.i144:                                    ; preds = %add_token_u8.exit140
  %pos.i.i.i142 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %69 = ptrtoint ptr %pos.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pos.i.i.i142, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %70)
  %cmp.i.i143 = icmp eq i32 %70, 2048
  br i1 %cmp.i.i143, label %do.body.i.i145, label %add_token_u8.exit151

do.body.i.i145:                                   ; preds = %if.end.i.i144
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then6.i.i146)) #6
          to label %do.end.i.i147 [label %if.then6.i.i146], !srcloc !392

if.then6.i.i146:                                  ; preds = %do.body.i.i145
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i147

do.end.i.i147:                                    ; preds = %if.then6.i.i146, %do.body.i.i145
  %71 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit173

add_token_u8.exit151:                             ; preds = %if.end.i.i144
  %inc.i148 = add i32 %70, 1
  %72 = ptrtoint ptr %pos.i.i.i142 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %inc.i148, ptr %pos.i.i.i142, align 8
  %arrayidx.i149 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %70
  %73 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -13, ptr %arrayidx.i149, align 1
  %74 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr254 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr254)
  %tobool.not.i.i152 = icmp eq i32 %.pr254, 0
  br i1 %tobool.not.i.i152, label %if.end.i.i155, label %add_token_u8.exit151.add_token_u8.exit173_crit_edge

add_token_u8.exit151.add_token_u8.exit173_crit_edge: ; preds = %add_token_u8.exit151
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit173

if.end.i.i155:                                    ; preds = %add_token_u8.exit151
  %75 = ptrtoint ptr %pos.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pos.i.i.i142, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %76)
  %cmp.i.i154 = icmp eq i32 %76, 2048
  br i1 %cmp.i.i154, label %do.body.i.i156, label %add_token_u8.exit162

do.body.i.i156:                                   ; preds = %if.end.i.i155
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then6.i.i157)) #6
          to label %do.end.i.i158 [label %if.then6.i.i157], !srcloc !392

if.then6.i.i157:                                  ; preds = %do.body.i.i156
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i158

do.end.i.i158:                                    ; preds = %if.then6.i.i157, %do.body.i.i156
  %77 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit173

add_token_u8.exit162:                             ; preds = %if.end.i.i155
  %inc.i159 = add i32 %76, 1
  %78 = ptrtoint ptr %pos.i.i.i142 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %inc.i159, ptr %pos.i.i.i142, align 8
  %arrayidx.i160 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %76
  %79 = ptrtoint ptr %arrayidx.i160 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -14, ptr %arrayidx.i160, align 1
  %80 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pr256.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr256.pr)
  %tobool.not.i.i163 = icmp eq i32 %.pr256.pr, 0
  br i1 %tobool.not.i.i163, label %if.end.i.i166, label %add_token_u8.exit162.add_token_u8.exit173_crit_edge

add_token_u8.exit162.add_token_u8.exit173_crit_edge: ; preds = %add_token_u8.exit162
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit173

if.end.i.i166:                                    ; preds = %add_token_u8.exit162
  %81 = ptrtoint ptr %pos.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pos.i.i.i142, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %82)
  %cmp.i.i165 = icmp eq i32 %82, 2048
  br i1 %cmp.i.i165, label %do.body.i.i167, label %if.end.i172

do.body.i.i167:                                   ; preds = %if.end.i.i166
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then6.i.i168)) #6
          to label %do.end.i.i169 [label %if.then6.i.i168], !srcloc !392

if.then6.i.i168:                                  ; preds = %do.body.i.i167
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i169

do.end.i.i169:                                    ; preds = %if.then6.i.i168, %do.body.i.i167
  %83 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit173

if.end.i172:                                      ; preds = %if.end.i.i166
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i170 = add i32 %82, 1
  %84 = ptrtoint ptr %pos.i.i.i142 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %inc.i170, ptr %pos.i.i.i142, align 8
  %arrayidx.i171 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %82
  %85 = ptrtoint ptr %arrayidx.i171 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 5, ptr %arrayidx.i171, align 1
  br label %add_token_u8.exit173

add_token_u8.exit173:                             ; preds = %if.end.i172, %do.end.i.i169, %add_token_u8.exit162.add_token_u8.exit173_crit_edge, %do.end.i.i158, %add_token_u8.exit151.add_token_u8.exit173_crit_edge, %do.end.i.i147, %add_token_u8.exit140.add_token_u8.exit173_crit_edge
  %RLE = getelementptr inbounds %struct.opal_user_lr_setup, ptr %data, i32 0, i32 2
  %86 = ptrtoint ptr %RLE to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %RLE, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool8 = icmp ne i32 %87, 0
  %88 = zext i1 %tobool8 to i64
  call fastcc void @add_token_u64(ptr noundef nonnull %err, ptr noundef %dev, i64 noundef %88)
  %89 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i.i174 = icmp eq i32 %90, 0
  br i1 %tobool.not.i.i174, label %if.end.i.i177, label %add_token_u8.exit173.add_token_u8.exit206_crit_edge

add_token_u8.exit173.add_token_u8.exit206_crit_edge: ; preds = %add_token_u8.exit173
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit206

if.end.i.i177:                                    ; preds = %add_token_u8.exit173
  %pos.i.i.i175 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %91 = ptrtoint ptr %pos.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pos.i.i.i175, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %92)
  %cmp.i.i176 = icmp eq i32 %92, 2048
  br i1 %cmp.i.i176, label %do.body.i.i178, label %add_token_u8.exit184

do.body.i.i178:                                   ; preds = %if.end.i.i177
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then6.i.i179)) #6
          to label %do.end.i.i180 [label %if.then6.i.i179], !srcloc !392

if.then6.i.i179:                                  ; preds = %do.body.i.i178
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i180

do.end.i.i180:                                    ; preds = %if.then6.i.i179, %do.body.i.i178
  %93 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit206

add_token_u8.exit184:                             ; preds = %if.end.i.i177
  %inc.i181 = add i32 %92, 1
  %94 = ptrtoint ptr %pos.i.i.i175 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %inc.i181, ptr %pos.i.i.i175, align 8
  %arrayidx.i182 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %92
  %95 = ptrtoint ptr %arrayidx.i182 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -13, ptr %arrayidx.i182, align 1
  %96 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pr258 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr258)
  %tobool.not.i.i185 = icmp eq i32 %.pr258, 0
  br i1 %tobool.not.i.i185, label %if.end.i.i188, label %add_token_u8.exit184.add_token_u8.exit206_crit_edge

add_token_u8.exit184.add_token_u8.exit206_crit_edge: ; preds = %add_token_u8.exit184
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit206

if.end.i.i188:                                    ; preds = %add_token_u8.exit184
  %97 = ptrtoint ptr %pos.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pos.i.i.i175, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %98)
  %cmp.i.i187 = icmp eq i32 %98, 2048
  br i1 %cmp.i.i187, label %do.body.i.i189, label %add_token_u8.exit195

do.body.i.i189:                                   ; preds = %if.end.i.i188
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then6.i.i190)) #6
          to label %do.end.i.i191 [label %if.then6.i.i190], !srcloc !392

if.then6.i.i190:                                  ; preds = %do.body.i.i189
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i191

do.end.i.i191:                                    ; preds = %if.then6.i.i190, %do.body.i.i189
  %99 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit206

add_token_u8.exit195:                             ; preds = %if.end.i.i188
  %inc.i192 = add i32 %98, 1
  %100 = ptrtoint ptr %pos.i.i.i175 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %inc.i192, ptr %pos.i.i.i175, align 8
  %arrayidx.i193 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %98
  %101 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -14, ptr %arrayidx.i193, align 1
  %102 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pr260.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr260.pr)
  %tobool.not.i.i196 = icmp eq i32 %.pr260.pr, 0
  br i1 %tobool.not.i.i196, label %if.end.i.i199, label %add_token_u8.exit195.add_token_u8.exit206_crit_edge

add_token_u8.exit195.add_token_u8.exit206_crit_edge: ; preds = %add_token_u8.exit195
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit206

if.end.i.i199:                                    ; preds = %add_token_u8.exit195
  %103 = ptrtoint ptr %pos.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pos.i.i.i175, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %104)
  %cmp.i.i198 = icmp eq i32 %104, 2048
  br i1 %cmp.i.i198, label %do.body.i.i200, label %if.end.i205

do.body.i.i200:                                   ; preds = %if.end.i.i199
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then6.i.i201)) #6
          to label %do.end.i.i202 [label %if.then6.i.i201], !srcloc !392

if.then6.i.i201:                                  ; preds = %do.body.i.i200
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i202

do.end.i.i202:                                    ; preds = %if.then6.i.i201, %do.body.i.i200
  %105 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit206

if.end.i205:                                      ; preds = %if.end.i.i199
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i203 = add i32 %104, 1
  %106 = ptrtoint ptr %pos.i.i.i175 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %inc.i203, ptr %pos.i.i.i175, align 8
  %arrayidx.i204 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %104
  %107 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 6, ptr %arrayidx.i204, align 1
  br label %add_token_u8.exit206

add_token_u8.exit206:                             ; preds = %if.end.i205, %do.end.i.i202, %add_token_u8.exit195.add_token_u8.exit206_crit_edge, %do.end.i.i191, %add_token_u8.exit184.add_token_u8.exit206_crit_edge, %do.end.i.i180, %add_token_u8.exit173.add_token_u8.exit206_crit_edge
  %WLE = getelementptr inbounds %struct.opal_user_lr_setup, ptr %data, i32 0, i32 3
  %108 = ptrtoint ptr %WLE to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %WLE, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool11 = icmp ne i32 %109, 0
  %110 = zext i1 %tobool11 to i64
  call fastcc void @add_token_u64(ptr noundef nonnull %err, ptr noundef %dev, i64 noundef %110)
  %111 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i.i207 = icmp eq i32 %112, 0
  br i1 %tobool.not.i.i207, label %if.end.i.i210, label %add_token_u8.exit206.do.body_crit_edge

add_token_u8.exit206.do.body_crit_edge:           ; preds = %add_token_u8.exit206
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i.i210:                                    ; preds = %add_token_u8.exit206
  %pos.i.i.i208 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %113 = ptrtoint ptr %pos.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pos.i.i.i208, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %114)
  %cmp.i.i209 = icmp eq i32 %114, 2048
  br i1 %cmp.i.i209, label %do.body.i.i211, label %add_token_u8.exit217

do.body.i.i211:                                   ; preds = %if.end.i.i210
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then6.i.i212)) #6
          to label %do.end.i.i213 [label %if.then6.i.i212], !srcloc !392

if.then6.i.i212:                                  ; preds = %do.body.i.i211
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i213

do.end.i.i213:                                    ; preds = %if.then6.i.i212, %do.body.i.i211
  %115 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 -34, ptr %err, align 4
  br label %do.body

add_token_u8.exit217:                             ; preds = %if.end.i.i210
  %inc.i214 = add i32 %114, 1
  %116 = ptrtoint ptr %pos.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %inc.i214, ptr %pos.i.i.i208, align 8
  %arrayidx.i215 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %114
  %117 = ptrtoint ptr %arrayidx.i215 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -13, ptr %arrayidx.i215, align 1
  %118 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pr262 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr262)
  %tobool.not.i.i218 = icmp eq i32 %.pr262, 0
  br i1 %tobool.not.i.i218, label %if.end.i.i221, label %add_token_u8.exit217.if.end17thread-pre-split_crit_edge

add_token_u8.exit217.if.end17thread-pre-split_crit_edge: ; preds = %add_token_u8.exit217
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17thread-pre-split

if.end.i.i221:                                    ; preds = %add_token_u8.exit217
  %119 = ptrtoint ptr %pos.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pos.i.i.i208, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %120)
  %cmp.i.i220 = icmp eq i32 %120, 2048
  br i1 %cmp.i.i220, label %do.body.i.i222, label %add_token_u8.exit228

do.body.i.i222:                                   ; preds = %if.end.i.i221
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then6.i.i223)) #6
          to label %do.end.i.i224 [label %if.then6.i.i223], !srcloc !392

if.then6.i.i223:                                  ; preds = %do.body.i.i222
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i224

do.end.i.i224:                                    ; preds = %if.then6.i.i223, %do.body.i.i222
  %121 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -34, ptr %err, align 4
  br label %if.end17thread-pre-split

add_token_u8.exit228:                             ; preds = %if.end.i.i221
  %inc.i225 = add i32 %120, 1
  %122 = ptrtoint ptr %pos.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %inc.i225, ptr %pos.i.i.i208, align 8
  %arrayidx.i226 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %120
  %123 = ptrtoint ptr %arrayidx.i226 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -15, ptr %arrayidx.i226, align 1
  %124 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pr264.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr264.pr)
  %tobool.not.i.i229 = icmp eq i32 %.pr264.pr, 0
  br i1 %tobool.not.i.i229, label %if.end.i.i232, label %add_token_u8.exit228.do.body_crit_edge

add_token_u8.exit228.do.body_crit_edge:           ; preds = %add_token_u8.exit228
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i.i232:                                    ; preds = %add_token_u8.exit228
  %125 = ptrtoint ptr %pos.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %pos.i.i.i208, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %126)
  %cmp.i.i231 = icmp eq i32 %126, 2048
  br i1 %cmp.i.i231, label %do.body.i.i233, label %if.end.i238

do.body.i.i233:                                   ; preds = %if.end.i.i232
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then6.i.i234)) #6
          to label %do.end.i.i235 [label %if.then6.i.i234], !srcloc !392

if.then6.i.i234:                                  ; preds = %do.body.i.i233
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i235

do.end.i.i235:                                    ; preds = %if.then6.i.i234, %do.body.i.i233
  %127 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -34, ptr %err, align 4
  br label %do.body

if.end.i238:                                      ; preds = %if.end.i.i232
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i236 = add i32 %126, 1
  %128 = ptrtoint ptr %pos.i.i.i208 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %inc.i236, ptr %pos.i.i.i208, align 8
  %arrayidx.i237 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %126
  %129 = ptrtoint ptr %arrayidx.i237 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -13, ptr %arrayidx.i237, align 1
  br label %if.end17thread-pre-split

if.end17thread-pre-split:                         ; preds = %if.end.i238, %do.end.i.i224, %add_token_u8.exit217.if.end17thread-pre-split_crit_edge
  %130 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pr266 = load i32, ptr %err, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end17thread-pre-split, %enable_global_lr.exit
  %131 = phi i32 [ %.pr266, %if.end17thread-pre-split ], [ %call.i, %enable_global_lr.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool18.not = icmp eq i32 %131, 0
  br i1 %tobool18.not, label %if.end29, label %if.end17.do.body_crit_edge

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %if.end17.do.body_crit_edge, %do.end.i.i235, %add_token_u8.exit228.do.body_crit_edge, %do.end.i.i213, %add_token_u8.exit206.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_locking_range.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then27)) #6
          to label %do.end [label %if.then27], !srcloc !392

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @setup_locking_range.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.156) #6
  br label %do.end

do.end:                                           ; preds = %if.then27, %do.body
  %132 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %err, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end17
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %134 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %hsn.i, align 4
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %136 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %tsn.i, align 8
  %call.i240 = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %135, i32 noundef %137) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %tobool.not.i = icmp eq i32 %call.i240, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i241

do.body.i241:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_locking_range, %if.then5.i)) #6
          to label %cleanup [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i241
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i240) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @parse_and_check_status) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i241, %do.end
  %retval.0 = phi i32 [ %133, %do.end ], [ %call7.i, %if.end6.i ], [ %call.i240, %if.then5.i ], [ %call.i240, %do.body.i241 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uid) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @add_user_to_lr(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %lr_buffer = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lr_buffer) #6
  %0 = getelementptr inbounds [8 x i8], ptr %lr_buffer, i32 0, i32 7
  %l_state = getelementptr inbounds %struct.opal_lock_unlock, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %l_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %l_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  %spec.store.select = select i1 %cmp, i64 34359994369, i64 34359992321
  %3 = ptrtoint ptr %lr_buffer to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %spec.store.select, ptr %lr_buffer, align 8
  %opal_key = getelementptr inbounds %struct.opal_session_info, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %opal_key to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %opal_key, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %0, align 1
  %who = getelementptr inbounds %struct.opal_session_info, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %who to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %who, align 4
  %conv = trunc i32 %8 to i8
  %call = call fastcc i32 @cmd_start(ptr noundef %dev, ptr noundef nonnull %lr_buffer, ptr noundef getelementptr inbounds ([16 x [8 x i8]], ptr @opalmethod, i32 0, i32 12))
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not.i.i = icmp eq i32 %call, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.do.body.i256_crit_edge

entry.do.body.i256_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i256

if.end.i.i:                                       ; preds = %entry
  %pos.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %9 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 2048
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end.i.i48

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %do.body.i256.sink.split)) #6
          to label %do.body.i256 [label %do.body.i256.sink.split], !srcloc !392

if.end.i.i48:                                     ; preds = %if.end.i.i
  %inc.i = add i32 %10, 1
  %11 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc.i, ptr %pos.i.i.i, align 8
  %arrayidx.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %10
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -14, ptr %arrayidx.i, align 1
  %13 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %13)
  %cmp.i.i47 = icmp eq i32 %13, 2048
  br i1 %cmp.i.i47, label %do.body.i.i49, label %if.end.i.i59

do.body.i.i49:                                    ; preds = %if.end.i.i48
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %do.body.i256.sink.split)) #6
          to label %do.body.i256 [label %do.body.i256.sink.split], !srcloc !392

if.end.i.i59:                                     ; preds = %if.end.i.i48
  %inc.i52 = add i32 %13, 1
  %14 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc.i52, ptr %pos.i.i.i, align 8
  %arrayidx.i53 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %13
  %15 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx.i53, align 1
  %16 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %16)
  %cmp.i.i58 = icmp eq i32 %16, 2048
  br i1 %cmp.i.i58, label %do.body.i.i60, label %if.end.i.i70

do.body.i.i60:                                    ; preds = %if.end.i.i59
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %do.body.i256.sink.split)) #6
          to label %do.body.i256 [label %do.body.i256.sink.split], !srcloc !392

if.end.i.i70:                                     ; preds = %if.end.i.i59
  %inc.i63 = add i32 %16, 1
  %17 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc.i63, ptr %pos.i.i.i, align 8
  %arrayidx.i64 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %16
  %18 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -16, ptr %arrayidx.i64, align 1
  %19 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %19)
  %cmp.i.i69 = icmp eq i32 %19, 2048
  br i1 %cmp.i.i69, label %do.body.i.i71, label %if.end.i.i81

do.body.i.i71:                                    ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %do.body.i256.sink.split)) #6
          to label %do.body.i256 [label %do.body.i256.sink.split], !srcloc !392

if.end.i.i81:                                     ; preds = %if.end.i.i70
  %inc.i74 = add i32 %19, 1
  %20 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc.i74, ptr %pos.i.i.i, align 8
  %arrayidx.i75 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %19
  %21 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -14, ptr %arrayidx.i75, align 1
  %22 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %22)
  %cmp.i.i80 = icmp eq i32 %22, 2048
  br i1 %cmp.i.i80, label %do.body.i.i82, label %if.end.i.i92

do.body.i.i82:                                    ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %do.body.i256.sink.split)) #6
          to label %do.body.i256 [label %do.body.i256.sink.split], !srcloc !392

if.end.i.i92:                                     ; preds = %if.end.i.i81
  %inc.i85 = add i32 %22, 1
  %23 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %inc.i85, ptr %pos.i.i.i, align 8
  %arrayidx.i86 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %22
  %24 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %arrayidx.i86, align 1
  %25 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %25)
  %cmp.i.i91 = icmp eq i32 %25, 2048
  br i1 %cmp.i.i91, label %do.body.i.i93, label %if.end.i.i103

do.body.i.i93:                                    ; preds = %if.end.i.i92
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %do.body.i256.sink.split)) #6
          to label %do.body.i256 [label %do.body.i256.sink.split], !srcloc !392

if.end.i.i103:                                    ; preds = %if.end.i.i92
  %inc.i96 = add i32 %25, 1
  %26 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %inc.i96, ptr %pos.i.i.i, align 8
  %arrayidx.i97 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %25
  %27 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -16, ptr %arrayidx.i97, align 1
  %28 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %28)
  %cmp.i.i102 = icmp eq i32 %28, 2048
  br i1 %cmp.i.i102, label %do.body.i.i104, label %if.end.i.i252

do.body.i.i104:                                   ; preds = %if.end.i.i103
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %do.body.i256.sink.split)) #6
          to label %do.body.i256 [label %do.body.i256.sink.split], !srcloc !392

if.end.i.i252:                                    ; preds = %if.end.i.i103
  %inc.i107 = add i32 %28, 1
  %29 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc.i107, ptr %pos.i.i.i, align 8
  %arrayidx.i108 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %28
  %30 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -14, ptr %arrayidx.i108, align 1
  %31 = load i32, ptr %pos.i.i.i, align 8
  %32 = add i32 %31, -2044
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %32)
  %cmp.i.i251 = icmp ult i32 %32, 5
  br i1 %cmp.i.i251, label %do.body.i.i253, label %if.end11.i

do.body.i.i253:                                   ; preds = %if.end.i.i252
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %do.body.i256.sink.split)) #6
          to label %do.body.i256 [label %do.body.i256.sink.split], !srcloc !392

do.body.i256.sink.split:                          ; preds = %do.body.i.i253, %do.body.i.i104, %do.body.i.i93, %do.body.i.i82, %do.body.i.i71, %do.body.i.i60, %do.body.i.i49, %do.body.i.i
  %.sink = phi i32 [ 1, %do.body.i.i ], [ 1, %do.body.i.i49 ], [ 1, %do.body.i.i60 ], [ 1, %do.body.i.i71 ], [ 1, %do.body.i.i82 ], [ 1, %do.body.i.i93 ], [ 1, %do.body.i.i104 ], [ 5, %do.body.i.i253 ]
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef %.sink) #6
  br label %do.body.i256

do.body.i256:                                     ; preds = %do.body.i256.sink.split, %do.body.i.i253, %do.body.i.i104, %do.body.i.i93, %do.body.i.i82, %do.body.i.i71, %do.body.i.i60, %do.body.i.i49, %do.body.i.i, %entry.do.body.i256_crit_edge
  %err.7 = phi i32 [ -34, %do.body.i.i ], [ -34, %do.body.i.i49 ], [ -34, %do.body.i.i60 ], [ -34, %do.body.i.i71 ], [ -34, %do.body.i.i82 ], [ -34, %do.body.i.i93 ], [ -34, %do.body.i.i104 ], [ -34, %do.body.i.i253 ], [ %call, %entry.do.body.i256_crit_edge ], [ -34, %do.body.i256.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_bytestring_header.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %add_token_bytestring.exit.thread)) #6
          to label %add_bytestring_header.exit [label %add_token_bytestring.exit.thread], !srcloc !392

add_token_bytestring.exit.thread:                 ; preds = %do.body.i256
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_bytestring_header.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.68) #6
  br label %do.body.i267

if.end11.i:                                       ; preds = %if.end.i.i252
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i.i = add i32 %31, 1
  %33 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %inc.i.i.i, ptr %pos.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %31
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -92, ptr %arrayidx.i.i.i, align 1
  %35 = load i32, ptr %pos.i.i.i, align 8
  %arrayidx.i257 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %35
  br label %add_bytestring_header.exit

add_bytestring_header.exit:                       ; preds = %if.end11.i, %do.body.i256
  %err.8 = phi i32 [ %err.7, %do.body.i256 ], [ 0, %if.end11.i ]
  %retval.0.i258 = phi ptr [ null, %do.body.i256 ], [ %arrayidx.i257, %if.end11.i ]
  %tobool.not.i = icmp eq ptr %retval.0.i258, null
  br i1 %tobool.not.i, label %add_bytestring_header.exit.add_token_bytestring.exit_crit_edge, label %if.end.i111

add_bytestring_header.exit.add_token_bytestring.exit_crit_edge: ; preds = %add_bytestring_header.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_bytestring.exit

if.end.i111:                                      ; preds = %add_bytestring_header.exit
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %retval.0.i258 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 3077, ptr %retval.0.i258, align 1
  %pos.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %37 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pos.i, align 8
  %add.i = add i32 %38, 4
  store i32 %add.i, ptr %pos.i, align 8
  br label %add_token_bytestring.exit

add_token_bytestring.exit:                        ; preds = %if.end.i111, %add_bytestring_header.exit.add_token_bytestring.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.8)
  %tobool.not.i.i259 = icmp eq i32 %err.8, 0
  br i1 %tobool.not.i.i259, label %if.end.i.i263, label %add_token_bytestring.exit.do.body.i267_crit_edge

add_token_bytestring.exit.do.body.i267_crit_edge: ; preds = %add_token_bytestring.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i267

if.end.i.i263:                                    ; preds = %add_token_bytestring.exit
  %pos.i.i.i260 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %39 = ptrtoint ptr %pos.i.i.i260 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pos.i.i.i260, align 8
  %41 = add i32 %40, -2040
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %41)
  %cmp.i.i262 = icmp ult i32 %41, 9
  br i1 %cmp.i.i262, label %do.body.i.i264, label %if.end11.i277

do.body.i.i264:                                   ; preds = %if.end.i.i263
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %if.then6.i.i265)) #6
          to label %do.body.i267 [label %if.then6.i.i265], !srcloc !392

if.then6.i.i265:                                  ; preds = %do.body.i.i264
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 9) #6
  br label %do.body.i267

do.body.i267:                                     ; preds = %if.then6.i.i265, %do.body.i.i264, %add_token_bytestring.exit.do.body.i267_crit_edge, %add_token_bytestring.exit.thread
  %err.9 = phi i32 [ %err.8, %add_token_bytestring.exit.do.body.i267_crit_edge ], [ %err.7, %add_token_bytestring.exit.thread ], [ -34, %if.then6.i.i265 ], [ -34, %do.body.i.i264 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_bytestring_header.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %add_token_bytestring.exit117.thread)) #6
          to label %add_bytestring_header.exit279 [label %add_token_bytestring.exit117.thread], !srcloc !392

add_token_bytestring.exit117.thread:              ; preds = %do.body.i267
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_bytestring_header.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.68) #6
  br label %do.body.i288

if.end11.i277:                                    ; preds = %if.end.i.i263
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i.i273 = add i32 %40, 1
  %42 = ptrtoint ptr %pos.i.i.i260 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %inc.i.i.i273, ptr %pos.i.i.i260, align 8
  %arrayidx.i.i.i274 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %40
  %43 = ptrtoint ptr %arrayidx.i.i.i274 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -88, ptr %arrayidx.i.i.i274, align 1
  %44 = load i32, ptr %pos.i.i.i260, align 8
  %arrayidx.i276 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %44
  br label %add_bytestring_header.exit279

add_bytestring_header.exit279:                    ; preds = %if.end11.i277, %do.body.i267
  %err.10 = phi i32 [ %err.9, %do.body.i267 ], [ 0, %if.end11.i277 ]
  %retval.0.i278 = phi ptr [ null, %do.body.i267 ], [ %arrayidx.i276, %if.end11.i277 ]
  %tobool.not.i113 = icmp eq ptr %retval.0.i278, null
  br i1 %tobool.not.i113, label %add_bytestring_header.exit279.add_token_bytestring.exit117_crit_edge, label %if.end.i116

add_bytestring_header.exit279.add_token_bytestring.exit117_crit_edge: ; preds = %add_bytestring_header.exit279
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_bytestring.exit117

if.end.i116:                                      ; preds = %add_bytestring_header.exit279
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %retval.0.i278 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %retval.0.i278, align 1
  %user_uid.sroa.6.0.retval.0.i278.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i278, i32 1
  %46 = ptrtoint ptr %user_uid.sroa.6.0.retval.0.i278.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %user_uid.sroa.6.0.retval.0.i278.sroa_idx, align 1
  %user_uid.sroa.7.0.retval.0.i278.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i278, i32 2
  %47 = ptrtoint ptr %user_uid.sroa.7.0.retval.0.i278.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %user_uid.sroa.7.0.retval.0.i278.sroa_idx, align 1
  %user_uid.sroa.8.0.retval.0.i278.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i278, i32 3
  %48 = ptrtoint ptr %user_uid.sroa.8.0.retval.0.i278.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 9, ptr %user_uid.sroa.8.0.retval.0.i278.sroa_idx, align 1
  %user_uid.sroa.9.0.retval.0.i278.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i278, i32 4
  %49 = ptrtoint ptr %user_uid.sroa.9.0.retval.0.i278.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %user_uid.sroa.9.0.retval.0.i278.sroa_idx, align 1
  %user_uid.sroa.10.0.retval.0.i278.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i278, i32 5
  %50 = ptrtoint ptr %user_uid.sroa.10.0.retval.0.i278.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 3, ptr %user_uid.sroa.10.0.retval.0.i278.sroa_idx, align 1
  %user_uid.sroa.11.0.retval.0.i278.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i278, i32 6
  %51 = ptrtoint ptr %user_uid.sroa.11.0.retval.0.i278.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %user_uid.sroa.11.0.retval.0.i278.sroa_idx, align 1
  %user_uid.sroa.12.0.retval.0.i278.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i278, i32 7
  %52 = ptrtoint ptr %user_uid.sroa.12.0.retval.0.i278.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv, ptr %user_uid.sroa.12.0.retval.0.i278.sroa_idx, align 1
  %pos.i114 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %53 = ptrtoint ptr %pos.i114 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pos.i114, align 8
  %add.i115 = add i32 %54, 8
  store i32 %add.i115, ptr %pos.i114, align 8
  br label %add_token_bytestring.exit117

add_token_bytestring.exit117:                     ; preds = %if.end.i116, %add_bytestring_header.exit279.add_token_bytestring.exit117_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.10)
  %tobool.not.i.i118 = icmp eq i32 %err.10, 0
  br i1 %tobool.not.i.i118, label %if.end.i.i121, label %add_token_bytestring.exit117.do.body.i288_crit_edge

add_token_bytestring.exit117.do.body.i288_crit_edge: ; preds = %add_token_bytestring.exit117
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i288

if.end.i.i121:                                    ; preds = %add_token_bytestring.exit117
  %pos.i.i.i119 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %55 = ptrtoint ptr %pos.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pos.i.i.i119, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %56)
  %cmp.i.i120 = icmp eq i32 %56, 2048
  br i1 %cmp.i.i120, label %do.body.i.i122, label %if.end.i.i132

do.body.i.i122:                                   ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %if.then6.i.i123)) #6
          to label %do.body.i288 [label %if.then6.i.i123], !srcloc !392

if.then6.i.i123:                                  ; preds = %do.body.i.i122
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.body.i288

if.end.i.i132:                                    ; preds = %if.end.i.i121
  %inc.i125 = add i32 %56, 1
  %57 = ptrtoint ptr %pos.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %inc.i125, ptr %pos.i.i.i119, align 8
  %arrayidx.i126 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %56
  %58 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -13, ptr %arrayidx.i126, align 1
  %59 = load i32, ptr %pos.i.i.i119, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %59)
  %cmp.i.i131 = icmp eq i32 %59, 2048
  br i1 %cmp.i.i131, label %do.body.i.i133, label %if.end.i.i284

do.body.i.i133:                                   ; preds = %if.end.i.i132
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %if.then6.i.i134)) #6
          to label %do.body.i288 [label %if.then6.i.i134], !srcloc !392

if.then6.i.i134:                                  ; preds = %do.body.i.i133
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.body.i288

if.end.i.i284:                                    ; preds = %if.end.i.i132
  %inc.i136 = add i32 %59, 1
  %60 = ptrtoint ptr %pos.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %inc.i136, ptr %pos.i.i.i119, align 8
  %arrayidx.i137 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %59
  %61 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -14, ptr %arrayidx.i137, align 1
  %62 = load i32, ptr %pos.i.i.i119, align 8
  %63 = add i32 %62, -2044
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %63)
  %cmp.i.i283 = icmp ult i32 %63, 5
  br i1 %cmp.i.i283, label %do.body.i.i285, label %if.end11.i298

do.body.i.i285:                                   ; preds = %if.end.i.i284
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %if.then6.i.i286)) #6
          to label %do.body.i288 [label %if.then6.i.i286], !srcloc !392

if.then6.i.i286:                                  ; preds = %do.body.i.i285
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 5) #6
  br label %do.body.i288

do.body.i288:                                     ; preds = %if.then6.i.i286, %do.body.i.i285, %if.then6.i.i134, %do.body.i.i133, %if.then6.i.i123, %do.body.i.i122, %add_token_bytestring.exit117.do.body.i288_crit_edge, %add_token_bytestring.exit117.thread
  %err.13 = phi i32 [ -34, %do.body.i.i122 ], [ -34, %do.body.i.i133 ], [ -34, %if.then6.i.i286 ], [ -34, %do.body.i.i285 ], [ -34, %if.then6.i.i134 ], [ -34, %if.then6.i.i123 ], [ %err.9, %add_token_bytestring.exit117.thread ], [ %err.10, %add_token_bytestring.exit117.do.body.i288_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_bytestring_header.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %add_token_bytestring.exit145.thread)) #6
          to label %add_bytestring_header.exit300 [label %add_token_bytestring.exit145.thread], !srcloc !392

add_token_bytestring.exit145.thread:              ; preds = %do.body.i288
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_bytestring_header.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.68) #6
  br label %do.body.i309

if.end11.i298:                                    ; preds = %if.end.i.i284
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i.i294 = add i32 %62, 1
  %64 = ptrtoint ptr %pos.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %inc.i.i.i294, ptr %pos.i.i.i119, align 8
  %arrayidx.i.i.i295 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %62
  %65 = ptrtoint ptr %arrayidx.i.i.i295 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -92, ptr %arrayidx.i.i.i295, align 1
  %66 = load i32, ptr %pos.i.i.i119, align 8
  %arrayidx.i297 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %66
  br label %add_bytestring_header.exit300

add_bytestring_header.exit300:                    ; preds = %if.end11.i298, %do.body.i288
  %err.14 = phi i32 [ %err.13, %do.body.i288 ], [ 0, %if.end11.i298 ]
  %retval.0.i299 = phi ptr [ null, %do.body.i288 ], [ %arrayidx.i297, %if.end11.i298 ]
  %tobool.not.i141 = icmp eq ptr %retval.0.i299, null
  br i1 %tobool.not.i141, label %add_bytestring_header.exit300.add_token_bytestring.exit145_crit_edge, label %if.end.i144

add_bytestring_header.exit300.add_token_bytestring.exit145_crit_edge: ; preds = %add_bytestring_header.exit300
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_bytestring.exit145

if.end.i144:                                      ; preds = %add_bytestring_header.exit300
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %retval.0.i299 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 3077, ptr %retval.0.i299, align 1
  %pos.i142 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %68 = ptrtoint ptr %pos.i142 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pos.i142, align 8
  %add.i143 = add i32 %69, 4
  store i32 %add.i143, ptr %pos.i142, align 8
  br label %add_token_bytestring.exit145

add_token_bytestring.exit145:                     ; preds = %if.end.i144, %add_bytestring_header.exit300.add_token_bytestring.exit145_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.14)
  %tobool.not.i.i301 = icmp eq i32 %err.14, 0
  br i1 %tobool.not.i.i301, label %if.end.i.i305, label %add_token_bytestring.exit145.do.body.i309_crit_edge

add_token_bytestring.exit145.do.body.i309_crit_edge: ; preds = %add_token_bytestring.exit145
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i309

if.end.i.i305:                                    ; preds = %add_token_bytestring.exit145
  %pos.i.i.i302 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %70 = ptrtoint ptr %pos.i.i.i302 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pos.i.i.i302, align 8
  %72 = add i32 %71, -2040
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %72)
  %cmp.i.i304 = icmp ult i32 %72, 9
  br i1 %cmp.i.i304, label %do.body.i.i306, label %if.end11.i319

do.body.i.i306:                                   ; preds = %if.end.i.i305
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %if.then6.i.i307)) #6
          to label %do.body.i309 [label %if.then6.i.i307], !srcloc !392

if.then6.i.i307:                                  ; preds = %do.body.i.i306
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 9) #6
  br label %do.body.i309

do.body.i309:                                     ; preds = %if.then6.i.i307, %do.body.i.i306, %add_token_bytestring.exit145.do.body.i309_crit_edge, %add_token_bytestring.exit145.thread
  %err.15 = phi i32 [ %err.14, %add_token_bytestring.exit145.do.body.i309_crit_edge ], [ %err.13, %add_token_bytestring.exit145.thread ], [ -34, %if.then6.i.i307 ], [ -34, %do.body.i.i306 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_bytestring_header.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %add_token_bytestring.exit151.thread)) #6
          to label %add_bytestring_header.exit321 [label %add_token_bytestring.exit151.thread], !srcloc !392

add_token_bytestring.exit151.thread:              ; preds = %do.body.i309
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_bytestring_header.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.68) #6
  br label %do.body.i330

if.end11.i319:                                    ; preds = %if.end.i.i305
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i.i315 = add i32 %71, 1
  %73 = ptrtoint ptr %pos.i.i.i302 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %inc.i.i.i315, ptr %pos.i.i.i302, align 8
  %arrayidx.i.i.i316 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %71
  %74 = ptrtoint ptr %arrayidx.i.i.i316 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -88, ptr %arrayidx.i.i.i316, align 1
  %75 = load i32, ptr %pos.i.i.i302, align 8
  %arrayidx.i318 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %75
  br label %add_bytestring_header.exit321

add_bytestring_header.exit321:                    ; preds = %if.end11.i319, %do.body.i309
  %err.16 = phi i32 [ %err.15, %do.body.i309 ], [ 0, %if.end11.i319 ]
  %retval.0.i320 = phi ptr [ null, %do.body.i309 ], [ %arrayidx.i318, %if.end11.i319 ]
  %tobool.not.i147 = icmp eq ptr %retval.0.i320, null
  br i1 %tobool.not.i147, label %add_bytestring_header.exit321.add_token_bytestring.exit151_crit_edge, label %if.end.i150

add_bytestring_header.exit321.add_token_bytestring.exit151_crit_edge: ; preds = %add_bytestring_header.exit321
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_bytestring.exit151

if.end.i150:                                      ; preds = %add_bytestring_header.exit321
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %retval.0.i320 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %retval.0.i320, align 1
  %user_uid.sroa.6.0.retval.0.i320.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i320, i32 1
  %77 = ptrtoint ptr %user_uid.sroa.6.0.retval.0.i320.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %user_uid.sroa.6.0.retval.0.i320.sroa_idx, align 1
  %user_uid.sroa.7.0.retval.0.i320.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i320, i32 2
  %78 = ptrtoint ptr %user_uid.sroa.7.0.retval.0.i320.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %user_uid.sroa.7.0.retval.0.i320.sroa_idx, align 1
  %user_uid.sroa.8.0.retval.0.i320.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i320, i32 3
  %79 = ptrtoint ptr %user_uid.sroa.8.0.retval.0.i320.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 9, ptr %user_uid.sroa.8.0.retval.0.i320.sroa_idx, align 1
  %user_uid.sroa.9.0.retval.0.i320.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i320, i32 4
  %80 = ptrtoint ptr %user_uid.sroa.9.0.retval.0.i320.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %user_uid.sroa.9.0.retval.0.i320.sroa_idx, align 1
  %user_uid.sroa.10.0.retval.0.i320.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i320, i32 5
  %81 = ptrtoint ptr %user_uid.sroa.10.0.retval.0.i320.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 3, ptr %user_uid.sroa.10.0.retval.0.i320.sroa_idx, align 1
  %user_uid.sroa.11.0.retval.0.i320.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i320, i32 6
  %82 = ptrtoint ptr %user_uid.sroa.11.0.retval.0.i320.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %user_uid.sroa.11.0.retval.0.i320.sroa_idx, align 1
  %user_uid.sroa.12.0.retval.0.i320.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i320, i32 7
  %83 = ptrtoint ptr %user_uid.sroa.12.0.retval.0.i320.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv, ptr %user_uid.sroa.12.0.retval.0.i320.sroa_idx, align 1
  %pos.i148 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %84 = ptrtoint ptr %pos.i148 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pos.i148, align 8
  %add.i149 = add i32 %85, 8
  store i32 %add.i149, ptr %pos.i148, align 8
  br label %add_token_bytestring.exit151

add_token_bytestring.exit151:                     ; preds = %if.end.i150, %add_bytestring_header.exit321.add_token_bytestring.exit151_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.16)
  %tobool.not.i.i152 = icmp eq i32 %err.16, 0
  br i1 %tobool.not.i.i152, label %if.end.i.i155, label %add_token_bytestring.exit151.do.body.i330_crit_edge

add_token_bytestring.exit151.do.body.i330_crit_edge: ; preds = %add_token_bytestring.exit151
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i330

if.end.i.i155:                                    ; preds = %add_token_bytestring.exit151
  %pos.i.i.i153 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %86 = ptrtoint ptr %pos.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pos.i.i.i153, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %87)
  %cmp.i.i154 = icmp eq i32 %87, 2048
  br i1 %cmp.i.i154, label %do.body.i.i156, label %if.end.i.i166

do.body.i.i156:                                   ; preds = %if.end.i.i155
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %if.then6.i.i157)) #6
          to label %do.body.i330 [label %if.then6.i.i157], !srcloc !392

if.then6.i.i157:                                  ; preds = %do.body.i.i156
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.body.i330

if.end.i.i166:                                    ; preds = %if.end.i.i155
  %inc.i159 = add i32 %87, 1
  %88 = ptrtoint ptr %pos.i.i.i153 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %inc.i159, ptr %pos.i.i.i153, align 8
  %arrayidx.i160 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %87
  %89 = ptrtoint ptr %arrayidx.i160 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -13, ptr %arrayidx.i160, align 1
  %90 = load i32, ptr %pos.i.i.i153, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %90)
  %cmp.i.i165 = icmp eq i32 %90, 2048
  br i1 %cmp.i.i165, label %do.body.i.i167, label %if.end.i.i326

do.body.i.i167:                                   ; preds = %if.end.i.i166
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %if.then6.i.i168)) #6
          to label %do.body.i330 [label %if.then6.i.i168], !srcloc !392

if.then6.i.i168:                                  ; preds = %do.body.i.i167
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.body.i330

if.end.i.i326:                                    ; preds = %if.end.i.i166
  %inc.i170 = add i32 %90, 1
  %91 = ptrtoint ptr %pos.i.i.i153 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %inc.i170, ptr %pos.i.i.i153, align 8
  %arrayidx.i171 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %90
  %92 = ptrtoint ptr %arrayidx.i171 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -14, ptr %arrayidx.i171, align 1
  %93 = load i32, ptr %pos.i.i.i153, align 8
  %94 = add i32 %93, -2044
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %94)
  %cmp.i.i325 = icmp ult i32 %94, 5
  br i1 %cmp.i.i325, label %do.body.i.i327, label %if.end11.i340

do.body.i.i327:                                   ; preds = %if.end.i.i326
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %if.then6.i.i328)) #6
          to label %do.body.i330 [label %if.then6.i.i328], !srcloc !392

if.then6.i.i328:                                  ; preds = %do.body.i.i327
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 5) #6
  br label %do.body.i330

do.body.i330:                                     ; preds = %if.then6.i.i328, %do.body.i.i327, %if.then6.i.i168, %do.body.i.i167, %if.then6.i.i157, %do.body.i.i156, %add_token_bytestring.exit151.do.body.i330_crit_edge, %add_token_bytestring.exit151.thread
  %err.19 = phi i32 [ -34, %do.body.i.i156 ], [ -34, %do.body.i.i167 ], [ -34, %if.then6.i.i328 ], [ -34, %do.body.i.i327 ], [ -34, %if.then6.i.i168 ], [ -34, %if.then6.i.i157 ], [ %err.15, %add_token_bytestring.exit151.thread ], [ %err.16, %add_token_bytestring.exit151.do.body.i330_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_bytestring_header.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %add_token_bytestring.exit179.thread)) #6
          to label %add_bytestring_header.exit342 [label %add_token_bytestring.exit179.thread], !srcloc !392

add_token_bytestring.exit179.thread:              ; preds = %do.body.i330
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_bytestring_header.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.68) #6
  br label %do.body

if.end11.i340:                                    ; preds = %if.end.i.i326
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i.i336 = add i32 %93, 1
  %95 = ptrtoint ptr %pos.i.i.i153 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %inc.i.i.i336, ptr %pos.i.i.i153, align 8
  %arrayidx.i.i.i337 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %93
  %96 = ptrtoint ptr %arrayidx.i.i.i337 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -92, ptr %arrayidx.i.i.i337, align 1
  %97 = load i32, ptr %pos.i.i.i153, align 8
  %arrayidx.i339 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %97
  br label %add_bytestring_header.exit342

add_bytestring_header.exit342:                    ; preds = %if.end11.i340, %do.body.i330
  %err.20 = phi i32 [ %err.19, %do.body.i330 ], [ 0, %if.end11.i340 ]
  %retval.0.i341 = phi ptr [ null, %do.body.i330 ], [ %arrayidx.i339, %if.end11.i340 ]
  %tobool.not.i175 = icmp eq ptr %retval.0.i341, null
  br i1 %tobool.not.i175, label %add_bytestring_header.exit342.add_token_bytestring.exit179_crit_edge, label %if.end.i178

add_bytestring_header.exit342.add_token_bytestring.exit179_crit_edge: ; preds = %add_bytestring_header.exit342
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_bytestring.exit179

if.end.i178:                                      ; preds = %add_bytestring_header.exit342
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %retval.0.i341 to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 1038, ptr %retval.0.i341, align 1
  %pos.i176 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %99 = ptrtoint ptr %pos.i176 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pos.i176, align 8
  %add.i177 = add i32 %100, 4
  store i32 %add.i177, ptr %pos.i176, align 8
  br label %add_token_bytestring.exit179

add_token_bytestring.exit179:                     ; preds = %if.end.i178, %add_bytestring_header.exit342.add_token_bytestring.exit179_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.20)
  %tobool.not.i.i180 = icmp eq i32 %err.20, 0
  br i1 %tobool.not.i.i180, label %if.end.i.i183, label %add_token_bytestring.exit179.do.body_crit_edge

add_token_bytestring.exit179.do.body_crit_edge:   ; preds = %add_token_bytestring.exit179
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i.i183:                                    ; preds = %add_token_bytestring.exit179
  %pos.i.i.i181 = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %101 = ptrtoint ptr %pos.i.i.i181 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pos.i.i.i181, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %102)
  %cmp.i.i182 = icmp eq i32 %102, 2048
  br i1 %cmp.i.i182, label %do.body.i.i184, label %if.end.i.i194

do.body.i.i184:                                   ; preds = %if.end.i.i183
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %if.then6.i.i185)) #6
          to label %do.body [label %if.then6.i.i185], !srcloc !392

if.then6.i.i185:                                  ; preds = %do.body.i.i184
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.body

if.end.i.i194:                                    ; preds = %if.end.i.i183
  %inc.i187 = add i32 %102, 1
  %103 = ptrtoint ptr %pos.i.i.i181 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %inc.i187, ptr %pos.i.i.i181, align 8
  %arrayidx.i188 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %102
  %104 = ptrtoint ptr %arrayidx.i188 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %arrayidx.i188, align 1
  %105 = load i32, ptr %pos.i.i.i181, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %105)
  %cmp.i.i193 = icmp eq i32 %105, 2048
  br i1 %cmp.i.i193, label %do.body.i.i195, label %if.end.i.i205

do.body.i.i195:                                   ; preds = %if.end.i.i194
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %if.then6.i.i196)) #6
          to label %do.body [label %if.then6.i.i196], !srcloc !392

if.then6.i.i196:                                  ; preds = %do.body.i.i195
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.body

if.end.i.i205:                                    ; preds = %if.end.i.i194
  %inc.i198 = add i32 %105, 1
  %106 = ptrtoint ptr %pos.i.i.i181 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %inc.i198, ptr %pos.i.i.i181, align 8
  %arrayidx.i199 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %105
  %107 = ptrtoint ptr %arrayidx.i199 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -13, ptr %arrayidx.i199, align 1
  %108 = load i32, ptr %pos.i.i.i181, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %108)
  %cmp.i.i204 = icmp eq i32 %108, 2048
  br i1 %cmp.i.i204, label %do.body.i.i206, label %if.end.i.i216

do.body.i.i206:                                   ; preds = %if.end.i.i205
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %if.then6.i.i207)) #6
          to label %do.body [label %if.then6.i.i207], !srcloc !392

if.then6.i.i207:                                  ; preds = %do.body.i.i206
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.body

if.end.i.i216:                                    ; preds = %if.end.i.i205
  %inc.i209 = add i32 %108, 1
  %109 = ptrtoint ptr %pos.i.i.i181 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %inc.i209, ptr %pos.i.i.i181, align 8
  %arrayidx.i210 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %108
  %110 = ptrtoint ptr %arrayidx.i210 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -15, ptr %arrayidx.i210, align 1
  %111 = load i32, ptr %pos.i.i.i181, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %111)
  %cmp.i.i215 = icmp eq i32 %111, 2048
  br i1 %cmp.i.i215, label %do.body.i.i217, label %if.end.i.i227

do.body.i.i217:                                   ; preds = %if.end.i.i216
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %if.then6.i.i218)) #6
          to label %do.body [label %if.then6.i.i218], !srcloc !392

if.then6.i.i218:                                  ; preds = %do.body.i.i217
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.body

if.end.i.i227:                                    ; preds = %if.end.i.i216
  %inc.i220 = add i32 %111, 1
  %112 = ptrtoint ptr %pos.i.i.i181 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %inc.i220, ptr %pos.i.i.i181, align 8
  %arrayidx.i221 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %111
  %113 = ptrtoint ptr %arrayidx.i221 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -13, ptr %arrayidx.i221, align 1
  %114 = load i32, ptr %pos.i.i.i181, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %114)
  %cmp.i.i226 = icmp eq i32 %114, 2048
  br i1 %cmp.i.i226, label %do.body.i.i228, label %if.end.i.i238

do.body.i.i228:                                   ; preds = %if.end.i.i227
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %if.then6.i.i229)) #6
          to label %do.body [label %if.then6.i.i229], !srcloc !392

if.then6.i.i229:                                  ; preds = %do.body.i.i228
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.body

if.end.i.i238:                                    ; preds = %if.end.i.i227
  %inc.i231 = add i32 %114, 1
  %115 = ptrtoint ptr %pos.i.i.i181 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %inc.i231, ptr %pos.i.i.i181, align 8
  %arrayidx.i232 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %114
  %116 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -15, ptr %arrayidx.i232, align 1
  %117 = load i32, ptr %pos.i.i.i181, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %117)
  %cmp.i.i237 = icmp eq i32 %117, 2048
  br i1 %cmp.i.i237, label %do.body.i.i239, label %if.end15

do.body.i.i239:                                   ; preds = %if.end.i.i238
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %if.then6.i.i240)) #6
          to label %do.body [label %if.then6.i.i240], !srcloc !392

if.then6.i.i240:                                  ; preds = %do.body.i.i239
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.body

do.body:                                          ; preds = %if.then6.i.i240, %do.body.i.i239, %if.then6.i.i229, %do.body.i.i228, %if.then6.i.i218, %do.body.i.i217, %if.then6.i.i207, %do.body.i.i206, %if.then6.i.i196, %do.body.i.i195, %if.then6.i.i185, %do.body.i.i184, %add_token_bytestring.exit179.do.body_crit_edge, %add_token_bytestring.exit179.thread
  %err.26502 = phi i32 [ -34, %do.body.i.i184 ], [ -34, %do.body.i.i195 ], [ -34, %do.body.i.i206 ], [ -34, %do.body.i.i217 ], [ -34, %do.body.i.i228 ], [ -34, %do.body.i.i239 ], [ -34, %if.then6.i.i240 ], [ -34, %if.then6.i.i229 ], [ -34, %if.then6.i.i218 ], [ -34, %if.then6.i.i207 ], [ -34, %if.then6.i.i196 ], [ -34, %if.then6.i.i185 ], [ %err.19, %add_token_bytestring.exit179.thread ], [ %err.20, %add_token_bytestring.exit179.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_user_to_lr.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %if.then13)) #6
          to label %cleanup [label %if.then13], !srcloc !392

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @add_user_to_lr.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.169) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end.i.i238
  %inc.i242 = add i32 %117, 1
  %118 = ptrtoint ptr %pos.i.i.i181 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %inc.i242, ptr %pos.i.i.i181, align 8
  %arrayidx.i243 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %117
  %119 = ptrtoint ptr %arrayidx.i243 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -13, ptr %arrayidx.i243, align 1
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %120 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %hsn.i, align 4
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %122 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %tsn.i, align 8
  %call.i246 = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %121, i32 noundef %123) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %tobool.not.i247 = icmp eq i32 %call.i246, 0
  br i1 %tobool.not.i247, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_user_to_lr, %if.then5.i)) #6
          to label %cleanup [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i246) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @parse_and_check_status) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i, %if.then13, %do.body
  %retval.0 = phi i32 [ %err.26502, %do.body ], [ %err.26502, %if.then13 ], [ %call7.i, %if.end6.i ], [ %call.i246, %if.then5.i ], [ %call.i246, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lr_buffer) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_mbr_enable_disable(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cmd_start(ptr noundef %dev, ptr noundef getelementptr inbounds ([30 x [8 x i8]], ptr @opaluid, i32 0, i32 17), ptr noundef getelementptr inbounds ([16 x [8 x i8]], ptr @opalmethod, i32 0, i32 12))
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not.i.i = icmp eq i32 %call, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.i.i:                                       ; preds = %entry
  %pos.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 2048
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end.i.i22

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_enable_disable, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i22:                                     ; preds = %if.end.i.i
  %inc.i = add i32 %1, 1
  %2 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc.i, ptr %pos.i.i.i, align 8
  %arrayidx.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -14, ptr %arrayidx.i, align 1
  %4 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %4)
  %cmp.i.i21 = icmp eq i32 %4, 2048
  br i1 %cmp.i.i21, label %do.body.i.i23, label %if.end.i.i33

do.body.i.i23:                                    ; preds = %if.end.i.i22
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_enable_disable, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i33:                                     ; preds = %if.end.i.i22
  %inc.i26 = add i32 %4, 1
  %5 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc.i26, ptr %pos.i.i.i, align 8
  %arrayidx.i27 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %4
  %6 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx.i27, align 1
  %7 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %7)
  %cmp.i.i32 = icmp eq i32 %7, 2048
  br i1 %cmp.i.i32, label %do.body.i.i34, label %if.end.i.i44

do.body.i.i34:                                    ; preds = %if.end.i.i33
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_enable_disable, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i44:                                     ; preds = %if.end.i.i33
  %inc.i37 = add i32 %7, 1
  %8 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc.i37, ptr %pos.i.i.i, align 8
  %arrayidx.i38 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %7
  %9 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -16, ptr %arrayidx.i38, align 1
  %10 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %10)
  %cmp.i.i43 = icmp eq i32 %10, 2048
  br i1 %cmp.i.i43, label %do.body.i.i45, label %if.end.i.i55

do.body.i.i45:                                    ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_enable_disable, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i55:                                     ; preds = %if.end.i.i44
  %inc.i48 = add i32 %10, 1
  %11 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc.i48, ptr %pos.i.i.i, align 8
  %arrayidx.i49 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %10
  %12 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -14, ptr %arrayidx.i49, align 1
  %13 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %13)
  %cmp.i.i54 = icmp eq i32 %13, 2048
  br i1 %cmp.i.i54, label %do.body.i.i56, label %if.end.i.i66

do.body.i.i56:                                    ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_enable_disable, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i66:                                     ; preds = %if.end.i.i55
  %inc.i59 = add i32 %13, 1
  %14 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc.i59, ptr %pos.i.i.i, align 8
  %arrayidx.i60 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %13
  %15 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx.i60, align 1
  %16 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %16)
  %cmp.i.i65 = icmp eq i32 %16, 2048
  br i1 %cmp.i.i65, label %do.body.i.i67, label %if.end.i.i77

do.body.i.i67:                                    ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_enable_disable, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i77:                                     ; preds = %if.end.i.i66
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %data, align 1
  %inc.i70 = add i32 %16, 1
  %19 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %inc.i70, ptr %pos.i.i.i, align 8
  %arrayidx.i71 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %16
  %20 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %18, ptr %arrayidx.i71, align 1
  %21 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %21)
  %cmp.i.i76 = icmp eq i32 %21, 2048
  br i1 %cmp.i.i76, label %do.body.i.i78, label %if.end.i.i88

do.body.i.i78:                                    ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_enable_disable, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i88:                                     ; preds = %if.end.i.i77
  %inc.i81 = add i32 %21, 1
  %22 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc.i81, ptr %pos.i.i.i, align 8
  %arrayidx.i82 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %21
  %23 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -13, ptr %arrayidx.i82, align 1
  %24 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %24)
  %cmp.i.i87 = icmp eq i32 %24, 2048
  br i1 %cmp.i.i87, label %do.body.i.i89, label %if.end.i.i99

do.body.i.i89:                                    ; preds = %if.end.i.i88
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_enable_disable, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

if.end.i.i99:                                     ; preds = %if.end.i.i88
  %inc.i92 = add i32 %24, 1
  %25 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %inc.i92, ptr %pos.i.i.i, align 8
  %arrayidx.i93 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %24
  %26 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -15, ptr %arrayidx.i93, align 1
  %27 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %27)
  %cmp.i.i98 = icmp eq i32 %27, 2048
  br i1 %cmp.i.i98, label %do.body.i.i100, label %if.end6

do.body.i.i100:                                   ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_enable_disable, %do.body.sink.split)) #6
          to label %do.body [label %do.body.sink.split], !srcloc !392

do.body.sink.split:                               ; preds = %do.body.i.i100, %do.body.i.i89, %do.body.i.i78, %do.body.i.i67, %do.body.i.i56, %do.body.i.i45, %do.body.i.i34, %do.body.i.i23, %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %do.body.i.i100, %do.body.i.i89, %do.body.i.i78, %do.body.i.i67, %do.body.i.i56, %do.body.i.i45, %do.body.i.i34, %do.body.i.i23, %do.body.i.i, %entry.do.body_crit_edge
  %err.8168 = phi i32 [ -34, %do.body.i.i67 ], [ -34, %do.body.i.i78 ], [ -34, %do.body.i.i89 ], [ -34, %do.body.i.i100 ], [ %call, %entry.do.body_crit_edge ], [ -34, %do.body.i.i56 ], [ -34, %do.body.i.i34 ], [ -34, %do.body.i.i ], [ -34, %do.body.i.i23 ], [ -34, %do.body.i.i45 ], [ -34, %do.body.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_mbr_enable_disable.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_enable_disable, %if.then5)) #6
          to label %cleanup [label %if.then5], !srcloc !392

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_mbr_enable_disable.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.172) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i99
  %inc.i103 = add i32 %27, 1
  %28 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc.i103, ptr %pos.i.i.i, align 8
  %arrayidx.i104 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %27
  %29 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -13, ptr %arrayidx.i104, align 1
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %30 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hsn.i, align 4
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %32 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tsn.i, align 8
  %call.i = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %31, i32 noundef %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mbr_enable_disable, %if.then5.i)) #6
          to label %cleanup [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @parse_and_check_status) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i, %if.then5, %do.body
  %retval.0 = phi i32 [ %err.8168, %do.body ], [ %err.8168, %if.then5 ], [ %call7.i, %if.end6.i ], [ %call.i, %if.then5.i ], [ %call.i, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_shadow_mbr(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.opal_shadow_mbr, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data1, align 8
  %offset = getelementptr inbounds %struct.opal_shadow_mbr, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  %size = getelementptr inbounds %struct.opal_shadow_mbr, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size, align 8
  %call = tail call fastcc i32 @generic_table_write_data(ptr noundef %dev, i64 noundef %1, i64 noundef %3, i64 noundef %5, ptr noundef getelementptr inbounds ([30 x [8 x i8]], ptr @opaluid, i32 0, i32 18))
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generic_table_write_data(ptr noundef %dev, i64 noundef %data, i64 noundef %offset, i64 noundef %size, ptr nocapture noundef readonly %uid) unnamed_addr #0 align 64 {
entry:
  %uid.i = alloca [8 x i8], align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %data to i32
  %0 = inttoptr i32 %conv to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #6
  %1 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %err, align 4, !annotation !396
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uid.i) #6
  %2 = getelementptr inbounds [8 x i8], ptr %uid.i, i32 0, i32 4
  %3 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %uid.i, align 4
  %4 = ptrtoint ptr %uid to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %uid, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %2, align 4
  %call.i = call fastcc i32 @generic_get_column(ptr noundef %dev, ptr noundef nonnull %uid.i, i64 noundef 7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uid.i) #6
  %7 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @generic_table_write_data.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_table_write_data, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !392

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @generic_table_write_data.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.175) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %8 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %err, align 4
  br label %cleanup

if.end6:                                          ; preds = %entry
  %parsed = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 13
  %call7 = tail call fastcc i64 @response_get_u64(ptr noundef %parsed, i32 noundef 4)
  call void @__sanitizer_cov_trace_cmp8(i64 %call7, i64 %size)
  %cmp = icmp ult i64 %call7, %size
  %sub = sub i64 %call7, %size
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %offset)
  %cmp9 = icmp ult i64 %sub, %offset
  %or.cond = or i1 %cmp, %cmp9
  br i1 %or.cond, label %do.body12, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %cmp30221.not = icmp eq i64 %size, 0
  br i1 %cmp30221.not, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %pos.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %10 = trunc i64 %size to i32
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  br label %while.body

do.body12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @generic_table_write_data.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_table_write_data, %if.then24)) #6
          to label %cleanup [label %if.then24], !srcloc !392

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i64 %size, %offset
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @generic_table_write_data.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.177, i64 noundef %add, i64 noundef %call7) #6
  br label %cleanup

while.body:                                       ; preds = %if.end79.while.body_crit_edge, %while.body.lr.ph
  %conv29223 = phi i64 [ 0, %while.body.lr.ph ], [ %conv29, %if.end79.while.body_crit_edge ]
  %off.0222 = phi i32 [ 0, %while.body.lr.ph ], [ %add81, %if.end79.while.body_crit_edge ]
  %call32 = tail call fastcc i32 @cmd_start(ptr noundef %dev, ptr noundef %uid, ptr noundef getelementptr inbounds ([16 x [8 x i8]], ptr @opalmethod, i32 0, i32 12))
  %11 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool.not.i.i = icmp eq i32 %call32, 0
  br i1 %tobool.not.i.i, label %if.end.i.i130, label %while.body.add_token_u8.exit141_crit_edge

while.body.add_token_u8.exit141_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit141

if.end.i.i130:                                    ; preds = %while.body
  %12 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %13)
  %cmp.i.i129 = icmp eq i32 %13, 2048
  br i1 %cmp.i.i129, label %do.body.i.i, label %add_token_u8.exit

do.body.i.i:                                      ; preds = %if.end.i.i130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_table_write_data, %if.then6.i.i)) #6
          to label %do.end.i.i [label %if.then6.i.i], !srcloc !392

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i, %do.body.i.i
  %14 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit141

add_token_u8.exit:                                ; preds = %if.end.i.i130
  %inc.i = add i32 %13, 1
  %15 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc.i, ptr %pos.i.i.i, align 8
  %arrayidx.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %13
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -14, ptr %arrayidx.i, align 1
  %17 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i.i131 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i.i131, label %if.end.i.i134, label %add_token_u8.exit.add_token_u8.exit141_crit_edge

add_token_u8.exit.add_token_u8.exit141_crit_edge: ; preds = %add_token_u8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit141

if.end.i.i134:                                    ; preds = %add_token_u8.exit
  %18 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %19)
  %cmp.i.i133 = icmp eq i32 %19, 2048
  br i1 %cmp.i.i133, label %do.body.i.i135, label %if.end.i140

do.body.i.i135:                                   ; preds = %if.end.i.i134
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_table_write_data, %if.then6.i.i136)) #6
          to label %do.end.i.i137 [label %if.then6.i.i136], !srcloc !392

if.then6.i.i136:                                  ; preds = %do.body.i.i135
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i137

do.end.i.i137:                                    ; preds = %if.then6.i.i136, %do.body.i.i135
  %20 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit141

if.end.i140:                                      ; preds = %if.end.i.i134
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i138 = add i32 %19, 1
  %21 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %inc.i138, ptr %pos.i.i.i, align 8
  %arrayidx.i139 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %19
  %22 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx.i139, align 1
  br label %add_token_u8.exit141

add_token_u8.exit141:                             ; preds = %if.end.i140, %do.end.i.i137, %add_token_u8.exit.add_token_u8.exit141_crit_edge, %do.end.i.i, %while.body.add_token_u8.exit141_crit_edge
  %add34 = add i64 %conv29223, %offset
  call fastcc void @add_token_u64(ptr noundef nonnull %err, ptr noundef %dev, i64 noundef %add34)
  %23 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i142 = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i142, label %if.end.i.i145, label %add_token_u8.exit141.add_token_u8.exit174_crit_edge

add_token_u8.exit141.add_token_u8.exit174_crit_edge: ; preds = %add_token_u8.exit141
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit174

if.end.i.i145:                                    ; preds = %add_token_u8.exit141
  %25 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %26)
  %cmp.i.i144 = icmp eq i32 %26, 2048
  br i1 %cmp.i.i144, label %do.body.i.i146, label %add_token_u8.exit152

do.body.i.i146:                                   ; preds = %if.end.i.i145
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_table_write_data, %if.then6.i.i147)) #6
          to label %do.end.i.i148 [label %if.then6.i.i147], !srcloc !392

if.then6.i.i147:                                  ; preds = %do.body.i.i146
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i148

do.end.i.i148:                                    ; preds = %if.then6.i.i147, %do.body.i.i146
  %27 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit174

add_token_u8.exit152:                             ; preds = %if.end.i.i145
  %inc.i149 = add i32 %26, 1
  %28 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc.i149, ptr %pos.i.i.i, align 8
  %arrayidx.i150 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %26
  %29 = ptrtoint ptr %arrayidx.i150 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -13, ptr %arrayidx.i150, align 1
  %30 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr191 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr191)
  %tobool.not.i.i153 = icmp eq i32 %.pr191, 0
  br i1 %tobool.not.i.i153, label %if.end.i.i156, label %add_token_u8.exit152.add_token_u8.exit174_crit_edge

add_token_u8.exit152.add_token_u8.exit174_crit_edge: ; preds = %add_token_u8.exit152
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit174

if.end.i.i156:                                    ; preds = %add_token_u8.exit152
  %31 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %32)
  %cmp.i.i155 = icmp eq i32 %32, 2048
  br i1 %cmp.i.i155, label %do.body.i.i157, label %add_token_u8.exit163

do.body.i.i157:                                   ; preds = %if.end.i.i156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_table_write_data, %if.then6.i.i158)) #6
          to label %do.end.i.i159 [label %if.then6.i.i158], !srcloc !392

if.then6.i.i158:                                  ; preds = %do.body.i.i157
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i159

do.end.i.i159:                                    ; preds = %if.then6.i.i158, %do.body.i.i157
  %33 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit174

add_token_u8.exit163:                             ; preds = %if.end.i.i156
  %inc.i160 = add i32 %32, 1
  %34 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %inc.i160, ptr %pos.i.i.i, align 8
  %arrayidx.i161 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %32
  %35 = ptrtoint ptr %arrayidx.i161 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -14, ptr %arrayidx.i161, align 1
  %36 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr193.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr193.pr)
  %tobool.not.i.i164 = icmp eq i32 %.pr193.pr, 0
  br i1 %tobool.not.i.i164, label %if.end.i.i167, label %add_token_u8.exit163.add_token_u8.exit174_crit_edge

add_token_u8.exit163.add_token_u8.exit174_crit_edge: ; preds = %add_token_u8.exit163
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit174

if.end.i.i167:                                    ; preds = %add_token_u8.exit163
  %37 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %38)
  %cmp.i.i166 = icmp eq i32 %38, 2048
  br i1 %cmp.i.i166, label %do.body.i.i168, label %if.end.i173

do.body.i.i168:                                   ; preds = %if.end.i.i167
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_table_write_data, %if.then6.i.i169)) #6
          to label %do.end.i.i170 [label %if.then6.i.i169], !srcloc !392

if.then6.i.i169:                                  ; preds = %do.body.i.i168
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i170

do.end.i.i170:                                    ; preds = %if.then6.i.i169, %do.body.i.i168
  %39 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit174

if.end.i173:                                      ; preds = %if.end.i.i167
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i171 = add i32 %38, 1
  %40 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %inc.i171, ptr %pos.i.i.i, align 8
  %arrayidx.i172 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %38
  %41 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %arrayidx.i172, align 1
  br label %add_token_u8.exit174

add_token_u8.exit174:                             ; preds = %if.end.i173, %do.end.i.i170, %add_token_u8.exit163.add_token_u8.exit174_crit_edge, %do.end.i.i159, %add_token_u8.exit152.add_token_u8.exit174_crit_edge, %do.end.i.i148, %add_token_u8.exit141.add_token_u8.exit174_crit_edge
  %42 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pos.i.i.i, align 8
  %sub36 = sub i32 2038, %43
  %conv39 = sub i32 %10, %off.0222
  %44 = tail call i32 @llvm.umin.i32(i32 %sub36, i32 %conv39)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @generic_table_write_data.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_table_write_data, %if.then56)) #6
          to label %do.end59 [label %if.then56], !srcloc !392

if.then56:                                        ; preds = %add_token_u8.exit174
  call void @__sanitizer_cov_trace_pc() #8
  %conv43 = zext i32 %44 to i64
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @generic_table_write_data.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.179, i32 noundef %off.0222, i64 noundef %conv43, i64 noundef %size) #6
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %add_token_u8.exit174
  %call61 = call fastcc ptr @add_bytestring_header(ptr noundef nonnull %err, ptr noundef %dev, i32 noundef %44)
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %do.end59.while.end_crit_edge, label %if.end64

do.end59.while.end_crit_edge:                     ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end64:                                         ; preds = %do.end59
  %add.ptr = getelementptr i8, ptr %0, i32 %off.0222
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp9.i.i = icmp slt i32 %44, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end64
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then68_crit_edge, label %if.then27.i.i, !prof !397

land.rhs16.i.i.if.then68_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then68

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.180, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %if.then68

if.then.i.i.i:                                    ; preds = %if.end64
  tail call void @__check_object_size(ptr noundef nonnull %call61, i32 noundef %44, i1 noundef zeroext false) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.182, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %45 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %44, i32 -1226833920) #10, !srcloc !398
  %asmresult.i.i = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !397

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call61, i32 noundef %44) #6
  %46 = tail call i32 @llvm.read_register.i32(metadata !382) #6
  %and.i.i.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 4
  %48 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !399
  %and.i.i.i.i = and i32 %48, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !401
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call61, ptr noundef %add.ptr, i32 noundef %44) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #6, !srcloc !400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !401
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %44, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %44, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end69, label %if.then11.i.i, !prof !397

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = sub i32 %44, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call61, i32 %sub.i.i
  %49 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.then68

if.then68:                                        ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.then68_crit_edge
  %50 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -14, ptr %err, align 4
  br label %while.end

if.end69:                                         ; preds = %if.end.i.i
  %51 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pos.i.i.i, align 8
  %add71 = add i32 %52, %44
  store i32 %add71, ptr %pos.i.i.i, align 8
  %53 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i175 = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i175, label %if.end.i.i178, label %if.end69.while.end_crit_edge

if.end69.while.end_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end.i.i178:                                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add71)
  %cmp.i.i177 = icmp eq i32 %add71, 2048
  br i1 %cmp.i.i177, label %do.body.i.i179, label %add_token_u8.exit185

do.body.i.i179:                                   ; preds = %if.end.i.i178
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_table_write_data, %if.then6.i.i180)) #6
          to label %do.end.i.i181 [label %if.then6.i.i180], !srcloc !392

if.then6.i.i180:                                  ; preds = %do.body.i.i179
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i181

do.end.i.i181:                                    ; preds = %if.then6.i.i180, %do.body.i.i179
  %55 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -34, ptr %err, align 4
  br label %while.end

add_token_u8.exit185:                             ; preds = %if.end.i.i178
  %inc.i182 = add i32 %add71, 1
  %56 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %inc.i182, ptr %pos.i.i.i, align 8
  %arrayidx.i183 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %add71
  %57 = ptrtoint ptr %arrayidx.i183 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -13, ptr %arrayidx.i183, align 1
  %58 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr198 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr198)
  %tobool73.not = icmp eq i32 %.pr198, 0
  br i1 %tobool73.not, label %if.end75, label %add_token_u8.exit185.while.end_crit_edge

add_token_u8.exit185.while.end_crit_edge:         ; preds = %add_token_u8.exit185
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end75:                                         ; preds = %add_token_u8.exit185
  %59 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hsn.i, align 4
  %61 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tsn.i, align 8
  %call.i186 = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %60, i32 noundef %62) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %tobool.not.i = icmp eq i32 %call.i186, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@generic_table_write_data, %finalize_and_send.exit.thread)) #6
          to label %finalize_and_send.exit [label %finalize_and_send.exit.thread], !srcloc !392

finalize_and_send.exit.thread:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i186) #6
  %63 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call.i186, ptr %err, align 4
  br label %while.end

if.end6.i:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @parse_and_check_status) #6
  br label %finalize_and_send.exit

finalize_and_send.exit:                           ; preds = %if.end6.i, %do.body.i
  %retval.0.i187 = phi i32 [ %call7.i, %if.end6.i ], [ %call.i186, %do.body.i ]
  %64 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %retval.0.i187, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i187)
  %tobool77.not = icmp eq i32 %retval.0.i187, 0
  br i1 %tobool77.not, label %if.end79, label %finalize_and_send.exit.while.end_crit_edge

finalize_and_send.exit.while.end_crit_edge:       ; preds = %finalize_and_send.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end79:                                         ; preds = %finalize_and_send.exit
  %add81 = add i32 %44, %off.0222
  %conv29 = zext i32 %add81 to i64
  %cmp30 = icmp ult i64 %conv29, %size
  br i1 %cmp30, label %if.end79.while.body_crit_edge, label %if.end79.while.end_crit_edge

if.end79.while.end_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end79.while.body_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end79.while.end_crit_edge, %finalize_and_send.exit.while.end_crit_edge, %finalize_and_send.exit.thread, %add_token_u8.exit185.while.end_crit_edge, %do.end.i.i181, %if.end69.while.end_crit_edge, %if.then68, %do.end59.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %65 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then24, %do.body12, %do.end
  %retval.0 = phi i32 [ %9, %do.end ], [ %66, %while.end ], [ -28, %if.then24 ], [ -28, %do.body12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erase_locking_range(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %uid = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uid) #6
  %opal_key = getelementptr inbounds %struct.opal_session_info, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %opal_key to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %opal_key, align 4
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 8804682956801, ptr %uid, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp5.i = icmp eq i8 %1, 0
  br i1 %cmp5.i, label %entry.build_locking_range.exit_crit_edge, label %if.end8.i

entry.build_locking_range.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %build_locking_range.exit

if.end8.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = getelementptr inbounds [8 x i8], ptr %uid, i32 0, i32 7
  %4 = getelementptr inbounds [8 x i8], ptr %uid, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %4, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %1, ptr %3, align 1
  br label %build_locking_range.exit

build_locking_range.exit:                         ; preds = %if.end8.i, %entry.build_locking_range.exit_crit_edge
  %call2 = call fastcc i32 @cmd_start(ptr noundef %dev, ptr noundef nonnull %uid, ptr noundef getelementptr inbounds ([16 x [8 x i8]], ptr @opalmethod, i32 0, i32 15))
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %build_locking_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @erase_locking_range.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@erase_locking_range, %if.then8)) #6
          to label %cleanup [label %if.then8], !srcloc !392

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @erase_locking_range.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.185) #6
  br label %cleanup

if.end10:                                         ; preds = %build_locking_range.exit
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %7 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hsn.i, align 4
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %9 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tsn.i, align 8
  %call.i = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %8, i32 noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@erase_locking_range, %if.then5.i)) #6
          to label %cleanup [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @parse_and_check_status) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i, %if.then8, %do.body
  %retval.0 = phi i32 [ %call2, %if.then8 ], [ %call2, %do.body ], [ %call7.i, %if.end6.i ], [ %call.i, %if.then5.i ], [ %call.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uid) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_active_key(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %uid = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uid) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = ptrtoint ptr %uid to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 8804682956801, ptr %uid, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp5.i = icmp eq i8 %1, 0
  br i1 %cmp5.i, label %entry.build_locking_range.exit_crit_edge, label %if.end8.i

entry.build_locking_range.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %build_locking_range.exit

if.end8.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = getelementptr inbounds [8 x i8], ptr %uid, i32 0, i32 7
  %4 = getelementptr inbounds [8 x i8], ptr %uid, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %4, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %1, ptr %3, align 1
  br label %build_locking_range.exit

build_locking_range.exit:                         ; preds = %if.end8.i, %entry.build_locking_range.exit_crit_edge
  %call2 = call fastcc i32 @generic_get_column(ptr noundef %dev, ptr noundef nonnull %uid, i64 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %build_locking_range.exit.cleanup_crit_edge

build_locking_range.exit.cleanup_crit_edge:       ; preds = %build_locking_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %build_locking_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call fastcc i32 @get_active_key_cont(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %build_locking_range.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %call2, %build_locking_range.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uid) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gen_key(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %uid = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uid) #6
  %prev_data = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %prev_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev_data, align 4
  %prev_d_len = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %prev_d_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prev_d_len, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %5 = icmp ugt i32 %4, 7
  %narrow = sub nuw nsw i32 8, %4
  %narrow23 = select i1 %5, i32 0, i32 %narrow
  %6 = zext i32 %narrow23 to i64
  %7 = getelementptr i8, ptr %uid, i32 %4
  %8 = trunc i64 %6 to i32
  %9 = call ptr @memset(ptr %7, i32 255, i32 %8)
  %10 = call ptr @memcpy(ptr %uid, ptr %1, i32 %4)
  tail call void @kfree(ptr noundef %1) #6
  %11 = ptrtoint ptr %prev_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %prev_data, align 4
  %call = call fastcc i32 @cmd_start(ptr noundef %dev, ptr noundef nonnull %uid, ptr noundef getelementptr inbounds ([16 x [8 x i8]], ptr @opalmethod, i32 0, i32 9))
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gen_key.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gen_key, %if.then9)) #6
          to label %cleanup [label %if.then9], !srcloc !392

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gen_key.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.191) #6
  br label %cleanup

if.end10:                                         ; preds = %entry
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %12 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hsn.i, align 4
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %14 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tsn.i, align 8
  %call.i = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %13, i32 noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gen_key, %if.then5.i)) #6
          to label %cleanup [label %if.then5.i], !srcloc !392

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i) #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @parse_and_check_status) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then5.i, %do.body.i, %if.then9, %do.body
  %retval.0 = phi i32 [ %call, %if.then9 ], [ %call, %do.body ], [ %call7.i, %if.end6.i ], [ %call.i, %if.then5.i ], [ %call.i, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uid) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_active_key_cont(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %activekey = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %activekey) #6
  %0 = ptrtoint ptr %activekey to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %activekey, align 4, !annotation !396
  %resp.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 12
  %parsed.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 13
  %call.i = tail call fastcc i32 @response_parse(ptr noundef %resp.i, ptr noundef %parsed.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_and_check_status.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_active_key_cont, %parse_and_check_status.exit.thread)) #6
          to label %parse_and_check_status.exit [label %parse_and_check_status.exit.thread], !srcloc !392

parse_and_check_status.exit.thread:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_and_check_status.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.85) #6
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call fastcc zeroext i8 @response_status(ptr noundef %parsed.i) #6
  %conv.i = zext i8 %call9.i to i32
  br label %parse_and_check_status.exit

parse_and_check_status.exit:                      ; preds = %if.end7.i, %do.body.i
  %retval.0.i24 = phi i32 [ %conv.i, %if.end7.i ], [ %call.i, %do.body.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i24)
  %tobool.not = icmp eq i32 %retval.0.i24, 0
  br i1 %tobool.not, label %if.end, label %parse_and_check_status.exit.cleanup_crit_edge

parse_and_check_status.exit.cleanup_crit_edge:    ; preds = %parse_and_check_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %parse_and_check_status.exit
  %call1 = call fastcc i32 @response_get_string(ptr noundef %parsed.i, i32 noundef 4, ptr noundef nonnull %activekey)
  %1 = ptrtoint ptr %activekey to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %activekey, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %do.body, label %if.end10

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_active_key_cont.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_active_key_cont, %if.then8)) #6
          to label %cleanup [label %if.then8], !srcloc !392

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_active_key_cont.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.186) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @kmemdup(ptr noundef nonnull %2, i32 noundef %call1, i32 noundef 3264) #6
  %prev_data = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %3 = ptrtoint ptr %prev_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %prev_data, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %prev_d_len = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %prev_d_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %prev_d_len, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end10.cleanup_crit_edge, %if.then8, %do.body, %parse_and_check_status.exit.cleanup_crit_edge, %parse_and_check_status.exit.thread
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %retval.0.i24, %parse_and_check_status.exit.cleanup_crit_edge ], [ 12, %if.then8 ], [ -12, %if.end10.cleanup_crit_edge ], [ %call.i, %parse_and_check_status.exit.thread ], [ 12, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %activekey) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_table_data(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %uid.i = alloca [8 x i8], align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #6
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !396
  %offset1 = getelementptr inbounds %struct.opal_read_write_table, ptr %data, i32 0, i32 3
  %1 = ptrtoint ptr %offset1 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %offset1, align 8
  %size = getelementptr inbounds %struct.opal_read_write_table, ptr %data, i32 0, i32 4
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size, align 8
  %sub = add i64 %4, -1
  %table_uid = getelementptr inbounds %struct.opal_read_write_table, ptr %data, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uid.i) #6
  %5 = getelementptr inbounds [8 x i8], ptr %uid.i, i32 0, i32 4
  %6 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %uid.i, align 4
  %7 = ptrtoint ptr %table_uid to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %table_uid, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %5, align 4
  %call.i = call fastcc i32 @generic_get_column(ptr noundef %dev, ptr noundef nonnull %uid.i, i64 noundef 7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uid.i) #6
  %10 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_table_data.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_table_data, %if.then6)) #6
          to label %do.end [label %if.then6], !srcloc !392

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_table_data.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.175) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %11 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %err, align 4
  br label %cleanup

if.end7:                                          ; preds = %entry
  %parsed = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 13
  %call8 = tail call fastcc i64 @response_get_u64(ptr noundef %parsed, i32 noundef 4)
  call void @__sanitizer_cov_trace_cmp8(i64 %call8, i64 %sub)
  %cmp = icmp ult i64 %call8, %sub
  %sub9 = sub i64 %call8, %sub
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %sub9)
  %cmp10 = icmp ugt i64 %2, %sub9
  %or.cond = select i1 %cmp, i1 true, i1 %cmp10
  br i1 %or.cond, label %do.body12, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp29280.not = icmp eq i64 %sub, 0
  br i1 %cmp29280.not, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %pos.i.i.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 10
  %13 = trunc i64 %sub to i32
  %hsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 6
  %tsn.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 7
  %prev_d_len = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 14
  %data75 = getelementptr inbounds %struct.opal_read_write_table, ptr %data, i32 0, i32 1
  %prev_data = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  br label %while.body

do.body12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_table_data.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_table_data, %if.then24)) #6
          to label %cleanup [label %if.then24], !srcloc !392

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i64 %sub, %2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_table_data.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.197, i64 noundef %add, i64 noundef %call8) #6
  br label %cleanup

while.body:                                       ; preds = %if.end97.while.body_crit_edge, %while.body.lr.ph
  %conv282 = phi i64 [ 0, %while.body.lr.ph ], [ %conv, %if.end97.while.body_crit_edge ]
  %off.0281 = phi i32 [ 0, %while.body.lr.ph ], [ %add100, %if.end97.while.body_crit_edge ]
  %call33 = tail call fastcc i32 @cmd_start(ptr noundef %dev, ptr noundef %table_uid, ptr noundef getelementptr inbounds ([16 x [8 x i8]], ptr @opalmethod, i32 0, i32 11))
  %14 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call33, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool.not.i.i = icmp eq i32 %call33, 0
  br i1 %tobool.not.i.i, label %if.end.i.i159, label %while.body.add_token_u8.exit181_crit_edge

while.body.add_token_u8.exit181_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit181

if.end.i.i159:                                    ; preds = %while.body
  %15 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %16)
  %cmp.i.i158 = icmp eq i32 %16, 2048
  br i1 %cmp.i.i158, label %do.body.i.i, label %add_token_u8.exit

do.body.i.i:                                      ; preds = %if.end.i.i159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_table_data, %if.then6.i.i)) #6
          to label %do.end.i.i [label %if.then6.i.i], !srcloc !392

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i, %do.body.i.i
  %17 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit181

add_token_u8.exit:                                ; preds = %if.end.i.i159
  %inc.i = add i32 %16, 1
  %18 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %inc.i, ptr %pos.i.i.i, align 8
  %arrayidx.i = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %16
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -16, ptr %arrayidx.i, align 1
  %20 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i.i160 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i.i160, label %if.end.i.i163, label %add_token_u8.exit.add_token_u8.exit181_crit_edge

add_token_u8.exit.add_token_u8.exit181_crit_edge: ; preds = %add_token_u8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit181

if.end.i.i163:                                    ; preds = %add_token_u8.exit
  %21 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %22)
  %cmp.i.i162 = icmp eq i32 %22, 2048
  br i1 %cmp.i.i162, label %do.body.i.i164, label %add_token_u8.exit170

do.body.i.i164:                                   ; preds = %if.end.i.i163
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_table_data, %if.then6.i.i165)) #6
          to label %do.end.i.i166 [label %if.then6.i.i165], !srcloc !392

if.then6.i.i165:                                  ; preds = %do.body.i.i164
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i166

do.end.i.i166:                                    ; preds = %if.then6.i.i165, %do.body.i.i164
  %23 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit181

add_token_u8.exit170:                             ; preds = %if.end.i.i163
  %inc.i167 = add i32 %22, 1
  %24 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %inc.i167, ptr %pos.i.i.i, align 8
  %arrayidx.i168 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %22
  %25 = ptrtoint ptr %arrayidx.i168 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -14, ptr %arrayidx.i168, align 1
  %26 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr242.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr242.pr)
  %tobool.not.i.i171 = icmp eq i32 %.pr242.pr, 0
  br i1 %tobool.not.i.i171, label %if.end.i.i174, label %add_token_u8.exit170.add_token_u8.exit181_crit_edge

add_token_u8.exit170.add_token_u8.exit181_crit_edge: ; preds = %add_token_u8.exit170
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit181

if.end.i.i174:                                    ; preds = %add_token_u8.exit170
  %27 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %28)
  %cmp.i.i173 = icmp eq i32 %28, 2048
  br i1 %cmp.i.i173, label %do.body.i.i175, label %if.end.i180

do.body.i.i175:                                   ; preds = %if.end.i.i174
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_table_data, %if.then6.i.i176)) #6
          to label %do.end.i.i177 [label %if.then6.i.i176], !srcloc !392

if.then6.i.i176:                                  ; preds = %do.body.i.i175
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i177

do.end.i.i177:                                    ; preds = %if.then6.i.i176, %do.body.i.i175
  %29 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit181

if.end.i180:                                      ; preds = %if.end.i.i174
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i178 = add i32 %28, 1
  %30 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %inc.i178, ptr %pos.i.i.i, align 8
  %arrayidx.i179 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %28
  %31 = ptrtoint ptr %arrayidx.i179 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %arrayidx.i179, align 1
  br label %add_token_u8.exit181

add_token_u8.exit181:                             ; preds = %if.end.i180, %do.end.i.i177, %add_token_u8.exit170.add_token_u8.exit181_crit_edge, %do.end.i.i166, %add_token_u8.exit.add_token_u8.exit181_crit_edge, %do.end.i.i, %while.body.add_token_u8.exit181_crit_edge
  %add35 = add i64 %conv282, %2
  call fastcc void @add_token_u64(ptr noundef nonnull %err, ptr noundef %dev, i64 noundef %add35)
  %32 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i182 = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i182, label %if.end.i.i185, label %add_token_u8.exit181.add_token_u8.exit214_crit_edge

add_token_u8.exit181.add_token_u8.exit214_crit_edge: ; preds = %add_token_u8.exit181
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit214

if.end.i.i185:                                    ; preds = %add_token_u8.exit181
  %34 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %35)
  %cmp.i.i184 = icmp eq i32 %35, 2048
  br i1 %cmp.i.i184, label %do.body.i.i186, label %add_token_u8.exit192

do.body.i.i186:                                   ; preds = %if.end.i.i185
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_table_data, %if.then6.i.i187)) #6
          to label %do.end.i.i188 [label %if.then6.i.i187], !srcloc !392

if.then6.i.i187:                                  ; preds = %do.body.i.i186
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i188

do.end.i.i188:                                    ; preds = %if.then6.i.i187, %do.body.i.i186
  %36 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit214

add_token_u8.exit192:                             ; preds = %if.end.i.i185
  %inc.i189 = add i32 %35, 1
  %37 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %inc.i189, ptr %pos.i.i.i, align 8
  %arrayidx.i190 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %35
  %38 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -13, ptr %arrayidx.i190, align 1
  %39 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr244 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr244)
  %tobool.not.i.i193 = icmp eq i32 %.pr244, 0
  br i1 %tobool.not.i.i193, label %if.end.i.i196, label %add_token_u8.exit192.add_token_u8.exit214_crit_edge

add_token_u8.exit192.add_token_u8.exit214_crit_edge: ; preds = %add_token_u8.exit192
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit214

if.end.i.i196:                                    ; preds = %add_token_u8.exit192
  %40 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %41)
  %cmp.i.i195 = icmp eq i32 %41, 2048
  br i1 %cmp.i.i195, label %do.body.i.i197, label %add_token_u8.exit203

do.body.i.i197:                                   ; preds = %if.end.i.i196
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_table_data, %if.then6.i.i198)) #6
          to label %do.end.i.i199 [label %if.then6.i.i198], !srcloc !392

if.then6.i.i198:                                  ; preds = %do.body.i.i197
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i199

do.end.i.i199:                                    ; preds = %if.then6.i.i198, %do.body.i.i197
  %42 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit214

add_token_u8.exit203:                             ; preds = %if.end.i.i196
  %inc.i200 = add i32 %41, 1
  %43 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %inc.i200, ptr %pos.i.i.i, align 8
  %arrayidx.i201 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %41
  %44 = ptrtoint ptr %arrayidx.i201 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -14, ptr %arrayidx.i201, align 1
  %45 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr246.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr246.pr)
  %tobool.not.i.i204 = icmp eq i32 %.pr246.pr, 0
  br i1 %tobool.not.i.i204, label %if.end.i.i207, label %add_token_u8.exit203.add_token_u8.exit214_crit_edge

add_token_u8.exit203.add_token_u8.exit214_crit_edge: ; preds = %add_token_u8.exit203
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_token_u8.exit214

if.end.i.i207:                                    ; preds = %add_token_u8.exit203
  %46 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %47)
  %cmp.i.i206 = icmp eq i32 %47, 2048
  br i1 %cmp.i.i206, label %do.body.i.i208, label %if.end.i213

do.body.i.i208:                                   ; preds = %if.end.i.i207
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_table_data, %if.then6.i.i209)) #6
          to label %do.end.i.i210 [label %if.then6.i.i209], !srcloc !392

if.then6.i.i209:                                  ; preds = %do.body.i.i208
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i210

do.end.i.i210:                                    ; preds = %if.then6.i.i209, %do.body.i.i208
  %48 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -34, ptr %err, align 4
  br label %add_token_u8.exit214

if.end.i213:                                      ; preds = %if.end.i.i207
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i211 = add i32 %47, 1
  %49 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %inc.i211, ptr %pos.i.i.i, align 8
  %arrayidx.i212 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %47
  %50 = ptrtoint ptr %arrayidx.i212 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %arrayidx.i212, align 1
  br label %add_token_u8.exit214

add_token_u8.exit214:                             ; preds = %if.end.i213, %do.end.i.i210, %add_token_u8.exit203.add_token_u8.exit214_crit_edge, %do.end.i.i199, %add_token_u8.exit192.add_token_u8.exit214_crit_edge, %do.end.i.i188, %add_token_u8.exit181.add_token_u8.exit214_crit_edge
  %conv38 = sub i32 %13, %off.0281
  %51 = tail call i32 @llvm.umin.i32(i32 %conv38, i32 1981)
  %conv42 = zext i32 %51 to i64
  %add45 = add i64 %add35, %conv42
  call fastcc void @add_token_u64(ptr noundef nonnull %err, ptr noundef %dev, i64 noundef %add45)
  %52 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i215 = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i215, label %if.end.i.i218, label %add_token_u8.exit214.do.body48_crit_edge

add_token_u8.exit214.do.body48_crit_edge:         ; preds = %add_token_u8.exit214
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48

if.end.i.i218:                                    ; preds = %add_token_u8.exit214
  %54 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %55)
  %cmp.i.i217 = icmp eq i32 %55, 2048
  br i1 %cmp.i.i217, label %do.body.i.i219, label %add_token_u8.exit225

do.body.i.i219:                                   ; preds = %if.end.i.i218
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_table_data, %if.then6.i.i220)) #6
          to label %do.end.i.i221 [label %if.then6.i.i220], !srcloc !392

if.then6.i.i220:                                  ; preds = %do.body.i.i219
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i221

do.end.i.i221:                                    ; preds = %if.then6.i.i220, %do.body.i.i219
  %56 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -34, ptr %err, align 4
  br label %do.body48

add_token_u8.exit225:                             ; preds = %if.end.i.i218
  %inc.i222 = add i32 %55, 1
  %57 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %inc.i222, ptr %pos.i.i.i, align 8
  %arrayidx.i223 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %55
  %58 = ptrtoint ptr %arrayidx.i223 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -13, ptr %arrayidx.i223, align 1
  %59 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr248 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr248)
  %tobool.not.i.i226 = icmp eq i32 %.pr248, 0
  br i1 %tobool.not.i.i226, label %if.end.i.i229, label %add_token_u8.exit225.do.body48_crit_edge

add_token_u8.exit225.do.body48_crit_edge:         ; preds = %add_token_u8.exit225
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48

if.end.i.i229:                                    ; preds = %add_token_u8.exit225
  %60 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pos.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %61)
  %cmp.i.i228 = icmp eq i32 %61, 2048
  br i1 %cmp.i.i228, label %do.body.i.i230, label %add_token_u8.exit236

do.body.i.i230:                                   ; preds = %if.end.i.i229
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @can_add.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_table_data, %if.then6.i.i231)) #6
          to label %do.end.i.i232 [label %if.then6.i.i231], !srcloc !392

if.then6.i.i231:                                  ; preds = %do.body.i.i230
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @can_add.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.65, i32 noundef 1) #6
  br label %do.end.i.i232

do.end.i.i232:                                    ; preds = %if.then6.i.i231, %do.body.i.i230
  %62 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -34, ptr %err, align 4
  br label %do.body48

add_token_u8.exit236:                             ; preds = %if.end.i.i229
  %inc.i233 = add i32 %61, 1
  %63 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %inc.i233, ptr %pos.i.i.i, align 8
  %arrayidx.i234 = getelementptr %struct.opal_dev, ptr %dev, i32 0, i32 11, i32 %61
  %64 = ptrtoint ptr %arrayidx.i234 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -15, ptr %arrayidx.i234, align 1
  %65 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr250.pr = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr250.pr)
  %tobool46.not = icmp eq i32 %.pr250.pr, 0
  br i1 %tobool46.not, label %if.end64, label %add_token_u8.exit236.do.body48_crit_edge

add_token_u8.exit236.do.body48_crit_edge:         ; preds = %add_token_u8.exit236
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48

do.body48:                                        ; preds = %add_token_u8.exit236.do.body48_crit_edge, %do.end.i.i232, %add_token_u8.exit225.do.body48_crit_edge, %do.end.i.i221, %add_token_u8.exit214.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_table_data.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_table_data, %if.then60)) #6
          to label %while.end [label %if.then60], !srcloc !392

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_table_data.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.199) #6
  br label %while.end

if.end64:                                         ; preds = %add_token_u8.exit236
  %66 = ptrtoint ptr %hsn.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hsn.i, align 4
  %68 = ptrtoint ptr %tsn.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tsn.i, align 8
  %call.i237 = tail call fastcc i32 @cmd_finalize(ptr noundef %dev, i32 noundef %67, i32 noundef %69) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool.not.i = icmp eq i32 %call.i237, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @finalize_and_send.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_table_data, %finalize_and_send.exit.thread)) #6
          to label %finalize_and_send.exit [label %finalize_and_send.exit.thread], !srcloc !392

finalize_and_send.exit.thread:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @finalize_and_send.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.71, i32 noundef %call.i237) #6
  %70 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call.i237, ptr %err, align 4
  br label %while.end

if.end6.i:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call fastcc i32 @opal_send_recv(ptr noundef %dev, ptr noundef nonnull @read_table_data_cont) #6
  br label %finalize_and_send.exit

finalize_and_send.exit:                           ; preds = %if.end6.i, %do.body.i
  %retval.0.i238 = phi i32 [ %call7.i, %if.end6.i ], [ %call.i237, %do.body.i ]
  %71 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %retval.0.i238, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i238)
  %tobool66.not = icmp eq i32 %retval.0.i238, 0
  br i1 %tobool66.not, label %if.end68, label %finalize_and_send.exit.while.end_crit_edge

finalize_and_send.exit.while.end_crit_edge:       ; preds = %finalize_and_send.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end68:                                         ; preds = %finalize_and_send.exit
  %72 = ptrtoint ptr %prev_d_len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %prev_d_len, align 8
  %conv69 = zext i32 %73 to i64
  %add70 = add nuw nsw i64 %conv42, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add70, i64 %conv69)
  %cmp71 = icmp ult i64 %add70, %conv69
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -75, ptr %err, align 4
  br label %while.end

if.end74:                                         ; preds = %if.end68
  %75 = ptrtoint ptr %data75 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %data75, align 8
  %conv76 = trunc i64 %76 to i32
  %77 = inttoptr i32 %conv76 to ptr
  %add.ptr = getelementptr i8, ptr %77, i32 %off.0281
  %78 = ptrtoint ptr %prev_data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp9.i.i = icmp slt i32 %73, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end74
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.do.body81_crit_edge, label %if.then27.i.i, !prof !397

land.rhs16.i.i.do.body81_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body81

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.180, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %do.body81

if.then.i.i.i:                                    ; preds = %if.end74
  tail call void @__check_object_size(ptr noundef %79, i32 noundef %73, i1 noundef zeroext true) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.182, i32 noundef 174) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %80 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %73, i32 -1226833920) #10, !srcloc !402
  %asmresult.i.i = extractvalue { i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %79, i32 noundef %73) #6
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef %79, i32 noundef %73) #6
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %73, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %73, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool79.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool79.not, label %if.end97, label %copy_to_user.exit.do.body81_crit_edge

copy_to_user.exit.do.body81_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body81

do.body81:                                        ; preds = %copy_to_user.exit.do.body81_crit_edge, %if.then27.i.i, %land.rhs16.i.i.do.body81_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_table_data.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_table_data, %if.then93)) #6
          to label %do.end96 [label %if.then93], !srcloc !392

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_table_data.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.201) #6
  br label %do.end96

do.end96:                                         ; preds = %if.then93, %do.body81
  %81 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -14, ptr %err, align 4
  br label %while.end

if.end97:                                         ; preds = %copy_to_user.exit
  %82 = ptrtoint ptr %prev_data to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %prev_data, align 4
  %add100 = add i32 %51, %off.0281
  %conv = zext i32 %add100 to i64
  %cmp29 = icmp ugt i64 %sub, %conv
  br i1 %cmp29, label %if.end97.while.body_crit_edge, label %if.end97.while.end_crit_edge

if.end97.while.end_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end97.while.body_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end97.while.end_crit_edge, %do.end96, %if.then73, %finalize_and_send.exit.while.end_crit_edge, %finalize_and_send.exit.thread, %if.then60, %do.body48, %while.cond.preheader.while.end_crit_edge
  %83 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then24, %do.body12, %do.end
  %retval.0 = phi i32 [ %12, %do.end ], [ %84, %while.end ], [ -22, %if.then24 ], [ -22, %do.body12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_table_data_cont(ptr noundef %dev) #0 align 64 {
entry:
  %data_read = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_read) #6
  %0 = ptrtoint ptr %data_read to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %data_read, align 4, !annotation !396
  %resp.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 12
  %parsed.i = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 13
  %call.i = tail call fastcc i32 @response_parse(ptr noundef %resp.i, ptr noundef %parsed.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parse_and_check_status.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_table_data_cont, %parse_and_check_status.exit.thread)) #6
          to label %parse_and_check_status.exit [label %parse_and_check_status.exit.thread], !srcloc !392

parse_and_check_status.exit.thread:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parse_and_check_status.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.85) #6
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call fastcc zeroext i8 @response_status(ptr noundef %parsed.i) #6
  %conv.i = zext i8 %call9.i to i32
  br label %parse_and_check_status.exit

parse_and_check_status.exit:                      ; preds = %if.end7.i, %do.body.i
  %retval.0.i18 = phi i32 [ %conv.i, %if.end7.i ], [ %call.i, %do.body.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i18)
  %tobool.not = icmp eq i32 %retval.0.i18, 0
  br i1 %tobool.not, label %if.end, label %parse_and_check_status.exit.cleanup_crit_edge

parse_and_check_status.exit.cleanup_crit_edge:    ; preds = %parse_and_check_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %parse_and_check_status.exit
  %call1 = call fastcc i32 @response_get_string(ptr noundef %parsed.i, i32 noundef 1, ptr noundef nonnull %data_read)
  %prev_d_len = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 14
  %1 = ptrtoint ptr %prev_d_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call1, ptr %prev_d_len, align 8
  %2 = ptrtoint ptr %data_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_read, align 4
  %prev_data = getelementptr inbounds %struct.opal_dev, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %prev_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %prev_data, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_table_data_cont.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_table_data_cont, %if.then9)) #6
          to label %cleanup [label %if.then9], !srcloc !392

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_table_data_cont.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.202) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.body, %if.end.cleanup_crit_edge, %parse_and_check_status.exit.cleanup_crit_edge, %parse_and_check_status.exit.thread
  %retval.0 = phi i32 [ %retval.0.i18, %parse_and_check_status.exit.cleanup_crit_edge ], [ 12, %if.then9 ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %parse_and_check_status.exit.thread ], [ 12, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_read) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_table_data(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.opal_read_write_table, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data1, align 8
  %offset = getelementptr inbounds %struct.opal_read_write_table, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  %size = getelementptr inbounds %struct.opal_read_write_table, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size, align 8
  %table_uid = getelementptr inbounds %struct.opal_read_write_table, ptr %data, i32 0, i32 2
  %call = tail call fastcc i32 @generic_table_write_data(ptr noundef %dev, i64 noundef %1, i64 noundef %3, i64 noundef %5, ptr noundef %table_uid)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 204)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 204)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !224, !226, !228, !229, !230, !231, !233, !234, !235, !237, !238, !239, !240, !242, !243, !244, !245, !247, !248, !249, !250, !252, !253, !254, !256, !257, !258, !259, !261, !262, !263, !264, !266, !267, !268, !269, !271, !272, !273, !274, !276, !277, !278, !279, !281, !282, !283, !284, !286, !287, !288, !289, !291, !292, !293, !294, !296, !297, !298, !299, !301, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !316, !317, !319, !320, !321, !322, !324, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !340, !342, !344, !345, !346, !347, !349, !350, !351, !352, !354, !355, !356, !357, !359, !360, !361, !362, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380, !381}
!llvm.named.register.sp = !{!382}
!llvm.module.flags = !{!383, !384, !385, !386, !387, !388, !389, !390}
!llvm.ident = !{!391}

!0 = !{ptr @__ksymtab_free_opal_dev, !1, !"__ksymtab_free_opal_dev", i1 false, i1 false}
!1 = !{!"../block/sed-opal.c", i32 2139, i32 1}
!2 = !{ptr @init_opal_dev.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../block/sed-opal.c", i32 2150, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../block/sed-opal.c", i32 2154, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @init_opal_dev.__UNIQUE_ID_ddebug309, !6, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!11 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__ksymtab_init_opal_dev, !13, !"__ksymtab_init_opal_dev", i1 false, i1 false}
!13 = !{!"../block/sed-opal.c", i32 2161, i32 1}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../block/sed-opal.c", i32 2543, i32 4}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @opal_unlock_from_suspend.__UNIQUE_ID_ddebug314, !15, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!18 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../block/sed-opal.c", i32 2552, i32 5}
!21 = !{ptr @opal_unlock_from_suspend.__UNIQUE_ID_ddebug315, !20, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!22 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__ksymtab_opal_unlock_from_suspend, !24, !"__ksymtab_opal_unlock_from_suspend", i1 false, i1 false}
!24 = !{!"../block/sed-opal.c", i32 2559, i32 1}
!25 = !{ptr @__ksymtab_sed_ioctl, !26, !"__ksymtab_sed_ioctl", i1 false, i1 false}
!26 = !{!"../block/sed-opal.c", i32 2695, i32 1}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../block/sed-opal.c", i32 441, i32 3}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @opal_discovery0_end.__UNIQUE_ID_ddebug247, !28, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!31 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../block/sed-opal.c", i32 469, i32 4}
!34 = !{ptr @opal_discovery0_end.__UNIQUE_ID_ddebug248, !33, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!35 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../block/sed-opal.c", i32 484, i32 4}
!38 = !{ptr @opal_discovery0_end.__UNIQUE_ID_ddebug249, !37, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!39 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../block/sed-opal.c", i32 492, i32 3}
!42 = !{ptr @opal_discovery0_end.__UNIQUE_ID_ddebug250, !41, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!43 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../block/sed-opal.c", i32 497, i32 3}
!46 = !{ptr @opal_discovery0_end.__UNIQUE_ID_ddebug251, !45, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!47 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../block/sed-opal.c", i32 501, i32 3}
!50 = !{ptr @opal_discovery0_end.__UNIQUE_ID_ddebug252, !49, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!51 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../block/sed-opal.c", i32 275, i32 3}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @check_tper.__UNIQUE_ID_ddebug242, !53, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!56 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../block/sed-opal.c", i32 297, i32 3}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @check_sum.__UNIQUE_ID_ddebug243, !58, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!61 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../block/sed-opal.c", i32 301, i32 2}
!64 = !{ptr @check_sum.__UNIQUE_ID_ddebug244, !63, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!65 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../block/sed-opal.c", i32 387, i32 3}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @execute_step.__UNIQUE_ID_ddebug246, !67, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!70 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../block/sed-opal.c", i32 253, i32 10}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../block/sed-opal.c", i32 256, i32 10}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../block/sed-opal.c", i32 229, i32 2}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../block/sed-opal.c", i32 230, i32 2}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../block/sed-opal.c", i32 232, i32 2}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../block/sed-opal.c", i32 233, i32 2}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../block/sed-opal.c", i32 234, i32 2}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../block/sed-opal.c", i32 235, i32 2}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../block/sed-opal.c", i32 236, i32 2}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../block/sed-opal.c", i32 237, i32 2}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../block/sed-opal.c", i32 238, i32 2}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../block/sed-opal.c", i32 239, i32 2}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../block/sed-opal.c", i32 240, i32 2}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../block/sed-opal.c", i32 241, i32 2}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../block/sed-opal.c", i32 242, i32 2}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../block/sed-opal.c", i32 244, i32 2}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../block/sed-opal.c", i32 245, i32 2}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../block/sed-opal.c", i32 246, i32 2}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../block/sed-opal.c", i32 247, i32 2}
!109 = !{ptr @opal_errors, !110, !"opal_errors", i1 false, i1 false}
!110 = !{!"../block/sed-opal.c", i32 228, i32 27}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../block/sed-opal.c", i32 1534, i32 3}
!113 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @start_auth_opal_session.__UNIQUE_ID_ddebug286, !112, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!115 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!116 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../block/sed-opal.c", i32 665, i32 3}
!118 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !117, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!120 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @opaluid, !122, !"opaluid", i1 false, i1 false}
!122 = !{!"../block/sed-opal.c", i32 102, i32 17}
!123 = !{ptr @opalmethod, !124, !"opalmethod", i1 false, i1 false}
!124 = !{!"../block/sed-opal.c", i32 179, i32 17}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../block/sed-opal.c", i32 601, i32 3}
!127 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @add_token_u64.__UNIQUE_ID_ddebug254, !126, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!129 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../block/sed-opal.c", i32 543, i32 3}
!132 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @can_add.__UNIQUE_ID_ddebug253, !131, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!134 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../block/sed-opal.c", i32 620, i32 3}
!137 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @add_bytestring_header.__UNIQUE_ID_ddebug255, !136, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!139 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../block/sed-opal.c", i32 1099, i32 3}
!142 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @finalize_and_send.__UNIQUE_ID_ddebug272, !141, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!144 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../block/sed-opal.c", i32 706, i32 3}
!147 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @cmd_finalize.__UNIQUE_ID_ddebug258, !146, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!149 = !{ptr @.str.74, !146, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../block/sed-opal.c", i32 718, i32 4}
!152 = !{ptr @cmd_finalize.__UNIQUE_ID_ddebug259, !151, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!153 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../block/sed-opal.c", i32 342, i32 3}
!156 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @opal_recv_check.__UNIQUE_ID_ddebug245, !155, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!158 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../block/sed-opal.c", i32 1060, i32 3}
!161 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @start_opal_session_cont.__UNIQUE_ID_ddebug271, !160, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!163 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.83, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../block/sed-opal.c", i32 1013, i32 3}
!166 = !{ptr @.str.84, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @parse_and_check_status.__UNIQUE_ID_ddebug270, !165, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!168 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.86, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../block/sed-opal.c", i32 872, i32 2}
!171 = !{ptr @.str.87, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @response_parse.__UNIQUE_ID_ddebug264, !170, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!173 = !{ptr @.str.88, !170, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.89, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../block/sed-opal.c", i32 877, i32 3}
!176 = !{ptr @response_parse.__UNIQUE_ID_ddebug265, !175, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!177 = !{ptr @.str.90, !175, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.91, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../block/sed-opal.c", i32 790, i32 4}
!180 = !{ptr @.str.92, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @response_parse_short.__UNIQUE_ID_ddebug263, !179, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!182 = !{ptr @.str.93, !179, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.94, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../block/sed-opal.c", i32 737, i32 3}
!185 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @response_get_token.__UNIQUE_ID_ddebug260, !184, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!187 = !{ptr @.str.96, !184, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.97, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../block/sed-opal.c", i32 742, i32 3}
!190 = !{ptr @response_get_token.__UNIQUE_ID_ddebug261, !189, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!191 = !{ptr @.str.98, !189, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.99, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../block/sed-opal.c", i32 749, i32 3}
!194 = !{ptr @response_get_token.__UNIQUE_ID_ddebug262, !193, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!195 = !{ptr @.str.100, !193, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.101, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../block/sed-opal.c", i32 961, i32 3}
!198 = !{ptr @.str.102, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @response_get_u64.__UNIQUE_ID_ddebug268, !197, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!200 = !{ptr @.str.103, !197, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.104, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../block/sed-opal.c", i32 966, i32 3}
!203 = !{ptr @response_get_u64.__UNIQUE_ID_ddebug269, !202, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!204 = !{ptr @.str.105, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.106, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../block/sed-opal.c", i32 1812, i32 3}
!207 = !{ptr @.str.107, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @lock_unlock_locking_range.__UNIQUE_ID_ddebug295, !206, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!209 = !{ptr @.str.108, !206, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.109, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../block/sed-opal.c", i32 1836, i32 3}
!212 = !{ptr @lock_unlock_locking_range.__UNIQUE_ID_ddebug296, !211, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!213 = !{ptr @.str.110, !211, !"<string literal>", i1 false, i1 false}
!214 = distinct !{null, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../block/sed-opal.c", i32 647, i32 3}
!216 = distinct !{null, !215, !"<string literal>", i1 false, i1 false}
!217 = distinct !{null, !215, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!218 = distinct !{null, !215, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.114, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../block/sed-opal.c", i32 1871, i32 3}
!221 = !{ptr @.str.115, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @lock_unlock_locking_range_sum.__UNIQUE_ID_ddebug297, !220, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!223 = !{ptr @.str.116, !220, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @lock_unlock_locking_range_sum.__UNIQUE_ID_ddebug298, !225, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!225 = !{!"../block/sed-opal.c", i32 1878, i32 3}
!226 = !{ptr @.str.117, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../block/sed-opal.c", i32 1435, i32 3}
!228 = !{ptr @.str.118, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @start_generic_opal_session.__UNIQUE_ID_ddebug284, !227, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!230 = !{ptr @.str.119, !227, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.120, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../block/sed-opal.c", i32 1440, i32 3}
!233 = !{ptr @start_generic_opal_session.__UNIQUE_ID_ddebug285, !232, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!234 = !{ptr @.str.121, !232, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.122, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../block/sed-opal.c", i32 1621, i32 3}
!237 = !{ptr @.str.123, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @set_mbr_done.__UNIQUE_ID_ddebug290, !236, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!239 = !{ptr @.str.124, !236, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.125, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../block/sed-opal.c", i32 1955, i32 3}
!242 = !{ptr @.str.126, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @get_msid_cpin_pin.__UNIQUE_ID_ddebug301, !241, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!244 = !{ptr @.str.127, !241, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.128, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../block/sed-opal.c", i32 927, i32 3}
!247 = !{ptr @.str.129, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @response_get_string.__UNIQUE_ID_ddebug266, !246, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!249 = !{ptr @.str.130, !246, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.131, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../block/sed-opal.c", i32 943, i32 3}
!252 = !{ptr @response_get_string.__UNIQUE_ID_ddebug267, !251, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!253 = !{ptr @.str.132, !251, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.133, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../block/sed-opal.c", i32 1714, i32 3}
!256 = !{ptr @.str.134, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @set_sid_cpin_pin.__UNIQUE_ID_ddebug293, !255, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!258 = !{ptr @.str.135, !255, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.136, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../block/sed-opal.c", i32 1936, i32 3}
!261 = !{ptr @.str.137, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @get_lsp_lifecycle.__UNIQUE_ID_ddebug300, !260, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!263 = !{ptr @.str.138, !260, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.139, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../block/sed-opal.c", i32 1914, i32 3}
!266 = !{ptr @.str.140, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @activate_lsp.__UNIQUE_ID_ddebug299, !265, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!268 = !{ptr @.str.141, !265, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.142, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../block/sed-opal.c", i32 1699, i32 3}
!271 = !{ptr @.str.143, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @set_new_pw.__UNIQUE_ID_ddebug292, !270, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!273 = !{ptr @.str.144, !270, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.145, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../block/sed-opal.c", i32 2510, i32 3}
!276 = !{ptr @.str.146, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @opal_activate_user.__UNIQUE_ID_ddebug313, !275, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!278 = !{ptr @.str.147, !275, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.148, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../block/sed-opal.c", i32 1576, i32 3}
!281 = !{ptr @.str.149, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @internal_activate_user.__UNIQUE_ID_ddebug288, !280, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!283 = !{ptr @.str.150, !280, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.151, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../block/sed-opal.c", i32 1548, i32 3}
!286 = !{ptr @.str.152, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @revert_tper.__UNIQUE_ID_ddebug287, !285, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!288 = !{ptr @.str.153, !285, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.154, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../block/sed-opal.c", i32 1391, i32 3}
!291 = !{ptr @.str.155, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @setup_locking_range.__UNIQUE_ID_ddebug283, !290, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!293 = !{ptr @.str.156, !290, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.157, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../block/sed-opal.c", i32 1341, i32 3}
!296 = !{ptr @.str.158, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @enable_global_lr.__UNIQUE_ID_ddebug282, !295, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!298 = !{ptr @.str.159, !295, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @.str.160, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../block/sed-opal.c", i32 2305, i32 3}
!301 = !{ptr @.str.161, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @opal_add_user_to_lr.__UNIQUE_ID_ddebug310, !300, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!303 = !{ptr @.str.162, !300, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.163, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../block/sed-opal.c", i32 2311, i32 3}
!306 = !{ptr @opal_add_user_to_lr.__UNIQUE_ID_ddebug311, !305, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!307 = !{ptr @.str.164, !305, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.165, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../block/sed-opal.c", i32 2317, i32 3}
!310 = !{ptr @opal_add_user_to_lr.__UNIQUE_ID_ddebug312, !309, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!311 = !{ptr @.str.166, !309, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.167, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../block/sed-opal.c", i32 1781, i32 3}
!314 = !{ptr @.str.168, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @add_user_to_lr.__UNIQUE_ID_ddebug294, !313, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!316 = !{ptr @.str.169, !313, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.170, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../block/sed-opal.c", i32 1647, i32 3}
!319 = !{ptr @.str.171, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @set_mbr_enable_disable.__UNIQUE_ID_ddebug291, !318, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!321 = !{ptr @.str.172, !318, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.173, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../block/sed-opal.c", i32 1238, i32 3}
!324 = !{ptr @.str.174, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @generic_table_write_data.__UNIQUE_ID_ddebug277, !323, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!326 = !{ptr @.str.175, !323, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.176, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../block/sed-opal.c", i32 1244, i32 3}
!329 = !{ptr @generic_table_write_data.__UNIQUE_ID_ddebug278, !328, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!330 = !{ptr @.str.177, !328, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.178, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../block/sed-opal.c", i32 1268, i32 3}
!333 = !{ptr @generic_table_write_data.__UNIQUE_ID_ddebug281, !332, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!334 = !{ptr @.str.179, !332, !"<string literal>", i1 false, i1 false}
!335 = distinct !{null, !336, !"__already_done", i1 false, i1 false}
!336 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!337 = !{ptr @.str.180, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @.str.181, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!340 = !{ptr @.str.182, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!342 = !{ptr @.str.183, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../block/sed-opal.c", i32 1595, i32 3}
!344 = !{ptr @.str.184, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @erase_locking_range.__UNIQUE_ID_ddebug289, !343, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!346 = !{ptr @.str.185, !343, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.186, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../block/sed-opal.c", i32 1194, i32 3}
!349 = !{ptr @.str.187, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @get_active_key_cont.__UNIQUE_ID_ddebug276, !348, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!351 = !{ptr @.str.188, !348, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.189, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../block/sed-opal.c", i32 1174, i32 3}
!354 = !{ptr @.str.190, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @gen_key.__UNIQUE_ID_ddebug275, !353, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!356 = !{ptr @.str.191, !353, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @.str.192, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../block/sed-opal.c", i32 2612, i32 3}
!359 = !{ptr @.str.193, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @opal_generic_read_write_table.__UNIQUE_ID_ddebug316, !358, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!361 = !{ptr @.str.194, !358, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @.str.195, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../block/sed-opal.c", i32 2015, i32 3}
!364 = !{ptr @read_table_data.__UNIQUE_ID_ddebug303, !363, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!365 = !{ptr @.str.196, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../block/sed-opal.c", i32 2023, i32 3}
!367 = !{ptr @read_table_data.__UNIQUE_ID_ddebug304, !366, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!368 = !{ptr @.str.197, !366, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @.str.198, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../block/sed-opal.c", i32 2047, i32 4}
!371 = !{ptr @read_table_data.__UNIQUE_ID_ddebug307, !370, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!372 = !{ptr @.str.199, !370, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @.str.200, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../block/sed-opal.c", i32 2063, i32 4}
!375 = !{ptr @read_table_data.__UNIQUE_ID_ddebug308, !374, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!376 = !{ptr @.str.201, !374, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @.str.202, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../block/sed-opal.c", i32 1988, i32 3}
!379 = !{ptr @.str.203, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @read_table_data_cont.__UNIQUE_ID_ddebug302, !378, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!381 = !{ptr @.str.204, !378, !"<string literal>", i1 false, i1 false}
!382 = !{!"sp"}
!383 = !{i32 1, !"wchar_size", i32 2}
!384 = !{i32 1, !"min_enum_size", i32 4}
!385 = !{i32 8, !"branch-target-enforcement", i32 0}
!386 = !{i32 8, !"sign-return-address", i32 0}
!387 = !{i32 8, !"sign-return-address-all", i32 0}
!388 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!389 = !{i32 7, !"uwtable", i32 1}
!390 = !{i32 7, !"frame-pointer", i32 2}
!391 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!392 = !{i64 2148818695, i64 2148818700, i64 2148818713, i64 2148818757, i64 2148818791, i64 2148818812}
!393 = !{i8 0, i8 2}
!394 = !{i32 0, i32 33}
!395 = !{ptr @end_session_cont, ptr @parse_and_check_status, ptr @read_table_data_cont, ptr @start_opal_session_cont}
!396 = !{!"auto-init"}
!397 = !{!"branch_weights", i32 2000, i32 1}
!398 = !{i64 2152760592, i64 2152760617}
!399 = !{i64 5256147}
!400 = !{i64 5256344}
!401 = !{i64 2152741577}
!402 = !{i64 2152761273, i64 2152761298}
