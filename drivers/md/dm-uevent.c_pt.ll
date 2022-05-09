; ModuleID = '/llk/IR_all_yes/drivers/md/dm-uevent.c_pt.bc'
source_filename = "../drivers/md/dm-uevent.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dm_send_uevents\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_send_uevents\09\09\09\09"
module asm "\09.long\09__crc_dm_send_uevents\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_send_uevents:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_send_uevents\22\09\09\09\09\09"
module asm "__kstrtabns_dm_send_uevents:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_path_uevent\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_path_uevent\09\09\09\09"
module asm "\09.long\09__crc_dm_path_uevent\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_path_uevent:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_path_uevent\22\09\09\09\09\09"
module asm "__kstrtabns_dm_path_uevent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.80 = type { i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dm_uevent = type { ptr, i32, %struct.kobj_uevent_env, %struct.list_head, [128 x i8], [129 x i8] }
%struct.kobj_uevent_env = type { [3 x ptr], [64 x ptr], i32, [2048 x i8], i32 }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }

@dm_send_uevents._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016device-mapper: uevent: %s: skipping sending uevent for lost device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dm_send_uevents\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/md/dm-uevent.c\00", [41 x i8] zeroinitializer }, align 32
@dm_send_uevents._entry_ptr = internal global ptr @dm_send_uevents._entry, section ".printk_index", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DM_NAME=%s\00", [21 x i8] zeroinitializer }, align 32
@dm_send_uevents._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013device-mapper: uevent: %s: add_uevent_var() for DM_NAME failed\0A\00", [62 x i8] zeroinitializer }, align 32
@dm_send_uevents._entry_ptr.6 = internal global ptr @dm_send_uevents._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DM_UUID=%s\00", [21 x i8] zeroinitializer }, align 32
@dm_send_uevents._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013device-mapper: uevent: %s: add_uevent_var() for DM_UUID failed\0A\00", [62 x i8] zeroinitializer }, align 32
@dm_send_uevents._entry_ptr.10 = internal global ptr @dm_send_uevents._entry.8, section ".printk_index", align 4
@dm_send_uevents._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013device-mapper: uevent: %s: kobject_uevent_env failed\0A\00", [40 x i8] zeroinitializer }, align 32
@dm_send_uevents._entry_ptr.13 = internal global ptr @dm_send_uevents._entry.11, section ".printk_index", align 4
@__kstrtab_dm_send_uevents = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_send_uevents = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_send_uevents = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_send_uevents to i32), ptr @__kstrtab_dm_send_uevents, ptr @__kstrtabns_dm_send_uevents }, section "___ksymtab_gpl+dm_send_uevents", align 4
@dm_path_uevent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013device-mapper: uevent: %s: Invalid event_type %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dm_path_uevent\00", [17 x i8] zeroinitializer }, align 32
@dm_path_uevent._entry_ptr = internal global ptr @dm_path_uevent._entry, section ".printk_index", align 4
@_dm_uevent_type_names = internal constant { [2 x %struct.anon.80], [40 x i8] } { [2 x %struct.anon.80] [%struct.anon.80 { i32 0, i32 2, ptr @.str.41 }, %struct.anon.80 { i32 1, i32 2, ptr @.str.42 }], [40 x i8] zeroinitializer }, align 32
@__kstrtab_dm_path_uevent = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_path_uevent = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_path_uevent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_path_uevent to i32), ptr @__kstrtab_dm_path_uevent, ptr @__kstrtabns_dm_path_uevent }, section "___ksymtab_gpl+dm_path_uevent", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dm_uevent\00", [22 x i8] zeroinitializer }, align 32
@_dm_event_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dm_uevent_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016device-mapper: uevent: version 1.0.3\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dm_uevent_init\00", [17 x i8] zeroinitializer }, align 32
@dm_uevent_init._entry_ptr = internal global ptr @dm_uevent_init._entry, section ".printk_index", align 4
@dm_build_path_uevent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013device-mapper: uevent: %s: dm_uevent_alloc() failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dm_build_path_uevent\00", [43 x i8] zeroinitializer }, align 32
@dm_build_path_uevent._entry_ptr = internal global ptr @dm_build_path_uevent._entry, section ".printk_index", align 4
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DM_TARGET=%s\00", [19 x i8] zeroinitializer }, align 32
@dm_build_path_uevent._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013device-mapper: uevent: %s: add_uevent_var() for DM_TARGET failed\0A\00", [60 x i8] zeroinitializer }, align 32
@dm_build_path_uevent._entry_ptr.24 = internal global ptr @dm_build_path_uevent._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DM_ACTION=%s\00", [19 x i8] zeroinitializer }, align 32
@dm_build_path_uevent._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013device-mapper: uevent: %s: add_uevent_var() for DM_ACTION failed\0A\00", [60 x i8] zeroinitializer }, align 32
@dm_build_path_uevent._entry_ptr.28 = internal global ptr @dm_build_path_uevent._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DM_SEQNUM=%u\00", [19 x i8] zeroinitializer }, align 32
@dm_build_path_uevent._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013device-mapper: uevent: %s: add_uevent_var() for DM_SEQNUM failed\0A\00", [60 x i8] zeroinitializer }, align 32
@dm_build_path_uevent._entry_ptr.32 = internal global ptr @dm_build_path_uevent._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DM_PATH=%s\00", [21 x i8] zeroinitializer }, align 32
@dm_build_path_uevent._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.20, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013device-mapper: uevent: %s: add_uevent_var() for DM_PATH failed\0A\00", [62 x i8] zeroinitializer }, align 32
@dm_build_path_uevent._entry_ptr.36 = internal global ptr @dm_build_path_uevent._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DM_NR_VALID_PATHS=%d\00", [43 x i8] zeroinitializer }, align 32
@dm_build_path_uevent._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.20, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013device-mapper: uevent: %s: add_uevent_var() for DM_NR_VALID_PATHS failed\0A\00", [52 x i8] zeroinitializer }, align 32
@dm_build_path_uevent._entry_ptr.40 = internal global ptr @dm_build_path_uevent._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PATH_FAILED\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PATH_REINSTATED\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 135, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 140, i32 38 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 141, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 146, i32 38 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 147, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 154, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 177, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"_dm_uevent_type_names\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 23, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 194, i32 20 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"_dm_event_cache\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 28, i32 27 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 198, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 69, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 75, i32 37 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 76, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 81, i32 37 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 82, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 87, i32 37 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 89, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 94, i32 37 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 95, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 99, i32 37 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 101, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 24, i32 39 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private constant [26 x i8] c"../drivers/md/dm-uevent.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 25, i32 43 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__ksymtab_dm_path_uevent, ptr @__ksymtab_dm_send_uevents, ptr @dm_build_path_uevent._entry, ptr @dm_build_path_uevent._entry.22, ptr @dm_build_path_uevent._entry.26, ptr @dm_build_path_uevent._entry.30, ptr @dm_build_path_uevent._entry.34, ptr @dm_build_path_uevent._entry.38, ptr @dm_build_path_uevent._entry_ptr, ptr @dm_build_path_uevent._entry_ptr.24, ptr @dm_build_path_uevent._entry_ptr.28, ptr @dm_build_path_uevent._entry_ptr.32, ptr @dm_build_path_uevent._entry_ptr.36, ptr @dm_build_path_uevent._entry_ptr.40, ptr @dm_path_uevent._entry, ptr @dm_path_uevent._entry_ptr, ptr @dm_send_uevents._entry, ptr @dm_send_uevents._entry.11, ptr @dm_send_uevents._entry.4, ptr @dm_send_uevents._entry.8, ptr @dm_send_uevents._entry_ptr, ptr @dm_send_uevents._entry_ptr.10, ptr @dm_send_uevents._entry_ptr.13, ptr @dm_send_uevents._entry_ptr.6, ptr @dm_uevent_init._entry, ptr @dm_uevent_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @_dm_uevent_type_names, ptr @.str.16, ptr @_dm_event_cache, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_send_uevents._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_send_uevents._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_send_uevents._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_send_uevents._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_path_uevent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dm_uevent_type_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dm_event_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_uevent_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_build_path_uevent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_build_path_uevent._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_build_path_uevent._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_build_path_uevent._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_build_path_uevent._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_build_path_uevent._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_send_uevents(ptr noundef readonly %events, ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %events, align 4
  %cmp.not67 = icmp eq ptr %1, %events
  br i1 %cmp.not67, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %uevent_free.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in68 = phi ptr [ %.pn71, %uevent_free.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %event.070 = getelementptr i8, ptr %.pn.in68, i32 -2332
  %2 = ptrtoint ptr %.pn.in68 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn71 = load ptr, ptr %.pn.in68, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in68) #3
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in68, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in68 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in68, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in68 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %.pn.in68, ptr %.pn.in68, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in68, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.pn.in68, ptr %prev.i3.i, align 4
  %11 = ptrtoint ptr %event.070 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %event.070, align 4
  %name = getelementptr i8, ptr %.pn.in68, i32 8
  %uuid = getelementptr i8, ptr %.pn.in68, i32 136
  %call = tail call i32 @dm_copy_name_and_uuid(ptr noundef %12, ptr noundef %name, ptr noundef %uuid) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %list_del_init.exit.uevent_free.sink.split_crit_edge

