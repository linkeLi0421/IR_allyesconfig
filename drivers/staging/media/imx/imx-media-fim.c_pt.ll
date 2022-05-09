; ModuleID = '/llk/IR_all_yes/drivers/staging/media/imx/imx-media-fim.c_pt.bc'
source_filename = "../drivers/staging/media/imx/imx-media-fim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_event = type { i32, %union.anon.102, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.102 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.103, i32, i32, i32, i32, i32 }
%union.anon.103 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.imx_media_fim = type { ptr, %struct.v4l2_ctrl_handler, [5 x ptr], [2 x ptr], %struct.spinlock, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.completion, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.83, %union.anon.84, i32, ptr, i32, %struct.anon.85, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.83 = type { i64 }
%union.anon.84 = type { ptr }
%struct.anon.85 = type { i32 }
%struct.v4l2_fract = type { i32, i32 }

@imx_media_fim_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&fim->lock\00", [21 x i8] zeroinitializer }, align 32
@frame_interval_monitor.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx6_media_csi\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"frame_interval_monitor\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/media/imx/imx-media-fim.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"FIM: %llu ignored, out of tolerance bounds\0A\00", [52 x i8] zeroinitializer }, align 32
@frame_interval_monitor.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FIM: error: %lu usec%s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" (!!!)\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@send_fim_event.ev = internal constant { %struct.v4l2_event, [56 x i8] } { %struct.v4l2_event { i32 134217729, %union.anon.102 zeroinitializer, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@update_fim_nominal.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"update_fim_nominal\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no frame interval, FIM disabled\0A\00", [63 x i8] zeroinitializer }, align 32
@update_fim_nominal.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.10, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FI=%lu usec\0A\00", [19 x i8] zeroinitializer }, align 32
@fim_acquire_first_ts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: wait first icap event timeout\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fim_acquire_first_ts\00", [43 x i8] zeroinitializer }, align 32
@fim_acquire_first_ts._entry_ptr = internal global ptr @fim_acquire_first_ts._entry, section ".printk_index", align 4
@init_fim_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"imx_media_fim:374:(hdlr)->_lock\00", [32 x i8] zeroinitializer }, align 32
@fim_ctrl = internal constant { [5 x %struct.v4l2_ctrl_config], [144 x i8] } { [5 x %struct.v4l2_ctrl_config] [%struct.v4l2_ctrl_config { ptr @fim_ctrl_ops, ptr null, i32 9968048, ptr @.str.14, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @fim_ctrl_ops, ptr null, i32 9968049, ptr @.str.15, i32 1, i64 1, i64 64, i64 1, i64 8, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @fim_ctrl_ops, ptr null, i32 9968050, ptr @.str.16, i32 1, i64 2, i64 200, i64 1, i64 50, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @fim_ctrl_ops, ptr null, i32 9968051, ptr @.str.17, i32 1, i64 0, i64 500, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @fim_ctrl_ops, ptr null, i32 9968052, ptr @.str.18, i32 1, i64 0, i64 256, i64 1, i64 2, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }], [144 x i8] zeroinitializer }, align 32
@fim_icap_ctrl = internal constant { [2 x %struct.v4l2_ctrl_config], [32 x i8] } { [2 x %struct.v4l2_ctrl_config] [%struct.v4l2_ctrl_config { ptr @fim_ctrl_ops, ptr null, i32 9968053, ptr @.str.19, i32 1, i64 0, i64 3, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, %struct.v4l2_ctrl_config { ptr @fim_ctrl_ops, ptr null, i32 9968054, ptr @.str.20, i32 1, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }], [32 x i8] zeroinitializer }, align 32
@fim_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @fim_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FIM Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FIM Num Average\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FIM Tolerance Min\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FIM Tolerance Max\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FIM Num Skip\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FIM Input Capture Edge\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FIM Input Capture Channel\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 9968048, i64 9968053]
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 473, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 162, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 177, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [3 x i8] c"ev\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 130, i32 33 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 77, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 85, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 257, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 374, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [9 x i8] c"fim_ctrl\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 293, i32 38 }
@___asan_gen_.78 = private unnamed_addr constant [14 x i8] c"fim_icap_ctrl\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 346, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"fim_ctrl_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 289, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 297, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 307, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 317, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 327, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 337, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 350, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [45 x i8] c"../drivers/staging/media/imx/imx-media-fim.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 360, i32 11 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @fim_acquire_first_ts._entry, ptr @fim_acquire_first_ts._entry_ptr, ptr @imx_media_fim_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @send_fim_event.ev, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @init_fim_controls._key, ptr @.str.13, ptr @fim_ctrl, ptr @fim_icap_ctrl, ptr @fim_ctrl_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_media_fim_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_fim_event.ev to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fim_acquire_first_ts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_fim_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fim_ctrl to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fim_icap_ctrl to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fim_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_media_fim_eof_monitor(ptr noundef %fim, i64 noundef %timestamp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %icap_flags = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 11
  %0 = ptrtoint ptr %icap_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %icap_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @frame_interval_monitor(ptr noundef %fim, i64 noundef %timestamp)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @frame_interval_monitor(ptr nocapture noundef %fim, i64 noundef %timestamp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 5
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end79.critedge116, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %counter = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 12
  %2 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %counter, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %3)
  %cmp = icmp ugt i32 %3, 2147483646
  %last_ts76.c = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 13
  br i1 %cmp, label %if.end79.critedge, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %last_ts76.c to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %last_ts76.c, align 8
  %sub = sub i64 %timestamp, %5
  %nominal = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 15
  %6 = ptrtoint ptr %nominal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nominal, align 4
  %conv = zext i32 %7 to i64
  %mul.neg = mul nsw i64 %conv, -1000
  %sub1 = add i64 %sub, %mul.neg
  %8 = tail call i64 @llvm.abs.i64(i64 %sub1, i1 false)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %8)
  %cmp5 = icmp sgt i64 %8, 4294967295
  %conv9 = trunc i64 %8 to i32
  %div = udiv i32 %conv9, 1000
  %9 = zext i32 %div to i64
  %error.0 = select i1 %cmp5, i64 4294967295, i64 %9
  %tolerance_max = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 9
  %10 = ptrtoint ptr %tolerance_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tolerance_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool20.not = icmp eq i32 %11, 0
  %conv22 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %error.0, i64 %conv22)
  %cmp23.not = icmp ult i64 %error.0, %conv22
  %or.cond = select i1 %tobool20.not, i1 true, i1 %cmp23.not
  br i1 %or.cond, label %if.end34, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frame_interval_monitor.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frame_interval_monitor, %if.then31)) #4
          to label %do.end [label %if.then31], !srcloc !61

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %fim to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fim, align 8
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @frame_interval_monitor.__UNIQUE_ID_ddebug319, ptr noundef %15, ptr noundef nonnull @.str.4, i64 noundef %error.0) #4
  br label %do.end

