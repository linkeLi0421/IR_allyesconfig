; ModuleID = '/llk/IR_all_yes/drivers/md/dm-zoned-reclaim.c_pt.bc'
source_filename = "../drivers/md/dm-zoned-reclaim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dmz_reclaim = type { ptr, %struct.delayed_work, ptr, ptr, %struct.dm_kcopyd_throttle, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dm_kcopyd_throttle = type { i32, i32, i32, i32, i32 }
%struct.dm_zone = type { %struct.list_head, ptr, i32, %struct.atomic_t, i32, i32, i32, i32, ptr }
%struct.dm_io_region = type { ptr, i64, i64 }
%struct.dmz_dev = type { ptr, ptr, ptr, [32 x i8], %struct.uuid_t, i64, i32, i32, i32, i32, i64, i32, %struct.atomic_t, %struct.list_head, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.list_head }
%struct.uuid_t = type { [16 x i8] }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dmz_ctr_reclaim.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&(&zrc->work)->work)\00", [57 x i8] zeroinitializer }, align 32
@dmz_ctr_reclaim.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&zrc->work)->timer\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dmz_rwq_%s_%d\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dmz_reclaim_work.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dm_zoned\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dmz_reclaim_work\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/md/dm-zoned-reclaim.c\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"device-mapper: zoned reclaim: (%s/%u): Reclaim (%u): %s, %u%% free zones (%u/%u cache %u/%u random)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Idle\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Busy\00", [27 x i8] zeroinitializer }, align 32
@dmz_do_reclaim.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.6, ptr @.str.11, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dmz_do_reclaim\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"device-mapper: zoned reclaim: (%s/%u): No zone found to reclaim\0A\00", [63 x i8] zeroinitializer }, align 32
@dmz_do_reclaim.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.6, ptr @.str.12, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"device-mapper: zoned reclaim: (%s/%u): reclaim zone %u interrupted\0A\00", [60 x i8] zeroinitializer }, align 32
@dmz_do_reclaim.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.6, ptr @.str.13, i8 0, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"device-mapper: zoned reclaim: (%s/%u): Failed to reclaim zone %u, err %d\0A\00", [54 x i8] zeroinitializer }, align 32
@dmz_do_reclaim.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.6, ptr @.str.14, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"device-mapper: zoned reclaim: (%s/%u): Metadata flush for zone %u failed, err %d\0A\00", [46 x i8] zeroinitializer }, align 32
@dmz_do_reclaim.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.6, ptr @.str.15, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"device-mapper: zoned reclaim: (%s/%u): Reclaimed zone %u in %u ms\0A\00", [61 x i8] zeroinitializer }, align 32
@dmz_reclaim_rnd_data.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.16, ptr @.str.6, ptr @.str.17, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dmz_reclaim_rnd_data\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"device-mapper: zoned reclaim: (%s/%u): Chunk %u, move %s zone %u (weight %u) to %s zone %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cache\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rnd\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"seq\00", [28 x i8] zeroinitializer }, align 32
@dmz_reclaim_align_wp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.6, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\013device-mapper: zoned reclaim: (%s): Align zone %u wp %llu to %llu (wp+%u) blocks failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dmz_reclaim_align_wp\00", [43 x i8] zeroinitializer }, align 32
@dmz_reclaim_align_wp._entry_ptr = internal global ptr @dmz_reclaim_align_wp._entry, section ".printk_index", align 4
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@dmz_reclaim_buf.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.24, ptr @.str.6, ptr @.str.25, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dmz_reclaim_buf\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"device-mapper: zoned reclaim: (%s/%u): Chunk %u, move buf zone %u (weight %u) to data zone %u (weight %u)\0A\00", [53 x i8] zeroinitializer }, align 32
@dmz_reclaim_seq_data.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.26, ptr @.str.6, ptr @.str.27, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dmz_reclaim_seq_data\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"device-mapper: zoned reclaim: (%s/%u): Chunk %u, move data zone %u (weight %u) to buf zone %u (weight %u)\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 576, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 577, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 532, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 376, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 422, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 426, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 435, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 440, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 301, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 83, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 98, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 203, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [33 x i8] c"../drivers/md/dm-zoned-reclaim.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 242, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @dmz_reclaim_align_wp._entry, ptr @dmz_reclaim_align_wp._entry_ptr, ptr @dmz_ctr_reclaim.__key, ptr @.str, ptr @dmz_ctr_reclaim.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_ctr_reclaim.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_ctr_reclaim.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmz_reclaim_align_wp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmz_ctr_reclaim(ptr noundef %zmd, ptr nocapture noundef writeonly %reclaim, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 148) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %zmd, ptr %call7.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %atime = getelementptr inbounds %struct.dmz_reclaim, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %atime to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %atime, align 8
  %dev_idx = getelementptr inbounds %struct.dmz_reclaim, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %dev_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %idx, ptr %dev_idx, align 8
  %kc_throttle = getelementptr inbounds %struct.dmz_reclaim, ptr %call7.i.i, i32 0, i32 4
  %call1 = tail call ptr @dm_kcopyd_client_create(ptr noundef %kc_throttle) #8
  %kc = getelementptr inbounds %struct.dmz_reclaim, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %kc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %kc, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %err.thread, label %do.body9

err.thread:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call1 to i32
  %7 = ptrtoint ptr %kc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %kc, align 4
  br label %if.end39

do.body9:                                         ; preds = %if.end
  %work = getelementptr inbounds %struct.dmz_reclaim, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %8 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.dmz_reclaim, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @dmz_ctr_reclaim.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry17 = getelementptr inbounds %struct.dmz_reclaim, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry17, ptr %entry17, align 8
  %prev.i = getelementptr inbounds %struct.dmz_reclaim, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.dmz_reclaim, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dmz_reclaim_work, ptr %func, align 8
  %timer = getelementptr inbounds %struct.dmz_reclaim, ptr %call7.i.i, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @dmz_ctr_reclaim.__key.1) #8
  %call26 = tail call ptr @dmz_metadata_label(ptr noundef %zmd) #8
  %call27 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.3, i32 noundef 655370, i32 noundef 1, ptr noundef %call26, i32 noundef %idx) #8
  %wq = getelementptr inbounds %struct.dmz_reclaim, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call27, ptr %wq, align 8
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %err, label %if.end31