list_del_init.exit.uevent_free.sink.split_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %uevent_free.sink.split

if.end:                                           ; preds = %list_del_init.exit
  %ku_env = getelementptr i8, ptr %.pn.in68, i32 -2324
  %call13 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %ku_env, ptr noundef nonnull @.str.3, ptr noundef %name) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end21, label %if.end.uevent_free.sink.split_crit_edge

if.end.uevent_free.sink.split_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %uevent_free.sink.split

if.end21:                                         ; preds = %if.end
  %call25 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %ku_env, ptr noundef nonnull @.str.7, ptr noundef %uuid) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end33, label %if.end21.uevent_free.sink.split_crit_edge

if.end21.uevent_free.sink.split_crit_edge:        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %uevent_free.sink.split

if.end33:                                         ; preds = %if.end21
  %action = getelementptr i8, ptr %.pn.in68, i32 -2328
  %13 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %action, align 4
  %envp = getelementptr i8, ptr %.pn.in68, i32 -2312
  %call36 = tail call i32 @kobject_uevent_env(ptr noundef %kobj, i32 noundef %14, ptr noundef %envp) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end33.uevent_free_crit_edge, label %if.end33.uevent_free.sink.split_crit_edge

if.end33.uevent_free.sink.split_crit_edge:        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %uevent_free.sink.split