do.end:                                           ; preds = %if.then31, %do.body
  %16 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %counter, align 8
  %dec = add i32 %17, -1
  store i32 %dec, ptr %counter, align 8
  %18 = ptrtoint ptr %last_ts76.c to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %timestamp, ptr %last_ts76.c, align 8
  br label %if.end79

if.end34:                                         ; preds = %if.end
  %sum = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 14
  %19 = ptrtoint ptr %sum to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sum, align 8
  %21 = trunc i64 %error.0 to i32
  %conv36 = add i32 %20, %21
  store i32 %conv36, ptr %sum, align 8
  %num_avg = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 6
  %22 = ptrtoint ptr %num_avg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_avg, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %23)
  %cmp38 = icmp eq i32 %inc, %23
  br i1 %cmp38, label %if.then40, label %if.end79.critedge114

if.then40:                                        ; preds = %if.end34
  %div45123124 = lshr i32 %inc, 1
  %add46 = add i32 %div45123124, %conv36
  %div47 = udiv i32 %add46, %inc
  %tolerance_min = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 8
  %24 = ptrtoint ptr %tolerance_min to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tolerance_min, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div47, i32 %25)
  %cmp48 = icmp ugt i32 %div47, %25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frame_interval_monitor.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frame_interval_monitor, %if.then64)) #4
          to label %do.end72 [label %if.then64], !srcloc !61