if.end31:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %reclaim to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %reclaim, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef nonnull %call27, ptr noundef %work, i32 noundef 0) #8
  br label %cleanup

err:                                              ; preds = %do.body9
  %14 = ptrtoint ptr %kc to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %kc, align 4
  %tobool36.not = icmp eq ptr %.pr, null
  br i1 %tobool36.not, label %err.if.end39_crit_edge, label %if.then37

err.if.end39_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then37:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dm_kcopyd_client_destroy(ptr noundef nonnull %.pr) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %err.if.end39_crit_edge, %err.thread
  %ret.067 = phi i32 [ %6, %err.thread ], [ -12, %if.then37 ], [ -12, %err.if.end39_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.067, %if.end39 ], [ 0, %if.end31 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_kcopyd_client_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmz_reclaim_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call zeroext i1 @dmz_dev_is_dying(ptr noundef %1) #8
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 @dmz_nr_cache_zones(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 @dmz_nr_unmap_cache_zones(ptr noundef %3) #8
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev_idx.i = getelementptr i8, ptr %work, i32 132
  %4 = ptrtoint ptr %dev_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_idx.i, align 4
  %call2.i = tail call i32 @dmz_nr_rnd_zones(ptr noundef %3, i32 noundef %5) #8
  %6 = ptrtoint ptr %dev_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_idx.i, align 4
  %call4.i = tail call i32 @dmz_nr_unmap_rnd_zones(ptr noundef %3, i32 noundef %7) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %nr_unmap.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call4.i, %if.else.i ]
  %nr_zones.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nr_unmap.0.i)
  %cmp.i = icmp ult i32 %nr_unmap.0.i, 2
  br i1 %cmp.i, label %if.end.i.dmz_reclaim_percentage.exit_crit_edge, label %if.end6.i

if.end.i.dmz_reclaim_percentage.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmz_reclaim_percentage.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul i32 %nr_unmap.0.i, 100
  %div.i = udiv i32 %mul.i, %nr_zones.0.i
  br label %dmz_reclaim_percentage.exit

dmz_reclaim_percentage.exit:                      ; preds = %if.end6.i, %if.end.i.dmz_reclaim_percentage.exit_crit_edge
  %retval.0.i71 = phi i32 [ %div.i, %if.end6.i ], [ 0, %if.end.i.dmz_reclaim_percentage.exit_crit_edge ]
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %dev_idx.i72 = getelementptr i8, ptr %work, i32 132
  %10 = ptrtoint ptr %dev_idx.i72 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_idx.i72, align 4
  %call.i73 = tail call i32 @dmz_nr_rnd_zones(ptr noundef %9, i32 noundef %11) #8
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %call2.i74 = tail call i32 @dmz_nr_cache_zones(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i74)
  %tobool.not.i75 = icmp eq i32 %call2.i74, 0
  br i1 %tobool.not.i75, label %dmz_reclaim_percentage.exit.dmz_should_reclaim.exit_crit_edge, label %if.then.i77

dmz_reclaim_percentage.exit.dmz_should_reclaim.exit_crit_edge: ; preds = %dmz_reclaim_percentage.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmz_should_reclaim.exit

if.then.i77:                                      ; preds = %dmz_reclaim_percentage.exit
  %14 = ptrtoint ptr %dev_idx.i72 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_idx.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i76 = icmp eq i32 %15, 0
  br i1 %cmp.i76, label %if.then.i77.if.then3_crit_edge, label %if.end.i78

if.then.i77.if.then3_crit_edge:                   ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.end.i78:                                       ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %call6.i = tail call i32 @dmz_nr_cache_zones(ptr noundef %17) #8
  %add.i = add i32 %call6.i, %call.i73
  br label %dmz_should_reclaim.exit

dmz_should_reclaim.exit:                          ; preds = %if.end.i78, %dmz_reclaim_percentage.exit.dmz_should_reclaim.exit_crit_edge
  %nr_reclaim.0.i = phi i32 [ %add.i, %if.end.i78 ], [ %call.i73, %dmz_reclaim_percentage.exit.dmz_should_reclaim.exit_crit_edge ]
  %atime.i.i = getelementptr i8, ptr %work, i32 140
  %18 = ptrtoint ptr %atime.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %atime.i.i, align 4
  %add.i.i = add i32 %19, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool9.not.i = icmp slt i32 %sub.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_reclaim.0.i)
  %tobool10.not.i = icmp ne i32 %nr_reclaim.0.i, 0
  %or.cond.i = select i1 %tobool9.not.i, i1 %tobool10.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %retval.0.i71)
  %cmp16.i = icmp ult i32 %retval.0.i71, 31
  %spec.select.i = or i1 %cmp16.i, %or.cond.i
  br i1 %spec.select.i, label %if.end6, label %dmz_should_reclaim.exit.if.then3_crit_edge

dmz_should_reclaim.exit.if.then3_crit_edge:       ; preds = %dmz_should_reclaim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %dmz_should_reclaim.exit.if.then3_crit_edge, %if.then.i77.if.then3_crit_edge
  %wq = getelementptr i8, ptr %work, i32 100
  %21 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wq, align 4
  %call.i80 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %work, i32 noundef 1000) #8
  br label %cleanup

if.end6:                                          ; preds = %dmz_should_reclaim.exit
  %23 = ptrtoint ptr %atime.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %atime.i.i, align 4
  %add.i81 = add i32 %24, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i81, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not = icmp slt i32 %sub.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %retval.0.i71)
  %cmp = icmp ult i32 %retval.0.i71, 15
  %or.cond = or i1 %cmp, %tobool.not
  %div70 = lshr i32 %retval.0.i71, 1
  %sub = sub nsw i32 100, %div70
  %26 = tail call i32 @llvm.umin.i32(i32 %sub, i32 75)
  %.sink = select i1 %or.cond, i32 100, i32 %26
  %27 = getelementptr i8, ptr %work, i32 108
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %27, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_reclaim_work.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_reclaim_work, %if.then19)) #8
          to label %do.end [label %if.then19], !srcloc !62