if.end33.uevent_free_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %uevent_free

uevent_free.sink.split:                           ; preds = %if.end33.uevent_free.sink.split_crit_edge, %if.end21.uevent_free.sink.split_crit_edge, %if.end.uevent_free.sink.split_crit_edge, %list_del_init.exit.uevent_free.sink.split_crit_edge
  %.str.12.sink = phi ptr [ @.str, %list_del_init.exit.uevent_free.sink.split_crit_edge ], [ @.str.5, %if.end.uevent_free.sink.split_crit_edge ], [ @.str.9, %if.end21.uevent_free.sink.split_crit_edge ], [ @.str.12, %if.end33.uevent_free.sink.split_crit_edge ]
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.12.sink, ptr noundef nonnull @.str.1) #6
  br label %uevent_free

uevent_free:                                      ; preds = %uevent_free.sink.split, %if.end33.uevent_free_crit_edge
  %15 = load ptr, ptr @_dm_event_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef %event.070) #3
  %cmp.not = icmp eq ptr %.pn71, %events
  br i1 %cmp.not, label %uevent_free.for.end_crit_edge, label %uevent_free.for.body_crit_edge

uevent_free.for.body_crit_edge:                   ; preds = %uevent_free
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

uevent_free.for.end_crit_edge:                    ; preds = %uevent_free
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %uevent_free.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_copy_name_and_uuid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_path_uevent(i32 noundef %event_type, ptr nocapture noundef readonly %ti, ptr noundef %path, i32 noundef %nr_valid_paths) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ti, align 8
  %call = tail call ptr @dm_table_get_md(ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event_type)
  %cmp = icmp ugt i32 %event_type, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %event_type) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %action = getelementptr [2 x %struct.anon.80], ptr @_dm_uevent_type_names, i32 0, i32 %event_type, i32 1
  %2 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %action, align 4
  %name = getelementptr [2 x %struct.anon.80], ptr @_dm_uevent_type_names, i32 0, i32 %event_type, i32 2
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %6 = load ptr, ptr @_dm_event_cache, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 2848) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %elist.i.i = getelementptr inbounds %struct.dm_uevent, ptr %call.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %elist.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %elist.i.i, ptr %elist.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.dm_uevent, ptr %call.i.i.i, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %elist.i.i, ptr %prev.i.i.i, align 8
  %9 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %call.i.i.i, align 8
  %action2.i = getelementptr inbounds %struct.dm_uevent, ptr %call.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %action2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %action2.i, align 4
  %ku_env.i = getelementptr inbounds %struct.dm_uevent, ptr %call.i.i.i, i32 0, i32 2
  %type.i = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type.i, align 4
  %name.i = getelementptr inbounds %struct.target_type, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name.i, align 8
  %call3.i = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %ku_env.i, ptr noundef nonnull @.str.21, ptr noundef %14) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end11.i, label %if.end.i.err_add.i_crit_edge