if.then64:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %fim to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fim, align 8
  %dev66 = getelementptr inbounds %struct.v4l2_subdev, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev66, align 4
  %cond69 = select i1 %cmp48, ptr @.str.6, ptr @.str.7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @frame_interval_monitor.__UNIQUE_ID_ddebug320, ptr noundef %29, ptr noundef nonnull @.str.5, i32 noundef %div47, ptr noundef nonnull %cond69) #4
  br label %do.end72

do.end72:                                         ; preds = %if.then64, %if.then40
  %30 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %counter, align 8
  %31 = ptrtoint ptr %sum to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %sum, align 8
  %32 = ptrtoint ptr %last_ts76.c to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %timestamp, ptr %last_ts76.c, align 8
  br i1 %cmp48, label %if.then78, label %do.end72.if.end79_crit_edge

do.end72.if.end79_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

if.then78:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %fim to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fim, align 8
  tail call void @v4l2_subdev_notify_event(ptr noundef %34, ptr noundef nonnull @send_fim_event.ev) #4
  br label %if.end79

if.end79.critedge:                                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %last_ts76.c to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %timestamp, ptr %last_ts76.c, align 8
  br label %if.end79

if.end79.critedge114:                             ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %last_ts76.c to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %timestamp, ptr %last_ts76.c, align 8
  br label %if.end79

if.end79.critedge116:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %last_ts76.c117 = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 13
  %37 = ptrtoint ptr %last_ts76.c117 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %timestamp, ptr %last_ts76.c117, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.end79.critedge116, %if.end79.critedge114, %if.end79.critedge, %if.then78, %do.end72.if.end79_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_media_fim_set_stream(ptr noundef %fim, ptr nocapture noundef readonly %fi, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %on to i8
  %ctrl = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler.i, align 8
  %lock.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %5, i32 noundef 0) #4
  %stream_on = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 17
  %6 = ptrtoint ptr %stream_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stream_on, align 8, !range !60
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %frombool)
  %cmp = icmp eq i8 %7, %frombool
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  br i1 %on, label %do.body6, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

do.body6:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 4
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %icap_ctrl.i = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.imx_media_fim, ptr %fim, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %icap_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %icap_ctrl.i, align 8
  %12 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl, align 4
  %arrayidx5.i = getelementptr %struct.imx_media_fim, ptr %fim, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx5.i, align 4
  %arrayidx7.i = getelementptr %struct.imx_media_fim, ptr %fim, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7.i, align 4
  %arrayidx9.i = getelementptr %struct.imx_media_fim, ptr %fim, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr %struct.imx_media_fim, ptr %fim, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx11.i, align 4
  %cur.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 23
  %22 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.i = icmp ne i32 %23, 0
  %enabled.i = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 5
  %frombool13.i = zext i1 %tobool12.i to i8
  %24 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %frombool13.i, ptr %enabled.i, align 4
  %cur14.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 23
  %25 = ptrtoint ptr %cur14.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cur14.i, align 8
  %icap_flags.i = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 11
  %27 = ptrtoint ptr %icap_flags.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %icap_flags.i, align 4
  %cur16.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 23
  %28 = ptrtoint ptr %cur16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cur16.i, align 8
  %icap_channel.i = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 10
  %30 = ptrtoint ptr %icap_channel.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %icap_channel.i, align 8
  %cur18.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 23
  %31 = ptrtoint ptr %cur18.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cur18.i, align 8
  %num_avg.i = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 6
  %33 = ptrtoint ptr %num_avg.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %num_avg.i, align 8
  %cur20.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 23
  %34 = ptrtoint ptr %cur20.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cur20.i, align 8
  %num_skip.i = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 7
  %36 = ptrtoint ptr %num_skip.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %num_skip.i, align 4
  %cur22.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %19, i32 0, i32 23
  %37 = ptrtoint ptr %cur22.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur22.i, align 8
  %tolerance_min.i = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 8
  %39 = ptrtoint ptr %tolerance_min.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tolerance_min.i, align 8
  %cur24.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 23
  %40 = ptrtoint ptr %cur24.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.sink.i = load i32, ptr %cur24.i, align 4
  %41 = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 9
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink.i, i32 %38)
  %cmp.not.i = icmp ugt i32 %.sink.i, %38
  %spec.store.select.i = select i1 %cmp.not.i, i32 %.sink.i, i32 0
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.store.select.i, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp48.not.i = icmp eq i32 %26, 0
  br i1 %cmp48.not.i, label %if.then49.i, label %do.body6.reset_fim.exit_crit_edge