if.then19:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call ptr @dmz_metadata_label(ptr noundef %1) #8
  %29 = ptrtoint ptr %dev_idx.i72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dev_idx.i72, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %27, align 4
  %33 = ptrtoint ptr %atime.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %atime.i.i, align 4
  %add.i83 = add i32 %34, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub.i84 = sub i32 %add.i83, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i84)
  %tobool24.not = icmp sgt i32 %sub.i84, -1
  %cond25 = select i1 %tobool24.not, ptr @.str.9, ptr @.str.8
  %call26 = tail call i32 @dmz_nr_unmap_cache_zones(ptr noundef %1) #8
  %call27 = tail call i32 @dmz_nr_cache_zones(ptr noundef %1) #8
  %36 = ptrtoint ptr %dev_idx.i72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dev_idx.i72, align 4
  %call29 = tail call i32 @dmz_nr_unmap_rnd_zones(ptr noundef %1, i32 noundef %37) #8
  %38 = ptrtoint ptr %dev_idx.i72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dev_idx.i72, align 4
  %call31 = tail call i32 @dmz_nr_rnd_zones(ptr noundef %1, i32 noundef %39) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_reclaim_work.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.7, ptr noundef %call20, i32 noundef %30, i32 noundef %32, ptr noundef nonnull %cond25, i32 noundef %retval.0.i71, i32 noundef %call26, i32 noundef %call27, i32 noundef %call29, i32 noundef %call31) #8
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.end6
  %call33 = tail call fastcc i32 @dmz_do_reclaim(ptr noundef %add.ptr)
  %40 = zext i32 %call33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call33, label %if.then36 [
    i32 0, label %do.end.if.end40_crit_edge
    i32 -4, label %do.end.if.end40_crit_edge90
  ]