if.end.i.err_add.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_add.i

if.end11.i:                                       ; preds = %if.end.i
  %call13.i = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %ku_env.i, ptr noundef nonnull @.str.25, ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end21.i, label %if.end11.i.err_add.i_crit_edge

if.end11.i.err_add.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_add.i

if.end21.i:                                       ; preds = %if.end11.i
  %call23.i = tail call i32 @dm_next_uevent_seq(ptr noundef %call) #3
  %call24.i = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %ku_env.i, ptr noundef nonnull @.str.29, i32 noundef %call23.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end32.i, label %if.end21.i.err_add.i_crit_edge

if.end21.i.err_add.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_add.i

if.end32.i:                                       ; preds = %if.end21.i
  %call34.i = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %ku_env.i, ptr noundef nonnull @.str.33, ptr noundef %path) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end42.i, label %if.end32.i.err_add.i_crit_edge

if.end32.i.err_add.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_add.i

if.end42.i:                                       ; preds = %if.end32.i
  %call44.i = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %ku_env.i, ptr noundef nonnull @.str.37, i32 noundef %nr_valid_paths) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %dm_build_path_uevent.exit, label %if.end42.i.err_add.i_crit_edge

if.end42.i.err_add.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_add.i

err_add.i:                                        ; preds = %if.end42.i.err_add.i_crit_edge, %if.end32.i.err_add.i_crit_edge, %if.end21.i.err_add.i_crit_edge, %if.end11.i.err_add.i_crit_edge, %if.end.i.err_add.i_crit_edge
  %.str.39.sink.i = phi ptr [ @.str.23, %if.end.i.err_add.i_crit_edge ], [ @.str.27, %if.end11.i.err_add.i_crit_edge ], [ @.str.31, %if.end21.i.err_add.i_crit_edge ], [ @.str.35, %if.end32.i.err_add.i_crit_edge ], [ @.str.39, %if.end42.i.err_add.i_crit_edge ]
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.39.sink.i, ptr noundef nonnull @.str.20) #6
  %15 = load ptr, ptr @_dm_event_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef nonnull %call.i.i.i) #3
  br label %cleanup