do.body6.reset_fim.exit_crit_edge:                ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %reset_fim.exit

if.then49.i:                                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  %43 = tail call i32 @llvm.smax.i32(i32 %35, i32 1) #4
  %44 = ptrtoint ptr %num_skip.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %num_skip.i, align 4
  br label %reset_fim.exit

reset_fim.exit:                                   ; preds = %if.then49.i, %do.body6.reset_fim.exit_crit_edge
  %45 = ptrtoint ptr %num_skip.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_skip.i, align 4
  %sub.i = sub i32 0, %46
  %counter.i = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 12
  %47 = ptrtoint ptr %counter.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.i, ptr %counter.i, align 8
  %sum.i = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 14
  %48 = ptrtoint ptr %sum.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %sum.i, align 8
  %denominator.i = getelementptr inbounds %struct.v4l2_fract, ptr %fi, i32 0, i32 1
  %49 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %denominator.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i = icmp eq i32 %50, 0
  br i1 %cmp.i, label %do.body.i, label %if.end4.i

do.body.i:                                        ; preds = %reset_fim.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_fim_nominal.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_media_fim_set_stream, %if.then3.i)) #4
          to label %do.end.i [label %if.then3.i], !srcloc !61

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %fim to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fim, align 8
  %dev.i = getelementptr inbounds %struct.v4l2_subdev, ptr %52, i32 0, i32 14
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_fim_nominal.__UNIQUE_ID_ddebug315, ptr noundef %54, ptr noundef nonnull @.str.9) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i, %do.body.i
  %55 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %enabled.i, align 4
  br label %update_fim_nominal.exit

if.end4.i:                                        ; preds = %reset_fim.exit
  %56 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fi, align 4
  %conv.i = zext i32 %57 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000000
  %div307.i = lshr i32 %50, 1
  %conv6.i = zext i32 %div307.i to i64
  %add.i = add nuw nsw i64 %mul.i, %conv6.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp181.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp181.i, label %if.then189.i, label %if.else195.i, !prof !62

if.then189.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv190.i = trunc i64 %add.i to i32
  %div193.i = udiv i32 %conv190.i, %50
  br label %if.end199.i

if.else195.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %58 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %50, i64 %add.i) #7, !srcloc !63
  %asmresult1.i.i = extractvalue { i64, i64 } %58, 1
  %extract.t339.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end199.i

if.end199.i:                                      ; preds = %if.else195.i, %if.then189.i
  %_tmp.0.off0.i = phi i32 [ %div193.i, %if.then189.i ], [ %extract.t339.i, %if.else195.i ]
  %nominal.i = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 15
  %59 = ptrtoint ptr %nominal.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %_tmp.0.off0.i, ptr %nominal.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_fim_nominal.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_media_fim_set_stream, %if.then215.i)) #4
          to label %update_fim_nominal.exit [label %if.then215.i], !srcloc !61

if.then215.i:                                     ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %fim to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fim, align 8
  %dev217.i = getelementptr inbounds %struct.v4l2_subdev, ptr %61, i32 0, i32 14
  %62 = ptrtoint ptr %dev217.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev217.i, align 4
  %64 = ptrtoint ptr %nominal.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nominal.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_fim_nominal.__UNIQUE_ID_ddebug316, ptr noundef %63, ptr noundef nonnull @.str.10, i32 noundef %65) #4
  br label %update_fim_nominal.exit