do.end.if.end40_crit_edge90:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.end.if.end40_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then36:                                        ; preds = %do.end
  %call37 = tail call zeroext i1 @dmz_check_dev(ptr noundef %1) #8
  br i1 %call37, label %if.then36.if.end40_crit_edge, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then36.if.end40_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end40:                                         ; preds = %if.then36.if.end40_crit_edge, %do.end.if.end40_crit_edge, %do.end.if.end40_crit_edge90
  tail call void @dmz_schedule_reclaim(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then36.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmz_metadata_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_kcopyd_client_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmz_dtr_reclaim(ptr noundef %zrc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #8
  %wq = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 2
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #8
  %kc = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 3
  %2 = ptrtoint ptr %kc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kc, align 4
  tail call void @dm_kcopyd_client_destroy(ptr noundef %3) #8
  tail call void @kfree(ptr noundef %zrc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmz_suspend_reclaim(ptr noundef %zrc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmz_resume_reclaim(ptr noundef %zrc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wq = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 2
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq, align 4
  %work = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 1
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work, i32 noundef 1000) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dmz_reclaim_bio_acc(ptr nocapture noundef writeonly %zrc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %atime = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 8
  %1 = ptrtoint ptr %atime to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %atime, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dmz_schedule_reclaim(ptr noundef %zrc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zrc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zrc, align 4
  %call.i = tail call i32 @dmz_nr_cache_zones(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 @dmz_nr_unmap_cache_zones(ptr noundef %1) #8
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev_idx.i = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 6
  %2 = ptrtoint ptr %dev_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_idx.i, align 4
  %call2.i = tail call i32 @dmz_nr_rnd_zones(ptr noundef %1, i32 noundef %3) #8
  %4 = ptrtoint ptr %dev_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_idx.i, align 4
  %call4.i = tail call i32 @dmz_nr_unmap_rnd_zones(ptr noundef %1, i32 noundef %5) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %nr_unmap.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call4.i, %if.else.i ]
  %nr_zones.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nr_unmap.0.i)
  %cmp.i = icmp ult i32 %nr_unmap.0.i, 2
  br i1 %cmp.i, label %if.end.i.dmz_reclaim_percentage.exit_crit_edge, label %if.end6.i

if.end.i.dmz_reclaim_percentage.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmz_reclaim_percentage.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul i32 %nr_unmap.0.i, 100
  %div.i = udiv i32 %mul.i, %nr_zones.0.i
  br label %dmz_reclaim_percentage.exit

dmz_reclaim_percentage.exit:                      ; preds = %if.end6.i, %if.end.i.dmz_reclaim_percentage.exit_crit_edge
  %retval.0.i = phi i32 [ %div.i, %if.end6.i ], [ 0, %if.end.i.dmz_reclaim_percentage.exit_crit_edge ]
  %6 = ptrtoint ptr %zrc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %zrc, align 4
  %dev_idx.i6 = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 6
  %8 = ptrtoint ptr %dev_idx.i6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_idx.i6, align 4
  %call.i7 = tail call i32 @dmz_nr_rnd_zones(ptr noundef %7, i32 noundef %9) #8
  %10 = ptrtoint ptr %zrc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %zrc, align 4
  %call2.i8 = tail call i32 @dmz_nr_cache_zones(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i8)
  %tobool.not.i9 = icmp eq i32 %call2.i8, 0
  br i1 %tobool.not.i9, label %dmz_reclaim_percentage.exit.dmz_should_reclaim.exit_crit_edge, label %if.then.i11

dmz_reclaim_percentage.exit.dmz_should_reclaim.exit_crit_edge: ; preds = %dmz_reclaim_percentage.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmz_should_reclaim.exit

if.then.i11:                                      ; preds = %dmz_reclaim_percentage.exit
  %12 = ptrtoint ptr %dev_idx.i6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_idx.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i10 = icmp eq i32 %13, 0
  br i1 %cmp.i10, label %if.then.i11.if.end_crit_edge, label %if.end.i12

if.then.i11.if.end_crit_edge:                     ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i12:                                       ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %zrc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %zrc, align 4
  %call6.i = tail call i32 @dmz_nr_cache_zones(ptr noundef %15) #8
  %add.i = add i32 %call6.i, %call.i7
  br label %dmz_should_reclaim.exit

dmz_should_reclaim.exit:                          ; preds = %if.end.i12, %dmz_reclaim_percentage.exit.dmz_should_reclaim.exit_crit_edge
  %nr_reclaim.0.i = phi i32 [ %add.i, %if.end.i12 ], [ %call.i7, %dmz_reclaim_percentage.exit.dmz_should_reclaim.exit_crit_edge ]
  %atime.i.i = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 8
  %16 = ptrtoint ptr %atime.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %atime.i.i, align 4
  %add.i.i = add i32 %17, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool9.not.i = icmp slt i32 %sub.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_reclaim.0.i)
  %tobool10.not.i = icmp ne i32 %nr_reclaim.0.i, 0
  %or.cond.i = select i1 %tobool9.not.i, i1 %tobool10.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %retval.0.i)
  %cmp16.i = icmp ult i32 %retval.0.i, 31
  %spec.select.i = or i1 %cmp16.i, %or.cond.i
  br i1 %spec.select.i, label %if.then, label %dmz_should_reclaim.exit.if.end_crit_edge

dmz_should_reclaim.exit.if.end_crit_edge:         ; preds = %dmz_should_reclaim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %dmz_should_reclaim.exit
  call void @__sanitizer_cov_trace_pc() #10
  %wq = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 2
  %19 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wq, align 4
  %work = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 1
  %call.i14 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %work, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %dmz_should_reclaim.exit.if.end_crit_edge, %if.then.i11.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmz_dev_is_dying(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_nr_unmap_cache_zones(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_nr_cache_zones(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_nr_unmap_rnd_zones(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_nr_rnd_zones(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_do_reclaim(ptr noundef %zrc) unnamed_addr #0 align 64 {
entry:
  %chunk_block = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zrc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zrc, align 4
  %dev_idx = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 6
  %2 = ptrtoint ptr %dev_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_idx, align 4
  %atime.i = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 8
  %4 = ptrtoint ptr %atime.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %atime.i, align 4
  %add.i = add i32 %5, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool = icmp slt i32 %sub.i, 0
  %call1 = tail call ptr @dmz_get_zone_for_reclaim(ptr noundef %1, i32 noundef %3, i1 noundef zeroext %tobool) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_do_reclaim.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_do_reclaim, %if.then7)) #8
          to label %cleanup126 [label %if.then7], !srcloc !62

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call ptr @dmz_metadata_label(ptr noundef %1) #8
  %7 = ptrtoint ptr %dev_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_idx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_do_reclaim.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.11, ptr noundef %call8, i32 noundef %8) #8
  br label %cleanup126

if.end10:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %flags = getelementptr inbounds %struct.dm_zone, ptr %call1, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool12.not = icmp eq i32 %and1.i, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end10.if.then16_crit_edge

if.end10.if.then16_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end10
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not = icmp eq i32 %14, 0
  br i1 %tobool15.not, label %if.else21, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %if.end10.if.then16_crit_edge
  %weight = getelementptr inbounds %struct.dm_zone, ptr %call1, i32 0, i32 6
  %15 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %weight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not = icmp eq i32 %16, 0
  br i1 %tobool17.not, label %out.thread, label %if.else

out.thread:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %zrc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %zrc, align 4
  tail call void @dmz_lock_flush(ptr noundef %18) #8
  tail call void @dmz_lock_map(ptr noundef %18) #8
  tail call void @dmz_unmap_zone(ptr noundef %18, ptr noundef nonnull %call1) #8
  tail call void @dmz_unlock_zone_reclaim(ptr noundef nonnull %call1) #8
  tail call void @dmz_free_zone(ptr noundef %18, ptr noundef nonnull %call1) #8
  tail call void @dmz_unlock_map(ptr noundef %18) #8
  tail call void @dmz_unlock_flush(ptr noundef %18) #8
  br label %if.end81

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call fastcc i32 @dmz_reclaim_rnd_data(ptr noundef %zrc, ptr noundef nonnull %call1)
  br label %out

if.else21:                                        ; preds = %lor.lhs.false
  %bzone22 = getelementptr inbounds %struct.dm_zone, ptr %call1, i32 0, i32 8
  %19 = ptrtoint ptr %bzone22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bzone22, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %chunk_block) #8
  %21 = ptrtoint ptr %chunk_block to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %chunk_block, align 8
  %call23 = call i32 @dmz_first_valid_block(ptr noundef %1, ptr noundef %20, ptr noundef nonnull %chunk_block) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.else21.cleanup_crit_edge, label %if.end25

if.else21.cleanup_crit_edge:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.else21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp26 = icmp eq i32 %call23, 0
  br i1 %cmp26, label %if.end25.if.then30_crit_edge, label %lor.lhs.false27

if.end25.if.then30_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

lor.lhs.false27:                                  ; preds = %if.end25
  %22 = ptrtoint ptr %chunk_block to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %chunk_block, align 8
  %wp_block = getelementptr inbounds %struct.dm_zone, ptr %call1, i32 0, i32 5
  %24 = ptrtoint ptr %wp_block to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wp_block, align 4
  %conv = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %conv)
  %cmp28.not = icmp ult i64 %23, %conv
  br i1 %cmp28.not, label %if.else32, label %lor.lhs.false27.if.then30_crit_edge

lor.lhs.false27.if.then30_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false27.if.then30_crit_edge, %if.end25.if.then30_crit_edge
  %call31 = call fastcc i32 @dmz_reclaim_buf(ptr noundef %zrc, ptr noundef nonnull %call1)
  br label %cleanup

if.else32:                                        ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = call fastcc i32 @dmz_reclaim_seq_data(ptr noundef %zrc, ptr noundef nonnull %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.else32, %if.then30, %if.else21.cleanup_crit_edge
  %ret.1 = phi i32 [ %call23, %if.else21.cleanup_crit_edge ], [ %call31, %if.then30 ], [ %call33, %if.else32 ]
  %rzone.1 = phi ptr [ %call1, %if.else21.cleanup_crit_edge ], [ %20, %if.then30 ], [ %call1, %if.else32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %chunk_block) #8
  br label %out

out:                                              ; preds = %cleanup, %if.else
  %ret.2 = phi i32 [ %call19, %if.else ], [ %ret.1, %cleanup ]
  %rzone.2 = phi ptr [ %call1, %if.else ], [ %rzone.1, %cleanup ]
  %26 = zext i32 %ret.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %ret.2, label %do.body61 [
    i32 0, label %out.if.end81_crit_edge
    i32 -4, label %do.body42
  ]

out.if.end81_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

do.body42:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_do_reclaim.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_do_reclaim, %if.then54)) #8
          to label %if.end80 [label %if.then54], !srcloc !62

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %call55 = call ptr @dmz_metadata_label(ptr noundef %1) #8
  %27 = ptrtoint ptr %dev_idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dev_idx, align 4
  %id = getelementptr inbounds %struct.dm_zone, ptr %rzone.2, i32 0, i32 4
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_do_reclaim.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.12, ptr noundef %call55, i32 noundef %28, i32 noundef %30) #8
  br label %if.end80

do.body61:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_do_reclaim.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_do_reclaim, %if.then73)) #8
          to label %if.end80 [label %if.then73], !srcloc !62

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #10
  %call74 = call ptr @dmz_metadata_label(ptr noundef %1) #8
  %31 = ptrtoint ptr %dev_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dev_idx, align 4
  %id76 = getelementptr inbounds %struct.dm_zone, ptr %rzone.2, i32 0, i32 4
  %33 = ptrtoint ptr %id76 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id76, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_do_reclaim.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.13, ptr noundef %call74, i32 noundef %32, i32 noundef %34, i32 noundef %ret.2) #8
  br label %if.end80