dm_build_path_uevent.exit:                        ; preds = %if.end42.i
  %cmp.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %dm_build_path_uevent.exit.cleanup_crit_edge, label %if.end6

dm_build_path_uevent.exit.cleanup_crit_edge:      ; preds = %dm_build_path_uevent.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %dm_build_path_uevent.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dm_uevent_add(ptr noundef %call, ptr noundef %elist.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %dm_build_path_uevent.exit.cleanup_crit_edge, %err_add.i, %do.end.i, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_md(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_uevent_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_uevent_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.16, i32 noundef 2600, i32 noundef 4, i32 noundef 0, ptr noundef null) #3
  store ptr %call, ptr @_dm_event_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #6
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_uevent_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @_dm_event_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_next_uevent_seq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !29, !31, !33, !35, !36, !37, !38, !40, !42, !43, !44, !45, !47, !49, !50, !51, !53, !55, !56, !57, !59, !61, !62, !63, !65, !67, !68, !69, !71, !73, !74, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-uevent.c", i32 135, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dm_send_uevents._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dm_send_uevents._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-uevent.c", i32 140, i32 38}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-uevent.c", i32 141, i32 4}
!10 = !{ptr @dm_send_uevents._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @dm_send_uevents._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-uevent.c", i32 146, i32 38}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/md/dm-uevent.c", i32 147, i32 4}
!16 = !{ptr @dm_send_uevents._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @dm_send_uevents._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/md/dm-uevent.c", i32 154, i32 4}
!20 = !{ptr @dm_send_uevents._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @dm_send_uevents._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_dm_send_uevents, !23, !"__ksymtab_dm_send_uevents", i1 false, i1 false}
!23 = !{!"../drivers/md/dm-uevent.c", i32 159, i32 1}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/md/dm-uevent.c", i32 177, i32 3}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dm_path_uevent._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @dm_path_uevent._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_dm_path_uevent, !30, !"__ksymtab_dm_path_uevent", i1 false, i1 false}
!30 = !{!"../drivers/md/dm-uevent.c", i32 190, i32 1}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/md/dm-uevent.c", i32 194, i32 20}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/md/dm-uevent.c", i32 198, i32 2}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @dm_uevent_init._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @dm_uevent_init._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @_dm_event_cache, !39, !"_dm_event_cache", i1 false, i1 false}
!39 = !{!"../drivers/md/dm-uevent.c", i32 28, i32 27}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/md/dm-uevent.c", i32 69, i32 3}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @dm_build_path_uevent._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @dm_build_path_uevent._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/md/dm-uevent.c", i32 75, i32 37}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/md/dm-uevent.c", i32 76, i32 3}
!49 = !{ptr @dm_build_path_uevent._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @dm_build_path_uevent._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/md/dm-uevent.c", i32 81, i32 37}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/md/dm-uevent.c", i32 82, i32 3}
!55 = !{ptr @dm_build_path_uevent._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @dm_build_path_uevent._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/md/dm-uevent.c", i32 87, i32 37}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/md/dm-uevent.c", i32 89, i32 3}
!61 = !{ptr @dm_build_path_uevent._entry.30, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @dm_build_path_uevent._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/md/dm-uevent.c", i32 94, i32 37}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/md/dm-uevent.c", i32 95, i32 3}
!67 = !{ptr @dm_build_path_uevent._entry.34, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @dm_build_path_uevent._entry_ptr.36, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/md/dm-uevent.c", i32 99, i32 37}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/md/dm-uevent.c", i32 101, i32 3}
!73 = !{ptr @dm_build_path_uevent._entry.38, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @dm_build_path_uevent._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/md/dm-uevent.c", i32 24, i32 39}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/md/dm-uevent.c", i32 25, i32 43}
!79 = !{ptr @_dm_uevent_type_names, !80, !"_dm_uevent_type_names", i1 false, i1 false}
!80 = !{!"../drivers/md/dm-uevent.c", i32 23, i32 3}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