update_fim_nominal.exit:                          ; preds = %if.then215.i, %if.end199.i, %do.end.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #4
  %66 = ptrtoint ptr %icap_flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %icap_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp13.not = icmp eq i32 %67, 0
  br i1 %cmp13.not, label %update_fim_nominal.exit.if.end26_crit_edge, label %if.then15

update_fim_nominal.exit.if.end26_crit_edge:       ; preds = %update_fim_nominal.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then15:                                        ; preds = %update_fim_nominal.exit
  %68 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %enabled.i, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i, label %if.then15.if.end26_crit_edge, label %lor.lhs.false.i

if.then15.if.end26_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

lor.lhs.false.i:                                  ; preds = %if.then15
  %70 = ptrtoint ptr %num_skip.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_skip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i50 = icmp sgt i32 %71, 0
  br i1 %cmp.i50, label %lor.lhs.false.i.if.end26_crit_edge, label %if.end.i

lor.lhs.false.i.if.end26_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.end.i:                                         ; preds = %lor.lhs.false.i
  %icap_first_event.i = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 16
  %call1.i = tail call i32 @wait_for_completion_timeout(ptr noundef %icap_first_event.i, i32 noundef 200) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %do.end.i51, label %if.end.i.if.end26_crit_edge

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

do.end.i51:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %fim to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fim, align 8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %73, i32 0, i32 9
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name.i) #8
  br label %if.end26

if.end26:                                         ; preds = %do.end.i51, %if.end.i.if.end26_crit_edge, %lor.lhs.false.i.if.end26_crit_edge, %if.then15.if.end26_crit_edge, %update_fim_nominal.exit.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %74 = ptrtoint ptr %stream_on to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %frombool, ptr %stream_on, align 8
  br label %out

out:                                              ; preds = %if.end26, %entry.out_crit_edge
  %75 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ctrl, align 4
  %handler.i52 = getelementptr inbounds %struct.v4l2_ctrl, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %handler.i52 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %handler.i52, align 8
  %lock.i53 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %lock.i53 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lock.i53, align 4
  tail call void @mutex_unlock(ptr noundef %80) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_media_fim_add_controls(ptr noundef %fim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fim, align 8
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  %ctrl_handler1 = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 1
  %call = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %3, ptr noundef %ctrl_handler1, ptr noundef null, i1 noundef zeroext false) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_media_fim_init(ptr noundef %sd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 376, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sd, ptr %call.i, align 8
  %lock = getelementptr inbounds %struct.imx_media_fim, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @imx_media_fim_init.__key, i16 noundef signext 3) #4
  %ctrl_handler.i = getelementptr inbounds %struct.imx_media_fim, ptr %call.i, i32 0, i32 1
  %call.i16 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 7, ptr noundef nonnull @init_fim_controls._key, ptr noundef nonnull @.str.13) #4
  %call1.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler.i, ptr noundef nonnull @fim_ctrl, ptr noundef null) #4
  %arrayidx2.i = getelementptr %struct.imx_media_fim, ptr %call.i, i32 0, i32 2, i32 0
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1.i, ptr %arrayidx2.i, align 4
  %call1.1.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler.i, ptr noundef getelementptr inbounds ([5 x %struct.v4l2_ctrl_config], ptr @fim_ctrl, i32 0, i32 1), ptr noundef null) #4
  %arrayidx2.1.i = getelementptr %struct.imx_media_fim, ptr %call.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.1.i, ptr %arrayidx2.1.i, align 4
  %call1.2.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler.i, ptr noundef getelementptr inbounds ([5 x %struct.v4l2_ctrl_config], ptr @fim_ctrl, i32 0, i32 2), ptr noundef null) #4
  %arrayidx2.2.i = getelementptr %struct.imx_media_fim, ptr %call.i, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1.2.i, ptr %arrayidx2.2.i, align 4
  %call1.3.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler.i, ptr noundef getelementptr inbounds ([5 x %struct.v4l2_ctrl_config], ptr @fim_ctrl, i32 0, i32 3), ptr noundef null) #4
  %arrayidx2.3.i = getelementptr %struct.imx_media_fim, ptr %call.i, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1.3.i, ptr %arrayidx2.3.i, align 4
  %call1.4.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler.i, ptr noundef getelementptr inbounds ([5 x %struct.v4l2_ctrl_config], ptr @fim_ctrl, i32 0, i32 4), ptr noundef null) #4
  %arrayidx2.4.i = getelementptr %struct.imx_media_fim, ptr %call.i, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1.4.i, ptr %arrayidx2.4.i, align 4
  %call7.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler.i, ptr noundef nonnull @fim_icap_ctrl, ptr noundef null) #4
  %arrayidx8.i = getelementptr %struct.imx_media_fim, ptr %call.i, i32 0, i32 3, i32 0
  %8 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %arrayidx8.i, align 4
  %call7.1.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_handler.i, ptr noundef getelementptr inbounds ([2 x %struct.v4l2_ctrl_config], ptr @fim_icap_ctrl, i32 0, i32 1), ptr noundef null) #4
  %arrayidx8.1.i = getelementptr %struct.imx_media_fim, ptr %call.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.1.i, ptr %arrayidx8.1.i, align 4
  %error.i = getelementptr inbounds %struct.imx_media_fim, ptr %call.i, i32 0, i32 1, i32 9
  %10 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %init_fim_controls.exit.thread, label %if.then6