if.end80:                                         ; preds = %if.then73, %do.body61, %if.then54, %do.body42
  call void @dmz_unlock_zone_reclaim(ptr noundef nonnull %call1) #8
  br label %cleanup126

if.end81:                                         ; preds = %out.if.end81_crit_edge, %out.thread
  %rzone.2189 = phi ptr [ %call1, %out.thread ], [ %rzone.2, %out.if.end81_crit_edge ]
  %35 = ptrtoint ptr %zrc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %zrc, align 4
  %call83 = call i32 @dmz_flush_metadata(ptr noundef %36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %do.body106, label %do.body86

do.body86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_do_reclaim.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_do_reclaim, %if.then98)) #8
          to label %cleanup126 [label %if.then98], !srcloc !62

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #10
  %call99 = call ptr @dmz_metadata_label(ptr noundef %1) #8
  %37 = ptrtoint ptr %dev_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dev_idx, align 4
  %id101 = getelementptr inbounds %struct.dm_zone, ptr %rzone.2189, i32 0, i32 4
  %39 = ptrtoint ptr %id101 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id101, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_do_reclaim.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.14, ptr noundef %call99, i32 noundef %38, i32 noundef %40, i32 noundef %call83) #8
  br label %cleanup126

do.body106:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_do_reclaim.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_do_reclaim, %if.then118)) #8
          to label %cleanup126 [label %if.then118], !srcloc !62

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #10
  %call119 = call ptr @dmz_metadata_label(ptr noundef %1) #8
  %41 = ptrtoint ptr %dev_idx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dev_idx, align 4
  %id121 = getelementptr inbounds %struct.dm_zone, ptr %rzone.2189, i32 0, i32 4
  %43 = ptrtoint ptr %id121 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id121, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %45, %9
  %call122 = call i32 @jiffies_to_msecs(i32 noundef %sub) #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_do_reclaim.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.15, ptr noundef %call119, i32 noundef %42, i32 noundef %44, i32 noundef %call122) #8
  br label %cleanup126