init_fim_controls.exit.thread:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @v4l2_ctrl_cluster(i32 noundef 5, ptr noundef %arrayidx2.i) #4
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %arrayidx8.i) #4
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler.i) #4
  %12 = inttoptr i32 %11 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %init_fim_controls.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %if.then6 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call.i, %init_fim_controls.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_media_fim_free(ptr noundef %fim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.imx_media_fim, ptr %fim, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_notify_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fim_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %lock = getelementptr i8, ptr %1, i32 212
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.if.end8_crit_edge [
    i32 9968048, label %entry.if.then7_crit_edge
    i32 9968053, label %sw.epilog
  ]

entry.if.then7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

sw.epilog:                                        ; preds = %entry
  %stream_on = getelementptr i8, ptr %1, i32 364
  %5 = ptrtoint ptr %stream_on to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %stream_on, align 8, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %sw.epilog.if.then7_crit_edge, label %sw.epilog.if.end8_crit_edge

sw.epilog.if.end8_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

sw.epilog.if.then7_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.then7:                                         ; preds = %sw.epilog.if.then7_crit_edge, %entry.if.then7_crit_edge
  %icap_ctrl.i = getelementptr i8, ptr %1, i32 204
  %arrayidx.i = getelementptr i8, ptr %1, i32 208
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %icap_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %icap_ctrl.i, align 8
  %ctrl.i = getelementptr i8, ptr %1, i32 184
  %11 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl.i, align 4
  %arrayidx5.i = getelementptr i8, ptr %1, i32 188
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx5.i, align 4
  %arrayidx7.i = getelementptr i8, ptr %1, i32 200
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7.i, align 4
  %arrayidx9.i = getelementptr i8, ptr %1, i32 192
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr i8, ptr %1, i32 196
  %19 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx11.i, align 4
  %val26.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 22
  %21 = ptrtoint ptr %val26.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool27.i = icmp ne i32 %22, 0
  %enabled28.i = getelementptr i8, ptr %1, i32 256
  %frombool29.i = zext i1 %tobool27.i to i8
  %23 = ptrtoint ptr %enabled28.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool29.i, ptr %enabled28.i, align 4
  %val30.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %24 = ptrtoint ptr %val30.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val30.i, align 4
  %icap_flags31.i = getelementptr i8, ptr %1, i32 280
  %26 = ptrtoint ptr %icap_flags31.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %icap_flags31.i, align 4
  %val32.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 22
  %27 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val32.i, align 4
  %icap_channel33.i = getelementptr i8, ptr %1, i32 276
  %29 = ptrtoint ptr %icap_channel33.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %icap_channel33.i, align 8
  %val34.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 22
  %30 = ptrtoint ptr %val34.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val34.i, align 4
  %num_avg35.i = getelementptr i8, ptr %1, i32 260
  %32 = ptrtoint ptr %num_avg35.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %num_avg35.i, align 8
  %val36.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 22
  %33 = ptrtoint ptr %val36.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val36.i, align 4
  %num_skip37.i = getelementptr i8, ptr %1, i32 264
  %35 = ptrtoint ptr %num_skip37.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %num_skip37.i, align 4
  %val38.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 22
  %36 = ptrtoint ptr %val38.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val38.i, align 4
  %tolerance_min39.i = getelementptr i8, ptr %1, i32 268
  %38 = ptrtoint ptr %tolerance_min39.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tolerance_min39.i, align 8
  %val40.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 22
  %39 = ptrtoint ptr %val40.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.sink.i = load i32, ptr %val40.i, align 4
  %40 = getelementptr i8, ptr %1, i32 272
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink.i, i32 %37)
  %cmp.not.i = icmp ugt i32 %.sink.i, %37
  %spec.store.select.i = select i1 %cmp.not.i, i32 %.sink.i, i32 0
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.store.select.i, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp48.not.i = icmp eq i32 %25, 0
  br i1 %cmp48.not.i, label %if.then49.i, label %if.then7.reset_fim.exit_crit_edge

if.then7.reset_fim.exit_crit_edge:                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %reset_fim.exit

if.then49.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %42 = tail call i32 @llvm.smax.i32(i32 %34, i32 1) #4
  %43 = ptrtoint ptr %num_skip37.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %num_skip37.i, align 4
  br label %reset_fim.exit

reset_fim.exit:                                   ; preds = %if.then49.i, %if.then7.reset_fim.exit_crit_edge
  %44 = ptrtoint ptr %num_skip37.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_skip37.i, align 4
  %sub.i = sub i32 0, %45
  %counter.i = getelementptr i8, ptr %1, i32 284
  %46 = ptrtoint ptr %counter.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i, ptr %counter.i, align 8
  %sum.i = getelementptr i8, ptr %1, i32 300
  %47 = ptrtoint ptr %sum.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %sum.i, align 8
  br label %if.end8

if.end8:                                          ; preds = %reset_fim.exit, %sw.epilog.if.end8_crit_edge, %entry.if.end8_crit_edge
  %ret.018 = phi i32 [ 0, %reset_fim.exit ], [ -16, %sw.epilog.if.end8_crit_edge ], [ -22, %entry.if.end8_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #4
  ret i32 %ret.018
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !18, !19, !20, !22, !23, !25, !26, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @imx_media_fim_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 473, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 162, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @frame_interval_monitor.__UNIQUE_ID_ddebug319, !4, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 177, i32 3}
!11 = !{ptr @frame_interval_monitor.__UNIQUE_ID_ddebug320, !10, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!12 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @send_fim_event.ev, !15, !"ev", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 130, i32 33}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 77, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @update_fim_nominal.__UNIQUE_ID_ddebug315, !17, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 85, i32 2}
!22 = !{ptr @update_fim_nominal.__UNIQUE_ID_ddebug316, !21, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 257, i32 3}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @fim_acquire_first_ts._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @fim_acquire_first_ts._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @init_fim_controls._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 374, i32 2}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 297, i32 11}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 307, i32 11}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 317, i32 11}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 327, i32 11}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 337, i32 11}
!41 = !{ptr @fim_ctrl, !42, !"fim_ctrl", i1 false, i1 false}
!42 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 293, i32 38}
!43 = !{ptr @fim_ctrl_ops, !44, !"fim_ctrl_ops", i1 false, i1 false}
!44 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 289, i32 35}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 350, i32 11}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 360, i32 11}
!49 = !{ptr @fim_icap_ctrl, !50, !"fim_icap_ctrl", i1 false, i1 false}
!50 = !{!"../drivers/staging/media/imx/imx-media-fim.c", i32 346, i32 38}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i8 0, i8 2}
!61 = !{i64 2148766751, i64 2148766756, i64 2148766769, i64 2148766813, i64 2148766847, i64 2148766868}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2147992424, i64 2147992704, i64 2147993038, i64 2147993372}