cleanup126:                                       ; preds = %if.then118, %do.body106, %if.then98, %do.body86, %if.end80, %if.then7, %do.body
  %retval.0 = phi i32 [ %ret.2, %if.end80 ], [ -16, %if.then7 ], [ %call83, %if.then98 ], [ 0, %if.then118 ], [ -16, %do.body ], [ %call83, %do.body86 ], [ 0, %do.body106 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmz_check_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmz_get_zone_for_reclaim(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_reclaim_rnd_data(ptr noundef %zrc, ptr noundef %dzone) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk1 = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 7
  %0 = ptrtoint ptr %chunk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chunk1, align 4
  %2 = ptrtoint ptr %zrc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zrc, align 4
  tail call void @dmz_lock_map(ptr noundef %3) #8
  %dev_idx = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 6
  %4 = ptrtoint ptr %dev_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_idx, align 4
  %call = tail call ptr @dmz_alloc_zone(ptr noundef %3, i32 noundef %5, i32 noundef 20) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.lhs.true2, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %call3 = tail call i32 @dmz_nr_cache_zones(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true2.if.end_crit_edge, label %again.1

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

again.1:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_idx, align 4
  %call.1 = tail call ptr @dmz_alloc_zone(ptr noundef %3, i32 noundef %7, i32 noundef 17) #8
  %tobool.not.1 = icmp eq ptr %call.1, null
  br label %if.end

if.end:                                           ; preds = %again.1, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge
  %call.lcssa = phi ptr [ %call, %entry.if.end_crit_edge ], [ %call, %land.lhs.true2.if.end_crit_edge ], [ %call.1, %again.1 ]
  %tobool.not.lcssa = phi i1 [ %tobool.not, %entry.if.end_crit_edge ], [ %tobool.not, %land.lhs.true2.if.end_crit_edge ], [ %tobool.not.1, %again.1 ]
  tail call void @dmz_unlock_map(ptr noundef %3) #8
  br i1 %tobool.not.lcssa, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_reclaim_rnd_data.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_reclaim_rnd_data, %if.then12)) #8
          to label %do.end [label %if.then12], !srcloc !62

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call ptr @dmz_metadata_label(ptr noundef %3) #8
  %8 = ptrtoint ptr %dev_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_idx, align 4
  %flags = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 2
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool16.not = icmp eq i32 %and1.i, 0
  %cond = select i1 %tobool16.not, ptr @.str.19, ptr @.str.18
  %id = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 4
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %weight = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 6
  %14 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %weight, align 4
  %flags17 = getelementptr inbounds %struct.dm_zone, ptr %call.lcssa, i32 0, i32 2
  %16 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags17, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  %cond20 = select i1 %tobool19.not, ptr @.str.20, ptr @.str.19
  %id21 = getelementptr inbounds %struct.dm_zone, ptr %call.lcssa, i32 0, i32 4
  %19 = ptrtoint ptr %id21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id21, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_reclaim_rnd_data.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.17, ptr noundef %call13, i32 noundef %9, i32 noundef %1, ptr noundef nonnull %cond, i32 noundef %13, i32 noundef %15, ptr noundef nonnull %cond20, i32 noundef %20) #8
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %call23 = tail call fastcc i32 @dmz_reclaim_copy(ptr noundef %zrc, ptr noundef %dzone, ptr noundef nonnull %call.lcssa)
  tail call void @dmz_lock_flush(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.end27, label %do.end.if.then29_crit_edge

do.end.if.then29_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.end27:                                         ; preds = %do.end
  %call26 = tail call i32 @dmz_copy_valid_blocks(ptr noundef %3, ptr noundef %dzone, ptr noundef nonnull %call.lcssa) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool28.not = icmp eq i32 %call26, 0
  br i1 %tobool28.not, label %if.else, label %if.end27.if.then29_crit_edge

if.end27.if.then29_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.then29:                                        ; preds = %if.end27.if.then29_crit_edge, %do.end.if.then29_crit_edge
  %ret.082 = phi i32 [ %call26, %if.end27.if.then29_crit_edge ], [ %call23, %do.end.if.then29_crit_edge ]
  tail call void @dmz_lock_map(ptr noundef %3) #8
  tail call void @dmz_free_zone(ptr noundef %3, ptr noundef nonnull %call.lcssa) #8
  br label %if.end32

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = tail call i32 @dmz_zone_nr_blocks(ptr noundef %3) #8
  %call31 = tail call i32 @dmz_invalidate_blocks(ptr noundef %3, ptr noundef %dzone, i64 noundef 0, i32 noundef %call30) #8
  tail call void @dmz_lock_map(ptr noundef %3) #8
  tail call void @dmz_unmap_zone(ptr noundef %3, ptr noundef %dzone) #8
  tail call void @dmz_unlock_zone_reclaim(ptr noundef %dzone) #8
  tail call void @dmz_free_zone(ptr noundef %3, ptr noundef %dzone) #8
  tail call void @dmz_map_zone(ptr noundef %3, ptr noundef nonnull %call.lcssa, i32 noundef %1) #8
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then29
  %ret.081 = phi i32 [ 0, %if.else ], [ %ret.082, %if.then29 ]
  tail call void @dmz_unlock_map(ptr noundef %3) #8
  tail call void @dmz_unlock_flush(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.081, %if.end32 ], [ -28, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_first_valid_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_reclaim_buf(ptr noundef %zrc, ptr noundef %dzone) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bzone1 = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 8
  %0 = ptrtoint ptr %bzone1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bzone1, align 4
  %wp_block = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 5
  %2 = ptrtoint ptr %wp_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wp_block, align 4
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %zrc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %zrc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_reclaim_buf.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_reclaim_buf, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call ptr @dmz_metadata_label(ptr noundef %5) #8
  %dev_idx = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 6
  %6 = ptrtoint ptr %dev_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_idx, align 4
  %chunk = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 7
  %8 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chunk, align 4
  %id = getelementptr inbounds %struct.dm_zone, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %weight = getelementptr inbounds %struct.dm_zone, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %weight, align 4
  %id5 = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 4
  %14 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id5, align 4
  %weight6 = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 6
  %16 = ptrtoint ptr %weight6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %weight6, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_reclaim_buf.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.25, ptr noundef %call4, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call7 = tail call fastcc i32 @dmz_reclaim_copy(ptr noundef %zrc, ptr noundef %1, ptr noundef %dzone)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %do.end
  tail call void @dmz_lock_flush(ptr noundef %5) #8
  %call11 = tail call i32 @dmz_merge_valid_blocks(ptr noundef %5, ptr noundef %1, ptr noundef %dzone, i64 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 @dmz_zone_nr_blocks(ptr noundef %5) #8
  %call16 = tail call i32 @dmz_invalidate_blocks(ptr noundef %5, ptr noundef %1, i64 noundef 0, i32 noundef %call15) #8
  tail call void @dmz_lock_map(ptr noundef %5) #8
  tail call void @dmz_unmap_zone(ptr noundef %5, ptr noundef %1) #8
  tail call void @dmz_unlock_zone_reclaim(ptr noundef %dzone) #8
  tail call void @dmz_free_zone(ptr noundef %5, ptr noundef %1) #8
  tail call void @dmz_unlock_map(ptr noundef %5) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end10.if.end17_crit_edge
  tail call void @dmz_unlock_flush(ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end17 ], [ %call7, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_reclaim_seq_data(ptr noundef %zrc, ptr noundef %dzone) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk1 = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 7
  %0 = ptrtoint ptr %chunk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chunk1, align 4
  %bzone2 = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 8
  %2 = ptrtoint ptr %bzone2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bzone2, align 4
  %4 = ptrtoint ptr %zrc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %zrc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmz_reclaim_seq_data.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmz_reclaim_seq_data, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call ptr @dmz_metadata_label(ptr noundef %5) #8
  %dev_idx = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 6
  %6 = ptrtoint ptr %dev_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_idx, align 4
  %id = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 4
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %weight = getelementptr inbounds %struct.dm_zone, ptr %dzone, i32 0, i32 6
  %10 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %weight, align 4
  %id6 = getelementptr inbounds %struct.dm_zone, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id6, align 4
  %weight7 = getelementptr inbounds %struct.dm_zone, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %weight7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %weight7, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dmz_reclaim_seq_data.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.27, ptr noundef %call5, i32 noundef %7, i32 noundef %1, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call8 = tail call fastcc i32 @dmz_reclaim_copy(ptr noundef %zrc, ptr noundef %dzone, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %do.end
  tail call void @dmz_lock_flush(ptr noundef %5) #8
  %call11 = tail call i32 @dmz_merge_valid_blocks(ptr noundef %5, ptr noundef %dzone, ptr noundef %3, i64 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 @dmz_zone_nr_blocks(ptr noundef %5) #8
  %call15 = tail call i32 @dmz_invalidate_blocks(ptr noundef %5, ptr noundef %dzone, i64 noundef 0, i32 noundef %call14) #8
  tail call void @dmz_lock_map(ptr noundef %5) #8
  tail call void @dmz_unmap_zone(ptr noundef %5, ptr noundef %3) #8
  tail call void @dmz_unmap_zone(ptr noundef %5, ptr noundef %dzone) #8
  tail call void @dmz_unlock_zone_reclaim(ptr noundef %dzone) #8
  tail call void @dmz_free_zone(ptr noundef %5, ptr noundef %dzone) #8
  tail call void @dmz_map_zone(ptr noundef %5, ptr noundef %3, i32 noundef %1) #8
  tail call void @dmz_unlock_map(ptr noundef %5) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end10.if.end16_crit_edge
  tail call void @dmz_unlock_flush(ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end16 ], [ %call8, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_unlock_zone_reclaim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_flush_metadata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_lock_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_lock_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_unmap_zone(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_free_zone(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_unlock_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_unlock_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmz_alloc_zone(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmz_reclaim_copy(ptr noundef %zrc, ptr noundef %src_zone, ptr noundef %dst_zone) unnamed_addr #0 align 64 {
entry:
  %src = alloca %struct.dm_io_region, align 8
  %dst = alloca %struct.dm_io_region, align 8
  %block = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %zrc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %zrc, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %src) #8
  %2 = call ptr @memset(ptr %src, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dst) #8
  %3 = call ptr @memset(ptr %dst, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %block) #8
  %4 = ptrtoint ptr %block to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %block, align 8
  %flags1 = getelementptr inbounds %struct.dm_zone, ptr %src_zone, i32 0, i32 2
  %5 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags1, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wp_block = getelementptr inbounds %struct.dm_zone, ptr %src_zone, i32 0, i32 5
  %8 = ptrtoint ptr %wp_block to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wp_block, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @dmz_zone_nr_blocks(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %end_block.0.in = phi i32 [ %9, %if.then ], [ %call2, %if.else ]
  %end_block.0 = zext i32 %end_block.0.in to i64
  %call4 = tail call i64 @dmz_start_block(ptr noundef %1, ptr noundef %src_zone) #8
  %call5 = tail call i64 @dmz_start_block(ptr noundef %1, ptr noundef %dst_zone) #8
  %flags6 = getelementptr inbounds %struct.dm_zone, ptr %dst_zone, i32 0, i32 2
  %10 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags6, align 4
  %12 = and i32 %11, 4
  %13 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %block, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %end_block.0)
  %cmp120 = icmp ult i64 %14, %end_block.0
  br i1 %cmp120, label %while.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %dev = getelementptr inbounds %struct.dm_zone, ptr %src_zone, i32 0, i32 1
  %dev16 = getelementptr inbounds %struct.dm_zone, ptr %dst_zone, i32 0, i32 1
  %wp_block2.i = getelementptr inbounds %struct.dm_zone, ptr %dst_zone, i32 0, i32 5
  %sector = getelementptr inbounds %struct.dm_io_region, ptr %src, i32 0, i32 1
  %count = getelementptr inbounds %struct.dm_io_region, ptr %src, i32 0, i32 2
  %sector50 = getelementptr inbounds %struct.dm_io_region, ptr %dst, i32 0, i32 1
  %count52 = getelementptr inbounds %struct.dm_io_region, ptr %dst, i32 0, i32 2
  %flags53 = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 7
  %kc = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 3
  %kc_err = getelementptr inbounds %struct.dmz_reclaim, ptr %zrc, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end67.while.body_crit_edge, %while.body.lr.ph
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %flags12 = getelementptr inbounds %struct.dmz_dev, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags12, align 4
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end15, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %while.body
  %19 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev16, align 4
  %flags17 = getelementptr inbounds %struct.dmz_dev, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags17, align 4
  %and18 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %23 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags1, align 4
  %25 = and i32 %24, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool24.not = icmp eq i32 %25, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %call27 = call i32 @dmz_first_valid_block(ptr noundef %1, ptr noundef %src_zone, ptr noundef nonnull %block) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 1
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %conv32118 = zext i32 %call27 to i64
  %26 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags6, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool35.not = icmp eq i32 %28, 0
  br i1 %tobool35.not, label %if.end31.if.end41_crit_edge, label %if.then36

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then36:                                        ; preds = %if.end31
  %29 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %block, align 8
  %31 = ptrtoint ptr %zrc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %zrc, align 4
  %33 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev16, align 4
  %35 = ptrtoint ptr %wp_block2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wp_block2.i, align 4
  %conv.i = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %conv.i)
  %cmp.i = icmp eq i64 %30, %conv.i
  br i1 %cmp.i, label %if.then36.if.end41_crit_edge, label %if.end.i

if.then36.if.end41_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.end.i:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %conv.i)
  %cmp4.i = icmp ult i64 %30, %conv.i
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %37 = trunc i64 %30 to i32
  %conv8.i = sub i32 %37, %36
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %34, align 8
  %call.i = call i64 @dmz_start_sect(ptr noundef %32, ptr noundef %dst_zone) #8
  %shl.i = shl nuw nsw i64 %conv.i, 3
  %add.i = add i64 %call.i, %shl.i
  %conv9.i = zext i32 %conv8.i to i64
  %shl10.i = shl nuw nsw i64 %conv9.i, 3
  %call11.i = call i32 @blkdev_issue_zeroout(ptr noundef %39, i64 noundef %add.i, i64 noundef %shl10.i, i32 noundef 3072, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.end15.i, label %do.end.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.dmz_dev, ptr %34, i32 0, i32 3
  %id.i = getelementptr inbounds %struct.dm_zone, ptr %dst_zone, i32 0, i32 4
  %40 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id.i, align 4
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name.i, i32 noundef %41, i64 noundef %conv.i, i64 noundef %30, i32 noundef %conv8.i, i32 noundef %call11.i) #12
  %call14.i = call zeroext i1 @dmz_check_bdev(ptr noundef %34) #8
  br label %cleanup

if.end15.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %wp_block2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %37, ptr %wp_block2.i, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end15.i, %if.then36.if.end41_crit_edge, %if.end31.if.end41_crit_edge
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %47 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %src, align 8
  %48 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %block, align 8
  %add = add i64 %49, %call4
  %shl = shl i64 %add, 3
  %50 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %shl, ptr %sector, align 8
  %shl44 = shl nuw nsw i64 %conv32118, 3
  %51 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %shl44, ptr %count, align 8
  %52 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev16, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %56 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %dst, align 8
  %add48 = add i64 %49, %call5
  %shl49 = shl i64 %add48, 3
  %57 = ptrtoint ptr %sector50 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %shl49, ptr %sector50, align 8
  %58 = ptrtoint ptr %count52 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %shl44, ptr %count52, align 8
  call void @_set_bit(i32 noundef 0, ptr noundef %flags53) #8
  %59 = ptrtoint ptr %kc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %kc, align 4
  call void @dm_kcopyd_copy(ptr noundef %60, ptr noundef nonnull %src, i32 noundef 1, ptr noundef nonnull %dst, i32 noundef %12, ptr noundef nonnull @dmz_reclaim_kcopy_end, ptr noundef %zrc) #8
  call void @__might_sleep(ptr noundef nonnull @.str.23, i32 noundef 98) #8
  %61 = ptrtoint ptr %flags53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %flags53, align 4
  %and1.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i114 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i114, label %if.end41.wait_on_bit_io.exit_crit_edge, label %if.end.i115

if.end41.wait_on_bit_io.exit_crit_edge:           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_on_bit_io.exit

if.end.i115:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call i32 @out_of_line_wait_on_bit(ptr noundef %flags53, i32 noundef 0, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #8
  br label %wait_on_bit_io.exit

wait_on_bit_io.exit:                              ; preds = %if.end.i115, %if.end41.wait_on_bit_io.exit_crit_edge
  %63 = ptrtoint ptr %kc_err to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %kc_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool56.not = icmp eq i32 %64, 0
  br i1 %tobool56.not, label %if.end59, label %wait_on_bit_io.exit.cleanup_crit_edge

wait_on_bit_io.exit.cleanup_crit_edge:            ; preds = %wait_on_bit_io.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59:                                         ; preds = %wait_on_bit_io.exit
  %65 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %block, align 8
  %add60 = add i64 %66, %conv32118
  store i64 %add60, ptr %block, align 8
  %67 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %flags6, align 4
  %69 = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool63.not = icmp eq i32 %69, 0
  br i1 %tobool63.not, label %if.end59.if.end67_crit_edge, label %if.then64

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %conv65 = trunc i64 %add60 to i32
  %70 = ptrtoint ptr %wp_block2.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv65, ptr %wp_block2.i, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end59.if.end67_crit_edge
  %71 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %block, align 8
  %cmp = icmp ult i64 %72, %end_block.0
  br i1 %cmp, label %if.end67.while.body_crit_edge, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end67.while.body_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup:                                          ; preds = %if.end67.cleanup_crit_edge, %wait_on_bit_io.exit.cleanup_crit_edge, %do.end.i, %if.end.i.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11.i, %do.end.i ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %while.body.cleanup_crit_edge ], [ -5, %if.end15.cleanup_crit_edge ], [ -4, %if.end21.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %64, %wait_on_bit_io.exit.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dst) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %src) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_copy_valid_blocks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_invalidate_blocks(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_zone_nr_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmz_map_zone(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dmz_start_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_kcopyd_copy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmz_reclaim_kcopy_end(i32 noundef %read_err, i32 noundef %write_err, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %write_err, %read_err
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  %spec.select = select i1 %1, i32 0, i32 -5
  %2 = getelementptr inbounds %struct.dmz_reclaim, ptr %context, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 4
  %flags = getelementptr inbounds %struct.dmz_reclaim, ptr %context, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 1, ptr elementtype(i32) %flags) #8, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @wake_up_bit(ptr noundef %flags, i32 noundef 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dmz_start_sect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dmz_check_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_io(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmz_merge_valid_blocks(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !47, !48, !49, !51, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @dmz_ctr_reclaim.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-zoned-reclaim.c", i32 576, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @dmz_ctr_reclaim.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/md/dm-zoned-reclaim.c", i32 577, i32 12}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/md/dm-zoned-reclaim.c", i32 532, i32 2}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @dmz_reclaim_work.__UNIQUE_ID_ddebug277, !8, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!13 = !{ptr @.str.8, !8, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.9, !8, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/md/dm-zoned-reclaim.c", i32 376, i32 3}
!17 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dmz_do_reclaim.__UNIQUE_ID_ddebug270, !16, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-zoned-reclaim.c", i32 422, i32 4}
!21 = !{ptr @dmz_do_reclaim.__UNIQUE_ID_ddebug271, !20, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/md/dm-zoned-reclaim.c", i32 426, i32 4}
!24 = !{ptr @dmz_do_reclaim.__UNIQUE_ID_ddebug272, !23, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-zoned-reclaim.c", i32 435, i32 3}
!27 = !{ptr @dmz_do_reclaim.__UNIQUE_ID_ddebug273, !26, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/dm-zoned-reclaim.c", i32 440, i32 2}
!30 = !{ptr @dmz_do_reclaim.__UNIQUE_ID_ddebug274, !29, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/md/dm-zoned-reclaim.c", i32 301, i32 2}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @dmz_reclaim_rnd_data.__UNIQUE_ID_ddebug269, !32, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!35 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/md/dm-zoned-reclaim.c", i32 83, i32 3}
!40 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @dmz_reclaim_align_wp._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @dmz_reclaim_align_wp._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/wait_bit.h", i32 98, i32 2}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/md/dm-zoned-reclaim.c", i32 203, i32 2}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @dmz_reclaim_buf.__UNIQUE_ID_ddebug267, !46, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/md/dm-zoned-reclaim.c", i32 242, i32 2}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @dmz_reclaim_seq_data.__UNIQUE_ID_ddebug268, !50, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2148294757, i64 2148294762, i64 2148294775, i64 2148294819, i64 2148294853, i64 2148294874}
!63 = !{i64 2148578190}
!64 = !{i64 2148488609, i64 2148488641, i64 2148488670, i64 2148488704, i64 2148488735, i64 2148488758}
!65 = !{i64 2154310486}
