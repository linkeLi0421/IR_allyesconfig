; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/savage/savage_state.c_pt.bc'
source_filename = "../drivers/gpu/drm/savage/savage_state.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_savage_private = type { ptr, %struct.drm_savage_buf_priv, %struct.drm_savage_buf_priv, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.drm_local_map, [3 x i32], ptr, ptr, i32, i16, i32, ptr, i32, i32, i32, %struct.drm_savage_age, i32, i32, i32, i32, %union.drm_savage_state_t, i32, ptr, ptr, ptr, ptr }
%struct.drm_savage_buf_priv = type { ptr, ptr, %struct.drm_savage_age, ptr }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.drm_savage_age = type { i16, i32 }
%union.drm_savage_state_t = type { %struct.anon.74 }
%struct.anon.74 = type { [4 x i8], i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_savage_dma_page = type { %struct.drm_savage_age, i32, i32 }
%union.drm_savage_cmd_header = type { %struct.anon.79 }
%struct.anon.79 = type { i8, i8, i16, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.72 = type { i32, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct.drm_device_dma = type { [23 x %struct.drm_buf_entry], i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_buf_entry = type { i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_savage_cmdbuf = type { ptr, i32, i32, i32, ptr, i32, i32, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_buf = type { i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.anon.76 = type { i8, i8, i16, i16, i16 }
%struct.anon.80 = type { i32, i32 }

@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DMA allocation and use don't match: %p != %p\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s called without lock held, held  %d owner %p %p\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.savage_bci_cmdbuf = private unnamed_addr constant [18 x i8] c"savage_bci_cmdbuf\00", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"vertex buffer index %u out of range (0-%u)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"indexed drawing command extends beyond end of command buffer\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"command SAVAGE_CMD_STATE extends beyond end of command buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"command SAVAGE_CMD_CLEAR extends beyond end of command buffer\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid command 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"IMPLEMENTATION ERROR: non-drawing-command %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"called without dma buffers!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"wrong number of vertices %u in TRILIST\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"wrong number of vertices %u in TRIFAN/STRIP\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid primitive type %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid skip flags 0x%04x for DMA\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"TRILIST_201 used on Savage4 hardware\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"vertex indices (%u-%u) out of range (0-%u)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid skip flags 0x%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"vertex size greater than vb stride (%u > %u)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"wrong number of indices %u in TRILIST\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"wrong number of indices %u in TRIFAN/STRIP\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"idx[%u]=%u out of range (0-%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@__const.savage_dispatch_vb_idx.reorder = private unnamed_addr constant [3 x i32] [i32 2, i32 -1, i32 -1], align 4
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"invalid register range (0x%04x-0x%04x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad texAddr%d %08x (reserved bits)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"bad texAddr%d %08x (local addr out of range)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bad texAddr%d %08x (AGP not available)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bad texAddr%d %08x (AGP addr out of range)\0A\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 5, i64 6]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 58, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 980, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 982, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 986, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1063, i32 5 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1097, i32 5 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1110, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 1128, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 230, i32 6 }
@___asan_gen_.63 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 214, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 156, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 953, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 298, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 312, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 320, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 327, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 333, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 345, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 351, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 471, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 488, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 572, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 579, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 639, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 141, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 92, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 99, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 106, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [41 x i8] c"../drivers/gpu/drm/savage/savage_state.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 114, i32 4 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @savage_emit_clip_rect_s3d(ptr noundef %dev_priv, ptr nocapture noundef readonly %pbox) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %new_scstart = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 4
  %0 = ptrtoint ptr %new_scstart to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_scstart, align 4
  %new_scend = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 6
  %2 = ptrtoint ptr %new_scend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_scend, align 4
  %and = and i32 %1, -134154240
  %4 = ptrtoint ptr %pbox to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pbox, align 2
  %6 = and i16 %5, 2047
  %and2 = zext i16 %6 to i32
  %or = or i32 %and, %and2
  %y1 = getelementptr inbounds %struct.drm_clip_rect, ptr %pbox, i32 0, i32 1
  %7 = ptrtoint ptr %y1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %y1, align 2
  %conv3 = zext i16 %8 to i32
  %shl = shl nuw i32 %conv3, 16
  %and4 = and i32 %shl, 134152192
  %or5 = or i32 %or, %and4
  %and6 = and i32 %3, -134154240
  %x2 = getelementptr inbounds %struct.drm_clip_rect, ptr %pbox, i32 0, i32 2
  %9 = ptrtoint ptr %x2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %x2, align 2
  %11 = add i16 %10, 2047
  %12 = and i16 %11, 2047
  %and8 = zext i16 %12 to i32
  %or9 = or i32 %and6, %and8
  %y2 = getelementptr inbounds %struct.drm_clip_rect, ptr %pbox, i32 0, i32 3
  %13 = ptrtoint ptr %y2 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %y2, align 2
  %conv10 = zext i16 %14 to i32
  %sub11 = shl nuw i32 %conv10, 16
  %shl12 = add i32 %sub11, 134152192
  %and13 = and i32 %shl12, 134152192
  %or14 = or i32 %or9, %and13
  %scstart16 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 3
  %15 = ptrtoint ptr %scstart16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scstart16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or5, i32 %16)
  %cmp.not = icmp eq i32 %or5, %16
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %scend19 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 5
  %17 = ptrtoint ptr %scend19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %scend19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or14, i32 %18)
  %cmp20.not = icmp eq i32 %or14, %18
  br i1 %cmp20.not, label %lor.lhs.false.if.end64_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end64_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %current_dma_page = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 38
  %19 = ptrtoint ptr %current_dma_page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %current_dma_page, align 4
  %dma_pages = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 35
  %21 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_pages, align 4
  %used = getelementptr %struct.drm_savage_dma_page, ptr %22, i32 %20, i32 1
  %23 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %used, align 4
  %25 = add i32 %24, -1021
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp23 = icmp ult i32 %25, 4
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @savage_dma_alloc(ptr noundef %dev_priv, i32 noundef 4) #6
  br label %if.end39

if.else:                                          ; preds = %if.then
  %cmd_dma = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %26 = ptrtoint ptr %cmd_dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd_dma, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handle, align 4
  %mul = shl i32 %20, 10
  %add.ptr = getelementptr i32, ptr %29, i32 %mul
  %add.ptr29 = getelementptr i32, ptr %add.ptr, i32 %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp33 = icmp eq i32 %24, 0
  br i1 %cmp33, label %if.then35, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @savage_dma_wait(ptr noundef %dev_priv, i32 noundef %20) #6
  br label %if.end

if.end:                                           ; preds = %if.then35, %if.else.if.end_crit_edge
  %30 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_pages, align 4
  %used38 = getelementptr %struct.drm_savage_dma_page, ptr %31, i32 %20, i32 1
  %32 = ptrtoint ptr %used38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %used38, align 4
  %add = add i32 %33, 4
  store i32 %add, ptr %used38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end, %if.then25
  %dma_ptr.0 = phi ptr [ %call, %if.then25 ], [ %add.ptr29, %if.end ]
  %incdec.ptr = getelementptr i32, ptr %dma_ptr.0, i32 1
  %34 = ptrtoint ptr %dma_ptr.0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1073676288, ptr %dma_ptr.0, align 4
  %incdec.ptr40 = getelementptr i32, ptr %dma_ptr.0, i32 2
  %35 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1778253771, ptr %incdec.ptr, align 4
  %incdec.ptr41 = getelementptr i32, ptr %dma_ptr.0, i32 3
  %36 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or5, ptr %incdec.ptr40, align 4
  %incdec.ptr42 = getelementptr i32, ptr %dma_ptr.0, i32 4
  %37 = ptrtoint ptr %incdec.ptr41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or14, ptr %incdec.ptr41, align 4
  %38 = ptrtoint ptr %scstart16 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or5, ptr %scstart16, align 4
  %scend46 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 5
  %39 = ptrtoint ptr %scend46 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or14, ptr %scend46, align 4
  %waiting = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 45
  %40 = ptrtoint ptr %waiting to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %waiting, align 4
  %41 = ptrtoint ptr %current_dma_page to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %current_dma_page, align 4
  %cmd_dma50 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %43 = ptrtoint ptr %cmd_dma50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cmd_dma50, align 4
  %handle51 = getelementptr inbounds %struct.drm_local_map, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %handle51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %handle51, align 4
  %mul52 = shl i32 %42, 10
  %add.ptr53 = getelementptr i32, ptr %46, i32 %mul52
  %47 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_pages, align 4
  %used56 = getelementptr %struct.drm_savage_dma_page, ptr %48, i32 %42, i32 1
  %49 = ptrtoint ptr %used56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %used56, align 4
  %add.ptr57 = getelementptr i32, ptr %add.ptr53, i32 %50
  %cmp58.not = icmp eq ptr %incdec.ptr42, %add.ptr57
  br i1 %cmp58.not, label %if.end39.if.end64_crit_edge, label %if.then60

if.end39.if.end64_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then60:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef %add.ptr57, ptr noundef %incdec.ptr42) #6
  tail call void @savage_dma_reset(ptr noundef %dev_priv) #6
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.end39.if.end64_crit_edge, %lor.lhs.false.if.end64_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @savage_dma_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @savage_dma_wait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @savage_dma_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @savage_emit_clip_rect_s4(ptr noundef %dev_priv, ptr nocapture noundef readonly %pbox) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %new_drawctrl0 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 5
  %0 = ptrtoint ptr %new_drawctrl0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_drawctrl0, align 4
  %new_drawctrl1 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 7
  %2 = ptrtoint ptr %new_drawctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_drawctrl1, align 4
  %and = and i32 %1, -16775168
  %4 = ptrtoint ptr %pbox to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pbox, align 2
  %6 = and i16 %5, 2047
  %and2 = zext i16 %6 to i32
  %or = or i32 %and, %and2
  %y1 = getelementptr inbounds %struct.drm_clip_rect, ptr %pbox, i32 0, i32 1
  %7 = ptrtoint ptr %y1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %y1, align 2
  %conv3 = zext i16 %8 to i32
  %shl = shl nuw nsw i32 %conv3, 12
  %and4 = and i32 %shl, 16773120
  %or5 = or i32 %or, %and4
  %and6 = and i32 %3, -16775168
  %x2 = getelementptr inbounds %struct.drm_clip_rect, ptr %pbox, i32 0, i32 2
  %9 = ptrtoint ptr %x2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %x2, align 2
  %11 = add i16 %10, 2047
  %12 = and i16 %11, 2047
  %and8 = zext i16 %12 to i32
  %or9 = or i32 %and6, %and8
  %y2 = getelementptr inbounds %struct.drm_clip_rect, ptr %pbox, i32 0, i32 3
  %13 = ptrtoint ptr %y2 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %y2, align 2
  %conv10 = zext i16 %14 to i32
  %sub11 = shl nuw nsw i32 %conv10, 12
  %shl12 = add nuw nsw i32 %sub11, 16773120
  %and13 = and i32 %shl12, 16773120
  %or14 = or i32 %or9, %and13
  %drawctrl016 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 4
  %15 = ptrtoint ptr %drawctrl016 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %drawctrl016, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or5, i32 %16)
  %cmp.not = icmp eq i32 %or5, %16
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %drawctrl119 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 6
  %17 = ptrtoint ptr %drawctrl119 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %drawctrl119, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or14, i32 %18)
  %cmp20.not = icmp eq i32 %or14, %18
  br i1 %cmp20.not, label %lor.lhs.false.if.end64_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end64_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %current_dma_page = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 38
  %19 = ptrtoint ptr %current_dma_page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %current_dma_page, align 4
  %dma_pages = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 35
  %21 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_pages, align 4
  %used = getelementptr %struct.drm_savage_dma_page, ptr %22, i32 %20, i32 1
  %23 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %used, align 4
  %25 = add i32 %24, -1021
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp23 = icmp ult i32 %25, 4
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @savage_dma_alloc(ptr noundef %dev_priv, i32 noundef 4) #6
  br label %if.end39

if.else:                                          ; preds = %if.then
  %cmd_dma = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %26 = ptrtoint ptr %cmd_dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd_dma, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handle, align 4
  %mul = shl i32 %20, 10
  %add.ptr = getelementptr i32, ptr %29, i32 %mul
  %add.ptr29 = getelementptr i32, ptr %add.ptr, i32 %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp33 = icmp eq i32 %24, 0
  br i1 %cmp33, label %if.then35, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @savage_dma_wait(ptr noundef %dev_priv, i32 noundef %20) #6
  br label %if.end

if.end:                                           ; preds = %if.then35, %if.else.if.end_crit_edge
  %30 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma_pages, align 4
  %used38 = getelementptr %struct.drm_savage_dma_page, ptr %31, i32 %20, i32 1
  %32 = ptrtoint ptr %used38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %used38, align 4
  %add = add i32 %33, 4
  store i32 %add, ptr %used38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end, %if.then25
  %dma_ptr.0 = phi ptr [ %call, %if.then25 ], [ %add.ptr29, %if.end ]
  %incdec.ptr = getelementptr i32, ptr %dma_ptr.0, i32 1
  %34 = ptrtoint ptr %dma_ptr.0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1073676288, ptr %dma_ptr.0, align 4
  %incdec.ptr40 = getelementptr i32, ptr %dma_ptr.0, i32 2
  %35 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1778253771, ptr %incdec.ptr, align 4
  %incdec.ptr41 = getelementptr i32, ptr %dma_ptr.0, i32 3
  %36 = ptrtoint ptr %incdec.ptr40 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or5, ptr %incdec.ptr40, align 4
  %incdec.ptr42 = getelementptr i32, ptr %dma_ptr.0, i32 4
  %37 = ptrtoint ptr %incdec.ptr41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or14, ptr %incdec.ptr41, align 4
  %38 = ptrtoint ptr %drawctrl016 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or5, ptr %drawctrl016, align 4
  %drawctrl146 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 6
  %39 = ptrtoint ptr %drawctrl146 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or14, ptr %drawctrl146, align 4
  %waiting = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 45
  %40 = ptrtoint ptr %waiting to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %waiting, align 4
  %41 = ptrtoint ptr %current_dma_page to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %current_dma_page, align 4
  %cmd_dma50 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %43 = ptrtoint ptr %cmd_dma50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cmd_dma50, align 4
  %handle51 = getelementptr inbounds %struct.drm_local_map, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %handle51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %handle51, align 4
  %mul52 = shl i32 %42, 10
  %add.ptr53 = getelementptr i32, ptr %46, i32 %mul52
  %47 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_pages, align 4
  %used56 = getelementptr %struct.drm_savage_dma_page, ptr %48, i32 %42, i32 1
  %49 = ptrtoint ptr %used56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %used56, align 4
  %add.ptr57 = getelementptr i32, ptr %add.ptr53, i32 %50
  %cmp58.not = icmp eq ptr %incdec.ptr42, %add.ptr57
  br i1 %cmp58.not, label %if.end39.if.end64_crit_edge, label %if.then60

if.end39.if.end64_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then60:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef %add.ptr57, ptr noundef %incdec.ptr42) #6
  tail call void @savage_dma_reset(ptr noundef %dev_priv) #6
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.end39.if.end64_crit_edge, %lor.lhs.false.if.end64_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @savage_bci_cmdbuf(ptr noundef %dev, ptr noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %cmd_header = alloca %union.drm_savage_cmd_header, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %2 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #6
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not = icmp sgt i32 %9, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv5 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv5, align 4
  %cmp.not = icmp eq ptr %11, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %7, align 4
  %and10 = and i32 %13, -2147483648
  %file_priv13 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %file_priv13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %file_priv13, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.savage_bci_cmdbuf, i32 noundef %and10, ptr noundef %15, ptr noundef %file_priv) #6
  br label %cleanup178

do.end:                                           ; preds = %lor.lhs.false
  %tobool14.not = icmp eq ptr %3, null
  br i1 %tobool14.not, label %do.end.if.end24_crit_edge, label %land.lhs.true

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true:                                    ; preds = %do.end
  %buflist = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %buflist to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buflist, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %land.lhs.true.if.end24_crit_edge, label %if.then16

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then16:                                        ; preds = %land.lhs.true
  %dma_idx = getelementptr inbounds %struct.drm_savage_cmdbuf, ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %dma_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_idx, align 4
  %buf_count = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp17.not = icmp ult i32 %19, %21
  br i1 %cmp17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %21, -1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %19, i32 noundef %sub) #6
  br label %cleanup178

if.end21:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr ptr, ptr %17, i32 %19
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end21, %land.lhs.true.if.end24_crit_edge, %do.end.if.end24_crit_edge
  %dmabuf.0 = phi ptr [ %23, %if.end21 ], [ null, %land.lhs.true.if.end24_crit_edge ], [ null, %do.end.if.end24_crit_edge ]
  %size = getelementptr inbounds %struct.drm_savage_cmdbuf, ptr %data, i32 0, i32 1
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool25.not = icmp eq i32 %25, 0
  br i1 %tobool25.not, label %if.end24.if.end37_crit_edge, label %if.then26

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then26:                                        ; preds = %if.end24
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 8) #6
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %if.then26.cleanup178_crit_edge, label %if.end7.i, !prof !70

if.then26.cleanup178_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup178

if.end7.i:                                        ; preds = %if.then26
  %28 = extractvalue { i32, i1 } %26, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3264) #9
  %cmp28 = icmp eq ptr %call8.i, null
  br i1 %cmp28, label %if.end7.i.cleanup178_crit_edge, label %if.end30

if.end7.i.cleanup178_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup178

if.end30:                                         ; preds = %if.end7.i
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size, align 4
  %mul = shl i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end30
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.then34_crit_edge, label %if.then27.i.i, !prof !71

land.rhs16.i.i.if.then34_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %if.then34

if.then.i.i.i:                                    ; preds = %if.end30
  tail call void @__check_object_size(ptr noundef nonnull %call8.i, i32 noundef %mul, i1 noundef zeroext false) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %30, i32 %mul, i32 -1226833920) #10, !srcloc !72
  %asmresult.i.i = extractvalue { i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !71

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8.i, i32 noundef %mul) #6
  %34 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !73
  %and.i.i.i.i = and i32 %36, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call8.i, ptr noundef %30, i32 noundef %mul) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end35, label %if.then11.i.i, !prof !71

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call8.i, i32 %sub.i.i
  %37 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.then34

if.then34:                                        ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.then34_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i) #6
  br label %cleanup178

if.end35:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call8.i, ptr %data, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.end24.if.end37_crit_edge
  %kcmd_addr.0 = phi ptr [ %call8.i, %if.end35 ], [ null, %if.end24.if.end37_crit_edge ]
  %vb_size = getelementptr inbounds %struct.drm_savage_cmdbuf, ptr %data, i32 0, i32 5
  %39 = ptrtoint ptr %vb_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vb_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool38.not = icmp eq i32 %40, 0
  br i1 %tobool38.not, label %if.end37.if.end47_crit_edge, label %if.then39

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then39:                                        ; preds = %if.end37
  %vb_addr = getelementptr inbounds %struct.drm_savage_cmdbuf, ptr %data, i32 0, i32 4
  %41 = ptrtoint ptr %vb_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vb_addr, align 4
  %call41 = tail call ptr @memdup_user(ptr noundef %42, i32 noundef %40) #6
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %call41 to i32
  br label %done

if.end45:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %vb_addr to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call41, ptr %vb_addr, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end45, %if.end37.if.end47_crit_edge
  %kvb_addr.0 = phi ptr [ %call41, %if.end45 ], [ null, %if.end37.if.end47_crit_edge ]
  %nbox = getelementptr inbounds %struct.drm_savage_cmdbuf, ptr %data, i32 0, i32 8
  %45 = ptrtoint ptr %nbox to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nbox, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool48.not = icmp eq i32 %46, 0
  br i1 %tobool48.not, label %if.end47.do.body63_crit_edge, label %if.then49

if.end47.do.body63_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body63

if.then49:                                        ; preds = %if.end47
  %47 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %46, i32 8) #6
  %48 = extractvalue { i32, i1 } %47, 1
  br i1 %48, label %if.then49.done_crit_edge, label %if.end7.i377, !prof !70

if.then49.done_crit_edge:                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end7.i377:                                     ; preds = %if.then49
  %49 = extractvalue { i32, i1 } %47, 0
  %call8.i376 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %49, i32 noundef 3264) #9
  %cmp52 = icmp eq ptr %call8.i376, null
  br i1 %cmp52, label %if.end7.i377.done_crit_edge, label %if.end54

if.end7.i377.done_crit_edge:                      ; preds = %if.end7.i377
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end54:                                         ; preds = %if.end7.i377
  %box_addr = getelementptr inbounds %struct.drm_savage_cmdbuf, ptr %data, i32 0, i32 7
  %50 = ptrtoint ptr %box_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %box_addr, align 4
  %52 = ptrtoint ptr %nbox to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nbox, align 4
  %mul56 = shl i32 %53, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul56)
  %cmp9.i.i315 = icmp slt i32 %mul56, 0
  br i1 %cmp9.i.i315, label %land.rhs16.i.i318, label %if.then.i.i.i321

land.rhs16.i.i318:                                ; preds = %if.end54
  %.b1.i.i317 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i317, label %land.rhs16.i.i318.done_crit_edge, label %if.then27.i.i319, !prof !71

land.rhs16.i.i318.done_crit_edge:                 ; preds = %land.rhs16.i.i318
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then27.i.i319:                                 ; preds = %land.rhs16.i.i318
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %done

if.then.i.i.i321:                                 ; preds = %if.end54
  tail call void @__check_object_size(ptr noundef nonnull %call8.i376, i32 noundef %mul56, i1 noundef zeroext false) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 156) #6
  %call.i.i322 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i322, label %if.then.i.i.i321.if.end.i.i336_crit_edge, label %land.lhs.true.i.i326

if.then.i.i.i321.if.end.i.i336_crit_edge:         ; preds = %if.then.i.i.i321
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i336

land.lhs.true.i.i326:                             ; preds = %if.then.i.i.i321
  %54 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %51, i32 %mul56, i32 -1226833920) #10, !srcloc !72
  %asmresult.i.i324 = extractvalue { i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i324)
  %cmp.i6.i325 = icmp eq i32 %asmresult.i.i324, 0
  br i1 %cmp.i6.i325, label %if.then.i7.i333, label %land.lhs.true.i.i326.if.end.i.i336_crit_edge, !prof !71

land.lhs.true.i.i326.if.end.i.i336_crit_edge:     ; preds = %land.lhs.true.i.i326
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i336

if.then.i7.i333:                                  ; preds = %land.lhs.true.i.i326
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i327 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8.i376, i32 noundef %mul56) #6
  %55 = tail call i32 @llvm.read_register.i32(metadata !60) #6
  %and.i.i.i.i.i.i328 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i.i328 to ptr
  %cpu_domain.i.i.i.i.i329 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 4
  %57 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i329) #5, !srcloc !73
  %and.i.i.i.i330 = and i32 %57, -13
  %or.i.i.i.i331 = or i32 %and.i.i.i.i330, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i331) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %call1.i.i.i332 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call8.i376, ptr noundef %51, i32 noundef %mul56) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  br label %if.end.i.i336

if.end.i.i336:                                    ; preds = %if.then.i7.i333, %land.lhs.true.i.i326.if.end.i.i336_crit_edge, %if.then.i.i.i321.if.end.i.i336_crit_edge
  %res.0.i.i334 = phi i32 [ %mul56, %if.then.i.i.i321.if.end.i.i336_crit_edge ], [ %call1.i.i.i332, %if.then.i7.i333 ], [ %mul56, %land.lhs.true.i.i326.if.end.i.i336_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i334)
  %tobool4.not.i.i335 = icmp eq i32 %res.0.i.i334, 0
  br i1 %tobool4.not.i.i335, label %if.end60, label %if.then11.i.i339, !prof !71

if.then11.i.i339:                                 ; preds = %if.end.i.i336
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i337 = sub i32 %mul56, %res.0.i.i334
  %add.ptr.i.i338 = getelementptr i8, ptr %call8.i376, i32 %sub.i.i337
  %58 = call ptr @memset(ptr %add.ptr.i.i338, i32 0, i32 %res.0.i.i334)
  br label %done

if.end60:                                         ; preds = %if.end.i.i336
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %box_addr to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call8.i376, ptr %box_addr, align 4
  br label %do.body63

do.body63:                                        ; preds = %if.end60, %if.end47.do.body63_crit_edge
  %kbox_addr.0 = phi ptr [ %call8.i376, %if.end60 ], [ null, %if.end47.do.body63_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %waiting = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 45
  %60 = ptrtoint ptr %waiting to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %waiting, align 4
  %61 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp67432.not = icmp eq i32 %62, 0
  br i1 %cmp67432.not, label %do.body63.if.end164_crit_edge, label %while.body.lr.ph

do.body63.if.end164_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164

while.body.lr.ph:                                 ; preds = %do.body63
  %63 = getelementptr inbounds %struct.anon.79, ptr %cmd_header, i32 0, i32 2
  %64 = getelementptr inbounds %struct.anon.79, ptr %cmd_header, i32 0, i32 3
  %vb_addr89 = getelementptr inbounds %struct.drm_savage_cmdbuf, ptr %data, i32 0, i32 4
  %vb_stride = getelementptr inbounds %struct.drm_savage_cmdbuf, ptr %data, i32 0, i32 6
  %box_addr92 = getelementptr inbounds %struct.drm_savage_cmdbuf, ptr %data, i32 0, i32 7
  %current_dma_page.i = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 38
  %dma_pages.i = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 35
  %cmd_dma.i = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 27
  %back_offset.i = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 11
  %back_bd.i = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 17
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %65 = phi i32 [ %62, %while.body.lr.ph ], [ %161, %cleanup.while.body_crit_edge ]
  %i.0434 = phi i32 [ 0, %while.body.lr.ph ], [ %i.3, %cleanup.while.body_crit_edge ]
  %first_draw_cmd.0433 = phi ptr [ null, %while.body.lr.ph ], [ %first_draw_cmd.3, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd_header) #6
  %66 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %69 = load i64, ptr %67, align 4
  %70 = ptrtoint ptr %cmd_header to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %cmd_header, align 8
  %incdec.ptr = getelementptr %union.drm_savage_cmd_header, ptr %67, i32 1
  store ptr %incdec.ptr, ptr %data, align 4
  %inc = add nuw i32 %i.0434, 1
  %71 = lshr i64 %69, 56
  %72 = trunc i64 %71 to i8
  %73 = zext i8 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values)
  switch i8 %72, label %sw.default [
    i8 3, label %while.body.sw.bb_crit_edge
    i8 4, label %while.body.sw.bb_crit_edge467
    i8 1, label %while.body.sw.bb77_crit_edge
    i8 2, label %while.body.sw.bb77_crit_edge468
  ]

while.body.sw.bb77_crit_edge468:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb77

while.body.sw.bb77_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb77

while.body.sw.bb_crit_edge467:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

while.body.sw.bb_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %while.body.sw.bb_crit_edge, %while.body.sw.bb_crit_edge467
  %74 = ptrtoint ptr %64 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %64, align 4
  %conv70 = zext i16 %75 to i32
  %add = add nuw nsw i32 %conv70, 3
  %div308 = lshr i32 %add, 2
  %add71 = add i32 %div308, %inc
  call void @__sanitizer_cov_trace_cmp4(i32 %add71, i32 %65)
  %cmp73 = icmp ugt i32 %add71, %65
  br i1 %cmp73, label %if.then75, label %sw.bb.sw.bb77_crit_edge

sw.bb.sw.bb77_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb77

if.then75:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #6
  br label %cleanup.thread.sink.split

sw.bb77:                                          ; preds = %sw.bb.sw.bb77_crit_edge, %while.body.sw.bb77_crit_edge, %while.body.sw.bb77_crit_edge468
  %j.0 = phi i32 [ 0, %while.body.sw.bb77_crit_edge ], [ 0, %while.body.sw.bb77_crit_edge468 ], [ %div308, %sw.bb.sw.bb77_crit_edge ]
  %tobool78.not = icmp eq ptr %first_draw_cmd.0433, null
  %add.ptr83 = getelementptr %union.drm_savage_cmd_header, ptr %incdec.ptr, i32 %j.0
  %76 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr83, ptr %data, align 4
  %add84 = add i32 %j.0, %inc
  br i1 %tobool78.not, label %sw.epilog, label %sw.bb77.cleanup_crit_edge

sw.bb77.cleanup_crit_edge:                        ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.default:                                       ; preds = %while.body
  %tobool85.not = icmp eq ptr %first_draw_cmd.0433, null
  br i1 %tobool85.not, label %sw.default.if.end101_crit_edge, label %if.then86

sw.default.if.end101_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then86:                                        ; preds = %sw.default
  %77 = ptrtoint ptr %vb_addr89 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vb_addr89, align 4
  %79 = ptrtoint ptr %vb_size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %vb_size, align 4
  %81 = ptrtoint ptr %vb_stride to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vb_stride, align 4
  %83 = ptrtoint ptr %nbox to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nbox, align 4
  %85 = ptrtoint ptr %box_addr92 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %box_addr92, align 4
  %call93 = tail call fastcc i32 @savage_dispatch_draw(ptr noundef %1, ptr noundef nonnull %first_draw_cmd.0433, ptr noundef %67, ptr noundef %dmabuf.0, ptr noundef %78, i32 noundef %80, i32 noundef %82, i32 noundef %84, ptr noundef %86)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94.not = icmp eq i32 %call93, 0
  br i1 %cmp94.not, label %if.then86.if.end101_crit_edge, label %if.then86.cleanup.thread_crit_edge

if.then86.cleanup.thread_crit_edge:               ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.then86.if.end101_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

sw.epilog:                                        ; preds = %sw.bb77
  %tobool99.not = icmp eq ptr %67, null
  br i1 %tobool99.not, label %sw.epilog.if.end101_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.if.end101_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.end101:                                        ; preds = %sw.epilog.if.end101_crit_edge, %if.then86.if.end101_crit_edge, %sw.default.if.end101_crit_edge
  %i.1408 = phi i32 [ %add84, %sw.epilog.if.end101_crit_edge ], [ %inc, %sw.default.if.end101_crit_edge ], [ %inc, %if.then86.if.end101_crit_edge ]
  %87 = zext i8 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %72, label %sw.default140 [
    i8 0, label %sw.bb104
    i8 5, label %sw.bb121
    i8 6, label %sw.bb136
  ]

sw.bb104:                                         ; preds = %if.end101
  %88 = ptrtoint ptr %63 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %63, align 2
  %conv106 = zext i16 %89 to i32
  %add107 = add nuw nsw i32 %conv106, 1
  %div108307 = lshr i32 %add107, 1
  %add109 = add i32 %div108307, %i.1408
  %90 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add109, i32 %91)
  %cmp111 = icmp ugt i32 %add109, %91
  br i1 %cmp111, label %if.then113, label %sw.epilog144

if.then113:                                       ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #6
  br label %cleanup.thread.sink.split

sw.bb121:                                         ; preds = %if.end101
  %add122 = add i32 %i.1408, 1
  %92 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add122, i32 %93)
  %cmp124 = icmp ugt i32 %add122, %93
  br i1 %cmp124, label %if.then126, label %if.end128

if.then126:                                       ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #6
  br label %cleanup.thread.sink.split

if.end128:                                        ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data, align 4
  %96 = ptrtoint ptr %nbox to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nbox, align 4
  %98 = ptrtoint ptr %box_addr92 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %box_addr92, align 4
  call fastcc void @savage_dispatch_clear(ptr noundef %1, ptr noundef nonnull %cmd_header, ptr noundef %95, i32 noundef %97, ptr noundef %99)
  %100 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data, align 4
  %incdec.ptr134 = getelementptr %union.drm_savage_cmd_header, ptr %101, i32 1
  store ptr %incdec.ptr134, ptr %data, align 4
  br label %cleanup

sw.bb136:                                         ; preds = %if.end101
  %102 = ptrtoint ptr %nbox to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nbox, align 4
  %104 = ptrtoint ptr %box_addr92 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %box_addr92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp.i380 = icmp eq i32 %103, 0
  br i1 %cmp.i380, label %sw.bb136.cleanup_crit_edge, label %sw.bb136.do.body.i_crit_edge

sw.bb136.do.body.i_crit_edge:                     ; preds = %sw.bb136
  br label %do.body.i

sw.bb136.cleanup_crit_edge:                       ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i:                                        ; preds = %if.end65.i.do.body.i_crit_edge, %sw.bb136.do.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %if.end65.i.do.body.i_crit_edge ], [ 0, %sw.bb136.do.body.i_crit_edge ]
  %106 = ptrtoint ptr %current_dma_page.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %current_dma_page.i, align 4
  %108 = ptrtoint ptr %dma_pages.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dma_pages.i, align 4
  %used.i = getelementptr %struct.drm_savage_dma_page, ptr %109, i32 %107, i32 1
  %110 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %used.i, align 4
  %112 = add i32 %111, -1019
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %112)
  %cmp2.i = icmp ult i32 %112, 6
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @savage_dma_alloc(ptr noundef %1, i32 noundef 6) #6
  br label %if.end17.i

if.else.i:                                        ; preds = %do.body.i
  %113 = ptrtoint ptr %cmd_dma.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cmd_dma.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %handle.i, align 4
  %mul.i = shl i32 %107, 10
  %add.ptr.i = getelementptr i32, ptr %116, i32 %mul.i
  %add.ptr7.i = getelementptr i32, ptr %add.ptr.i, i32 %111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp11.i = icmp eq i32 %111, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.else.i.if.end13.i_crit_edge

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @savage_dma_wait(ptr noundef %1, i32 noundef %107) #6
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.else.i.if.end13.i_crit_edge
  %117 = ptrtoint ptr %dma_pages.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dma_pages.i, align 4
  %used16.i = getelementptr %struct.drm_savage_dma_page, ptr %118, i32 %107, i32 1
  %119 = ptrtoint ptr %used16.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %used16.i, align 4
  %add.i = add i32 %120, 6
  store i32 %add.i, ptr %used16.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end13.i, %if.then3.i
  %dma_ptr.0.i = phi ptr [ %call.i, %if.then3.i ], [ %add.ptr7.i, %if.end13.i ]
  %incdec.ptr.i = getelementptr i32, ptr %dma_ptr.0.i, i32 1
  %121 = ptrtoint ptr %dma_ptr.0.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1271660736, ptr %dma_ptr.0.i, align 4
  %122 = ptrtoint ptr %back_offset.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %back_offset.i, align 4
  %incdec.ptr18.i = getelementptr i32, ptr %dma_ptr.0.i, i32 2
  %124 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %incdec.ptr.i, align 4
  %125 = ptrtoint ptr %back_bd.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %back_bd.i, align 4
  %incdec.ptr19.i = getelementptr i32, ptr %dma_ptr.0.i, i32 3
  %127 = ptrtoint ptr %incdec.ptr18.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %incdec.ptr18.i, align 4
  %arrayidx20.i = getelementptr %struct.drm_clip_rect, ptr %105, i32 %i.03.i
  %y1.i = getelementptr %struct.drm_clip_rect, ptr %105, i32 %i.03.i, i32 1
  %128 = ptrtoint ptr %y1.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %y1.i, align 2
  %conv.i = zext i16 %129 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %130 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx20.i, align 2
  %conv22.i = zext i16 %131 to i32
  %or23.i = or i32 %shl.i, %conv22.i
  %and.i = and i32 %or23.i, 268374015
  %incdec.ptr24.i = getelementptr i32, ptr %dma_ptr.0.i, i32 4
  %132 = ptrtoint ptr %incdec.ptr19.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %and.i, ptr %incdec.ptr19.i, align 4
  %133 = load i16, ptr %y1.i, align 2
  %conv27.i = zext i16 %133 to i32
  %shl28.i = shl nuw i32 %conv27.i, 16
  %134 = load i16, ptr %arrayidx20.i, align 2
  %conv31.i = zext i16 %134 to i32
  %or32.i = or i32 %shl28.i, %conv31.i
  %and33.i = and i32 %or32.i, 268374015
  %incdec.ptr34.i = getelementptr i32, ptr %dma_ptr.0.i, i32 5
  %135 = ptrtoint ptr %incdec.ptr24.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %and33.i, ptr %incdec.ptr24.i, align 4
  %y2.i = getelementptr %struct.drm_clip_rect, ptr %105, i32 %i.03.i, i32 3
  %136 = ptrtoint ptr %y2.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %y2.i, align 2
  %conv36.i = zext i16 %137 to i32
  %138 = load i16, ptr %y1.i, align 2
  %conv39.i = zext i16 %138 to i32
  %sub40.i = sub nsw i32 %conv36.i, %conv39.i
  %shl41.i = shl i32 %sub40.i, 16
  %x2.i = getelementptr %struct.drm_clip_rect, ptr %105, i32 %i.03.i, i32 2
  %139 = ptrtoint ptr %x2.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %x2.i, align 2
  %conv43.i = zext i16 %140 to i32
  %141 = load i16, ptr %arrayidx20.i, align 2
  %conv46.i = zext i16 %141 to i32
  %sub47.i = sub nsw i32 %conv43.i, %conv46.i
  %or48.i = or i32 %sub47.i, %shl41.i
  %and49.i = and i32 %or48.i, 268374015
  %incdec.ptr50.i = getelementptr i32, ptr %dma_ptr.0.i, i32 6
  %142 = ptrtoint ptr %incdec.ptr34.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %and49.i, ptr %incdec.ptr34.i, align 4
  %143 = ptrtoint ptr %current_dma_page.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %current_dma_page.i, align 4
  %145 = ptrtoint ptr %cmd_dma.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cmd_dma.i, align 4
  %handle55.i = getelementptr inbounds %struct.drm_local_map, ptr %146, i32 0, i32 4
  %147 = ptrtoint ptr %handle55.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %handle55.i, align 4
  %mul56.i = shl i32 %144, 10
  %add.ptr57.i = getelementptr i32, ptr %148, i32 %mul56.i
  %149 = ptrtoint ptr %dma_pages.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dma_pages.i, align 4
  %used60.i = getelementptr %struct.drm_savage_dma_page, ptr %150, i32 %144, i32 1
  %151 = ptrtoint ptr %used60.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %used60.i, align 4
  %add.ptr61.i = getelementptr i32, ptr %add.ptr57.i, i32 %152
  %cmp62.not.i = icmp eq ptr %incdec.ptr50.i, %add.ptr61.i
  br i1 %cmp62.not.i, label %if.end17.i.if.end65.i_crit_edge, label %if.then64.i

if.end17.i.if.end65.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65.i

if.then64.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef %add.ptr61.i, ptr noundef %incdec.ptr50.i) #6
  tail call void @savage_dma_reset(ptr noundef %1) #6
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then64.i, %if.end17.i.if.end65.i_crit_edge
  %inc.i = add nuw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %103
  br i1 %exitcond.not.i, label %if.end65.i.cleanup_crit_edge, label %if.end65.i.do.body.i_crit_edge

if.end65.i.do.body.i_crit_edge:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end65.i.cleanup_crit_edge:                     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.default140:                                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %153 = trunc i64 %71 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %153) #6
  br label %cleanup.thread.sink.split

sw.epilog144:                                     ; preds = %sw.bb104
  %154 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %data, align 4
  %call117 = call fastcc i32 @savage_dispatch_state(ptr noundef %1, ptr noundef nonnull %cmd_header, ptr noundef %155)
  %156 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %data, align 4
  %add.ptr119 = getelementptr %union.drm_savage_cmd_header, ptr %157, i32 %div108307
  store ptr %add.ptr119, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp145.not = icmp eq i32 %call117, 0
  br i1 %cmp145.not, label %sw.epilog144.cleanup_crit_edge, label %sw.epilog144.cleanup.thread.sink.split_crit_edge

sw.epilog144.cleanup.thread.sink.split_crit_edge: ; preds = %sw.epilog144
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.sink.split

sw.epilog144.cleanup_crit_edge:                   ; preds = %sw.epilog144
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.thread.sink.split:                        ; preds = %sw.epilog144.cleanup.thread.sink.split_crit_edge, %sw.default140, %if.then126, %if.then113, %if.then75
  %ret.3.ph.ph = phi i32 [ -22, %sw.default140 ], [ -22, %if.then126 ], [ -22, %if.then113 ], [ -22, %if.then75 ], [ %call117, %sw.epilog144.cleanup.thread.sink.split_crit_edge ]
  %dma_flush143 = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 49
  %158 = ptrtoint ptr %dma_flush143 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dma_flush143, align 4
  tail call void %159(ptr noundef %1) #6
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.then86.cleanup.thread_crit_edge
  %ret.3.ph = phi i32 [ %ret.3.ph.ph, %cleanup.thread.sink.split ], [ %call93, %if.then86.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd_header) #6
  br label %done

cleanup:                                          ; preds = %sw.epilog144.cleanup_crit_edge, %if.end65.i.cleanup_crit_edge, %sw.bb136.cleanup_crit_edge, %if.end128, %sw.epilog.cleanup_crit_edge, %sw.bb77.cleanup_crit_edge
  %first_draw_cmd.3 = phi ptr [ %67, %sw.epilog.cleanup_crit_edge ], [ null, %sw.epilog144.cleanup_crit_edge ], [ null, %if.end128 ], [ null, %sw.bb136.cleanup_crit_edge ], [ %first_draw_cmd.0433, %sw.bb77.cleanup_crit_edge ], [ null, %if.end65.i.cleanup_crit_edge ]
  %i.3 = phi i32 [ %add84, %sw.epilog.cleanup_crit_edge ], [ %add109, %sw.epilog144.cleanup_crit_edge ], [ %add122, %if.end128 ], [ %i.1408, %sw.bb136.cleanup_crit_edge ], [ %add84, %sw.bb77.cleanup_crit_edge ], [ %i.1408, %if.end65.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd_header) #6
  %160 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %size, align 4
  %cmp67 = icmp ult i32 %i.3, %161
  br i1 %cmp67, label %cleanup.while.body_crit_edge, label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %cleanup
  %tobool150.not = icmp eq ptr %first_draw_cmd.3, null
  br i1 %tobool150.not, label %while.end.if.end164_crit_edge, label %if.then151

while.end.if.end164_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164

if.then151:                                       ; preds = %while.end
  %162 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %data, align 4
  %vb_addr153 = getelementptr inbounds %struct.drm_savage_cmdbuf, ptr %data, i32 0, i32 4
  %164 = ptrtoint ptr %vb_addr153 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %vb_addr153, align 4
  %166 = ptrtoint ptr %vb_size to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %vb_size, align 4
  %vb_stride155 = getelementptr inbounds %struct.drm_savage_cmdbuf, ptr %data, i32 0, i32 6
  %168 = ptrtoint ptr %vb_stride155 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %vb_stride155, align 4
  %170 = ptrtoint ptr %nbox to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %nbox, align 4
  %box_addr157 = getelementptr inbounds %struct.drm_savage_cmdbuf, ptr %data, i32 0, i32 7
  %172 = ptrtoint ptr %box_addr157 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %box_addr157, align 4
  %call158 = tail call fastcc i32 @savage_dispatch_draw(ptr noundef %1, ptr noundef nonnull %first_draw_cmd.3, ptr noundef %163, ptr noundef %dmabuf.0, ptr noundef %165, i32 noundef %167, i32 noundef %169, i32 noundef %171, ptr noundef %173)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %cmp159.not = icmp eq i32 %call158, 0
  br i1 %cmp159.not, label %if.then151.if.end164_crit_edge, label %if.then161

if.then151.if.end164_crit_edge:                   ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164

if.then161:                                       ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #8
  %dma_flush162 = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 49
  %174 = ptrtoint ptr %dma_flush162 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dma_flush162, align 4
  tail call void %175(ptr noundef %1) #6
  br label %done

if.end164:                                        ; preds = %if.then151.if.end164_crit_edge, %while.end.if.end164_crit_edge, %do.body63.if.end164_crit_edge
  %dma_flush165 = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 49
  %176 = ptrtoint ptr %dma_flush165 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dma_flush165, align 4
  tail call void %177(ptr noundef %1) #6
  %tobool166.not = icmp eq ptr %dmabuf.0, null
  br i1 %tobool166.not, label %if.end164.done_crit_edge, label %land.lhs.true167

if.end164.done_crit_edge:                         ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

land.lhs.true167:                                 ; preds = %if.end164
  %discard = getelementptr inbounds %struct.drm_savage_cmdbuf, ptr %data, i32 0, i32 3
  %178 = ptrtoint ptr %discard to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %discard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool168.not = icmp eq i32 %179, 0
  br i1 %tobool168.not, label %land.lhs.true167.done_crit_edge, label %if.then169

land.lhs.true167.done_crit_edge:                  ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then169:                                       ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #8
  %dev_private170 = getelementptr inbounds %struct.drm_buf, ptr %dmabuf.0, i32 0, i32 15
  %180 = ptrtoint ptr %dev_private170 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev_private170, align 4
  %call171 = tail call zeroext i16 @savage_bci_emit_event(ptr noundef %1, i32 noundef 2) #6
  %age = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %age to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %call171, ptr %age, align 4
  %event_wrap = getelementptr inbounds %struct.drm_savage_private, ptr %1, i32 0, i32 34
  %183 = ptrtoint ptr %event_wrap to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %event_wrap, align 4
  %wrap = getelementptr inbounds %struct.drm_savage_buf_priv, ptr %181, i32 0, i32 2, i32 1
  %185 = ptrtoint ptr %wrap to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %wrap, align 4
  tail call void @savage_freelist_put(ptr noundef %dev, ptr noundef nonnull %dmabuf.0) #6
  br label %done

done:                                             ; preds = %if.then169, %land.lhs.true167.done_crit_edge, %if.end164.done_crit_edge, %if.then161, %cleanup.thread, %if.then11.i.i339, %if.then27.i.i319, %land.rhs16.i.i318.done_crit_edge, %if.end7.i377.done_crit_edge, %if.then49.done_crit_edge, %if.then43
  %kvb_addr.1 = phi ptr [ null, %if.then43 ], [ %kvb_addr.0, %if.then161 ], [ %kvb_addr.0, %if.then169 ], [ %kvb_addr.0, %land.lhs.true167.done_crit_edge ], [ %kvb_addr.0, %if.end164.done_crit_edge ], [ %kvb_addr.0, %if.end7.i377.done_crit_edge ], [ %kvb_addr.0, %cleanup.thread ], [ %kvb_addr.0, %if.then49.done_crit_edge ], [ %kvb_addr.0, %if.then11.i.i339 ], [ %kvb_addr.0, %if.then27.i.i319 ], [ %kvb_addr.0, %land.rhs16.i.i318.done_crit_edge ]
  %kbox_addr.1 = phi ptr [ null, %if.then43 ], [ %kbox_addr.0, %if.then161 ], [ %kbox_addr.0, %if.then169 ], [ %kbox_addr.0, %land.lhs.true167.done_crit_edge ], [ %kbox_addr.0, %if.end164.done_crit_edge ], [ null, %if.end7.i377.done_crit_edge ], [ %kbox_addr.0, %cleanup.thread ], [ null, %if.then49.done_crit_edge ], [ %call8.i376, %if.then11.i.i339 ], [ %call8.i376, %if.then27.i.i319 ], [ %call8.i376, %land.rhs16.i.i318.done_crit_edge ]
  %ret.5 = phi i32 [ %43, %if.then43 ], [ %call158, %if.then161 ], [ 0, %if.then169 ], [ 0, %land.lhs.true167.done_crit_edge ], [ 0, %if.end164.done_crit_edge ], [ -12, %if.end7.i377.done_crit_edge ], [ %ret.3.ph, %cleanup.thread ], [ -12, %if.then49.done_crit_edge ], [ -14, %if.then11.i.i339 ], [ -14, %if.then27.i.i319 ], [ -14, %land.rhs16.i.i318.done_crit_edge ]
  tail call void @kfree(ptr noundef %kcmd_addr.0) #6
  tail call void @kfree(ptr noundef %kvb_addr.1) #6
  tail call void @kfree(ptr noundef %kbox_addr.1) #6
  br label %cleanup178

cleanup178:                                       ; preds = %done, %if.then34, %if.end7.i.cleanup178_crit_edge, %if.then26.cleanup178_crit_edge, %if.then18, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then18 ], [ -14, %if.then34 ], [ %ret.5, %done ], [ -12, %if.end7.i.cleanup178_crit_edge ], [ -12, %if.then26.cleanup178_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @savage_dispatch_draw(ptr noundef %dev_priv, ptr noundef readonly %start, ptr noundef readnone %end, ptr noundef readonly %dmabuf, ptr nocapture noundef readonly %vtxbuf, i32 noundef %vb_size, i32 noundef %vb_stride, i32 noundef %nbox, ptr noundef %boxes) unnamed_addr #0 align 64 {
entry:
  %reorder70.i = alloca [3 x i32], align 4
  %reorder105.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbox)
  %cmp323.not = icmp eq i32 %nbox, 0
  br i1 %cmp323.not, label %entry.cleanup21_crit_edge, label %for.body.lr.ph

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup21

for.body.lr.ph:                                   ; preds = %entry
  %emit_clip_rect = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 48
  %chipset.i146 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 3
  %mul.i155 = shl i32 %vb_stride, 2
  %current_dma_page.i157 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 38
  %dma_pages.i158 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 35
  %cmd_dma.i159 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %tobool.not.i83 = icmp eq ptr %dmabuf, null
  %dma_flush.i98 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 49
  %bus_address.i99 = getelementptr inbounds %struct.drm_buf, ptr %dmabuf, i32 0, i32 6
  %state.i100 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44
  %wait_fifo.i101 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 46
  %bci_ptr60.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 31
  %dma_type.i104 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 7
  %waiting.i108 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 45
  %total.i110 = getelementptr inbounds %struct.drm_buf, ptr %dmabuf, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0324 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %emit_clip_rect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emit_clip_rect, align 4
  %arrayidx = getelementptr %struct.drm_clip_rect, ptr %boxes, i32 %i.0324
  tail call void %1(ptr noundef %dev_priv, ptr noundef %arrayidx) #6
  br label %while.cond

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %for.body
  %cmdbuf.0 = phi ptr [ %start, %for.body ], [ %cmdbuf.1, %cleanup.while.cond_crit_edge ]
  %cmp1 = icmp ult ptr %cmdbuf.0, %end
  br i1 %cmp1, label %while.body, label %for.inc

while.body:                                       ; preds = %while.cond
  %2 = ptrtoint ptr %cmdbuf.0 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %cmdbuf.0, align 4
  %cmd_header.sroa.0.0.extract.shift = lshr i64 %3, 56
  %cmd_header.sroa.0.0.extract.trunc = trunc i64 %cmd_header.sroa.0.0.extract.shift to i8
  %cmd_header.sroa.5.0.extract.shift = lshr i64 %3, 48
  %cmd_header.sroa.5.0.extract.trunc = trunc i64 %cmd_header.sroa.5.0.extract.shift to i8
  %cmd_header.sroa.10.0.extract.shift = lshr i64 %3, 32
  %cmd_header.sroa.10.0.extract.trunc = trunc i64 %cmd_header.sroa.10.0.extract.shift to i16
  %cmd_header.sroa.15.sroa.0.0.extract.shift214 = lshr i64 %3, 16
  %cmd_header.sroa.15.sroa.0.0.extract.trunc = trunc i64 %cmd_header.sroa.15.sroa.0.0.extract.shift214 to i16
  %incdec.ptr = getelementptr %union.drm_savage_cmd_header, ptr %cmdbuf.0, i32 1
  %4 = zext i8 %cmd_header.sroa.0.0.extract.trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %cmd_header.sroa.0.0.extract.trunc, label %cleanup.thread [
    i8 1, label %sw.bb
    i8 2, label %sw.bb2
    i8 3, label %sw.bb4
    i8 4, label %sw.bb7
  ]

sw.bb:                                            ; preds = %while.body
  %cmd_header.sroa.15.sroa.10.0.extract.trunc = trunc i64 %3 to i32
  %5 = trunc i64 %cmd_header.sroa.5.0.extract.shift to i32
  %conv.i = and i32 %5, 255
  %6 = trunc i64 %cmd_header.sroa.10.0.extract.shift to i32
  %conv3.i = and i32 %6, 65535
  %7 = trunc i64 %cmd_header.sroa.15.sroa.0.0.extract.shift214 to i32
  %conv4.i = and i32 %7, 65535
  %conv6.i = and i32 %cmd_header.sroa.15.sroa.10.0.extract.trunc, 65535
  br i1 %tobool.not.i83, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #6
  br label %cleanup21

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc)
  %tobool7.not.i = icmp eq i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc, 0
  br i1 %tobool7.not.i, label %if.end.i.cleanup_crit_edge, label %if.end9.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %8 = zext i8 %cmd_header.sroa.5.0.extract.trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %cmd_header.sroa.5.0.extract.trunc, label %sw.default.i [
    i8 3, label %sw.bb.i
    i8 0, label %if.end9.i.sw.bb10.i_crit_edge
    i8 1, label %if.end9.i.sw.bb14.i_crit_edge
    i8 2, label %if.end9.i.sw.bb14.i_crit_edge725
  ]

if.end9.i.sw.bb14.i_crit_edge725:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14.i

if.end9.i.sw.bb14.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14.i

if.end9.i.sw.bb10.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10.i

sw.bb.i:                                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10.i

sw.bb10.i:                                        ; preds = %sw.bb.i, %if.end9.i.sw.bb10.i_crit_edge
  %reorder.0.i = phi i8 [ %cmd_header.sroa.5.0.extract.trunc, %if.end9.i.sw.bb10.i_crit_edge ], [ 1, %sw.bb.i ]
  %rem377.i = urem i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem377.i)
  %cmp.not.i = icmp eq i16 %rem377.i, 0
  br i1 %cmp.not.i, label %sw.bb10.i.sw.epilog.i_crit_edge, label %if.then12.i

sw.bb10.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then12.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %conv4.i) #6
  br label %cleanup21

sw.bb14.i:                                        ; preds = %if.end9.i.sw.bb14.i_crit_edge, %if.end9.i.sw.bb14.i_crit_edge725
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc)
  %cmp15.i = icmp ult i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc, 3
  br i1 %cmp15.i, label %if.then17.i, label %sw.bb14.i.sw.epilog.i_crit_edge

sw.bb14.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then17.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %conv4.i) #6
  br label %cleanup21

sw.default.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %conv.i) #6
  br label %cleanup21

sw.epilog.i:                                      ; preds = %sw.bb14.i.sw.epilog.i_crit_edge, %sw.bb10.i.sw.epilog.i_crit_edge
  %reorder.1.i = phi i8 [ 0, %sw.bb14.i.sw.epilog.i_crit_edge ], [ %reorder.0.i, %sw.bb10.i.sw.epilog.i_crit_edge ]
  %prim.1.i = phi i32 [ %conv.i, %sw.bb14.i.sw.epilog.i_crit_edge ], [ 0, %sw.bb10.i.sw.epilog.i_crit_edge ]
  %9 = ptrtoint ptr %chipset.i146 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chipset.i146, align 4
  %11 = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %if.then24.i, label %if.else.i

if.then24.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmd_header.sroa.10.0.extract.trunc)
  %cmp25.not.i = icmp eq i16 %cmd_header.sroa.10.0.extract.trunc, 0
  br i1 %cmp25.not.i, label %if.then24.i.if.end58.i_crit_edge, label %if.then27.i

if.then24.i.if.end58.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.then27.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %conv3.i) #6
  br label %cleanup21

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %cmd_header.sroa.10.0.extract.trunc)
  %cmp49.i = icmp ugt i16 %cmd_header.sroa.10.0.extract.trunc, 255
  br i1 %cmp49.i, label %if.else.i.if.then53.i_crit_edge, label %lor.lhs.false.i

if.else.i.if.then53.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then53.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %13 = shl i32 %6, 25
  %14 = ashr i32 %13, 31
  %15 = shl i32 %6, 26
  %16 = ashr i32 %15, 31
  %17 = shl i32 %6, 27
  %18 = ashr i32 %17, 31
  %19 = shl i32 %6, 28
  %20 = ashr i32 %19, 31
  %21 = shl i32 %6, 29
  %22 = ashr i32 %21, 31
  %23 = shl i32 %6, 30
  %24 = ashr i32 %23, 31
  %and.i = and i32 %6, 1
  %sub.i = sub nuw nsw i32 10, %and.i
  %sub30.i = add nsw i32 %sub.i, %24
  %sub33.i = add nsw i32 %sub30.i, %22
  %sub36.i = add nsw i32 %sub33.i, %20
  %sub39.i = add nsw i32 %sub36.i, %18
  %sub42.i = add nsw i32 %sub39.i, %16
  %sub45.i = add nsw i32 %sub42.i, %14
  %25 = shl i32 %6, 24
  %26 = ashr i32 %25, 31
  %sub48.i = add nsw i32 %sub45.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub48.i)
  %cmp51.not.i = icmp eq i32 %sub48.i, 8
  br i1 %cmp51.not.i, label %if.end54.i, label %lor.lhs.false.i.if.then53.i_crit_edge

lor.lhs.false.i.if.then53.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then53.i

if.then53.i:                                      ; preds = %lor.lhs.false.i.if.then53.i_crit_edge, %if.else.i.if.then53.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %conv3.i) #6
  br label %cleanup21

if.end54.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reorder.1.i)
  %tobool55.not.i = icmp eq i8 %reorder.1.i, 0
  br i1 %tobool55.not.i, label %if.end54.i.if.end58.i_crit_edge, label %if.then56.i

if.end54.i.if.end58.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58.i

if.then56.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %cleanup21

if.end58.i:                                       ; preds = %if.end54.i.if.end58.i_crit_edge, %if.then24.i.if.end58.i_crit_edge
  %add.i = add nuw nsw i32 %conv4.i, %conv6.i
  %27 = ptrtoint ptr %total.i110 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %total.i110, align 4
  %div.i = sdiv i32 %28, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %div.i)
  %cmp59.i = icmp ugt i32 %add.i, %div.i
  br i1 %cmp59.i, label %if.then61.i, label %if.end66.i

if.then61.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub63.i = add nsw i32 %add.i, -1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %conv6.i, i32 noundef %sub63.i, i32 noundef %div.i) #6
  br label %cleanup21

if.end66.i:                                       ; preds = %if.end58.i
  %29 = ptrtoint ptr %dma_flush.i98 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_flush.i98, align 4
  tail call void %30(ptr noundef %dev_priv) #6
  %31 = ptrtoint ptr %bus_address.i99 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bus_address.i99, align 4
  %33 = ptrtoint ptr %state.i100 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state.i100, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp67.not.i = icmp eq i32 %32, %34
  br i1 %cmp67.not.i, label %if.end66.i.if.end76.i_crit_edge, label %do.body.i

if.end66.i.if.end76.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

do.body.i:                                        ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %wait_fifo.i101 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wait_fifo.i101, align 4
  %call.i = tail call i32 %36(ptr noundef %dev_priv, i32 noundef 2) #6
  %37 = ptrtoint ptr %bci_ptr60.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bci_ptr60.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %38, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 -1778319298, ptr %38, align 4
  %40 = ptrtoint ptr %bus_address.i99 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bus_address.i99, align 4
  %42 = ptrtoint ptr %dma_type.i104 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_type.i104, align 4
  %or.i = or i32 %43, %41
  %44 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %or.i, ptr %incdec.ptr.i, align 4
  %45 = load i32, ptr %bus_address.i99, align 4
  %46 = ptrtoint ptr %state.i100 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %state.i100, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %do.body.i, %if.end66.i.if.end76.i_crit_edge
  %47 = ptrtoint ptr %chipset.i146 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chipset.i146, align 4
  %49 = add i32 %48, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %50 = icmp ult i32 %49, 2
  br i1 %50, label %land.lhs.true84.i, label %if.end76.i.while.body.lr.ph.i_crit_edge

if.end76.i.while.body.lr.ph.i_crit_edge:          ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph.i

land.lhs.true84.i:                                ; preds = %if.end76.i
  %51 = ptrtoint ptr %waiting.i108 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %waiting.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool85.not.i = icmp eq i32 %52, 0
  br i1 %tobool85.not.i, label %land.lhs.true84.i.while.body.lr.ph.i_crit_edge, label %do.body87.i

land.lhs.true84.i.while.body.lr.ph.i_crit_edge:   ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph.i

do.body87.i:                                      ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %wait_fifo.i101 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wait_fifo.i101, align 4
  %call89.i = tail call i32 %54(ptr noundef %dev_priv, i32 noundef 63) #6
  %55 = ptrtoint ptr %bci_ptr60.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bci_ptr60.i, align 4
  %incdec.ptr95.i = getelementptr i32, ptr %56, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 -1073741824, ptr %56, align 4
  %incdec.ptr95.1.i = getelementptr i32, ptr %56, i32 2
  %58 = ptrtoint ptr %incdec.ptr95.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 -1073741824, ptr %incdec.ptr95.i, align 4
  %incdec.ptr95.2.i = getelementptr i32, ptr %56, i32 3
  %59 = ptrtoint ptr %incdec.ptr95.1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 -1073741824, ptr %incdec.ptr95.1.i, align 4
  %incdec.ptr95.3.i = getelementptr i32, ptr %56, i32 4
  %60 = ptrtoint ptr %incdec.ptr95.2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 -1073741824, ptr %incdec.ptr95.2.i, align 4
  %incdec.ptr95.4.i = getelementptr i32, ptr %56, i32 5
  %61 = ptrtoint ptr %incdec.ptr95.3.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 -1073741824, ptr %incdec.ptr95.3.i, align 4
  %incdec.ptr95.5.i = getelementptr i32, ptr %56, i32 6
  %62 = ptrtoint ptr %incdec.ptr95.4.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 -1073741824, ptr %incdec.ptr95.4.i, align 4
  %incdec.ptr95.6.i = getelementptr i32, ptr %56, i32 7
  %63 = ptrtoint ptr %incdec.ptr95.5.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile i32 -1073741824, ptr %incdec.ptr95.5.i, align 4
  %incdec.ptr95.7.i = getelementptr i32, ptr %56, i32 8
  %64 = ptrtoint ptr %incdec.ptr95.6.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 -1073741824, ptr %incdec.ptr95.6.i, align 4
  %incdec.ptr95.8.i = getelementptr i32, ptr %56, i32 9
  %65 = ptrtoint ptr %incdec.ptr95.7.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 -1073741824, ptr %incdec.ptr95.7.i, align 4
  %incdec.ptr95.9.i = getelementptr i32, ptr %56, i32 10
  %66 = ptrtoint ptr %incdec.ptr95.8.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 -1073741824, ptr %incdec.ptr95.8.i, align 4
  %incdec.ptr95.10.i = getelementptr i32, ptr %56, i32 11
  %67 = ptrtoint ptr %incdec.ptr95.9.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 -1073741824, ptr %incdec.ptr95.9.i, align 4
  %incdec.ptr95.11.i = getelementptr i32, ptr %56, i32 12
  %68 = ptrtoint ptr %incdec.ptr95.10.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 -1073741824, ptr %incdec.ptr95.10.i, align 4
  %incdec.ptr95.12.i = getelementptr i32, ptr %56, i32 13
  %69 = ptrtoint ptr %incdec.ptr95.11.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 -1073741824, ptr %incdec.ptr95.11.i, align 4
  %incdec.ptr95.13.i = getelementptr i32, ptr %56, i32 14
  %70 = ptrtoint ptr %incdec.ptr95.12.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 -1073741824, ptr %incdec.ptr95.12.i, align 4
  %incdec.ptr95.14.i = getelementptr i32, ptr %56, i32 15
  %71 = ptrtoint ptr %incdec.ptr95.13.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 -1073741824, ptr %incdec.ptr95.13.i, align 4
  %incdec.ptr95.15.i = getelementptr i32, ptr %56, i32 16
  %72 = ptrtoint ptr %incdec.ptr95.14.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 -1073741824, ptr %incdec.ptr95.14.i, align 4
  %incdec.ptr95.16.i = getelementptr i32, ptr %56, i32 17
  %73 = ptrtoint ptr %incdec.ptr95.15.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 -1073741824, ptr %incdec.ptr95.15.i, align 4
  %incdec.ptr95.17.i = getelementptr i32, ptr %56, i32 18
  %74 = ptrtoint ptr %incdec.ptr95.16.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 -1073741824, ptr %incdec.ptr95.16.i, align 4
  %incdec.ptr95.18.i = getelementptr i32, ptr %56, i32 19
  %75 = ptrtoint ptr %incdec.ptr95.17.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 -1073741824, ptr %incdec.ptr95.17.i, align 4
  %incdec.ptr95.19.i = getelementptr i32, ptr %56, i32 20
  %76 = ptrtoint ptr %incdec.ptr95.18.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 -1073741824, ptr %incdec.ptr95.18.i, align 4
  %incdec.ptr95.20.i = getelementptr i32, ptr %56, i32 21
  %77 = ptrtoint ptr %incdec.ptr95.19.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 -1073741824, ptr %incdec.ptr95.19.i, align 4
  %incdec.ptr95.21.i = getelementptr i32, ptr %56, i32 22
  %78 = ptrtoint ptr %incdec.ptr95.20.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 -1073741824, ptr %incdec.ptr95.20.i, align 4
  %incdec.ptr95.22.i = getelementptr i32, ptr %56, i32 23
  %79 = ptrtoint ptr %incdec.ptr95.21.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 -1073741824, ptr %incdec.ptr95.21.i, align 4
  %incdec.ptr95.23.i = getelementptr i32, ptr %56, i32 24
  %80 = ptrtoint ptr %incdec.ptr95.22.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 -1073741824, ptr %incdec.ptr95.22.i, align 4
  %incdec.ptr95.24.i = getelementptr i32, ptr %56, i32 25
  %81 = ptrtoint ptr %incdec.ptr95.23.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 -1073741824, ptr %incdec.ptr95.23.i, align 4
  %incdec.ptr95.25.i = getelementptr i32, ptr %56, i32 26
  %82 = ptrtoint ptr %incdec.ptr95.24.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 -1073741824, ptr %incdec.ptr95.24.i, align 4
  %incdec.ptr95.26.i = getelementptr i32, ptr %56, i32 27
  %83 = ptrtoint ptr %incdec.ptr95.25.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 -1073741824, ptr %incdec.ptr95.25.i, align 4
  %incdec.ptr95.27.i = getelementptr i32, ptr %56, i32 28
  %84 = ptrtoint ptr %incdec.ptr95.26.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 -1073741824, ptr %incdec.ptr95.26.i, align 4
  %incdec.ptr95.28.i = getelementptr i32, ptr %56, i32 29
  %85 = ptrtoint ptr %incdec.ptr95.27.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 -1073741824, ptr %incdec.ptr95.27.i, align 4
  %incdec.ptr95.29.i = getelementptr i32, ptr %56, i32 30
  %86 = ptrtoint ptr %incdec.ptr95.28.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile i32 -1073741824, ptr %incdec.ptr95.28.i, align 4
  %incdec.ptr95.30.i = getelementptr i32, ptr %56, i32 31
  %87 = ptrtoint ptr %incdec.ptr95.29.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 -1073741824, ptr %incdec.ptr95.29.i, align 4
  %incdec.ptr95.31.i = getelementptr i32, ptr %56, i32 32
  %88 = ptrtoint ptr %incdec.ptr95.30.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 -1073741824, ptr %incdec.ptr95.30.i, align 4
  %incdec.ptr95.32.i = getelementptr i32, ptr %56, i32 33
  %89 = ptrtoint ptr %incdec.ptr95.31.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 -1073741824, ptr %incdec.ptr95.31.i, align 4
  %incdec.ptr95.33.i = getelementptr i32, ptr %56, i32 34
  %90 = ptrtoint ptr %incdec.ptr95.32.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 -1073741824, ptr %incdec.ptr95.32.i, align 4
  %incdec.ptr95.34.i = getelementptr i32, ptr %56, i32 35
  %91 = ptrtoint ptr %incdec.ptr95.33.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 -1073741824, ptr %incdec.ptr95.33.i, align 4
  %incdec.ptr95.35.i = getelementptr i32, ptr %56, i32 36
  %92 = ptrtoint ptr %incdec.ptr95.34.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 -1073741824, ptr %incdec.ptr95.34.i, align 4
  %incdec.ptr95.36.i = getelementptr i32, ptr %56, i32 37
  %93 = ptrtoint ptr %incdec.ptr95.35.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 -1073741824, ptr %incdec.ptr95.35.i, align 4
  %incdec.ptr95.37.i = getelementptr i32, ptr %56, i32 38
  %94 = ptrtoint ptr %incdec.ptr95.36.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 -1073741824, ptr %incdec.ptr95.36.i, align 4
  %incdec.ptr95.38.i = getelementptr i32, ptr %56, i32 39
  %95 = ptrtoint ptr %incdec.ptr95.37.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 -1073741824, ptr %incdec.ptr95.37.i, align 4
  %incdec.ptr95.39.i = getelementptr i32, ptr %56, i32 40
  %96 = ptrtoint ptr %incdec.ptr95.38.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile i32 -1073741824, ptr %incdec.ptr95.38.i, align 4
  %incdec.ptr95.40.i = getelementptr i32, ptr %56, i32 41
  %97 = ptrtoint ptr %incdec.ptr95.39.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 -1073741824, ptr %incdec.ptr95.39.i, align 4
  %incdec.ptr95.41.i = getelementptr i32, ptr %56, i32 42
  %98 = ptrtoint ptr %incdec.ptr95.40.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile i32 -1073741824, ptr %incdec.ptr95.40.i, align 4
  %incdec.ptr95.42.i = getelementptr i32, ptr %56, i32 43
  %99 = ptrtoint ptr %incdec.ptr95.41.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 -1073741824, ptr %incdec.ptr95.41.i, align 4
  %incdec.ptr95.43.i = getelementptr i32, ptr %56, i32 44
  %100 = ptrtoint ptr %incdec.ptr95.42.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 -1073741824, ptr %incdec.ptr95.42.i, align 4
  %incdec.ptr95.44.i = getelementptr i32, ptr %56, i32 45
  %101 = ptrtoint ptr %incdec.ptr95.43.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile i32 -1073741824, ptr %incdec.ptr95.43.i, align 4
  %incdec.ptr95.45.i = getelementptr i32, ptr %56, i32 46
  %102 = ptrtoint ptr %incdec.ptr95.44.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 -1073741824, ptr %incdec.ptr95.44.i, align 4
  %incdec.ptr95.46.i = getelementptr i32, ptr %56, i32 47
  %103 = ptrtoint ptr %incdec.ptr95.45.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile i32 -1073741824, ptr %incdec.ptr95.45.i, align 4
  %incdec.ptr95.47.i = getelementptr i32, ptr %56, i32 48
  %104 = ptrtoint ptr %incdec.ptr95.46.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile i32 -1073741824, ptr %incdec.ptr95.46.i, align 4
  %incdec.ptr95.48.i = getelementptr i32, ptr %56, i32 49
  %105 = ptrtoint ptr %incdec.ptr95.47.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile i32 -1073741824, ptr %incdec.ptr95.47.i, align 4
  %incdec.ptr95.49.i = getelementptr i32, ptr %56, i32 50
  %106 = ptrtoint ptr %incdec.ptr95.48.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile i32 -1073741824, ptr %incdec.ptr95.48.i, align 4
  %incdec.ptr95.50.i = getelementptr i32, ptr %56, i32 51
  %107 = ptrtoint ptr %incdec.ptr95.49.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile i32 -1073741824, ptr %incdec.ptr95.49.i, align 4
  %incdec.ptr95.51.i = getelementptr i32, ptr %56, i32 52
  %108 = ptrtoint ptr %incdec.ptr95.50.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile i32 -1073741824, ptr %incdec.ptr95.50.i, align 4
  %incdec.ptr95.52.i = getelementptr i32, ptr %56, i32 53
  %109 = ptrtoint ptr %incdec.ptr95.51.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile i32 -1073741824, ptr %incdec.ptr95.51.i, align 4
  %incdec.ptr95.53.i = getelementptr i32, ptr %56, i32 54
  %110 = ptrtoint ptr %incdec.ptr95.52.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile i32 -1073741824, ptr %incdec.ptr95.52.i, align 4
  %incdec.ptr95.54.i = getelementptr i32, ptr %56, i32 55
  %111 = ptrtoint ptr %incdec.ptr95.53.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 -1073741824, ptr %incdec.ptr95.53.i, align 4
  %incdec.ptr95.55.i = getelementptr i32, ptr %56, i32 56
  %112 = ptrtoint ptr %incdec.ptr95.54.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile i32 -1073741824, ptr %incdec.ptr95.54.i, align 4
  %incdec.ptr95.56.i = getelementptr i32, ptr %56, i32 57
  %113 = ptrtoint ptr %incdec.ptr95.55.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile i32 -1073741824, ptr %incdec.ptr95.55.i, align 4
  %incdec.ptr95.57.i = getelementptr i32, ptr %56, i32 58
  %114 = ptrtoint ptr %incdec.ptr95.56.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 -1073741824, ptr %incdec.ptr95.56.i, align 4
  %incdec.ptr95.58.i = getelementptr i32, ptr %56, i32 59
  %115 = ptrtoint ptr %incdec.ptr95.57.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 -1073741824, ptr %incdec.ptr95.57.i, align 4
  %incdec.ptr95.59.i = getelementptr i32, ptr %56, i32 60
  %116 = ptrtoint ptr %incdec.ptr95.58.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile i32 -1073741824, ptr %incdec.ptr95.58.i, align 4
  %incdec.ptr95.60.i = getelementptr i32, ptr %56, i32 61
  %117 = ptrtoint ptr %incdec.ptr95.59.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile i32 -1073741824, ptr %incdec.ptr95.59.i, align 4
  %incdec.ptr95.61.i = getelementptr i32, ptr %56, i32 62
  %118 = ptrtoint ptr %incdec.ptr95.60.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile i32 -1073741824, ptr %incdec.ptr95.60.i, align 4
  %119 = ptrtoint ptr %incdec.ptr95.61.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile i32 -1073741824, ptr %incdec.ptr95.61.i, align 4
  %120 = ptrtoint ptr %waiting.i108 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %waiting.i108, align 4
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %do.body87.i, %land.lhs.true84.i.while.body.lr.ph.i_crit_edge, %if.end76.i.while.body.lr.ph.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reorder.1.i)
  %tobool103.not.i = icmp eq i8 %reorder.1.i, 0
  %shl.i = shl nuw nsw i32 %prim.1.i, 25
  %121 = or i32 %shl.i, 16777216
  br label %while.body.i

while.body.i:                                     ; preds = %if.end230.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %start.0409.i = phi i32 [ %conv6.i, %while.body.lr.ph.i ], [ %add231.pre-phi.i, %if.end230.i.while.body.i_crit_edge ]
  %n.0408.i = phi i32 [ %conv4.i, %while.body.lr.ph.i ], [ %sub232.i, %if.end230.i.while.body.i_crit_edge ]
  %prim.2407.i = phi i32 [ %shl.i, %while.body.lr.ph.i ], [ %121, %if.end230.i.while.body.i_crit_edge ]
  %122 = tail call i32 @llvm.umin.i32(i32 %n.0408.i, i32 255) #6
  br i1 %tobool103.not.i, label %if.else152.i, label %if.then104.i

if.then104.i:                                     ; preds = %while.body.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reorder105.i) #6
  %123 = call ptr @memset(ptr %reorder105.i, i32 255, i32 12)
  %rem106.i = urem i32 %start.0409.i, 3
  %arrayidx.i = getelementptr [3 x i32], ptr %reorder105.i, i32 0, i32 %rem106.i
  %124 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 2, ptr %arrayidx.i, align 4
  %125 = ptrtoint ptr %wait_fifo.i101 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %wait_fifo.i101, align 4
  %add110.i = add nuw nsw i32 %122, 2
  %div111372.i = lshr i32 %add110.i, 1
  %call112.i = tail call i32 %126(ptr noundef %dev_priv, i32 noundef %div111372.i) #6
  %127 = ptrtoint ptr %bci_ptr60.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bci_ptr60.i, align 4
  %shl117.i = shl nuw nsw i32 %122, 16
  %add119.i = add i32 %start.0409.i, 2
  %or116.i = or i32 %prim.2407.i, %add119.i
  %or118.i = or i32 %or116.i, %shl117.i
  %or120.i = or i32 %or118.i, -2013265920
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile i32 %or120.i, ptr %128, align 4
  %add122.i = add i32 %start.0409.i, 1
  %add125.i = add i32 %122, %start.0409.i
  %bci_ptr.1380.i = getelementptr i32, ptr %128, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add119.i, i32 %add125.i)
  %cmp126382.i = icmp ult i32 %add119.i, %add125.i
  br i1 %cmp126382.i, label %if.then104.i.for.body128.i_crit_edge, label %if.then104.i.for.end142.i_crit_edge

if.then104.i.for.end142.i_crit_edge:              ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end142.i

if.then104.i.for.body128.i_crit_edge:             ; preds = %if.then104.i
  br label %for.body128.i

for.body128.i:                                    ; preds = %for.body128.i.for.body128.i_crit_edge, %if.then104.i.for.body128.i_crit_edge
  %add124385.i = phi i32 [ %add124.i, %for.body128.i.for.body128.i_crit_edge ], [ %add119.i, %if.then104.i.for.body128.i_crit_edge ]
  %bci_ptr.1384.i = phi ptr [ %bci_ptr.1.i, %for.body128.i.for.body128.i_crit_edge ], [ %bci_ptr.1380.i, %if.then104.i.for.body128.i_crit_edge ]
  %i.1383.i = phi i32 [ %add141.i, %for.body128.i.for.body128.i_crit_edge ], [ %add122.i, %if.then104.i.for.body128.i_crit_edge ]
  %rem129.i = urem i32 %i.1383.i, 3
  %arrayidx130.i = getelementptr [3 x i32], ptr %reorder105.i, i32 0, i32 %rem129.i
  %130 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx130.i, align 4
  %add131.i = add i32 %131, %i.1383.i
  %rem134.i = urem i32 %add124385.i, 3
  %arrayidx135.i = getelementptr [3 x i32], ptr %reorder105.i, i32 0, i32 %rem134.i
  %132 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx135.i, align 4
  %add136.i = add i32 %133, %add124385.i
  %shl137.i = shl i32 %add136.i, 16
  %or138.i = or i32 %shl137.i, %add131.i
  %134 = ptrtoint ptr %bci_ptr.1384.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile i32 %or138.i, ptr %bci_ptr.1384.i, align 4
  %add141.i = add i32 %i.1383.i, 2
  %bci_ptr.1.i = getelementptr i32, ptr %bci_ptr.1384.i, i32 1
  %add124.i = add i32 %i.1383.i, 3
  %cmp126.i = icmp ult i32 %add124.i, %add125.i
  br i1 %cmp126.i, label %for.body128.i.for.body128.i_crit_edge, label %for.body128.i.for.end142.i_crit_edge

for.body128.i.for.end142.i_crit_edge:             ; preds = %for.body128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end142.i

for.body128.i.for.body128.i_crit_edge:            ; preds = %for.body128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body128.i

for.end142.i:                                     ; preds = %for.body128.i.for.end142.i_crit_edge, %if.then104.i.for.end142.i_crit_edge
  %i.1.lcssa.i = phi i32 [ %add122.i, %if.then104.i.for.end142.i_crit_edge ], [ %add141.i, %for.body128.i.for.end142.i_crit_edge ]
  %bci_ptr.1.lcssa.i = phi ptr [ %bci_ptr.1380.i, %if.then104.i.for.end142.i_crit_edge ], [ %bci_ptr.1.i, %for.body128.i.for.end142.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa.i, i32 %add125.i)
  %cmp144.i = icmp ult i32 %i.1.lcssa.i, %add125.i
  br i1 %cmp144.i, label %if.then146.i, label %for.end142.i.if.end151.i_crit_edge

for.end142.i.if.end151.i_crit_edge:               ; preds = %for.end142.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151.i

if.then146.i:                                     ; preds = %for.end142.i
  call void @__sanitizer_cov_trace_pc() #8
  %rem147.i = urem i32 %i.1.lcssa.i, 3
  %arrayidx148.i = getelementptr [3 x i32], ptr %reorder105.i, i32 0, i32 %rem147.i
  %135 = ptrtoint ptr %arrayidx148.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx148.i, align 4
  %add149.i = add i32 %136, %i.1.lcssa.i
  %137 = ptrtoint ptr %bci_ptr.1.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile i32 %add149.i, ptr %bci_ptr.1.lcssa.i, align 4
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.then146.i, %for.end142.i.if.end151.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reorder105.i) #6
  br label %if.end230.i

if.else152.i:                                     ; preds = %while.body.i
  %138 = ptrtoint ptr %chipset.i146 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %chipset.i146, align 4
  %140 = add i32 %139, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %140)
  %141 = icmp ult i32 %140, 2
  %142 = ptrtoint ptr %wait_fifo.i101 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %wait_fifo.i101, align 4
  br i1 %141, label %do.body161.i, label %do.body196.i

do.body161.i:                                     ; preds = %if.else152.i
  %add164.i = add nuw nsw i32 %122, 2
  %div165370.i = lshr i32 %add164.i, 1
  %call166.i = tail call i32 %143(ptr noundef %dev_priv, i32 noundef %div165370.i) #6
  %144 = ptrtoint ptr %bci_ptr60.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %bci_ptr60.i, align 4
  %shl171.i = shl nuw nsw i32 %122, 16
  %or170.i = or i32 %prim.2407.i, %start.0409.i
  %or172.i = or i32 %or170.i, %shl171.i
  %or173.i = or i32 %or172.i, -2013265920
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile i32 %or173.i, ptr %145, align 4
  %add175.i = add i32 %start.0409.i, 1
  %add178.i = add i32 %122, %start.0409.i
  %bci_ptr.2397.i = getelementptr i32, ptr %145, i32 1
  %add177398.i = add i32 %start.0409.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add177398.i, i32 %add178.i)
  %cmp179399.i = icmp ult i32 %add177398.i, %add178.i
  br i1 %cmp179399.i, label %do.body161.i.for.body181.i_crit_edge, label %do.body161.i.for.end188.i_crit_edge

do.body161.i.for.end188.i_crit_edge:              ; preds = %do.body161.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end188.i

do.body161.i.for.body181.i_crit_edge:             ; preds = %do.body161.i
  br label %for.body181.i

for.body181.i:                                    ; preds = %for.body181.i.for.body181.i_crit_edge, %do.body161.i.for.body181.i_crit_edge
  %add177402.i = phi i32 [ %add177.i, %for.body181.i.for.body181.i_crit_edge ], [ %add177398.i, %do.body161.i.for.body181.i_crit_edge ]
  %bci_ptr.2401.i = phi ptr [ %bci_ptr.2.i, %for.body181.i.for.body181.i_crit_edge ], [ %bci_ptr.2397.i, %do.body161.i.for.body181.i_crit_edge ]
  %i.2400.i = phi i32 [ %add187.i, %for.body181.i.for.body181.i_crit_edge ], [ %add175.i, %do.body161.i.for.body181.i_crit_edge ]
  %shl183.i = shl i32 %add177402.i, 16
  %or184.i = or i32 %i.2400.i, %shl183.i
  %147 = ptrtoint ptr %bci_ptr.2401.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile i32 %or184.i, ptr %bci_ptr.2401.i, align 4
  %add187.i = add i32 %i.2400.i, 2
  %bci_ptr.2.i = getelementptr i32, ptr %bci_ptr.2401.i, i32 1
  %add177.i = add i32 %i.2400.i, 3
  %cmp179.i = icmp ult i32 %add177.i, %add178.i
  br i1 %cmp179.i, label %for.body181.i.for.body181.i_crit_edge, label %for.body181.i.for.end188.i_crit_edge

for.body181.i.for.end188.i_crit_edge:             ; preds = %for.body181.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end188.i

for.body181.i.for.body181.i_crit_edge:            ; preds = %for.body181.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body181.i

for.end188.i:                                     ; preds = %for.body181.i.for.end188.i_crit_edge, %do.body161.i.for.end188.i_crit_edge
  %i.2.lcssa.i = phi i32 [ %add175.i, %do.body161.i.for.end188.i_crit_edge ], [ %add187.i, %for.body181.i.for.end188.i_crit_edge ]
  %bci_ptr.2.lcssa.i = phi ptr [ %bci_ptr.2397.i, %do.body161.i.for.end188.i_crit_edge ], [ %bci_ptr.2.i, %for.body181.i.for.end188.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2.lcssa.i, i32 %add178.i)
  %cmp190.i = icmp ult i32 %i.2.lcssa.i, %add178.i
  br i1 %cmp190.i, label %if.then192.i, label %for.end188.i.if.end230.i_crit_edge

for.end188.i.if.end230.i_crit_edge:               ; preds = %for.end188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230.i

if.then192.i:                                     ; preds = %for.end188.i
  call void @__sanitizer_cov_trace_pc() #8
  %148 = ptrtoint ptr %bci_ptr.2.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile i32 %i.2.lcssa.i, ptr %bci_ptr.2.lcssa.i, align 4
  br label %if.end230.i

do.body196.i:                                     ; preds = %if.else152.i
  %add199.i = add nuw nsw i32 %122, 3
  %div200369.i = lshr i32 %add199.i, 1
  %call201.i = tail call i32 %143(ptr noundef %dev_priv, i32 noundef %div200369.i) #6
  %149 = ptrtoint ptr %bci_ptr60.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %bci_ptr60.i, align 4
  %shl207.i = shl nuw nsw i32 %122, 16
  %or205.i = or i32 %prim.2407.i, %conv3.i
  %or206.i = or i32 %or205.i, %shl207.i
  %or208.i = or i32 %or206.i, -2013265920
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile i32 %or208.i, ptr %150, align 4
  %add212.i = add i32 %122, %start.0409.i
  %bci_ptr.3388.i = getelementptr i32, ptr %150, i32 1
  %add211389.i = add i32 %start.0409.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add211389.i, i32 %add212.i)
  %cmp213390.i = icmp ult i32 %add211389.i, %add212.i
  br i1 %cmp213390.i, label %do.body196.i.for.body215.i_crit_edge, label %do.body196.i.for.end222.i_crit_edge

do.body196.i.for.end222.i_crit_edge:              ; preds = %do.body196.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end222.i

do.body196.i.for.body215.i_crit_edge:             ; preds = %do.body196.i
  br label %for.body215.i

for.body215.i:                                    ; preds = %for.body215.i.for.body215.i_crit_edge, %do.body196.i.for.body215.i_crit_edge
  %add211393.i = phi i32 [ %add211.i, %for.body215.i.for.body215.i_crit_edge ], [ %add211389.i, %do.body196.i.for.body215.i_crit_edge ]
  %bci_ptr.3392.i = phi ptr [ %bci_ptr.3.i, %for.body215.i.for.body215.i_crit_edge ], [ %bci_ptr.3388.i, %do.body196.i.for.body215.i_crit_edge ]
  %i.3391.i = phi i32 [ %add221.i, %for.body215.i.for.body215.i_crit_edge ], [ %start.0409.i, %do.body196.i.for.body215.i_crit_edge ]
  %shl217.i = shl i32 %add211393.i, 16
  %or218.i = or i32 %i.3391.i, %shl217.i
  %152 = ptrtoint ptr %bci_ptr.3392.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile i32 %or218.i, ptr %bci_ptr.3392.i, align 4
  %add221.i = add i32 %i.3391.i, 2
  %bci_ptr.3.i = getelementptr i32, ptr %bci_ptr.3392.i, i32 1
  %add211.i = add i32 %i.3391.i, 3
  %cmp213.i = icmp ult i32 %add211.i, %add212.i
  br i1 %cmp213.i, label %for.body215.i.for.body215.i_crit_edge, label %for.body215.i.for.end222.i_crit_edge

for.body215.i.for.end222.i_crit_edge:             ; preds = %for.body215.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end222.i

for.body215.i.for.body215.i_crit_edge:            ; preds = %for.body215.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body215.i

for.end222.i:                                     ; preds = %for.body215.i.for.end222.i_crit_edge, %do.body196.i.for.end222.i_crit_edge
  %i.3.lcssa.i = phi i32 [ %start.0409.i, %do.body196.i.for.end222.i_crit_edge ], [ %add221.i, %for.body215.i.for.end222.i_crit_edge ]
  %bci_ptr.3.lcssa.i = phi ptr [ %bci_ptr.3388.i, %do.body196.i.for.end222.i_crit_edge ], [ %bci_ptr.3.i, %for.body215.i.for.end222.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3.lcssa.i, i32 %add212.i)
  %cmp224.i = icmp ult i32 %i.3.lcssa.i, %add212.i
  br i1 %cmp224.i, label %if.then226.i, label %for.end222.i.if.end230.i_crit_edge

for.end222.i.if.end230.i_crit_edge:               ; preds = %for.end222.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end230.i

if.then226.i:                                     ; preds = %for.end222.i
  call void @__sanitizer_cov_trace_pc() #8
  %153 = ptrtoint ptr %bci_ptr.3.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile i32 %i.3.lcssa.i, ptr %bci_ptr.3.lcssa.i, align 4
  br label %if.end230.i

if.end230.i:                                      ; preds = %if.then226.i, %for.end222.i.if.end230.i_crit_edge, %if.then192.i, %for.end188.i.if.end230.i_crit_edge, %if.end151.i
  %add231.pre-phi.i = phi i32 [ %add178.i, %if.then192.i ], [ %add178.i, %for.end188.i.if.end230.i_crit_edge ], [ %add212.i, %if.then226.i ], [ %add212.i, %for.end222.i.if.end230.i_crit_edge ], [ %add125.i, %if.end151.i ]
  %sub232.i = sub i32 %n.0408.i, %122
  %cmp98.not.i = icmp eq i32 %sub232.i, 0
  br i1 %cmp98.not.i, label %if.end230.i.cleanup_crit_edge, label %if.end230.i.while.body.i_crit_edge

if.end230.i.while.body.i_crit_edge:               ; preds = %if.end230.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end230.i.cleanup_crit_edge:                    ; preds = %if.end230.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %while.body
  %154 = trunc i64 %cmd_header.sroa.5.0.extract.shift to i32
  %conv.i48 = and i32 %154, 255
  %155 = trunc i64 %cmd_header.sroa.10.0.extract.shift to i32
  %conv3.i50 = and i32 %155, 65535
  %156 = trunc i64 %cmd_header.sroa.15.sroa.0.0.extract.shift214 to i32
  %conv4.i52 = and i32 %156, 65535
  %157 = trunc i64 %3 to i32
  %conv6.i54 = and i32 %157, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc)
  %tobool.not.i55 = icmp eq i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc, 0
  br i1 %tobool.not.i55, label %sw.bb2.cleanup_crit_edge, label %if.end.i56

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i56:                                       ; preds = %sw.bb2
  %158 = zext i8 %cmd_header.sroa.5.0.extract.trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %cmd_header.sroa.5.0.extract.trunc, label %sw.default.i60 [
    i8 3, label %sw.bb.i57
    i8 0, label %if.end.i56.sw.bb7.i_crit_edge
    i8 1, label %if.end.i56.sw.bb11.i_crit_edge
    i8 2, label %if.end.i56.sw.bb11.i_crit_edge726
  ]

if.end.i56.sw.bb11.i_crit_edge726:                ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11.i

if.end.i56.sw.bb11.i_crit_edge:                   ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11.i

if.end.i56.sw.bb7.i_crit_edge:                    ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i

sw.bb.i57:                                        ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i

sw.bb7.i:                                         ; preds = %sw.bb.i57, %if.end.i56.sw.bb7.i_crit_edge
  %reorder.0.i58 = phi i8 [ %cmd_header.sroa.5.0.extract.trunc, %if.end.i56.sw.bb7.i_crit_edge ], [ 1, %sw.bb.i57 ]
  %rem373.i = urem i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem373.i)
  %cmp.not.i59 = icmp eq i16 %rem373.i, 0
  br i1 %cmp.not.i59, label %sw.bb7.i.sw.epilog.i64_crit_edge, label %if.then9.i

sw.bb7.i.sw.epilog.i64_crit_edge:                 ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i64

if.then9.i:                                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %conv4.i52) #6
  br label %cleanup21

sw.bb11.i:                                        ; preds = %if.end.i56.sw.bb11.i_crit_edge, %if.end.i56.sw.bb11.i_crit_edge726
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc)
  %cmp12.i = icmp ult i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc, 3
  br i1 %cmp12.i, label %if.then14.i, label %sw.bb11.i.sw.epilog.i64_crit_edge

sw.bb11.i.sw.epilog.i64_crit_edge:                ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i64

if.then14.i:                                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %conv4.i52) #6
  br label %cleanup21

sw.default.i60:                                   ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %conv.i48) #6
  br label %cleanup21

sw.epilog.i64:                                    ; preds = %sw.bb11.i.sw.epilog.i64_crit_edge, %sw.bb7.i.sw.epilog.i64_crit_edge
  %prim.1.i61 = phi i32 [ %conv.i48, %sw.bb11.i.sw.epilog.i64_crit_edge ], [ 0, %sw.bb7.i.sw.epilog.i64_crit_edge ]
  %reorder.1.i62 = phi i8 [ 0, %sw.bb11.i.sw.epilog.i64_crit_edge ], [ %reorder.0.i58, %sw.bb7.i.sw.epilog.i64_crit_edge ]
  %159 = ptrtoint ptr %chipset.i146 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %chipset.i146, align 4
  %161 = add i32 %160, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %161)
  %162 = icmp ult i32 %161, 2
  br i1 %162, label %if.then21.i, label %if.else.i66

if.then21.i:                                      ; preds = %sw.epilog.i64
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %cmd_header.sroa.10.0.extract.trunc)
  %cmp22.i = icmp ugt i16 %cmd_header.sroa.10.0.extract.trunc, 63
  br i1 %cmp22.i, label %if.then24.i65, label %if.then21.i.if.end30.i_crit_edge

if.then21.i.if.end30.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.then24.i65:                                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, i32 noundef %conv3.i50) #6
  br label %cleanup21

if.else.i66:                                      ; preds = %sw.epilog.i64
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %cmd_header.sroa.10.0.extract.trunc)
  %cmp26.i = icmp ugt i16 %cmd_header.sroa.10.0.extract.trunc, 255
  br i1 %cmp26.i, label %if.then28.i, label %if.else.i66.if.end30.i_crit_edge

if.else.i66.if.end30.i_crit_edge:                 ; preds = %if.else.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.then28.i:                                      ; preds = %if.else.i66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, i32 noundef %conv3.i50) #6
  br label %cleanup21

if.end30.i:                                       ; preds = %if.else.i66.if.end30.i_crit_edge, %if.then21.i.if.end30.i_crit_edge
  %vtx_size.0.i = phi i32 [ 8, %if.then21.i.if.end30.i_crit_edge ], [ 10, %if.else.i66.if.end30.i_crit_edge ]
  %and.i67 = and i32 %155, 1
  %163 = shl i32 %155, 30
  %164 = ashr i32 %163, 31
  %165 = shl i32 %155, 29
  %166 = ashr i32 %165, 31
  %167 = shl i32 %155, 28
  %168 = ashr i32 %167, 31
  %169 = shl i32 %155, 27
  %170 = ashr i32 %169, 31
  %171 = shl i32 %155, 26
  %172 = ashr i32 %171, 31
  %173 = shl i32 %155, 25
  %174 = ashr i32 %173, 31
  %175 = shl i32 %155, 24
  %176 = ashr i32 %175, 31
  %add.neg.i = sub nsw i32 %164, %and.i67
  %add34.neg.i = add nsw i32 %add.neg.i, %166
  %add37.neg.i = add nsw i32 %add34.neg.i, %168
  %add40.neg.i = add nsw i32 %add37.neg.i, %170
  %add43.neg.i = add nsw i32 %add40.neg.i, %172
  %add46.neg.i = add nsw i32 %add43.neg.i, %174
  %add49.neg.i = add nsw i32 %add46.neg.i, %176
  %sub.i68 = add nsw i32 %add49.neg.i, %vtx_size.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i68, i32 %vb_stride)
  %cmp50.i = icmp ugt i32 %sub.i68, %vb_stride
  br i1 %cmp50.i, label %if.then52.i, label %if.end53.i

if.then52.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %sub.i68, i32 noundef %vb_stride) #6
  br label %cleanup21

if.end53.i:                                       ; preds = %if.end30.i
  %add54.i = add nuw nsw i32 %conv4.i52, %conv6.i54
  %div.i69 = udiv i32 %vb_size, %mul.i155
  call void @__sanitizer_cov_trace_cmp4(i32 %add54.i, i32 %div.i69)
  %cmp55.i = icmp ugt i32 %add54.i, %div.i69
  br i1 %cmp55.i, label %if.then57.i, label %while.body.lr.ph.i71

if.then57.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub59.i = add nsw i32 %add54.i, -1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %conv6.i54, i32 noundef %sub59.i, i32 noundef %div.i69) #6
  br label %cleanup21

while.body.lr.ph.i71:                             ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reorder.1.i62)
  %tobool68.not.i = icmp eq i8 %reorder.1.i62, 0
  %shl.i70 = shl nuw nsw i32 %prim.1.i61, 25
  %mul113.i = shl nuw nsw i32 %sub.i68, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i68, i32 %vb_stride)
  %cmp181.i = icmp eq i32 %sub.i68, %vb_stride
  %177 = or i32 %shl.i70, 16777216
  br label %while.body.i72

while.body.i72:                                   ; preds = %if.end228.i.while.body.i72_crit_edge, %while.body.lr.ph.i71
  %prim.2388.i = phi i32 [ %shl.i70, %while.body.lr.ph.i71 ], [ %177, %if.end228.i.while.body.i72_crit_edge ]
  %n.0387.i = phi i32 [ %conv4.i52, %while.body.lr.ph.i71 ], [ %sub230.i, %if.end228.i.while.body.i72_crit_edge ]
  %start.0382.i = phi i32 [ %conv6.i54, %while.body.lr.ph.i71 ], [ %add229.i, %if.end228.i.while.body.i72_crit_edge ]
  %178 = tail call i32 @llvm.umin.i32(i32 %n.0387.i, i32 255) #6
  br i1 %tobool68.not.i, label %do.body135.i, label %if.then69.i

if.then69.i:                                      ; preds = %while.body.i72
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %reorder70.i) #6
  %179 = call ptr @memset(ptr %reorder70.i, i32 255, i32 12)
  %rem71.i = urem i32 %start.0382.i, 3
  %arrayidx.i73 = getelementptr [3 x i32], ptr %reorder70.i, i32 0, i32 %rem71.i
  %180 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 2, ptr %arrayidx.i73, align 4
  %181 = ptrtoint ptr %current_dma_page.i157 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %current_dma_page.i157, align 4
  %183 = ptrtoint ptr %dma_pages.i158 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dma_pages.i158, align 4
  %used.i = getelementptr %struct.drm_savage_dma_page, ptr %184, i32 %182, i32 1
  %185 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %used.i, align 4
  %sub73.i = sub i32 1024, %186
  %mul74.i = mul i32 %178, %sub.i68
  %add75.i = add i32 %mul74.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add75.i, i32 %sub73.i)
  %cmp76.i = icmp ugt i32 %add75.i, %sub73.i
  br i1 %cmp76.i, label %if.then78.i, label %if.else81.i

if.then78.i:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i74 = tail call ptr @savage_dma_alloc(ptr noundef %dev_priv, i32 noundef %add75.i) #6
  br label %if.end100.i

if.else81.i:                                      ; preds = %if.then69.i
  %187 = ptrtoint ptr %cmd_dma.i159 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cmd_dma.i159, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %188, i32 0, i32 4
  %189 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %handle.i, align 4
  %mul82.i = shl i32 %182, 10
  %add.ptr.i = getelementptr i32, ptr %190, i32 %mul82.i
  %add.ptr86.i = getelementptr i32, ptr %add.ptr.i, i32 %186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp90.i = icmp eq i32 %186, 0
  br i1 %cmp90.i, label %if.then92.i, label %if.else81.i.if.end93.i_crit_edge

if.else81.i.if.end93.i_crit_edge:                 ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93.i

if.then92.i:                                      ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @savage_dma_wait(ptr noundef %dev_priv, i32 noundef %182) #6
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then92.i, %if.else81.i.if.end93.i_crit_edge
  %191 = ptrtoint ptr %dma_pages.i158 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dma_pages.i158, align 4
  %used98.i = getelementptr %struct.drm_savage_dma_page, ptr %192, i32 %182, i32 1
  %193 = ptrtoint ptr %used98.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %used98.i, align 4
  %add99.i = add i32 %194, %add75.i
  store i32 %add99.i, ptr %used98.i, align 4
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.end93.i, %if.then78.i
  %dma_ptr.0.i = phi ptr [ %call.i74, %if.then78.i ], [ %add.ptr86.i, %if.end93.i ]
  %shl102.i = shl nuw nsw i32 %178, 16
  %or.i75 = or i32 %conv3.i50, %prim.2388.i
  %or101.i = or i32 %or.i75, %shl102.i
  %or103.i = or i32 %or101.i, -2147483648
  %incdec.ptr.i76 = getelementptr i32, ptr %dma_ptr.0.i, i32 1
  %195 = ptrtoint ptr %dma_ptr.0.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %or103.i, ptr %dma_ptr.0.i, align 4
  %add104.i = add i32 %178, %start.0382.i
  call void @__sanitizer_cov_trace_cmp4(i32 %start.0382.i, i32 %add104.i)
  %cmp105374.i = icmp ult i32 %start.0382.i, %add104.i
  br i1 %cmp105374.i, label %if.end100.i.for.body.i_crit_edge, label %if.end100.i.do.body117.i_crit_edge

if.end100.i.do.body117.i_crit_edge:               ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body117.i

if.end100.i.for.body.i_crit_edge:                 ; preds = %if.end100.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end100.i.for.body.i_crit_edge
  %dma_ptr.1376.i = phi ptr [ %add.ptr114.i, %for.body.i.for.body.i_crit_edge ], [ %incdec.ptr.i76, %if.end100.i.for.body.i_crit_edge ]
  %i.0375.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %start.0382.i, %if.end100.i.for.body.i_crit_edge ]
  %rem107.i = urem i32 %i.0375.i, 3
  %arrayidx108.i = getelementptr [3 x i32], ptr %reorder70.i, i32 0, i32 %rem107.i
  %196 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx108.i, align 4
  %add109.i = add i32 %197, %i.0375.i
  %mul111.i = mul i32 %add109.i, %vb_stride
  %arrayidx112.i = getelementptr i32, ptr %vtxbuf, i32 %mul111.i
  %198 = call ptr @memcpy(ptr %dma_ptr.1376.i, ptr %arrayidx112.i, i32 %mul113.i)
  %add.ptr114.i = getelementptr i32, ptr %dma_ptr.1376.i, i32 %sub.i68
  %inc.i = add nuw i32 %i.0375.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add104.i
  br i1 %exitcond.not.i, label %for.body.i.do.body117.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.do.body117.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body117.i

do.body117.i:                                     ; preds = %for.body.i.do.body117.i_crit_edge, %if.end100.i.do.body117.i_crit_edge
  %dma_ptr.1.lcssa.i = phi ptr [ %incdec.ptr.i76, %if.end100.i.do.body117.i_crit_edge ], [ %add.ptr114.i, %for.body.i.do.body117.i_crit_edge ]
  %199 = ptrtoint ptr %current_dma_page.i157 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %current_dma_page.i157, align 4
  %201 = ptrtoint ptr %cmd_dma.i159 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %cmd_dma.i159, align 4
  %handle121.i = getelementptr inbounds %struct.drm_local_map, ptr %202, i32 0, i32 4
  %203 = ptrtoint ptr %handle121.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %handle121.i, align 4
  %mul122.i = shl i32 %200, 10
  %add.ptr123.i = getelementptr i32, ptr %204, i32 %mul122.i
  %205 = ptrtoint ptr %dma_pages.i158 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dma_pages.i158, align 4
  %used126.i = getelementptr %struct.drm_savage_dma_page, ptr %206, i32 %200, i32 1
  %207 = ptrtoint ptr %used126.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %used126.i, align 4
  %add.ptr127.i = getelementptr i32, ptr %add.ptr123.i, i32 %208
  %cmp128.not.i = icmp eq ptr %dma_ptr.1.lcssa.i, %add.ptr127.i
  br i1 %cmp128.not.i, label %do.body117.i.if.end131.i_crit_edge, label %if.then130.i

do.body117.i.if.end131.i_crit_edge:               ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131.i

if.then130.i:                                     ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef %add.ptr127.i, ptr noundef %dma_ptr.1.lcssa.i) #6
  tail call void @savage_dma_reset(ptr noundef %dev_priv) #6
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.then130.i, %do.body117.i.if.end131.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %reorder70.i) #6
  br label %if.end228.i

do.body135.i:                                     ; preds = %while.body.i72
  %209 = ptrtoint ptr %current_dma_page.i157 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %current_dma_page.i157, align 4
  %211 = ptrtoint ptr %dma_pages.i158 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dma_pages.i158, align 4
  %used141.i = getelementptr %struct.drm_savage_dma_page, ptr %212, i32 %210, i32 1
  %213 = ptrtoint ptr %used141.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %used141.i, align 4
  %sub142.i = sub i32 1024, %214
  %mul143.i = mul i32 %178, %sub.i68
  %add144.i = add i32 %mul143.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add144.i, i32 %sub142.i)
  %cmp145.i = icmp ugt i32 %add144.i, %sub142.i
  br i1 %cmp145.i, label %if.then147.i, label %if.else151.i

if.then147.i:                                     ; preds = %do.body135.i
  call void @__sanitizer_cov_trace_pc() #8
  %call150.i = tail call ptr @savage_dma_alloc(ptr noundef %dev_priv, i32 noundef %add144.i) #6
  br label %if.end173.i

if.else151.i:                                     ; preds = %do.body135.i
  %215 = ptrtoint ptr %cmd_dma.i159 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %cmd_dma.i159, align 4
  %handle153.i = getelementptr inbounds %struct.drm_local_map, ptr %216, i32 0, i32 4
  %217 = ptrtoint ptr %handle153.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %handle153.i, align 4
  %mul154.i = shl i32 %210, 10
  %add.ptr155.i = getelementptr i32, ptr %218, i32 %mul154.i
  %add.ptr159.i = getelementptr i32, ptr %add.ptr155.i, i32 %214
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp163.i = icmp eq i32 %214, 0
  br i1 %cmp163.i, label %if.then165.i, label %if.else151.i.if.end166.i_crit_edge

if.else151.i.if.end166.i_crit_edge:               ; preds = %if.else151.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end166.i

if.then165.i:                                     ; preds = %if.else151.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @savage_dma_wait(ptr noundef %dev_priv, i32 noundef %210) #6
  br label %if.end166.i

if.end166.i:                                      ; preds = %if.then165.i, %if.else151.i.if.end166.i_crit_edge
  %219 = ptrtoint ptr %dma_pages.i158 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dma_pages.i158, align 4
  %used171.i = getelementptr %struct.drm_savage_dma_page, ptr %220, i32 %210, i32 1
  %221 = ptrtoint ptr %used171.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %used171.i, align 4
  %add172.i = add i32 %222, %add144.i
  store i32 %add172.i, ptr %used171.i, align 4
  br label %if.end173.i

if.end173.i:                                      ; preds = %if.end166.i, %if.then147.i
  %dma_ptr.2.i = phi ptr [ %call150.i, %if.then147.i ], [ %add.ptr159.i, %if.end166.i ]
  %shl178.i = shl nuw nsw i32 %178, 16
  %or176.i = or i32 %conv3.i50, %prim.2388.i
  %or177.i = or i32 %or176.i, %shl178.i
  %or179.i = or i32 %or177.i, -2147483648
  %incdec.ptr180.i = getelementptr i32, ptr %dma_ptr.2.i, i32 1
  %223 = ptrtoint ptr %dma_ptr.2.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %or179.i, ptr %dma_ptr.2.i, align 4
  br i1 %cmp181.i, label %do.body184.i, label %for.cond194.preheader.i

for.cond194.preheader.i:                          ; preds = %if.end173.i
  %add195.i = add i32 %178, %start.0382.i
  call void @__sanitizer_cov_trace_cmp4(i32 %start.0382.i, i32 %add195.i)
  %cmp196377.i = icmp ult i32 %start.0382.i, %add195.i
  br i1 %cmp196377.i, label %for.cond194.preheader.i.do.body199.i_crit_edge, label %for.cond194.preheader.i.do.body210.i_crit_edge

for.cond194.preheader.i.do.body210.i_crit_edge:   ; preds = %for.cond194.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body210.i

for.cond194.preheader.i.do.body199.i_crit_edge:   ; preds = %for.cond194.preheader.i
  br label %do.body199.i

do.body184.i:                                     ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul185.i = mul i32 %start.0382.i, %vb_stride
  %arrayidx186.i = getelementptr i32, ptr %vtxbuf, i32 %mul185.i
  %mul188.i = shl i32 %mul143.i, 2
  %224 = call ptr @memcpy(ptr %incdec.ptr180.i, ptr %arrayidx186.i, i32 %mul188.i)
  %add.ptr190.i = getelementptr i32, ptr %incdec.ptr180.i, i32 %mul143.i
  br label %do.body210.i

do.body199.i:                                     ; preds = %do.body199.i.do.body199.i_crit_edge, %for.cond194.preheader.i.do.body199.i_crit_edge
  %dma_ptr.3379.i = phi ptr [ %add.ptr203.i, %do.body199.i.do.body199.i_crit_edge ], [ %incdec.ptr180.i, %for.cond194.preheader.i.do.body199.i_crit_edge ]
  %i.1378.i = phi i32 [ %inc207.i, %do.body199.i.do.body199.i_crit_edge ], [ %start.0382.i, %for.cond194.preheader.i.do.body199.i_crit_edge ]
  %mul200.i = mul i32 %i.1378.i, %vb_stride
  %arrayidx201.i = getelementptr i32, ptr %vtxbuf, i32 %mul200.i
  %225 = call ptr @memcpy(ptr %dma_ptr.3379.i, ptr %arrayidx201.i, i32 %mul113.i)
  %add.ptr203.i = getelementptr i32, ptr %dma_ptr.3379.i, i32 %sub.i68
  %inc207.i = add nuw i32 %i.1378.i, 1
  %exitcond389.not.i = icmp eq i32 %inc207.i, %add195.i
  br i1 %exitcond389.not.i, label %do.body199.i.do.body210.i_crit_edge, label %do.body199.i.do.body199.i_crit_edge

do.body199.i.do.body199.i_crit_edge:              ; preds = %do.body199.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body199.i

do.body199.i.do.body210.i_crit_edge:              ; preds = %do.body199.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body210.i

do.body210.i:                                     ; preds = %do.body199.i.do.body210.i_crit_edge, %do.body184.i, %for.cond194.preheader.i.do.body210.i_crit_edge
  %dma_ptr.4.i = phi ptr [ %add.ptr190.i, %do.body184.i ], [ %incdec.ptr180.i, %for.cond194.preheader.i.do.body210.i_crit_edge ], [ %add.ptr203.i, %do.body199.i.do.body210.i_crit_edge ]
  %226 = ptrtoint ptr %current_dma_page.i157 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %current_dma_page.i157, align 4
  %228 = ptrtoint ptr %cmd_dma.i159 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cmd_dma.i159, align 4
  %handle215.i = getelementptr inbounds %struct.drm_local_map, ptr %229, i32 0, i32 4
  %230 = ptrtoint ptr %handle215.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %handle215.i, align 4
  %mul216.i = shl i32 %227, 10
  %add.ptr217.i = getelementptr i32, ptr %231, i32 %mul216.i
  %232 = ptrtoint ptr %dma_pages.i158 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %dma_pages.i158, align 4
  %used220.i = getelementptr %struct.drm_savage_dma_page, ptr %233, i32 %227, i32 1
  %234 = ptrtoint ptr %used220.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %used220.i, align 4
  %add.ptr221.i = getelementptr i32, ptr %add.ptr217.i, i32 %235
  %cmp222.not.i = icmp eq ptr %dma_ptr.4.i, %add.ptr221.i
  br i1 %cmp222.not.i, label %do.body210.i.if.end228.i_crit_edge, label %if.then224.i

do.body210.i.if.end228.i_crit_edge:               ; preds = %do.body210.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end228.i

if.then224.i:                                     ; preds = %do.body210.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef %add.ptr221.i, ptr noundef %dma_ptr.4.i) #6
  tail call void @savage_dma_reset(ptr noundef %dev_priv) #6
  br label %if.end228.i

if.end228.i:                                      ; preds = %if.then224.i, %do.body210.i.if.end228.i_crit_edge, %if.end131.i
  %add229.i = add i32 %178, %start.0382.i
  %sub230.i = sub i32 %n.0387.i, %178
  %cmp63.not.i = icmp eq i32 %sub230.i, 0
  br i1 %cmp63.not.i, label %if.end228.i.cleanup_crit_edge, label %if.end228.i.while.body.i72_crit_edge

if.end228.i.while.body.i72_crit_edge:             ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i72

if.end228.i.cleanup_crit_edge:                    ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb4:                                           ; preds = %while.body
  %236 = trunc i64 %cmd_header.sroa.15.sroa.0.0.extract.shift214 to i32
  %conv5 = and i32 %236, 65535
  %add = add nuw nsw i32 %conv5, 3
  %div46 = lshr i32 %add, 2
  %237 = trunc i64 %cmd_header.sroa.5.0.extract.shift to i32
  %conv.i78 = and i32 %237, 255
  %238 = trunc i64 %cmd_header.sroa.10.0.extract.shift to i32
  %conv3.i80 = and i32 %238, 65535
  br i1 %tobool.not.i83, label %if.then.i84, label %if.end.i85

if.then.i84:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #6
  br label %savage_dispatch_dma_idx.exit

if.end.i85:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc)
  %tobool5.not.i = icmp eq i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc, 0
  br i1 %tobool5.not.i, label %if.end.i85.savage_dispatch_dma_idx.exit_crit_edge, label %if.end7.i

if.end.i85.savage_dispatch_dma_idx.exit_crit_edge: ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %savage_dispatch_dma_idx.exit

if.end7.i:                                        ; preds = %if.end.i85
  %239 = zext i8 %cmd_header.sroa.5.0.extract.trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %239, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %cmd_header.sroa.5.0.extract.trunc, label %sw.default.i89 [
    i8 3, label %sw.bb.i86
    i8 0, label %if.end7.i.sw.bb8.i_crit_edge
    i8 1, label %if.end7.i.sw.bb12.i_crit_edge
    i8 2, label %if.end7.i.sw.bb12.i_crit_edge727
  ]

if.end7.i.sw.bb12.i_crit_edge727:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i

if.end7.i.sw.bb12.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i

if.end7.i.sw.bb8.i_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

sw.bb.i86:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

sw.bb8.i:                                         ; preds = %sw.bb.i86, %if.end7.i.sw.bb8.i_crit_edge
  %reorder.0.i87 = phi i8 [ %cmd_header.sroa.5.0.extract.trunc, %if.end7.i.sw.bb8.i_crit_edge ], [ 1, %sw.bb.i86 ]
  %rem401.i = urem i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem401.i)
  %cmp.not.i88 = icmp eq i16 %rem401.i, 0
  br i1 %cmp.not.i88, label %sw.bb8.i.sw.epilog.i93_crit_edge, label %if.then10.i

sw.bb8.i.sw.epilog.i93_crit_edge:                 ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i93

if.then10.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef %conv5) #6
  br label %savage_dispatch_dma_idx.exit

sw.bb12.i:                                        ; preds = %if.end7.i.sw.bb12.i_crit_edge, %if.end7.i.sw.bb12.i_crit_edge727
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc)
  %cmp13.i = icmp ult i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc, 3
  br i1 %cmp13.i, label %if.then15.i, label %sw.bb12.i.sw.epilog.i93_crit_edge

sw.bb12.i.sw.epilog.i93_crit_edge:                ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i93

if.then15.i:                                      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %conv5) #6
  br label %savage_dispatch_dma_idx.exit

sw.default.i89:                                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %conv.i78) #6
  br label %savage_dispatch_dma_idx.exit

sw.epilog.i93:                                    ; preds = %sw.bb12.i.sw.epilog.i93_crit_edge, %sw.bb8.i.sw.epilog.i93_crit_edge
  %reorder.1.i90 = phi i8 [ 0, %sw.bb12.i.sw.epilog.i93_crit_edge ], [ %reorder.0.i87, %sw.bb8.i.sw.epilog.i93_crit_edge ]
  %prim.1.i91 = phi i32 [ %conv.i78, %sw.bb12.i.sw.epilog.i93_crit_edge ], [ 0, %sw.bb8.i.sw.epilog.i93_crit_edge ]
  %240 = ptrtoint ptr %chipset.i146 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %chipset.i146, align 4
  %242 = add i32 %241, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %242)
  %243 = icmp ult i32 %242, 2
  br i1 %243, label %if.then22.i, label %if.else.i94

if.then22.i:                                      ; preds = %sw.epilog.i93
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmd_header.sroa.10.0.extract.trunc)
  %cmp23.not.i = icmp eq i16 %cmd_header.sroa.10.0.extract.trunc, 0
  br i1 %cmp23.not.i, label %if.then22.i.if.end56.i_crit_edge, label %if.then25.i

if.then22.i.if.end56.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.then25.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %conv3.i80) #6
  br label %savage_dispatch_dma_idx.exit

if.else.i94:                                      ; preds = %sw.epilog.i93
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %cmd_header.sroa.10.0.extract.trunc)
  %cmp47.i = icmp ugt i16 %cmd_header.sroa.10.0.extract.trunc, 255
  br i1 %cmp47.i, label %if.else.i94.if.then51.i_crit_edge, label %lor.lhs.false.i97

if.else.i94.if.then51.i_crit_edge:                ; preds = %if.else.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51.i

lor.lhs.false.i97:                                ; preds = %if.else.i94
  %244 = shl i32 %238, 25
  %245 = ashr i32 %244, 31
  %246 = shl i32 %238, 26
  %247 = ashr i32 %246, 31
  %248 = shl i32 %238, 27
  %249 = ashr i32 %248, 31
  %250 = shl i32 %238, 28
  %251 = ashr i32 %250, 31
  %252 = shl i32 %238, 29
  %253 = ashr i32 %252, 31
  %254 = shl i32 %238, 30
  %255 = ashr i32 %254, 31
  %and.i95 = and i32 %238, 1
  %sub.i96 = sub nuw nsw i32 10, %and.i95
  %sub28.i = add nsw i32 %sub.i96, %255
  %sub31.i = add nsw i32 %sub28.i, %253
  %sub34.i = add nsw i32 %sub31.i, %251
  %sub37.i = add nsw i32 %sub34.i, %249
  %sub40.i = add nsw i32 %sub37.i, %247
  %sub43.i = add nsw i32 %sub40.i, %245
  %256 = shl i32 %238, 24
  %257 = ashr i32 %256, 31
  %sub46.i = add nsw i32 %sub43.i, %257
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub46.i)
  %cmp49.not.i = icmp eq i32 %sub46.i, 8
  br i1 %cmp49.not.i, label %if.end52.i, label %lor.lhs.false.i97.if.then51.i_crit_edge

lor.lhs.false.i97.if.then51.i_crit_edge:          ; preds = %lor.lhs.false.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51.i

if.then51.i:                                      ; preds = %lor.lhs.false.i97.if.then51.i_crit_edge, %if.else.i94.if.then51.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %conv3.i80) #6
  br label %savage_dispatch_dma_idx.exit

if.end52.i:                                       ; preds = %lor.lhs.false.i97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reorder.1.i90)
  %tobool53.not.i = icmp eq i8 %reorder.1.i90, 0
  br i1 %tobool53.not.i, label %if.end52.i.if.end56.i_crit_edge, label %if.then54.i

if.end52.i.if.end56.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.then54.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %savage_dispatch_dma_idx.exit

if.end56.i:                                       ; preds = %if.end52.i.if.end56.i_crit_edge, %if.then22.i.if.end56.i_crit_edge
  %258 = ptrtoint ptr %dma_flush.i98 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dma_flush.i98, align 4
  tail call void %259(ptr noundef %dev_priv) #6
  %260 = ptrtoint ptr %bus_address.i99 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %bus_address.i99, align 4
  %262 = ptrtoint ptr %state.i100 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %state.i100, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %261, i32 %263)
  %cmp57.not.i = icmp eq i32 %261, %263
  br i1 %cmp57.not.i, label %if.end56.i.if.end66.i107_crit_edge, label %do.body.i106

if.end56.i.if.end66.i107_crit_edge:               ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.i107

do.body.i106:                                     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  %264 = ptrtoint ptr %wait_fifo.i101 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %wait_fifo.i101, align 4
  %call.i102 = tail call i32 %265(ptr noundef %dev_priv, i32 noundef 2) #6
  %266 = ptrtoint ptr %bci_ptr60.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %bci_ptr60.i, align 4
  %incdec.ptr.i103 = getelementptr i32, ptr %267, i32 1
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_store4_noabort(i32 %268)
  store volatile i32 -1778319298, ptr %267, align 4
  %269 = ptrtoint ptr %bus_address.i99 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %bus_address.i99, align 4
  %271 = ptrtoint ptr %dma_type.i104 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %dma_type.i104, align 4
  %or.i105 = or i32 %272, %270
  %273 = ptrtoint ptr %incdec.ptr.i103 to i32
  call void @__asan_store4_noabort(i32 %273)
  store volatile i32 %or.i105, ptr %incdec.ptr.i103, align 4
  %274 = load i32, ptr %bus_address.i99, align 4
  %275 = ptrtoint ptr %state.i100 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %274, ptr %state.i100, align 4
  br label %if.end66.i107

if.end66.i107:                                    ; preds = %do.body.i106, %if.end56.i.if.end66.i107_crit_edge
  %276 = ptrtoint ptr %chipset.i146 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %chipset.i146, align 4
  %278 = add i32 %277, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %278)
  %279 = icmp ult i32 %278, 2
  br i1 %279, label %land.lhs.true74.i, label %if.end66.i107.if.end87.i_crit_edge

if.end66.i107.if.end87.i_crit_edge:               ; preds = %if.end66.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.i

land.lhs.true74.i:                                ; preds = %if.end66.i107
  %280 = ptrtoint ptr %waiting.i108 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %waiting.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool75.not.i = icmp eq i32 %281, 0
  br i1 %tobool75.not.i, label %land.lhs.true74.i.if.end87.i_crit_edge, label %do.body77.i

land.lhs.true74.i.if.end87.i_crit_edge:           ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.i

do.body77.i:                                      ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #8
  %282 = ptrtoint ptr %wait_fifo.i101 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %wait_fifo.i101, align 4
  %call79.i = tail call i32 %283(ptr noundef %dev_priv, i32 noundef 63) #6
  %284 = ptrtoint ptr %bci_ptr60.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %bci_ptr60.i, align 4
  %incdec.ptr85.i = getelementptr i32, ptr %285, i32 1
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_store4_noabort(i32 %286)
  store volatile i32 -1073741824, ptr %285, align 4
  %incdec.ptr85.1.i = getelementptr i32, ptr %285, i32 2
  %287 = ptrtoint ptr %incdec.ptr85.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store volatile i32 -1073741824, ptr %incdec.ptr85.i, align 4
  %incdec.ptr85.2.i = getelementptr i32, ptr %285, i32 3
  %288 = ptrtoint ptr %incdec.ptr85.1.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store volatile i32 -1073741824, ptr %incdec.ptr85.1.i, align 4
  %incdec.ptr85.3.i = getelementptr i32, ptr %285, i32 4
  %289 = ptrtoint ptr %incdec.ptr85.2.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store volatile i32 -1073741824, ptr %incdec.ptr85.2.i, align 4
  %incdec.ptr85.4.i = getelementptr i32, ptr %285, i32 5
  %290 = ptrtoint ptr %incdec.ptr85.3.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store volatile i32 -1073741824, ptr %incdec.ptr85.3.i, align 4
  %incdec.ptr85.5.i = getelementptr i32, ptr %285, i32 6
  %291 = ptrtoint ptr %incdec.ptr85.4.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store volatile i32 -1073741824, ptr %incdec.ptr85.4.i, align 4
  %incdec.ptr85.6.i = getelementptr i32, ptr %285, i32 7
  %292 = ptrtoint ptr %incdec.ptr85.5.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store volatile i32 -1073741824, ptr %incdec.ptr85.5.i, align 4
  %incdec.ptr85.7.i = getelementptr i32, ptr %285, i32 8
  %293 = ptrtoint ptr %incdec.ptr85.6.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store volatile i32 -1073741824, ptr %incdec.ptr85.6.i, align 4
  %incdec.ptr85.8.i = getelementptr i32, ptr %285, i32 9
  %294 = ptrtoint ptr %incdec.ptr85.7.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store volatile i32 -1073741824, ptr %incdec.ptr85.7.i, align 4
  %incdec.ptr85.9.i = getelementptr i32, ptr %285, i32 10
  %295 = ptrtoint ptr %incdec.ptr85.8.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store volatile i32 -1073741824, ptr %incdec.ptr85.8.i, align 4
  %incdec.ptr85.10.i = getelementptr i32, ptr %285, i32 11
  %296 = ptrtoint ptr %incdec.ptr85.9.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store volatile i32 -1073741824, ptr %incdec.ptr85.9.i, align 4
  %incdec.ptr85.11.i = getelementptr i32, ptr %285, i32 12
  %297 = ptrtoint ptr %incdec.ptr85.10.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store volatile i32 -1073741824, ptr %incdec.ptr85.10.i, align 4
  %incdec.ptr85.12.i = getelementptr i32, ptr %285, i32 13
  %298 = ptrtoint ptr %incdec.ptr85.11.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store volatile i32 -1073741824, ptr %incdec.ptr85.11.i, align 4
  %incdec.ptr85.13.i = getelementptr i32, ptr %285, i32 14
  %299 = ptrtoint ptr %incdec.ptr85.12.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store volatile i32 -1073741824, ptr %incdec.ptr85.12.i, align 4
  %incdec.ptr85.14.i = getelementptr i32, ptr %285, i32 15
  %300 = ptrtoint ptr %incdec.ptr85.13.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store volatile i32 -1073741824, ptr %incdec.ptr85.13.i, align 4
  %incdec.ptr85.15.i = getelementptr i32, ptr %285, i32 16
  %301 = ptrtoint ptr %incdec.ptr85.14.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store volatile i32 -1073741824, ptr %incdec.ptr85.14.i, align 4
  %incdec.ptr85.16.i = getelementptr i32, ptr %285, i32 17
  %302 = ptrtoint ptr %incdec.ptr85.15.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store volatile i32 -1073741824, ptr %incdec.ptr85.15.i, align 4
  %incdec.ptr85.17.i = getelementptr i32, ptr %285, i32 18
  %303 = ptrtoint ptr %incdec.ptr85.16.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store volatile i32 -1073741824, ptr %incdec.ptr85.16.i, align 4
  %incdec.ptr85.18.i = getelementptr i32, ptr %285, i32 19
  %304 = ptrtoint ptr %incdec.ptr85.17.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store volatile i32 -1073741824, ptr %incdec.ptr85.17.i, align 4
  %incdec.ptr85.19.i = getelementptr i32, ptr %285, i32 20
  %305 = ptrtoint ptr %incdec.ptr85.18.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store volatile i32 -1073741824, ptr %incdec.ptr85.18.i, align 4
  %incdec.ptr85.20.i = getelementptr i32, ptr %285, i32 21
  %306 = ptrtoint ptr %incdec.ptr85.19.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store volatile i32 -1073741824, ptr %incdec.ptr85.19.i, align 4
  %incdec.ptr85.21.i = getelementptr i32, ptr %285, i32 22
  %307 = ptrtoint ptr %incdec.ptr85.20.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store volatile i32 -1073741824, ptr %incdec.ptr85.20.i, align 4
  %incdec.ptr85.22.i = getelementptr i32, ptr %285, i32 23
  %308 = ptrtoint ptr %incdec.ptr85.21.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store volatile i32 -1073741824, ptr %incdec.ptr85.21.i, align 4
  %incdec.ptr85.23.i = getelementptr i32, ptr %285, i32 24
  %309 = ptrtoint ptr %incdec.ptr85.22.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store volatile i32 -1073741824, ptr %incdec.ptr85.22.i, align 4
  %incdec.ptr85.24.i = getelementptr i32, ptr %285, i32 25
  %310 = ptrtoint ptr %incdec.ptr85.23.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store volatile i32 -1073741824, ptr %incdec.ptr85.23.i, align 4
  %incdec.ptr85.25.i = getelementptr i32, ptr %285, i32 26
  %311 = ptrtoint ptr %incdec.ptr85.24.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store volatile i32 -1073741824, ptr %incdec.ptr85.24.i, align 4
  %incdec.ptr85.26.i = getelementptr i32, ptr %285, i32 27
  %312 = ptrtoint ptr %incdec.ptr85.25.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store volatile i32 -1073741824, ptr %incdec.ptr85.25.i, align 4
  %incdec.ptr85.27.i = getelementptr i32, ptr %285, i32 28
  %313 = ptrtoint ptr %incdec.ptr85.26.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store volatile i32 -1073741824, ptr %incdec.ptr85.26.i, align 4
  %incdec.ptr85.28.i = getelementptr i32, ptr %285, i32 29
  %314 = ptrtoint ptr %incdec.ptr85.27.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store volatile i32 -1073741824, ptr %incdec.ptr85.27.i, align 4
  %incdec.ptr85.29.i = getelementptr i32, ptr %285, i32 30
  %315 = ptrtoint ptr %incdec.ptr85.28.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store volatile i32 -1073741824, ptr %incdec.ptr85.28.i, align 4
  %incdec.ptr85.30.i = getelementptr i32, ptr %285, i32 31
  %316 = ptrtoint ptr %incdec.ptr85.29.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store volatile i32 -1073741824, ptr %incdec.ptr85.29.i, align 4
  %incdec.ptr85.31.i = getelementptr i32, ptr %285, i32 32
  %317 = ptrtoint ptr %incdec.ptr85.30.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store volatile i32 -1073741824, ptr %incdec.ptr85.30.i, align 4
  %incdec.ptr85.32.i = getelementptr i32, ptr %285, i32 33
  %318 = ptrtoint ptr %incdec.ptr85.31.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store volatile i32 -1073741824, ptr %incdec.ptr85.31.i, align 4
  %incdec.ptr85.33.i = getelementptr i32, ptr %285, i32 34
  %319 = ptrtoint ptr %incdec.ptr85.32.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store volatile i32 -1073741824, ptr %incdec.ptr85.32.i, align 4
  %incdec.ptr85.34.i = getelementptr i32, ptr %285, i32 35
  %320 = ptrtoint ptr %incdec.ptr85.33.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store volatile i32 -1073741824, ptr %incdec.ptr85.33.i, align 4
  %incdec.ptr85.35.i = getelementptr i32, ptr %285, i32 36
  %321 = ptrtoint ptr %incdec.ptr85.34.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store volatile i32 -1073741824, ptr %incdec.ptr85.34.i, align 4
  %incdec.ptr85.36.i = getelementptr i32, ptr %285, i32 37
  %322 = ptrtoint ptr %incdec.ptr85.35.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store volatile i32 -1073741824, ptr %incdec.ptr85.35.i, align 4
  %incdec.ptr85.37.i = getelementptr i32, ptr %285, i32 38
  %323 = ptrtoint ptr %incdec.ptr85.36.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store volatile i32 -1073741824, ptr %incdec.ptr85.36.i, align 4
  %incdec.ptr85.38.i = getelementptr i32, ptr %285, i32 39
  %324 = ptrtoint ptr %incdec.ptr85.37.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store volatile i32 -1073741824, ptr %incdec.ptr85.37.i, align 4
  %incdec.ptr85.39.i = getelementptr i32, ptr %285, i32 40
  %325 = ptrtoint ptr %incdec.ptr85.38.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store volatile i32 -1073741824, ptr %incdec.ptr85.38.i, align 4
  %incdec.ptr85.40.i = getelementptr i32, ptr %285, i32 41
  %326 = ptrtoint ptr %incdec.ptr85.39.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store volatile i32 -1073741824, ptr %incdec.ptr85.39.i, align 4
  %incdec.ptr85.41.i = getelementptr i32, ptr %285, i32 42
  %327 = ptrtoint ptr %incdec.ptr85.40.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store volatile i32 -1073741824, ptr %incdec.ptr85.40.i, align 4
  %incdec.ptr85.42.i = getelementptr i32, ptr %285, i32 43
  %328 = ptrtoint ptr %incdec.ptr85.41.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store volatile i32 -1073741824, ptr %incdec.ptr85.41.i, align 4
  %incdec.ptr85.43.i = getelementptr i32, ptr %285, i32 44
  %329 = ptrtoint ptr %incdec.ptr85.42.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store volatile i32 -1073741824, ptr %incdec.ptr85.42.i, align 4
  %incdec.ptr85.44.i = getelementptr i32, ptr %285, i32 45
  %330 = ptrtoint ptr %incdec.ptr85.43.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store volatile i32 -1073741824, ptr %incdec.ptr85.43.i, align 4
  %incdec.ptr85.45.i = getelementptr i32, ptr %285, i32 46
  %331 = ptrtoint ptr %incdec.ptr85.44.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store volatile i32 -1073741824, ptr %incdec.ptr85.44.i, align 4
  %incdec.ptr85.46.i = getelementptr i32, ptr %285, i32 47
  %332 = ptrtoint ptr %incdec.ptr85.45.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store volatile i32 -1073741824, ptr %incdec.ptr85.45.i, align 4
  %incdec.ptr85.47.i = getelementptr i32, ptr %285, i32 48
  %333 = ptrtoint ptr %incdec.ptr85.46.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store volatile i32 -1073741824, ptr %incdec.ptr85.46.i, align 4
  %incdec.ptr85.48.i = getelementptr i32, ptr %285, i32 49
  %334 = ptrtoint ptr %incdec.ptr85.47.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store volatile i32 -1073741824, ptr %incdec.ptr85.47.i, align 4
  %incdec.ptr85.49.i = getelementptr i32, ptr %285, i32 50
  %335 = ptrtoint ptr %incdec.ptr85.48.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store volatile i32 -1073741824, ptr %incdec.ptr85.48.i, align 4
  %incdec.ptr85.50.i = getelementptr i32, ptr %285, i32 51
  %336 = ptrtoint ptr %incdec.ptr85.49.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store volatile i32 -1073741824, ptr %incdec.ptr85.49.i, align 4
  %incdec.ptr85.51.i = getelementptr i32, ptr %285, i32 52
  %337 = ptrtoint ptr %incdec.ptr85.50.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store volatile i32 -1073741824, ptr %incdec.ptr85.50.i, align 4
  %incdec.ptr85.52.i = getelementptr i32, ptr %285, i32 53
  %338 = ptrtoint ptr %incdec.ptr85.51.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store volatile i32 -1073741824, ptr %incdec.ptr85.51.i, align 4
  %incdec.ptr85.53.i = getelementptr i32, ptr %285, i32 54
  %339 = ptrtoint ptr %incdec.ptr85.52.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store volatile i32 -1073741824, ptr %incdec.ptr85.52.i, align 4
  %incdec.ptr85.54.i = getelementptr i32, ptr %285, i32 55
  %340 = ptrtoint ptr %incdec.ptr85.53.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store volatile i32 -1073741824, ptr %incdec.ptr85.53.i, align 4
  %incdec.ptr85.55.i = getelementptr i32, ptr %285, i32 56
  %341 = ptrtoint ptr %incdec.ptr85.54.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store volatile i32 -1073741824, ptr %incdec.ptr85.54.i, align 4
  %incdec.ptr85.56.i = getelementptr i32, ptr %285, i32 57
  %342 = ptrtoint ptr %incdec.ptr85.55.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store volatile i32 -1073741824, ptr %incdec.ptr85.55.i, align 4
  %incdec.ptr85.57.i = getelementptr i32, ptr %285, i32 58
  %343 = ptrtoint ptr %incdec.ptr85.56.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store volatile i32 -1073741824, ptr %incdec.ptr85.56.i, align 4
  %incdec.ptr85.58.i = getelementptr i32, ptr %285, i32 59
  %344 = ptrtoint ptr %incdec.ptr85.57.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store volatile i32 -1073741824, ptr %incdec.ptr85.57.i, align 4
  %incdec.ptr85.59.i = getelementptr i32, ptr %285, i32 60
  %345 = ptrtoint ptr %incdec.ptr85.58.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store volatile i32 -1073741824, ptr %incdec.ptr85.58.i, align 4
  %incdec.ptr85.60.i = getelementptr i32, ptr %285, i32 61
  %346 = ptrtoint ptr %incdec.ptr85.59.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store volatile i32 -1073741824, ptr %incdec.ptr85.59.i, align 4
  %incdec.ptr85.61.i = getelementptr i32, ptr %285, i32 62
  %347 = ptrtoint ptr %incdec.ptr85.60.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store volatile i32 -1073741824, ptr %incdec.ptr85.60.i, align 4
  %348 = ptrtoint ptr %incdec.ptr85.61.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store volatile i32 -1073741824, ptr %incdec.ptr85.61.i, align 4
  %349 = ptrtoint ptr %waiting.i108 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 0, ptr %waiting.i108, align 4
  br label %if.end87.i

if.end87.i:                                       ; preds = %do.body77.i, %land.lhs.true74.i.if.end87.i_crit_edge, %if.end66.i107.if.end87.i_crit_edge
  %shl.i109 = shl nuw nsw i32 %prim.1.i91, 25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reorder.1.i90)
  %tobool109.not.i = icmp eq i8 %reorder.1.i90, 0
  %350 = or i32 %shl.i109, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5)
  %cmp88.not.i314 = icmp eq i32 %conv5, 0
  br i1 %cmp88.not.i314, label %if.end87.i.savage_dispatch_dma_idx.exit_crit_edge, label %if.end87.i.while.body.i112_crit_edge

if.end87.i.while.body.i112_crit_edge:             ; preds = %if.end87.i
  br label %while.body.i112

if.end87.i.savage_dispatch_dma_idx.exit_crit_edge: ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %savage_dispatch_dma_idx.exit

while.body.i112:                                  ; preds = %cleanup250.i.while.body.i112_crit_edge, %if.end87.i.while.body.i112_crit_edge
  %n.0.i322 = phi i32 [ %sub248.i, %cleanup250.i.while.body.i112_crit_edge ], [ %conv5, %if.end87.i.while.body.i112_crit_edge ]
  %prim.2.i321 = phi i32 [ %350, %cleanup250.i.while.body.i112_crit_edge ], [ %shl.i109, %if.end87.i.while.body.i112_crit_edge ]
  %idx.addr.0.i315 = phi ptr [ %add.ptr.i130, %cleanup250.i.while.body.i112_crit_edge ], [ %incdec.ptr, %if.end87.i.while.body.i112_crit_edge ]
  %351 = tail call i32 @llvm.umin.i32(i32 %n.0.i322, i32 255) #6
  %352 = ptrtoint ptr %total.i110 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %total.i110, align 4
  %div.i111 = sdiv i32 %353, 32
  br label %for.body96.i

for.body96.i:                                     ; preds = %for.inc106.i.for.body96.i_crit_edge, %while.body.i112
  %i.1407.i = phi i32 [ 0, %while.body.i112 ], [ %inc107.i, %for.inc106.i.for.body96.i_crit_edge ]
  %arrayidx.i113 = getelementptr i16, ptr %idx.addr.0.i315, i32 %i.1407.i
  %354 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_load2_noabort(i32 %354)
  %355 = load i16, ptr %arrayidx.i113, align 2
  %conv97.i = zext i16 %355 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i111, i32 %conv97.i)
  %cmp98.i = icmp slt i32 %div.i111, %conv97.i
  br i1 %cmp98.i, label %cleanup250.thread.i, label %for.inc106.i

cleanup250.thread.i:                              ; preds = %for.body96.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv97.i.le = zext i16 %355 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %i.1407.i, i32 noundef %conv97.i.le, i32 noundef %div.i111) #6
  br label %savage_dispatch_dma_idx.exit

for.inc106.i:                                     ; preds = %for.body96.i
  %inc107.i = add nuw nsw i32 %i.1407.i, 1
  %exitcond.not.i114 = icmp eq i32 %inc107.i, %351
  br i1 %exitcond.not.i114, label %for.end108.i, label %for.inc106.i.for.body96.i_crit_edge

for.inc106.i.for.body96.i_crit_edge:              ; preds = %for.inc106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body96.i

for.end108.i:                                     ; preds = %for.inc106.i
  br i1 %tobool109.not.i, label %if.else160.i, label %if.then110.i

if.then110.i:                                     ; preds = %for.end108.i
  %356 = ptrtoint ptr %wait_fifo.i101 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %wait_fifo.i101, align 4
  %add114.i = add nuw nsw i32 %351, 2
  %div115393.i = lshr i32 %add114.i, 1
  %call116.i = tail call i32 %357(ptr noundef %dev_priv, i32 noundef %div115393.i) #6
  %358 = ptrtoint ptr %bci_ptr60.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %bci_ptr60.i, align 4
  %shl121.i = shl nuw nsw i32 %351, 16
  %arrayidx123.i = getelementptr i16, ptr %idx.addr.0.i315, i32 2
  %360 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load2_noabort(i32 %360)
  %361 = load i16, ptr %arrayidx123.i, align 2
  %conv124.i = zext i16 %361 to i32
  %or120.i115 = or i32 %prim.2.i321, %shl121.i
  %or122.i = or i32 %or120.i115, %conv124.i
  %or125.i = or i32 %or122.i, -2013265920
  %362 = ptrtoint ptr %359 to i32
  call void @__asan_store4_noabort(i32 %362)
  store volatile i32 %or125.i, ptr %359, align 4
  %bci_ptr.1408.i = getelementptr i32, ptr %359, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %351)
  %cmp129409.i = icmp ugt i32 %351, 2
  br i1 %cmp129409.i, label %if.then110.i.for.body131.i_crit_edge, label %if.then110.i.for.end149.i_crit_edge

if.then110.i.for.end149.i_crit_edge:              ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end149.i

if.then110.i.for.body131.i_crit_edge:             ; preds = %if.then110.i
  br label %for.body131.i

for.body131.i:                                    ; preds = %for.body131.i.for.body131.i_crit_edge, %if.then110.i.for.body131.i_crit_edge
  %add128412.i = phi i32 [ %add128.i, %for.body131.i.for.body131.i_crit_edge ], [ 2, %if.then110.i.for.body131.i_crit_edge ]
  %bci_ptr.1411.i = phi ptr [ %bci_ptr.1.i118, %for.body131.i.for.body131.i_crit_edge ], [ %bci_ptr.1408.i, %if.then110.i.for.body131.i_crit_edge ]
  %i.2410.i = phi i32 [ %add148.i, %for.body131.i.for.body131.i_crit_edge ], [ 1, %if.then110.i.for.body131.i_crit_edge ]
  %rem132.i = urem i32 %i.2410.i, 3
  %arrayidx133.i = getelementptr [3 x i32], ptr @__const.savage_dispatch_vb_idx.reorder, i32 0, i32 %rem132.i
  %363 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %arrayidx133.i, align 4
  %add134.i = add i32 %364, %i.2410.i
  %arrayidx135.i116 = getelementptr i16, ptr %idx.addr.0.i315, i32 %add134.i
  %365 = ptrtoint ptr %arrayidx135.i116 to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %arrayidx135.i116, align 2
  %conv136.i = zext i16 %366 to i32
  %rem139.i = urem i32 %add128412.i, 3
  %arrayidx140.i = getelementptr [3 x i32], ptr @__const.savage_dispatch_vb_idx.reorder, i32 0, i32 %rem139.i
  %367 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %arrayidx140.i, align 4
  %add141.i117 = add i32 %368, %add128412.i
  %arrayidx142.i = getelementptr i16, ptr %idx.addr.0.i315, i32 %add141.i117
  %369 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load2_noabort(i32 %369)
  %370 = load i16, ptr %arrayidx142.i, align 2
  %conv143.i = zext i16 %370 to i32
  %shl144.i = shl nuw i32 %conv143.i, 16
  %or145.i = or i32 %shl144.i, %conv136.i
  %371 = ptrtoint ptr %bci_ptr.1411.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store volatile i32 %or145.i, ptr %bci_ptr.1411.i, align 4
  %add148.i = add nuw nsw i32 %i.2410.i, 2
  %bci_ptr.1.i118 = getelementptr i32, ptr %bci_ptr.1411.i, i32 1
  %add128.i = add nuw nsw i32 %i.2410.i, 3
  %cmp129.i = icmp ult i32 %add128.i, %351
  br i1 %cmp129.i, label %for.body131.i.for.body131.i_crit_edge, label %for.body131.i.for.end149.i_crit_edge

for.body131.i.for.end149.i_crit_edge:             ; preds = %for.body131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end149.i

for.body131.i.for.body131.i_crit_edge:            ; preds = %for.body131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body131.i

for.end149.i:                                     ; preds = %for.body131.i.for.end149.i_crit_edge, %if.then110.i.for.end149.i_crit_edge
  %i.2.lcssa.i119 = phi i32 [ 1, %if.then110.i.for.end149.i_crit_edge ], [ %add148.i, %for.body131.i.for.end149.i_crit_edge ]
  %bci_ptr.1.lcssa.i120 = phi ptr [ %bci_ptr.1408.i, %if.then110.i.for.end149.i_crit_edge ], [ %bci_ptr.1.i118, %for.body131.i.for.end149.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2.lcssa.i119, i32 %351)
  %cmp150.i = icmp ult i32 %i.2.lcssa.i119, %351
  br i1 %cmp150.i, label %if.then152.i, label %for.end149.i.cleanup250.i_crit_edge

for.end149.i.cleanup250.i_crit_edge:              ; preds = %for.end149.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup250.i

if.then152.i:                                     ; preds = %for.end149.i
  call void @__sanitizer_cov_trace_pc() #8
  %rem153.i = urem i32 %i.2.lcssa.i119, 3
  %arrayidx154.i = getelementptr [3 x i32], ptr @__const.savage_dispatch_vb_idx.reorder, i32 0, i32 %rem153.i
  %372 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %arrayidx154.i, align 4
  %add155.i = add i32 %373, %i.2.lcssa.i119
  br label %cleanup250.sink.split.i

if.else160.i:                                     ; preds = %for.end108.i
  %374 = ptrtoint ptr %chipset.i146 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %chipset.i146, align 4
  %376 = add i32 %375, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %376)
  %377 = icmp ult i32 %376, 2
  %378 = ptrtoint ptr %wait_fifo.i101 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %wait_fifo.i101, align 4
  br i1 %377, label %do.body169.i, label %do.body209.i

do.body169.i:                                     ; preds = %if.else160.i
  %add172.i121 = add nuw nsw i32 %351, 2
  %div173391.i = lshr i32 %add172.i121, 1
  %call174.i = tail call i32 %379(ptr noundef %dev_priv, i32 noundef %div173391.i) #6
  %380 = ptrtoint ptr %bci_ptr60.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %bci_ptr60.i, align 4
  %shl179.i = shl nuw nsw i32 %351, 16
  %382 = ptrtoint ptr %idx.addr.0.i315 to i32
  call void @__asan_load2_noabort(i32 %382)
  %383 = load i16, ptr %idx.addr.0.i315, align 2
  %conv182.i = zext i16 %383 to i32
  %or178.i = or i32 %prim.2.i321, %shl179.i
  %or180.i = or i32 %or178.i, %conv182.i
  %or183.i = or i32 %or180.i, -2013265920
  %384 = ptrtoint ptr %381 to i32
  call void @__asan_store4_noabort(i32 %384)
  store volatile i32 %or183.i, ptr %381, align 4
  %bci_ptr.2422.i = getelementptr i32, ptr %381, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %351)
  %cmp187423.i = icmp ugt i32 %351, 2
  br i1 %cmp187423.i, label %do.body169.i.for.body189.i_crit_edge, label %do.body169.i.for.end200.i_crit_edge

do.body169.i.for.end200.i_crit_edge:              ; preds = %do.body169.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end200.i

do.body169.i.for.body189.i_crit_edge:             ; preds = %do.body169.i
  br label %for.body189.i

for.body189.i:                                    ; preds = %for.body189.i.for.body189.i_crit_edge, %do.body169.i.for.body189.i_crit_edge
  %add186426.i = phi i32 [ %add186.i, %for.body189.i.for.body189.i_crit_edge ], [ 2, %do.body169.i.for.body189.i_crit_edge ]
  %bci_ptr.2425.i = phi ptr [ %bci_ptr.2.i123, %for.body189.i.for.body189.i_crit_edge ], [ %bci_ptr.2422.i, %do.body169.i.for.body189.i_crit_edge ]
  %i.3424.i = phi i32 [ %add199.i122, %for.body189.i.for.body189.i_crit_edge ], [ 1, %do.body169.i.for.body189.i_crit_edge ]
  %arrayidx190.i = getelementptr i16, ptr %idx.addr.0.i315, i32 %i.3424.i
  %385 = ptrtoint ptr %arrayidx190.i to i32
  call void @__asan_load2_noabort(i32 %385)
  %386 = load i16, ptr %arrayidx190.i, align 2
  %conv191.i = zext i16 %386 to i32
  %arrayidx193.i = getelementptr i16, ptr %idx.addr.0.i315, i32 %add186426.i
  %387 = ptrtoint ptr %arrayidx193.i to i32
  call void @__asan_load2_noabort(i32 %387)
  %388 = load i16, ptr %arrayidx193.i, align 2
  %conv194.i = zext i16 %388 to i32
  %shl195.i = shl nuw i32 %conv194.i, 16
  %or196.i = or i32 %shl195.i, %conv191.i
  %389 = ptrtoint ptr %bci_ptr.2425.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store volatile i32 %or196.i, ptr %bci_ptr.2425.i, align 4
  %add199.i122 = add nuw nsw i32 %i.3424.i, 2
  %bci_ptr.2.i123 = getelementptr i32, ptr %bci_ptr.2425.i, i32 1
  %add186.i = add nuw nsw i32 %i.3424.i, 3
  %cmp187.i = icmp ult i32 %add186.i, %351
  br i1 %cmp187.i, label %for.body189.i.for.body189.i_crit_edge, label %for.body189.i.for.end200.i_crit_edge

for.body189.i.for.end200.i_crit_edge:             ; preds = %for.body189.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end200.i

for.body189.i.for.body189.i_crit_edge:            ; preds = %for.body189.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body189.i

for.end200.i:                                     ; preds = %for.body189.i.for.end200.i_crit_edge, %do.body169.i.for.end200.i_crit_edge
  %i.3.lcssa.i124 = phi i32 [ 1, %do.body169.i.for.end200.i_crit_edge ], [ %add199.i122, %for.body189.i.for.end200.i_crit_edge ]
  %bci_ptr.2.lcssa.i125 = phi ptr [ %bci_ptr.2422.i, %do.body169.i.for.end200.i_crit_edge ], [ %bci_ptr.2.i123, %for.body189.i.for.end200.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3.lcssa.i124, i32 %351)
  %cmp201.i = icmp ult i32 %i.3.lcssa.i124, %351
  br i1 %cmp201.i, label %for.end200.i.cleanup250.sink.split.i_crit_edge, label %for.end200.i.cleanup250.i_crit_edge

for.end200.i.cleanup250.i_crit_edge:              ; preds = %for.end200.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup250.i

for.end200.i.cleanup250.sink.split.i_crit_edge:   ; preds = %for.end200.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup250.sink.split.i

do.body209.i:                                     ; preds = %if.else160.i
  %add212.i126 = add nuw nsw i32 %351, 3
  %div213390.i = lshr i32 %add212.i126, 1
  %call214.i = tail call i32 %379(ptr noundef %dev_priv, i32 noundef %div213390.i) #6
  %390 = ptrtoint ptr %bci_ptr60.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %bci_ptr60.i, align 4
  %shl220.i = shl nuw nsw i32 %351, 16
  %or218.i127 = or i32 %prim.2.i321, %conv3.i80
  %or219.i = or i32 %or218.i127, %shl220.i
  %or221.i = or i32 %or219.i, -2013265920
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_store4_noabort(i32 %392)
  store volatile i32 %or221.i, ptr %391, align 4
  %bci_ptr.3415.i = getelementptr i32, ptr %391, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %351)
  %cmp225416.i = icmp ugt i32 %351, 1
  br i1 %cmp225416.i, label %do.body209.i.for.body227.i_crit_edge, label %do.body209.i.for.end238.i_crit_edge

do.body209.i.for.end238.i_crit_edge:              ; preds = %do.body209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end238.i

do.body209.i.for.body227.i_crit_edge:             ; preds = %do.body209.i
  br label %for.body227.i

for.body227.i:                                    ; preds = %for.body227.i.for.body227.i_crit_edge, %do.body209.i.for.body227.i_crit_edge
  %add224419.i = phi i32 [ %add224.i, %for.body227.i.for.body227.i_crit_edge ], [ 1, %do.body209.i.for.body227.i_crit_edge ]
  %bci_ptr.3418.i = phi ptr [ %bci_ptr.3.i128, %for.body227.i.for.body227.i_crit_edge ], [ %bci_ptr.3415.i, %do.body209.i.for.body227.i_crit_edge ]
  %i.4417.i = phi i32 [ %add237.i, %for.body227.i.for.body227.i_crit_edge ], [ 0, %do.body209.i.for.body227.i_crit_edge ]
  %arrayidx228.i = getelementptr i16, ptr %idx.addr.0.i315, i32 %i.4417.i
  %393 = ptrtoint ptr %arrayidx228.i to i32
  call void @__asan_load2_noabort(i32 %393)
  %394 = load i16, ptr %arrayidx228.i, align 2
  %conv229.i = zext i16 %394 to i32
  %arrayidx231.i = getelementptr i16, ptr %idx.addr.0.i315, i32 %add224419.i
  %395 = ptrtoint ptr %arrayidx231.i to i32
  call void @__asan_load2_noabort(i32 %395)
  %396 = load i16, ptr %arrayidx231.i, align 2
  %conv232.i = zext i16 %396 to i32
  %shl233.i = shl nuw i32 %conv232.i, 16
  %or234.i = or i32 %shl233.i, %conv229.i
  %397 = ptrtoint ptr %bci_ptr.3418.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store volatile i32 %or234.i, ptr %bci_ptr.3418.i, align 4
  %add237.i = add nuw nsw i32 %i.4417.i, 2
  %bci_ptr.3.i128 = getelementptr i32, ptr %bci_ptr.3418.i, i32 1
  %add224.i = or i32 %add237.i, 1
  %cmp225.i = icmp ult i32 %add224.i, %351
  br i1 %cmp225.i, label %for.body227.i.for.body227.i_crit_edge, label %for.body227.i.for.end238.i_crit_edge

for.body227.i.for.end238.i_crit_edge:             ; preds = %for.body227.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end238.i

for.body227.i.for.body227.i_crit_edge:            ; preds = %for.body227.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body227.i

for.end238.i:                                     ; preds = %for.body227.i.for.end238.i_crit_edge, %do.body209.i.for.end238.i_crit_edge
  %i.4.lcssa.i = phi i32 [ 0, %do.body209.i.for.end238.i_crit_edge ], [ %add237.i, %for.body227.i.for.end238.i_crit_edge ]
  %bci_ptr.3.lcssa.i129 = phi ptr [ %bci_ptr.3415.i, %do.body209.i.for.end238.i_crit_edge ], [ %bci_ptr.3.i128, %for.body227.i.for.end238.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.4.lcssa.i, i32 %351)
  %cmp239.i = icmp ult i32 %i.4.lcssa.i, %351
  br i1 %cmp239.i, label %for.end238.i.cleanup250.sink.split.i_crit_edge, label %for.end238.i.cleanup250.i_crit_edge

for.end238.i.cleanup250.i_crit_edge:              ; preds = %for.end238.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup250.i

for.end238.i.cleanup250.sink.split.i_crit_edge:   ; preds = %for.end238.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup250.sink.split.i

cleanup250.sink.split.i:                          ; preds = %for.end238.i.cleanup250.sink.split.i_crit_edge, %for.end200.i.cleanup250.sink.split.i_crit_edge, %if.then152.i
  %i.4.lcssa.sink.i = phi i32 [ %add155.i, %if.then152.i ], [ %i.3.lcssa.i124, %for.end200.i.cleanup250.sink.split.i_crit_edge ], [ %i.4.lcssa.i, %for.end238.i.cleanup250.sink.split.i_crit_edge ]
  %bci_ptr.3.lcssa.sink.i = phi ptr [ %bci_ptr.1.lcssa.i120, %if.then152.i ], [ %bci_ptr.2.lcssa.i125, %for.end200.i.cleanup250.sink.split.i_crit_edge ], [ %bci_ptr.3.lcssa.i129, %for.end238.i.cleanup250.sink.split.i_crit_edge ]
  %arrayidx242.i = getelementptr i16, ptr %idx.addr.0.i315, i32 %i.4.lcssa.sink.i
  %398 = ptrtoint ptr %arrayidx242.i to i32
  call void @__asan_load2_noabort(i32 %398)
  %399 = load i16, ptr %arrayidx242.i, align 2
  %conv243.i = zext i16 %399 to i32
  %400 = ptrtoint ptr %bci_ptr.3.lcssa.sink.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store volatile i32 %conv243.i, ptr %bci_ptr.3.lcssa.sink.i, align 4
  br label %cleanup250.i

cleanup250.i:                                     ; preds = %cleanup250.sink.split.i, %for.end238.i.cleanup250.i_crit_edge, %for.end200.i.cleanup250.i_crit_edge, %for.end149.i.cleanup250.i_crit_edge
  %add.ptr.i130 = getelementptr i16, ptr %idx.addr.0.i315, i32 %351
  %sub248.i = sub i32 %n.0.i322, %351
  %cmp88.not.i = icmp eq i32 %sub248.i, 0
  br i1 %cmp88.not.i, label %cleanup250.i.savage_dispatch_dma_idx.exit_crit_edge, label %cleanup250.i.while.body.i112_crit_edge

cleanup250.i.while.body.i112_crit_edge:           ; preds = %cleanup250.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i112

cleanup250.i.savage_dispatch_dma_idx.exit_crit_edge: ; preds = %cleanup250.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %savage_dispatch_dma_idx.exit

savage_dispatch_dma_idx.exit:                     ; preds = %cleanup250.i.savage_dispatch_dma_idx.exit_crit_edge, %cleanup250.thread.i, %if.end87.i.savage_dispatch_dma_idx.exit_crit_edge, %if.then54.i, %if.then51.i, %if.then25.i, %sw.default.i89, %if.then15.i, %if.then10.i, %if.end.i85.savage_dispatch_dma_idx.exit_crit_edge, %if.then.i84
  %retval.4.i = phi i32 [ -22, %sw.default.i89 ], [ -22, %if.then15.i ], [ -22, %if.then25.i ], [ -22, %if.then10.i ], [ -22, %if.then.i84 ], [ 0, %if.end.i85.savage_dispatch_dma_idx.exit_crit_edge ], [ -22, %if.then54.i ], [ -22, %if.then51.i ], [ -22, %cleanup250.thread.i ], [ 0, %if.end87.i.savage_dispatch_dma_idx.exit_crit_edge ], [ 0, %cleanup250.i.savage_dispatch_dma_idx.exit_crit_edge ]
  %add.ptr = getelementptr %union.drm_savage_cmd_header, ptr %incdec.ptr, i32 %div46
  br label %cleanup

sw.bb7:                                           ; preds = %while.body
  %401 = trunc i64 %cmd_header.sroa.15.sroa.0.0.extract.shift214 to i32
  %conv9 = and i32 %401, 65535
  %add10 = add nuw nsw i32 %conv9, 3
  %div1145 = lshr i32 %add10, 2
  %402 = trunc i64 %cmd_header.sroa.5.0.extract.shift to i32
  %conv.i132 = and i32 %402, 255
  %403 = trunc i64 %cmd_header.sroa.10.0.extract.shift to i32
  %conv3.i134 = and i32 %403, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc)
  %tobool.not.i137 = icmp eq i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc, 0
  br i1 %tobool.not.i137, label %sw.bb7.savage_dispatch_vb_idx.exit_crit_edge, label %if.end.i138

sw.bb7.savage_dispatch_vb_idx.exit_crit_edge:     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %savage_dispatch_vb_idx.exit

if.end.i138:                                      ; preds = %sw.bb7
  %404 = zext i8 %cmd_header.sroa.5.0.extract.trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %404, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %cmd_header.sroa.5.0.extract.trunc, label %sw.default.i143 [
    i8 3, label %sw.bb.i139
    i8 0, label %if.end.i138.sw.bb5.i_crit_edge
    i8 1, label %if.end.i138.sw.bb9.i_crit_edge
    i8 2, label %if.end.i138.sw.bb9.i_crit_edge728
  ]

if.end.i138.sw.bb9.i_crit_edge728:                ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9.i

if.end.i138.sw.bb9.i_crit_edge:                   ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9.i

if.end.i138.sw.bb5.i_crit_edge:                   ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

sw.bb.i139:                                       ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5.i

sw.bb5.i:                                         ; preds = %sw.bb.i139, %if.end.i138.sw.bb5.i_crit_edge
  %reorder.0.i140 = phi i8 [ %cmd_header.sroa.5.0.extract.trunc, %if.end.i138.sw.bb5.i_crit_edge ], [ 1, %sw.bb.i139 ]
  %rem358.i = urem i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem358.i)
  %cmp.not.i141 = icmp eq i16 %rem358.i, 0
  br i1 %cmp.not.i141, label %sw.bb5.i.sw.epilog.i147_crit_edge, label %if.then7.i

sw.bb5.i.sw.epilog.i147_crit_edge:                ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i147

if.then7.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef %conv9) #6
  br label %savage_dispatch_vb_idx.exit

sw.bb9.i:                                         ; preds = %if.end.i138.sw.bb9.i_crit_edge, %if.end.i138.sw.bb9.i_crit_edge728
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc)
  %cmp10.i = icmp ult i16 %cmd_header.sroa.15.sroa.0.0.extract.trunc, 3
  br i1 %cmp10.i, label %if.then12.i142, label %sw.bb9.i.sw.epilog.i147_crit_edge

sw.bb9.i.sw.epilog.i147_crit_edge:                ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i147

if.then12.i142:                                   ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %conv9) #6
  br label %savage_dispatch_vb_idx.exit

sw.default.i143:                                  ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %conv.i132) #6
  br label %savage_dispatch_vb_idx.exit

sw.epilog.i147:                                   ; preds = %sw.bb9.i.sw.epilog.i147_crit_edge, %sw.bb5.i.sw.epilog.i147_crit_edge
  %prim.1.i144 = phi i32 [ %conv.i132, %sw.bb9.i.sw.epilog.i147_crit_edge ], [ 0, %sw.bb5.i.sw.epilog.i147_crit_edge ]
  %reorder.1.i145 = phi i8 [ 0, %sw.bb9.i.sw.epilog.i147_crit_edge ], [ %reorder.0.i140, %sw.bb5.i.sw.epilog.i147_crit_edge ]
  %405 = ptrtoint ptr %chipset.i146 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %chipset.i146, align 4
  %407 = add i32 %406, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %407)
  %408 = icmp ult i32 %407, 2
  br i1 %408, label %if.then19.i, label %if.else.i149

if.then19.i:                                      ; preds = %sw.epilog.i147
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %cmd_header.sroa.10.0.extract.trunc)
  %cmp20.i = icmp ugt i16 %cmd_header.sroa.10.0.extract.trunc, 63
  br i1 %cmp20.i, label %if.then22.i148, label %if.then19.i.if.end28.i_crit_edge

if.then19.i.if.end28.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then22.i148:                                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, i32 noundef %conv3.i134) #6
  br label %savage_dispatch_vb_idx.exit

if.else.i149:                                     ; preds = %sw.epilog.i147
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %cmd_header.sroa.10.0.extract.trunc)
  %cmp24.i = icmp ugt i16 %cmd_header.sroa.10.0.extract.trunc, 255
  br i1 %cmp24.i, label %if.then26.i, label %if.else.i149.if.end28.i_crit_edge

if.else.i149.if.end28.i_crit_edge:                ; preds = %if.else.i149
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then26.i:                                      ; preds = %if.else.i149
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, i32 noundef %conv3.i134) #6
  br label %savage_dispatch_vb_idx.exit

if.end28.i:                                       ; preds = %if.else.i149.if.end28.i_crit_edge, %if.then19.i.if.end28.i_crit_edge
  %vtx_size.0.i150 = phi i32 [ 8, %if.then19.i.if.end28.i_crit_edge ], [ 10, %if.else.i149.if.end28.i_crit_edge ]
  %and.i151 = and i32 %403, 1
  %409 = shl i32 %403, 30
  %410 = ashr i32 %409, 31
  %411 = shl i32 %403, 29
  %412 = ashr i32 %411, 31
  %413 = shl i32 %403, 28
  %414 = ashr i32 %413, 31
  %415 = shl i32 %403, 27
  %416 = ashr i32 %415, 31
  %417 = shl i32 %403, 26
  %418 = ashr i32 %417, 31
  %419 = shl i32 %403, 25
  %420 = ashr i32 %419, 31
  %421 = shl i32 %403, 24
  %422 = ashr i32 %421, 31
  %add.neg.i152 = sub nsw i32 %410, %and.i151
  %add32.neg.i = add nsw i32 %add.neg.i152, %412
  %add35.neg.i = add nsw i32 %add32.neg.i, %414
  %add38.neg.i = add nsw i32 %add35.neg.i, %416
  %add41.neg.i = add nsw i32 %add38.neg.i, %418
  %add44.neg.i = add nsw i32 %add41.neg.i, %420
  %add47.neg.i = add nsw i32 %add44.neg.i, %422
  %sub.i153 = add nsw i32 %add47.neg.i, %vtx_size.0.i150
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i153, i32 %vb_stride)
  %cmp48.i = icmp ugt i32 %sub.i153, %vb_stride
  br i1 %cmp48.i, label %if.then50.i, label %if.end51.i

if.then50.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %sub.i153, i32 noundef %vb_stride) #6
  br label %savage_dispatch_vb_idx.exit

if.end51.i:                                       ; preds = %if.end28.i
  %shl.i154 = shl nuw nsw i32 %prim.1.i144, 25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %reorder.1.i145)
  %tobool68.not.i156 = icmp eq i8 %reorder.1.i145, 0
  %mul115.i = shl nuw nsw i32 %sub.i153, 2
  %423 = or i32 %shl.i154, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9)
  %cmp52.not.i306 = icmp eq i32 %conv9, 0
  br i1 %cmp52.not.i306, label %if.end51.i.savage_dispatch_vb_idx.exit_crit_edge, label %while.body.i165.lr.ph

if.end51.i.savage_dispatch_vb_idx.exit_crit_edge: ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %savage_dispatch_vb_idx.exit

while.body.i165.lr.ph:                            ; preds = %if.end51.i
  %div.i164 = udiv i32 %vb_size, %mul.i155
  br label %while.body.i165

while.body.i165:                                  ; preds = %cleanup.i.while.body.i165_crit_edge, %while.body.i165.lr.ph
  %idx.addr.0.i162309 = phi ptr [ %incdec.ptr, %while.body.i165.lr.ph ], [ %add.ptr222.i, %cleanup.i.while.body.i165_crit_edge ]
  %prim.2.i161308 = phi i32 [ %shl.i154, %while.body.i165.lr.ph ], [ %423, %cleanup.i.while.body.i165_crit_edge ]
  %n.0.i160307 = phi i32 [ %conv9, %while.body.i165.lr.ph ], [ %sub223.i, %cleanup.i.while.body.i165_crit_edge ]
  %424 = tail call i32 @llvm.umin.i32(i32 %n.0.i160307, i32 255) #6
  br label %for.body.i167

for.body.i167:                                    ; preds = %for.inc.i.for.body.i167_crit_edge, %while.body.i165
  %i.0362.i = phi i32 [ 0, %while.body.i165 ], [ %inc.i168, %for.inc.i.for.body.i167_crit_edge ]
  %arrayidx.i166 = getelementptr i16, ptr %idx.addr.0.i162309, i32 %i.0362.i
  %425 = ptrtoint ptr %arrayidx.i166 to i32
  call void @__asan_load2_noabort(i32 %425)
  %426 = load i16, ptr %arrayidx.i166, align 2
  %conv59.i = zext i16 %426 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i164, i32 %conv59.i)
  %cmp60.i = icmp ult i32 %div.i164, %conv59.i
  br i1 %cmp60.i, label %cleanup.thread.i, label %for.inc.i

cleanup.thread.i:                                 ; preds = %for.body.i167
  call void @__sanitizer_cov_trace_pc() #8
  %conv59.i.le = zext i16 %426 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %i.0362.i, i32 noundef %conv59.i.le, i32 noundef %div.i164) #6
  br label %savage_dispatch_vb_idx.exit

for.inc.i:                                        ; preds = %for.body.i167
  %inc.i168 = add nuw nsw i32 %i.0362.i, 1
  %exitcond.not.i169 = icmp eq i32 %inc.i168, %424
  br i1 %exitcond.not.i169, label %for.end.i, label %for.inc.i.for.body.i167_crit_edge

for.inc.i.for.body.i167_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i167

for.end.i:                                        ; preds = %for.inc.i
  %427 = ptrtoint ptr %current_dma_page.i157 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %current_dma_page.i157, align 4
  %429 = ptrtoint ptr %dma_pages.i158 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %dma_pages.i158, align 4
  %used146.i = getelementptr %struct.drm_savage_dma_page, ptr %430, i32 %428, i32 1
  %431 = ptrtoint ptr %used146.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %used146.i, align 4
  %sub147.i = sub i32 1024, %432
  %mul148.i = mul i32 %424, %sub.i153
  %add149.i170 = add i32 %mul148.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add149.i170, i32 %sub147.i)
  %cmp150.i171 = icmp ugt i32 %add149.i170, %sub147.i
  br i1 %tobool68.not.i156, label %do.body140.i, label %if.then69.i172

if.then69.i172:                                   ; preds = %for.end.i
  br i1 %cmp150.i171, label %if.then77.i, label %if.else80.i

if.then77.i:                                      ; preds = %if.then69.i172
  call void @__sanitizer_cov_trace_pc() #8
  %call.i173 = tail call ptr @savage_dma_alloc(ptr noundef %dev_priv, i32 noundef %add149.i170) #6
  br label %if.end99.i

if.else80.i:                                      ; preds = %if.then69.i172
  %433 = ptrtoint ptr %cmd_dma.i159 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %cmd_dma.i159, align 4
  %handle.i174 = getelementptr inbounds %struct.drm_local_map, ptr %434, i32 0, i32 4
  %435 = ptrtoint ptr %handle.i174 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %handle.i174, align 4
  %mul81.i = shl i32 %428, 10
  %add.ptr.i175 = getelementptr i32, ptr %436, i32 %mul81.i
  %add.ptr85.i = getelementptr i32, ptr %add.ptr.i175, i32 %432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %432)
  %cmp89.i = icmp eq i32 %432, 0
  br i1 %cmp89.i, label %if.then91.i, label %if.else80.i.if.end92.i_crit_edge

if.else80.i.if.end92.i_crit_edge:                 ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92.i

if.then91.i:                                      ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @savage_dma_wait(ptr noundef %dev_priv, i32 noundef %428) #6
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then91.i, %if.else80.i.if.end92.i_crit_edge
  %437 = ptrtoint ptr %dma_pages.i158 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %dma_pages.i158, align 4
  %used97.i = getelementptr %struct.drm_savage_dma_page, ptr %438, i32 %428, i32 1
  %439 = ptrtoint ptr %used97.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %used97.i, align 4
  %add98.i = add i32 %440, %add149.i170
  store i32 %add98.i, ptr %used97.i, align 4
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.end92.i, %if.then77.i
  %dma_ptr.0.i176 = phi ptr [ %call.i173, %if.then77.i ], [ %add.ptr85.i, %if.end92.i ]
  %shl101.i = shl nuw nsw i32 %424, 16
  %or.i177 = or i32 %conv3.i134, %prim.2.i161308
  %or100.i = or i32 %or.i177, %shl101.i
  %or102.i = or i32 %or100.i, -2147483648
  %incdec.ptr.i178 = getelementptr i32, ptr %dma_ptr.0.i176, i32 1
  %441 = ptrtoint ptr %dma_ptr.0.i176 to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 %or102.i, ptr %dma_ptr.0.i176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %424)
  %cmp104363.not.i = icmp eq i32 %424, 0
  br i1 %cmp104363.not.i, label %if.end99.i.do.body122.i_crit_edge, label %if.end99.i.for.body106.i_crit_edge

if.end99.i.for.body106.i_crit_edge:               ; preds = %if.end99.i
  br label %for.body106.i

if.end99.i.do.body122.i_crit_edge:                ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body122.i

for.body106.i:                                    ; preds = %for.body106.i.for.body106.i_crit_edge, %if.end99.i.for.body106.i_crit_edge
  %dma_ptr.1365.i = phi ptr [ %add.ptr116.i, %for.body106.i.for.body106.i_crit_edge ], [ %incdec.ptr.i178, %if.end99.i.for.body106.i_crit_edge ]
  %i.1364.i = phi i32 [ %inc120.i, %for.body106.i.for.body106.i_crit_edge ], [ 0, %if.end99.i.for.body106.i_crit_edge ]
  %rem107.i179 = urem i32 %i.1364.i, 3
  %arrayidx108.i180 = getelementptr [3 x i32], ptr @__const.savage_dispatch_vb_idx.reorder, i32 0, i32 %rem107.i179
  %442 = ptrtoint ptr %arrayidx108.i180 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %arrayidx108.i180, align 4
  %add109.i181 = add i32 %443, %i.1364.i
  %arrayidx110.i = getelementptr i16, ptr %idx.addr.0.i162309, i32 %add109.i181
  %444 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %arrayidx110.i, align 2
  %conv111.i = zext i16 %445 to i32
  %mul113.i182 = mul i32 %conv111.i, %vb_stride
  %arrayidx114.i = getelementptr i32, ptr %vtxbuf, i32 %mul113.i182
  %446 = call ptr @memcpy(ptr %dma_ptr.1365.i, ptr %arrayidx114.i, i32 %mul115.i)
  %add.ptr116.i = getelementptr i32, ptr %dma_ptr.1365.i, i32 %sub.i153
  %inc120.i = add nuw nsw i32 %i.1364.i, 1
  %exitcond374.not.i = icmp eq i32 %inc120.i, %424
  br i1 %exitcond374.not.i, label %for.body106.i.do.body122.i_crit_edge, label %for.body106.i.for.body106.i_crit_edge

for.body106.i.for.body106.i_crit_edge:            ; preds = %for.body106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body106.i

for.body106.i.do.body122.i_crit_edge:             ; preds = %for.body106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body122.i

do.body122.i:                                     ; preds = %for.body106.i.do.body122.i_crit_edge, %if.end99.i.do.body122.i_crit_edge
  %dma_ptr.1.lcssa.i183 = phi ptr [ %incdec.ptr.i178, %if.end99.i.do.body122.i_crit_edge ], [ %add.ptr116.i, %for.body106.i.do.body122.i_crit_edge ]
  %447 = ptrtoint ptr %current_dma_page.i157 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %current_dma_page.i157, align 4
  %449 = ptrtoint ptr %cmd_dma.i159 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %cmd_dma.i159, align 4
  %handle126.i = getelementptr inbounds %struct.drm_local_map, ptr %450, i32 0, i32 4
  %451 = ptrtoint ptr %handle126.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %handle126.i, align 4
  %mul127.i = shl i32 %448, 10
  %add.ptr128.i = getelementptr i32, ptr %452, i32 %mul127.i
  %453 = ptrtoint ptr %dma_pages.i158 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %dma_pages.i158, align 4
  %used131.i = getelementptr %struct.drm_savage_dma_page, ptr %454, i32 %448, i32 1
  %455 = ptrtoint ptr %used131.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %used131.i, align 4
  %add.ptr132.i = getelementptr i32, ptr %add.ptr128.i, i32 %456
  %cmp133.not.i = icmp eq ptr %dma_ptr.1.lcssa.i183, %add.ptr132.i
  br i1 %cmp133.not.i, label %do.body122.i.cleanup.i_crit_edge, label %if.then135.i

do.body122.i.cleanup.i_crit_edge:                 ; preds = %do.body122.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.then135.i:                                     ; preds = %do.body122.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef %add.ptr132.i, ptr noundef %dma_ptr.1.lcssa.i183) #6
  br label %cleanup.sink.split.i

do.body140.i:                                     ; preds = %for.end.i
  br i1 %cmp150.i171, label %if.then152.i184, label %if.else156.i

if.then152.i184:                                  ; preds = %do.body140.i
  call void @__sanitizer_cov_trace_pc() #8
  %call155.i = tail call ptr @savage_dma_alloc(ptr noundef %dev_priv, i32 noundef %add149.i170) #6
  br label %if.end178.i

if.else156.i:                                     ; preds = %do.body140.i
  %457 = ptrtoint ptr %cmd_dma.i159 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %cmd_dma.i159, align 4
  %handle158.i = getelementptr inbounds %struct.drm_local_map, ptr %458, i32 0, i32 4
  %459 = ptrtoint ptr %handle158.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %handle158.i, align 4
  %mul159.i = shl i32 %428, 10
  %add.ptr160.i = getelementptr i32, ptr %460, i32 %mul159.i
  %add.ptr164.i = getelementptr i32, ptr %add.ptr160.i, i32 %432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %432)
  %cmp168.i = icmp eq i32 %432, 0
  br i1 %cmp168.i, label %if.then170.i, label %if.else156.i.if.end171.i_crit_edge

if.else156.i.if.end171.i_crit_edge:               ; preds = %if.else156.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end171.i

if.then170.i:                                     ; preds = %if.else156.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @savage_dma_wait(ptr noundef %dev_priv, i32 noundef %428) #6
  br label %if.end171.i

if.end171.i:                                      ; preds = %if.then170.i, %if.else156.i.if.end171.i_crit_edge
  %461 = ptrtoint ptr %dma_pages.i158 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %dma_pages.i158, align 4
  %used176.i = getelementptr %struct.drm_savage_dma_page, ptr %462, i32 %428, i32 1
  %463 = ptrtoint ptr %used176.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %used176.i, align 4
  %add177.i185 = add i32 %464, %add149.i170
  store i32 %add177.i185, ptr %used176.i, align 4
  br label %if.end178.i

if.end178.i:                                      ; preds = %if.end171.i, %if.then152.i184
  %dma_ptr.2.i186 = phi ptr [ %call155.i, %if.then152.i184 ], [ %add.ptr164.i, %if.end171.i ]
  %shl183.i187 = shl nuw nsw i32 %424, 16
  %or181.i = or i32 %conv3.i134, %prim.2.i161308
  %or182.i = or i32 %or181.i, %shl183.i187
  %or184.i188 = or i32 %or182.i, -2147483648
  %incdec.ptr185.i = getelementptr i32, ptr %dma_ptr.2.i186, i32 1
  %465 = ptrtoint ptr %dma_ptr.2.i186 to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 %or184.i188, ptr %dma_ptr.2.i186, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %424)
  %cmp187367.not.i = icmp eq i32 %424, 0
  br i1 %cmp187367.not.i, label %if.end178.i.do.body203.i_crit_edge, label %if.end178.i.for.body189.i189_crit_edge

if.end178.i.for.body189.i189_crit_edge:           ; preds = %if.end178.i
  br label %for.body189.i189

if.end178.i.do.body203.i_crit_edge:               ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body203.i

for.body189.i189:                                 ; preds = %for.body189.i189.for.body189.i189_crit_edge, %if.end178.i.for.body189.i189_crit_edge
  %dma_ptr.3369.i = phi ptr [ %add.ptr197.i, %for.body189.i189.for.body189.i189_crit_edge ], [ %incdec.ptr185.i, %if.end178.i.for.body189.i189_crit_edge ]
  %i.2368.i = phi i32 [ %inc201.i, %for.body189.i189.for.body189.i189_crit_edge ], [ 0, %if.end178.i.for.body189.i189_crit_edge ]
  %arrayidx191.i = getelementptr i16, ptr %idx.addr.0.i162309, i32 %i.2368.i
  %466 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_load2_noabort(i32 %466)
  %467 = load i16, ptr %arrayidx191.i, align 2
  %conv192.i = zext i16 %467 to i32
  %mul194.i = mul i32 %conv192.i, %vb_stride
  %arrayidx195.i = getelementptr i32, ptr %vtxbuf, i32 %mul194.i
  %468 = call ptr @memcpy(ptr %dma_ptr.3369.i, ptr %arrayidx195.i, i32 %mul115.i)
  %add.ptr197.i = getelementptr i32, ptr %dma_ptr.3369.i, i32 %sub.i153
  %inc201.i = add nuw nsw i32 %i.2368.i, 1
  %exitcond375.not.i = icmp eq i32 %inc201.i, %424
  br i1 %exitcond375.not.i, label %for.body189.i189.do.body203.i_crit_edge, label %for.body189.i189.for.body189.i189_crit_edge

for.body189.i189.for.body189.i189_crit_edge:      ; preds = %for.body189.i189
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body189.i189

for.body189.i189.do.body203.i_crit_edge:          ; preds = %for.body189.i189
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body203.i

do.body203.i:                                     ; preds = %for.body189.i189.do.body203.i_crit_edge, %if.end178.i.do.body203.i_crit_edge
  %dma_ptr.3.lcssa.i = phi ptr [ %incdec.ptr185.i, %if.end178.i.do.body203.i_crit_edge ], [ %add.ptr197.i, %for.body189.i189.do.body203.i_crit_edge ]
  %469 = ptrtoint ptr %current_dma_page.i157 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %current_dma_page.i157, align 4
  %471 = ptrtoint ptr %cmd_dma.i159 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %cmd_dma.i159, align 4
  %handle208.i = getelementptr inbounds %struct.drm_local_map, ptr %472, i32 0, i32 4
  %473 = ptrtoint ptr %handle208.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %handle208.i, align 4
  %mul209.i = shl i32 %470, 10
  %add.ptr210.i = getelementptr i32, ptr %474, i32 %mul209.i
  %475 = ptrtoint ptr %dma_pages.i158 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %dma_pages.i158, align 4
  %used213.i = getelementptr %struct.drm_savage_dma_page, ptr %476, i32 %470, i32 1
  %477 = ptrtoint ptr %used213.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %used213.i, align 4
  %add.ptr214.i = getelementptr i32, ptr %add.ptr210.i, i32 %478
  %cmp215.not.i = icmp eq ptr %dma_ptr.3.lcssa.i, %add.ptr214.i
  br i1 %cmp215.not.i, label %do.body203.i.cleanup.i_crit_edge, label %if.then217.i

do.body203.i.cleanup.i_crit_edge:                 ; preds = %do.body203.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.then217.i:                                     ; preds = %do.body203.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef %add.ptr214.i, ptr noundef %dma_ptr.3.lcssa.i) #6
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then217.i, %if.then135.i
  tail call void @savage_dma_reset(ptr noundef %dev_priv) #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.sink.split.i, %do.body203.i.cleanup.i_crit_edge, %do.body122.i.cleanup.i_crit_edge
  %add.ptr222.i = getelementptr i16, ptr %idx.addr.0.i162309, i32 %424
  %sub223.i = sub i32 %n.0.i160307, %424
  %cmp52.not.i = icmp eq i32 %sub223.i, 0
  br i1 %cmp52.not.i, label %cleanup.i.savage_dispatch_vb_idx.exit_crit_edge, label %cleanup.i.while.body.i165_crit_edge

cleanup.i.while.body.i165_crit_edge:              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i165

cleanup.i.savage_dispatch_vb_idx.exit_crit_edge:  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %savage_dispatch_vb_idx.exit

savage_dispatch_vb_idx.exit:                      ; preds = %cleanup.i.savage_dispatch_vb_idx.exit_crit_edge, %cleanup.thread.i, %if.end51.i.savage_dispatch_vb_idx.exit_crit_edge, %if.then50.i, %if.then26.i, %if.then22.i148, %sw.default.i143, %if.then12.i142, %if.then7.i, %sw.bb7.savage_dispatch_vb_idx.exit_crit_edge
  %retval.2.i = phi i32 [ -22, %sw.default.i143 ], [ -22, %if.then12.i142 ], [ -22, %if.then22.i148 ], [ -22, %if.then50.i ], [ -22, %if.then26.i ], [ -22, %if.then7.i ], [ 0, %sw.bb7.savage_dispatch_vb_idx.exit_crit_edge ], [ -22, %cleanup.thread.i ], [ 0, %if.end51.i.savage_dispatch_vb_idx.exit_crit_edge ], [ 0, %cleanup.i.savage_dispatch_vb_idx.exit_crit_edge ]
  %add.ptr13 = getelementptr %union.drm_savage_cmd_header, ptr %incdec.ptr, i32 %div1145
  br label %cleanup

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %479 = trunc i64 %cmd_header.sroa.0.0.extract.shift to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11, i32 noundef %479) #6
  br label %cleanup21

cleanup:                                          ; preds = %savage_dispatch_vb_idx.exit, %savage_dispatch_dma_idx.exit, %if.end228.i.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %if.end230.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %ret.0 = phi i32 [ %retval.2.i, %savage_dispatch_vb_idx.exit ], [ %retval.4.i, %savage_dispatch_dma_idx.exit ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %sw.bb2.cleanup_crit_edge ], [ 0, %if.end230.i.cleanup_crit_edge ], [ 0, %if.end228.i.cleanup_crit_edge ]
  %cmdbuf.1 = phi ptr [ %add.ptr13, %savage_dispatch_vb_idx.exit ], [ %add.ptr, %savage_dispatch_dma_idx.exit ], [ %incdec.ptr, %if.end.i.cleanup_crit_edge ], [ %incdec.ptr, %sw.bb2.cleanup_crit_edge ], [ %incdec.ptr, %if.end230.i.cleanup_crit_edge ], [ %incdec.ptr, %if.end228.i.cleanup_crit_edge ]
  %cmp16.not = icmp eq i32 %ret.0, 0
  br i1 %cmp16.not, label %cleanup.while.cond_crit_edge, label %cleanup.cleanup21_crit_edge

cleanup.cleanup21_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup21

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

for.inc:                                          ; preds = %while.cond
  %inc = add nuw i32 %i.0324, 1
  %exitcond.not = icmp eq i32 %inc, %nbox
  br i1 %exitcond.not, label %for.inc.cleanup21_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup21_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup21

cleanup21:                                        ; preds = %for.inc.cleanup21_crit_edge, %cleanup.cleanup21_crit_edge, %cleanup.thread, %if.then57.i, %if.then52.i, %if.then28.i, %if.then24.i65, %sw.default.i60, %if.then14.i, %if.then9.i, %if.then61.i, %if.then56.i, %if.then53.i, %if.then27.i, %sw.default.i, %if.then17.i, %if.then12.i, %if.then.i, %entry.cleanup21_crit_edge
  %retval.4 = phi i32 [ -22, %cleanup.thread ], [ -22, %sw.default.i ], [ -22, %if.then17.i ], [ -22, %if.then27.i ], [ -22, %if.then61.i ], [ -22, %if.then12.i ], [ -22, %if.then.i ], [ -22, %if.then56.i ], [ -22, %if.then53.i ], [ -22, %sw.default.i60 ], [ -22, %if.then14.i ], [ -22, %if.then24.i65 ], [ -22, %if.then52.i ], [ -22, %if.then57.i ], [ -22, %if.then28.i ], [ -22, %if.then9.i ], [ 0, %entry.cleanup21_crit_edge ], [ %ret.0, %cleanup.cleanup21_crit_edge ], [ 0, %for.inc.cleanup21_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @savage_dispatch_state(ptr noundef %dev_priv, ptr nocapture noundef readonly %cmd_header, ptr nocapture noundef readonly %regs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %count1 = getelementptr inbounds %struct.anon.76, ptr %cmd_header, i32 0, i32 2
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count1, align 2
  %conv = zext i16 %1 to i32
  %start2 = getelementptr inbounds %struct.anon.76, ptr %cmd_header, i32 0, i32 3
  %2 = ptrtoint ptr %start2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %start2, align 4
  %conv3 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %chipset = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 3
  %4 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chipset, align 4
  %6 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %if.then8, label %if.else40

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %3)
  %cmp.i = icmp ult i16 %3, 24
  %.pre.i = add nuw nsw i32 %conv3, %conv
  %8 = add nsw i32 %.pre.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -57, i32 %8)
  %cmp1.i = icmp ult i32 %8, -57
  %or.cond97.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond97.i, label %savage_verify_state_s3d.exit.thread322, label %do.body.i

savage_verify_state_s3d.exit.thread322:           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %sub3.i = add nsw i32 %.pre.i, -1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24, i32 noundef %conv3, i32 noundef %sub3.i) #6
  br label %cleanup

do.body.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp2(i16 54, i16 %3)
  %cmp4.i = icmp ult i16 %3, 54
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %.pre.i)
  %cmp6.i = icmp ugt i32 %.pre.i, 53
  %or.cond.i = and i1 %cmp4.i, %cmp6.i
  br i1 %or.cond.i, label %if.then7.i, label %do.body.i.do.body13.i_crit_edge

do.body.i.do.body13.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body13.i

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub8.i = sub nuw nsw i32 53, %conv3
  %arrayidx.i = getelementptr i32, ptr %regs, i32 %sub8.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %10, -134154240
  %new_scstart.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 4
  %11 = ptrtoint ptr %new_scstart.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %new_scstart.i, align 4
  %and9.i = and i32 %12, 134154239
  %or.i = or i32 %and9.i, %and.i
  store i32 %or.i, ptr %new_scstart.i, align 4
  br label %do.body13.i

do.body13.i:                                      ; preds = %if.then7.i, %do.body.i.do.body13.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 55, i16 %3)
  %cmp14.i = icmp ult i16 %3, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %.pre.i)
  %cmp17.i = icmp ugt i32 %.pre.i, 54
  %or.cond95.i = and i1 %cmp14.i, %cmp17.i
  br i1 %or.cond95.i, label %if.then18.i, label %do.body13.i.do.end29.i_crit_edge

do.body13.i.do.end29.i_crit_edge:                 ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29.i

if.then18.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub20.i = sub nuw nsw i32 54, %conv3
  %arrayidx21.i = getelementptr i32, ptr %regs, i32 %sub20.i
  %13 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx21.i, align 4
  %and22.i = and i32 %14, -134154240
  %new_scend.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 6
  %15 = ptrtoint ptr %new_scend.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %new_scend.i, align 4
  %and24.i = and i32 %16, 134154239
  %or25.i = or i32 %and24.i, %and22.i
  store i32 %or25.i, ptr %new_scend.i, align 4
  br label %do.end29.i

do.end29.i:                                       ; preds = %if.then18.i, %do.body13.i.do.end29.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %3)
  %cmp30.i = icmp ult i16 %3, 29
  br i1 %cmp30.i, label %land.lhs.true36.i, label %if.end12

land.lhs.true36.i:                                ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %.pre.i)
  %cmp38.i = icmp ugt i32 %.pre.i, 28
  br i1 %cmp38.i, label %if.then39.i, label %land.lhs.true36.i.if.end43.i_crit_edge

land.lhs.true36.i.if.end43.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.then39.i:                                      ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub40.i = sub nuw nsw i32 28, %conv3
  %arrayidx41.i = getelementptr i32, ptr %regs, i32 %sub40.i
  %17 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx41.i, align 4
  %texctrl.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 1
  %19 = ptrtoint ptr %texctrl.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %texctrl.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then39.i, %land.lhs.true36.i.if.end43.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 27, i16 %3)
  %cmp44.i = icmp ult i16 %3, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %.pre.i)
  %cmp47.i = icmp ugt i32 %.pre.i, 26
  %or.cond96.i = and i1 %cmp44.i, %cmp47.i
  br i1 %or.cond96.i, label %if.then48.i, label %if.end43.i.if.end52.i_crit_edge

if.end43.i.if.end52.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.i

if.then48.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub49.i = sub nuw nsw i32 26, %conv3
  %arrayidx50.i = getelementptr i32, ptr %regs, i32 %sub49.i
  %20 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx50.i, align 4
  %texaddr.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 2
  %22 = ptrtoint ptr %texaddr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %texaddr.i, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then48.i, %if.end43.i.if.end52.i_crit_edge
  %texctrl54.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 1
  %23 = ptrtoint ptr %texctrl54.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %texctrl54.i, align 4
  %and55.i = and i32 %24, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool.not.i, label %if.end52.i.if.then15_crit_edge, label %savage_verify_state_s3d.exit

if.end52.i.if.then15_crit_edge:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

savage_verify_state_s3d.exit:                     ; preds = %if.end52.i
  %texaddr58.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 2
  %25 = ptrtoint ptr %texaddr58.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %texaddr58.i, align 4
  %call.i = tail call fastcc i32 @savage_verify_texaddr(ptr noundef %dev_priv, i32 noundef 0, i32 noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.not = icmp eq i32 %call.i, 0
  br i1 %cmp9.not, label %savage_verify_state_s3d.exit.if.then15_crit_edge, label %savage_verify_state_s3d.exit.cleanup_crit_edge

savage_verify_state_s3d.exit.cleanup_crit_edge:   ; preds = %savage_verify_state_s3d.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

savage_verify_state_s3d.exit.if.then15_crit_edge: ; preds = %savage_verify_state_s3d.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.end12:                                         ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 53, i16 %3)
  %cmp13 = icmp ult i16 %3, 53
  br i1 %cmp13, label %if.end12.if.then15_crit_edge, label %if.else

if.end12.if.then15_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then15:                                        ; preds = %if.end12.if.then15_crit_edge, %savage_verify_state_s3d.exit.if.then15_crit_edge, %if.end52.i.if.then15_crit_edge
  %27 = call i32 @llvm.usub.sat.i32(i32 %.pre.i, i32 55)
  %sub25 = sub nsw i32 53, %conv3
  %spec.select291 = select i1 %cmp6.i, i32 %sub25, i32 %conv
  br label %if.end76

if.else:                                          ; preds = %if.end12
  br i1 %cmp14.i, label %if.then29, label %if.else.if.end76_crit_edge

if.else.if.end76_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %.pre.i)
  %cmp31 = icmp ugt i32 %.pre.i, 55
  br i1 %cmp31, label %if.then33, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %sub35 = add nsw i32 %.pre.i, -55
  br label %if.end76

if.else40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %3)
  %cmp.i293 = icmp ult i16 %3, 30
  %.pre.i294 = add nuw nsw i32 %conv3, %conv
  %28 = add nsw i32 %.pre.i294, -59
  call void @__sanitizer_cov_trace_const_cmp4(i32 -58, i32 %28)
  %cmp1.i295 = icmp ult i32 %28, -58
  %or.cond131.i = or i1 %cmp.i293, %cmp1.i295
  br i1 %or.cond131.i, label %savage_verify_state_s4.exit.thread327, label %do.body.i301

savage_verify_state_s4.exit.thread327:            ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #8
  %sub3.i296 = add nsw i32 %.pre.i294, -1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24, i32 noundef %conv3, i32 noundef %sub3.i296) #6
  br label %cleanup

do.body.i301:                                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_const_cmp2(i16 54, i16 %3)
  %cmp4.i298 = icmp ult i16 %3, 54
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %.pre.i294)
  %cmp6.i299 = icmp ugt i32 %.pre.i294, 53
  %or.cond.i300 = and i1 %cmp4.i298, %cmp6.i299
  br i1 %or.cond.i300, label %if.then7.i307, label %do.body.i301.do.body13.i310_crit_edge

do.body.i301.do.body13.i310_crit_edge:            ; preds = %do.body.i301
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body13.i310

if.then7.i307:                                    ; preds = %do.body.i301
  call void @__sanitizer_cov_trace_pc() #8
  %sub8.i302 = sub nuw nsw i32 53, %conv3
  %arrayidx.i303 = getelementptr i32, ptr %regs, i32 %sub8.i302
  %29 = ptrtoint ptr %arrayidx.i303 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i303, align 4
  %and.i304 = and i32 %30, -16775168
  %new_drawctrl0.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 5
  %31 = ptrtoint ptr %new_drawctrl0.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %new_drawctrl0.i, align 4
  %and9.i305 = and i32 %32, 16775167
  %or.i306 = or i32 %and9.i305, %and.i304
  store i32 %or.i306, ptr %new_drawctrl0.i, align 4
  br label %do.body13.i310

do.body13.i310:                                   ; preds = %if.then7.i307, %do.body.i301.do.body13.i310_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 55, i16 %3)
  %cmp14.i308 = icmp ult i16 %3, 55
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %.pre.i294)
  %cmp17.i309 = icmp ugt i32 %.pre.i294, 54
  %or.cond127.i = and i1 %cmp14.i308, %cmp17.i309
  br i1 %or.cond127.i, label %if.then18.i316, label %do.body13.i310.do.end30.i_crit_edge

do.body13.i310.do.end30.i_crit_edge:              ; preds = %do.body13.i310
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30.i

if.then18.i316:                                   ; preds = %do.body13.i310
  call void @__sanitizer_cov_trace_pc() #8
  %sub20.i311 = sub nuw nsw i32 54, %conv3
  %arrayidx21.i312 = getelementptr i32, ptr %regs, i32 %sub20.i311
  %33 = ptrtoint ptr %arrayidx21.i312 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx21.i312, align 4
  %and22.i313 = and i32 %34, -16775168
  %new_drawctrl1.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 7
  %35 = ptrtoint ptr %new_drawctrl1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %new_drawctrl1.i, align 4
  %and24.i314 = and i32 %36, 16775167
  %or25.i315 = or i32 %and24.i314, %and22.i313
  store i32 %or25.i315, ptr %new_drawctrl1.i, align 4
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then18.i316, %do.body13.i310.do.end30.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 40, i16 %3)
  %cmp31.i = icmp ult i16 %3, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %.pre.i294)
  %cmp34.i = icmp ugt i32 %.pre.i294, 31
  %or.cond128.i = and i1 %cmp31.i, %cmp34.i
  br i1 %or.cond128.i, label %land.lhs.true37.i, label %if.end45

land.lhs.true37.i:                                ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %.pre.i294)
  %cmp39.i = icmp ugt i32 %.pre.i294, 39
  br i1 %cmp39.i, label %if.then40.i, label %land.lhs.true37.i.if.end44.i_crit_edge

land.lhs.true37.i.if.end44.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

if.then40.i:                                      ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub41.i = sub nuw nsw i32 39, %conv3
  %arrayidx42.i = getelementptr i32, ptr %regs, i32 %sub41.i
  %37 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx42.i, align 4
  %texdescr.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 1
  %39 = ptrtoint ptr %texdescr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %texdescr.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then40.i, %land.lhs.true37.i.if.end44.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %3)
  %cmp45.i = icmp ult i16 %3, 35
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %.pre.i294)
  %cmp48.i = icmp ugt i32 %.pre.i294, 34
  %or.cond129.i = and i1 %cmp45.i, %cmp48.i
  br i1 %or.cond129.i, label %if.then49.i, label %if.end44.i.if.end53.i_crit_edge

if.end44.i.if.end53.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i

if.then49.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub50.i = sub nuw nsw i32 34, %conv3
  %arrayidx51.i = getelementptr i32, ptr %regs, i32 %sub50.i
  %40 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx51.i, align 4
  %texaddr0.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 2
  %42 = ptrtoint ptr %texaddr0.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %texaddr0.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then49.i, %if.end44.i.if.end53.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 36, i16 %3)
  %cmp54.i = icmp ult i16 %3, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %.pre.i294)
  %cmp57.i = icmp ugt i32 %.pre.i294, 35
  %or.cond130.i = and i1 %cmp54.i, %cmp57.i
  br i1 %or.cond130.i, label %if.then58.i, label %if.end53.i.if.end62.i_crit_edge

if.end53.i.if.end62.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.i

if.then58.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub59.i = sub nuw nsw i32 35, %conv3
  %arrayidx60.i = getelementptr i32, ptr %regs, i32 %sub59.i
  %43 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx60.i, align 4
  %texaddr1.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 3
  %45 = ptrtoint ptr %texaddr1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %texaddr1.i, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then58.i, %if.end53.i.if.end62.i_crit_edge
  %texdescr64.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 1
  %46 = ptrtoint ptr %texdescr64.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %texdescr64.i, align 4
  %and65.i = and i32 %47, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool.not.i317 = icmp eq i32 %and65.i, 0
  br i1 %tobool.not.i317, label %if.end62.i.if.end70.i_crit_edge, label %if.then66.i

if.end62.i.if.end70.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70.i

if.then66.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  %texaddr068.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 2
  %48 = ptrtoint ptr %texaddr068.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %texaddr068.i, align 4
  %call.i318 = tail call fastcc i32 @savage_verify_texaddr(ptr noundef %dev_priv, i32 noundef 0, i32 noundef %49) #6
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then66.i, %if.end62.i.if.end70.i_crit_edge
  %ret.0.i = phi i32 [ %call.i318, %if.then66.i ], [ 0, %if.end62.i.if.end70.i_crit_edge ]
  %50 = ptrtoint ptr %texdescr64.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %texdescr64.i, align 4
  %and73.i = and i32 %51, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %if.end70.i.savage_verify_state_s4.exit_crit_edge, label %if.then75.i

if.end70.i.savage_verify_state_s4.exit_crit_edge: ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %savage_verify_state_s4.exit

if.then75.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  %texaddr177.i = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 44, i32 0, i32 3
  %52 = ptrtoint ptr %texaddr177.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %texaddr177.i, align 4
  %call78.i = tail call fastcc i32 @savage_verify_texaddr(ptr noundef %dev_priv, i32 noundef 1, i32 noundef %53) #6
  %or79.i = or i32 %call78.i, %ret.0.i
  br label %savage_verify_state_s4.exit

savage_verify_state_s4.exit:                      ; preds = %if.then75.i, %if.end70.i.savage_verify_state_s4.exit_crit_edge
  %retval.0.i319 = phi i32 [ %or79.i, %if.then75.i ], [ %ret.0.i, %if.end70.i.savage_verify_state_s4.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i319)
  %cmp42.not = icmp eq i32 %retval.0.i319, 0
  br i1 %cmp42.not, label %savage_verify_state_s4.exit.if.then48_crit_edge, label %savage_verify_state_s4.exit.cleanup_crit_edge

savage_verify_state_s4.exit.cleanup_crit_edge:    ; preds = %savage_verify_state_s4.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

savage_verify_state_s4.exit.if.then48_crit_edge:  ; preds = %savage_verify_state_s4.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then48

if.end45:                                         ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 53, i16 %3)
  %cmp46 = icmp ult i16 %3, 53
  br i1 %cmp46, label %if.end45.if.then48_crit_edge, label %if.else62

if.end45.if.then48_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then48

if.then48:                                        ; preds = %if.end45.if.then48_crit_edge, %savage_verify_state_s4.exit.if.then48_crit_edge
  %54 = call i32 @llvm.usub.sat.i32(i32 %.pre.i294, i32 55)
  %sub60 = sub nsw i32 53, %conv3
  %spec.select292 = select i1 %cmp6.i299, i32 %sub60, i32 %conv
  br label %if.end76

if.else62:                                        ; preds = %if.end45
  br i1 %cmp14.i308, label %if.then65, label %if.else62.if.end76_crit_edge

if.else62.if.end76_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then65:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %.pre.i294)
  %cmp67 = icmp ugt i32 %.pre.i294, 55
  br i1 %cmp67, label %if.then69, label %if.then65.cleanup_crit_edge

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then69:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  %sub71 = add nsw i32 %.pre.i294, -55
  br label %if.end76

if.end76:                                         ; preds = %if.then69, %if.else62.if.end76_crit_edge, %if.then48, %if.then33, %if.else.if.end76_crit_edge, %if.then15
  %start.0 = phi i32 [ 55, %if.then33 ], [ %conv3, %if.else.if.end76_crit_edge ], [ 55, %if.then69 ], [ %conv3, %if.else62.if.end76_crit_edge ], [ %conv3, %if.then15 ], [ %conv3, %if.then48 ]
  %count2.2 = phi i32 [ 0, %if.then33 ], [ 0, %if.else.if.end76_crit_edge ], [ 0, %if.then69 ], [ 0, %if.else62.if.end76_crit_edge ], [ %27, %if.then15 ], [ %54, %if.then48 ]
  %count.0 = phi i32 [ %sub35, %if.then33 ], [ %conv, %if.else.if.end76_crit_edge ], [ %sub71, %if.then69 ], [ %conv, %if.else62.if.end76_crit_edge ], [ %spec.select291, %if.then15 ], [ %spec.select292, %if.then48 ]
  %add77 = add nsw i32 %count.0, 254
  %div = udiv i32 %add77, 255
  %55 = trunc i32 %count2.2 to i16
  %div81.lhs.trunc = add i16 %55, 254
  %div81339 = udiv i16 %div81.lhs.trunc, 255
  %div81.zext = zext i16 %div81339 to i32
  %add78 = add nsw i32 %count.0, %count2.2
  %add79 = add nsw i32 %add78, %div81.zext
  %add82 = add nsw i32 %add79, %div
  %global = getelementptr inbounds %struct.anon.76, ptr %cmd_header, i32 0, i32 1
  %56 = ptrtoint ptr %global to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %global, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool83.not = icmp eq i8 %57, 0
  %current_dma_page113 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 38
  %58 = ptrtoint ptr %current_dma_page113 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %current_dma_page113, align 4
  %dma_pages115 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 35
  %60 = ptrtoint ptr %dma_pages115 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dma_pages115, align 4
  %used117 = getelementptr %struct.drm_savage_dma_page, ptr %61, i32 %59, i32 1
  %62 = ptrtoint ptr %used117 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %used117, align 4
  %sub118 = sub i32 1024, %63
  br i1 %tobool83.not, label %do.body111, label %do.body

do.body:                                          ; preds = %if.end76
  %add86 = add nsw i32 %add82, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add86, i32 %sub118)
  %cmp87 = icmp ugt i32 %add86, %sub118
  br i1 %cmp87, label %if.then89, label %if.else92

if.then89:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call91 = tail call ptr @savage_dma_alloc(ptr noundef %dev_priv, i32 noundef %add86) #6
  br label %if.end109

if.else92:                                        ; preds = %do.body
  %cmd_dma = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %64 = ptrtoint ptr %cmd_dma to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cmd_dma, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %handle, align 4
  %mul = shl i32 %59, 10
  %add.ptr = getelementptr i32, ptr %67, i32 %mul
  %add.ptr96 = getelementptr i32, ptr %add.ptr, i32 %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp100 = icmp eq i32 %63, 0
  br i1 %cmp100, label %if.then102, label %if.else92.if.end103_crit_edge

if.else92.if.end103_crit_edge:                    ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then102:                                       ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @savage_dma_wait(ptr noundef %dev_priv, i32 noundef %59) #6
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.else92.if.end103_crit_edge
  %68 = ptrtoint ptr %dma_pages115 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dma_pages115, align 4
  %used107 = getelementptr %struct.drm_savage_dma_page, ptr %69, i32 %59, i32 1
  %70 = ptrtoint ptr %used107 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %used107, align 4
  %add108 = add i32 %71, %add86
  store i32 %add108, ptr %used107, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.end103, %if.then89
  %dma_ptr.0 = phi ptr [ %call91, %if.then89 ], [ %add.ptr96, %if.end103 ]
  %incdec.ptr = getelementptr i32, ptr %dma_ptr.0, i32 1
  %72 = ptrtoint ptr %dma_ptr.0 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1073676288, ptr %dma_ptr.0, align 4
  %waiting = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 45
  %73 = ptrtoint ptr %waiting to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %waiting, align 4
  br label %do.body147.preheader

do.body111:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_cmp4(i32 %add82, i32 %sub118)
  %cmp119 = icmp ugt i32 %add82, %sub118
  br i1 %cmp119, label %if.then121, label %if.else123

if.then121:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #8
  %call122 = tail call ptr @savage_dma_alloc(ptr noundef %dev_priv, i32 noundef %add82) #6
  br label %do.body147.preheader

if.else123:                                       ; preds = %do.body111
  %cmd_dma124 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %74 = ptrtoint ptr %cmd_dma124 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cmd_dma124, align 4
  %handle125 = getelementptr inbounds %struct.drm_local_map, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %handle125 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %handle125, align 4
  %mul126 = shl i32 %59, 10
  %add.ptr127 = getelementptr i32, ptr %77, i32 %mul126
  %add.ptr131 = getelementptr i32, ptr %add.ptr127, i32 %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp135 = icmp eq i32 %63, 0
  br i1 %cmp135, label %if.then137, label %if.else123.if.end138_crit_edge

if.else123.if.end138_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

if.then137:                                       ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @savage_dma_wait(ptr noundef %dev_priv, i32 noundef %59) #6
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.else123.if.end138_crit_edge
  %78 = ptrtoint ptr %dma_pages115 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dma_pages115, align 4
  %used141 = getelementptr %struct.drm_savage_dma_page, ptr %79, i32 %59, i32 1
  %80 = ptrtoint ptr %used141 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %used141, align 4
  %add142 = add i32 %81, %add82
  store i32 %add142, ptr %used141, align 4
  br label %do.body147.preheader

do.body147.preheader:                             ; preds = %if.end138, %if.then121, %if.end109
  %dma_ptr.3.ph = phi ptr [ %incdec.ptr, %if.end109 ], [ %add.ptr131, %if.end138 ], [ %call122, %if.then121 ]
  br label %do.body147

do.body147:                                       ; preds = %while.end.do.body147_crit_edge, %do.body147.preheader
  %start.1 = phi i32 [ %add163, %while.end.do.body147_crit_edge ], [ %start.0, %do.body147.preheader ]
  %count2.3 = phi i32 [ 0, %while.end.do.body147_crit_edge ], [ %count2.2, %do.body147.preheader ]
  %dma_ptr.3 = phi ptr [ %dma_ptr.4.lcssa, %while.end.do.body147_crit_edge ], [ %dma_ptr.3.ph, %do.body147.preheader ]
  %count.1 = phi i32 [ %count2.3, %while.end.do.body147_crit_edge ], [ %count.0, %do.body147.preheader ]
  %regs.addr.0 = phi ptr [ %add.ptr164, %while.end.do.body147_crit_edge ], [ %regs, %do.body147.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %cmp148.not330 = icmp eq i32 %count.1, 0
  br i1 %cmp148.not330, label %do.body147.while.end_crit_edge, label %do.body147.while.body_crit_edge

do.body147.while.body_crit_edge:                  ; preds = %do.body147
  br label %while.body

do.body147.while.end_crit_edge:                   ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body147.while.body_crit_edge
  %regs.addr.1334 = phi ptr [ %add.ptr162, %while.body.while.body_crit_edge ], [ %regs.addr.0, %do.body147.while.body_crit_edge ]
  %count.2333 = phi i32 [ %sub160, %while.body.while.body_crit_edge ], [ %count.1, %do.body147.while.body_crit_edge ]
  %dma_ptr.4332 = phi ptr [ %add.ptr157, %while.body.while.body_crit_edge ], [ %dma_ptr.3, %do.body147.while.body_crit_edge ]
  %start.2331 = phi i32 [ %add161, %while.body.while.body_crit_edge ], [ %start.1, %do.body147.while.body_crit_edge ]
  %82 = tail call i32 @llvm.umin.i32(i32 %count.2333, i32 255)
  %and = shl nuw nsw i32 %82, 16
  %and152 = and i32 %start.2331, 65535
  %or = or i32 %and, %and152
  %or153 = or i32 %or, -1778384896
  %incdec.ptr154 = getelementptr i32, ptr %dma_ptr.4332, i32 1
  %83 = ptrtoint ptr %dma_ptr.4332 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or153, ptr %dma_ptr.4332, align 4
  %mul156 = shl nuw nsw i32 %82, 2
  %84 = call ptr @memcpy(ptr %incdec.ptr154, ptr %regs.addr.1334, i32 %mul156)
  %add.ptr157 = getelementptr i32, ptr %incdec.ptr154, i32 %82
  %sub160 = sub i32 %count.2333, %82
  %add161 = add i32 %82, %start.2331
  %add.ptr162 = getelementptr i32, ptr %regs.addr.1334, i32 %82
  %cmp148.not = icmp eq i32 %sub160, 0
  br i1 %cmp148.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.body147.while.end_crit_edge
  %start.2.lcssa = phi i32 [ %start.1, %do.body147.while.end_crit_edge ], [ %add161, %while.body.while.end_crit_edge ]
  %dma_ptr.4.lcssa = phi ptr [ %dma_ptr.3, %do.body147.while.end_crit_edge ], [ %add.ptr157, %while.body.while.end_crit_edge ]
  %regs.addr.1.lcssa = phi ptr [ %regs.addr.0, %do.body147.while.end_crit_edge ], [ %add.ptr162, %while.body.while.end_crit_edge ]
  %add163 = add i32 %start.2.lcssa, 2
  %add.ptr164 = getelementptr i32, ptr %regs.addr.1.lcssa, i32 2
  %tobool166.not = icmp eq i32 %count2.3, 0
  br i1 %tobool166.not, label %do.body168, label %while.end.do.body147_crit_edge

while.end.do.body147_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body147

do.body168:                                       ; preds = %while.end
  %current_dma_page170 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 38
  %85 = ptrtoint ptr %current_dma_page170 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %current_dma_page170, align 4
  %cmd_dma171 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %87 = ptrtoint ptr %cmd_dma171 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cmd_dma171, align 4
  %handle172 = getelementptr inbounds %struct.drm_local_map, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %handle172 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %handle172, align 4
  %mul173 = shl i32 %86, 10
  %add.ptr174 = getelementptr i32, ptr %90, i32 %mul173
  %dma_pages175 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 35
  %91 = ptrtoint ptr %dma_pages175 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dma_pages175, align 4
  %used177 = getelementptr %struct.drm_savage_dma_page, ptr %92, i32 %86, i32 1
  %93 = ptrtoint ptr %used177 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %used177, align 4
  %add.ptr178 = getelementptr i32, ptr %add.ptr174, i32 %94
  %cmp179.not = icmp eq ptr %dma_ptr.4.lcssa, %add.ptr178
  br i1 %cmp179.not, label %do.body168.cleanup_crit_edge, label %if.then181

do.body168.cleanup_crit_edge:                     ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then181:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef %add.ptr178, ptr noundef %dma_ptr.4.lcssa) #6
  tail call void @savage_dma_reset(ptr noundef %dev_priv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then181, %do.body168.cleanup_crit_edge, %if.then65.cleanup_crit_edge, %savage_verify_state_s4.exit.cleanup_crit_edge, %savage_verify_state_s4.exit.thread327, %if.then29.cleanup_crit_edge, %savage_verify_state_s3d.exit.cleanup_crit_edge, %savage_verify_state_s3d.exit.thread322, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %savage_verify_state_s3d.exit.cleanup_crit_edge ], [ 0, %if.then29.cleanup_crit_edge ], [ %retval.0.i319, %savage_verify_state_s4.exit.cleanup_crit_edge ], [ 0, %if.then65.cleanup_crit_edge ], [ 0, %if.then181 ], [ 0, %do.body168.cleanup_crit_edge ], [ -22, %savage_verify_state_s3d.exit.thread322 ], [ -22, %savage_verify_state_s4.exit.thread327 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @savage_dispatch_clear(ptr noundef %dev_priv, ptr nocapture noundef readonly %cmd_header, ptr nocapture noundef readonly %data, i32 noundef %nbox, ptr nocapture noundef readonly %boxes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.anon.79, ptr %cmd_header, i32 0, i32 3
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbox)
  %cmp = icmp eq i32 %nbox, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %1, 1
  %and2 = lshr i32 %1, 1
  %and2.lobit = and i32 %and2, 1
  %add = add nuw nsw i32 %and2.lobit, %and
  %and5 = lshr i32 %1, 2
  %and5.lobit = and i32 %and5, 1
  %add8 = add nuw nsw i32 %add, %and5.lobit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add8)
  %cmp9 = icmp eq i32 %add8, 0
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp12.not = icmp eq i32 %3, -1
  br i1 %cmp12.not, label %if.end11.for.body.lr.ph_crit_edge, label %do.body

if.end11.for.body.lr.ph_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph

do.body:                                          ; preds = %if.end11
  %current_dma_page = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 38
  %4 = ptrtoint ptr %current_dma_page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_dma_page, align 4
  %dma_pages = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 35
  %6 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_pages, align 4
  %used = getelementptr %struct.drm_savage_dma_page, ptr %7, i32 %5, i32 1
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used, align 4
  %10 = add i32 %9, -1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp14 = icmp ult i32 %10, 2
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @savage_dma_alloc(ptr noundef %dev_priv, i32 noundef 2) #6
  br label %if.end30

if.else:                                          ; preds = %do.body
  %cmd_dma = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %11 = ptrtoint ptr %cmd_dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd_dma, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handle, align 4
  %mul = shl i32 %5, 10
  %add.ptr = getelementptr i32, ptr %14, i32 %mul
  %add.ptr19 = getelementptr i32, ptr %add.ptr, i32 %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp23 = icmp eq i32 %9, 0
  br i1 %cmp23, label %if.then24, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @savage_dma_wait(ptr noundef %dev_priv, i32 noundef %5) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.else.if.end25_crit_edge
  %15 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_pages, align 4
  %used28 = getelementptr %struct.drm_savage_dma_page, ptr %16, i32 %5, i32 1
  %17 = ptrtoint ptr %used28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %used28, align 4
  %add29 = add i32 %18, 2
  store i32 %add29, ptr %used28, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end25, %if.then15
  %dma_ptr.0 = phi ptr [ %call, %if.then15 ], [ %add.ptr19, %if.end25 ]
  %incdec.ptr = getelementptr i32, ptr %dma_ptr.0, i32 1
  %19 = ptrtoint ptr %dma_ptr.0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1778319145, ptr %dma_ptr.0, align 4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data, align 4
  %incdec.ptr32 = getelementptr i32, ptr %dma_ptr.0, i32 2
  %22 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %incdec.ptr, align 4
  %23 = ptrtoint ptr %current_dma_page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %current_dma_page, align 4
  %cmd_dma36 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %25 = ptrtoint ptr %cmd_dma36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmd_dma36, align 4
  %handle37 = getelementptr inbounds %struct.drm_local_map, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %handle37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %handle37, align 4
  %mul38 = shl i32 %24, 10
  %add.ptr39 = getelementptr i32, ptr %28, i32 %mul38
  %29 = ptrtoint ptr %dma_pages to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_pages, align 4
  %used42 = getelementptr %struct.drm_savage_dma_page, ptr %30, i32 %24, i32 1
  %31 = ptrtoint ptr %used42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %used42, align 4
  %add.ptr43 = getelementptr i32, ptr %add.ptr39, i32 %32
  %cmp44.not = icmp eq ptr %incdec.ptr32, %add.ptr43
  br i1 %cmp44.not, label %if.end30.for.body.lr.ph_crit_edge, label %if.then45

if.end30.for.body.lr.ph_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph

if.then45:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef %add.ptr43, ptr noundef %incdec.ptr32) #6
  tail call void @savage_dma_reset(ptr noundef %dev_priv) #6
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then45, %if.end30.for.body.lr.ph_crit_edge, %if.end11.for.body.lr.ph_crit_edge
  %current_dma_page68 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 38
  %dma_pages70 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 35
  %mul74 = mul nuw nsw i32 %add8, 6
  %cmd_dma81 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %depth_offset = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 14
  %depth_bd = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 18
  %back_offset = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 11
  %back_bd = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 17
  %front_offset = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 9
  %front_bd = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 16
  %value = getelementptr inbounds %struct.anon.80, ptr %data, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool109.not = icmp eq i32 %and, 0
  %and108.1 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.1)
  %tobool109.not.1 = icmp eq i32 %and108.1, 0
  %and108.2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108.2)
  %tobool109.not.2 = icmp eq i32 %and108.2, 0
  br label %for.body

for.body:                                         ; preds = %if.end145.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end145.for.body_crit_edge ]
  %arrayidx51 = getelementptr %struct.drm_clip_rect, ptr %boxes, i32 %i.05
  %33 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx51, align 2
  %conv = zext i16 %34 to i32
  %y1 = getelementptr %struct.drm_clip_rect, ptr %boxes, i32 %i.05, i32 1
  %35 = ptrtoint ptr %y1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %y1, align 2
  %conv53 = zext i16 %36 to i32
  %x2 = getelementptr %struct.drm_clip_rect, ptr %boxes, i32 %i.05, i32 2
  %37 = ptrtoint ptr %x2 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %x2, align 2
  %conv55 = zext i16 %38 to i32
  %sub59 = sub nsw i32 %conv55, %conv
  %y2 = getelementptr %struct.drm_clip_rect, ptr %boxes, i32 %i.05, i32 3
  %39 = ptrtoint ptr %y2 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %y2, align 2
  %conv61 = zext i16 %40 to i32
  %sub65 = sub nsw i32 %conv61, %conv53
  %41 = ptrtoint ptr %current_dma_page68 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %current_dma_page68, align 4
  %43 = ptrtoint ptr %dma_pages70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dma_pages70, align 4
  %used72 = getelementptr %struct.drm_savage_dma_page, ptr %44, i32 %42, i32 1
  %45 = ptrtoint ptr %used72 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %used72, align 4
  %sub73 = sub i32 1024, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %mul74, i32 %sub73)
  %cmp75 = icmp ugt i32 %mul74, %sub73
  br i1 %cmp75, label %if.then77, label %if.else80

if.then77:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call79 = tail call ptr @savage_dma_alloc(ptr noundef %dev_priv, i32 noundef %mul74) #6
  br label %if.end101

if.else80:                                        ; preds = %for.body
  %47 = ptrtoint ptr %cmd_dma81 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cmd_dma81, align 4
  %handle82 = getelementptr inbounds %struct.drm_local_map, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %handle82 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %handle82, align 4
  %mul83 = shl i32 %42, 10
  %add.ptr84 = getelementptr i32, ptr %50, i32 %mul83
  %add.ptr88 = getelementptr i32, ptr %add.ptr84, i32 %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp92 = icmp eq i32 %46, 0
  br i1 %cmp92, label %if.then94, label %if.else80.if.end95_crit_edge

if.else80.if.end95_crit_edge:                     ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then94:                                        ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @savage_dma_wait(ptr noundef %dev_priv, i32 noundef %42) #6
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.else80.if.end95_crit_edge
  %51 = ptrtoint ptr %dma_pages70 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma_pages70, align 4
  %used99 = getelementptr %struct.drm_savage_dma_page, ptr %52, i32 %42, i32 1
  %53 = ptrtoint ptr %used99 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %used99, align 4
  %add100 = add i32 %54, %mul74
  store i32 %add100, ptr %used99, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.end95, %if.then77
  %dma_ptr.1 = phi ptr [ %call79, %if.then77 ], [ %add.ptr88, %if.end95 ]
  %shl = shl nuw i32 %conv53, 16
  %or122 = or i32 %shl, %conv
  %and123 = and i32 %or122, 268374015
  %shl125 = shl i32 %sub65, 16
  %or126 = or i32 %shl125, %sub59
  %and127 = and i32 %or126, 268374015
  br i1 %tobool109.not, label %if.end101.for.inc_crit_edge, label %sw.epilog

if.end101.for.inc_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.epilog:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr112 = getelementptr i32, ptr %dma_ptr.1, i32 1
  %55 = ptrtoint ptr %dma_ptr.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1271696384, ptr %dma_ptr.1, align 4
  %56 = ptrtoint ptr %front_offset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %front_offset, align 4
  %incdec.ptr113 = getelementptr i32, ptr %dma_ptr.1, i32 2
  %58 = ptrtoint ptr %incdec.ptr112 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %incdec.ptr112, align 4
  %59 = ptrtoint ptr %front_bd to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %front_bd, align 4
  %incdec.ptr114 = getelementptr i32, ptr %dma_ptr.1, i32 3
  %61 = ptrtoint ptr %incdec.ptr113 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %incdec.ptr113, align 4
  %62 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %value, align 4
  %incdec.ptr121 = getelementptr i32, ptr %dma_ptr.1, i32 4
  %64 = ptrtoint ptr %incdec.ptr114 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %incdec.ptr114, align 4
  %incdec.ptr124 = getelementptr i32, ptr %dma_ptr.1, i32 5
  %65 = ptrtoint ptr %incdec.ptr121 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and123, ptr %incdec.ptr121, align 4
  %incdec.ptr128 = getelementptr i32, ptr %dma_ptr.1, i32 6
  %66 = ptrtoint ptr %incdec.ptr124 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and127, ptr %incdec.ptr124, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.end101.for.inc_crit_edge
  %dma_ptr.4 = phi ptr [ %incdec.ptr128, %sw.epilog ], [ %dma_ptr.1, %if.end101.for.inc_crit_edge ]
  br i1 %tobool109.not.1, label %for.inc.for.inc.1_crit_edge, label %sw.epilog.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

sw.epilog.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr112.1 = getelementptr i32, ptr %dma_ptr.4, i32 1
  %67 = ptrtoint ptr %dma_ptr.4 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1271696384, ptr %dma_ptr.4, align 4
  %68 = ptrtoint ptr %back_offset to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %back_offset, align 4
  %incdec.ptr116.1 = getelementptr i32, ptr %dma_ptr.4, i32 2
  %70 = ptrtoint ptr %incdec.ptr112.1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %incdec.ptr112.1, align 4
  %71 = ptrtoint ptr %back_bd to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %back_bd, align 4
  %incdec.ptr117.1 = getelementptr i32, ptr %dma_ptr.4, i32 3
  %73 = ptrtoint ptr %incdec.ptr116.1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %incdec.ptr116.1, align 4
  %74 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %value, align 4
  %incdec.ptr121.1 = getelementptr i32, ptr %dma_ptr.4, i32 4
  %76 = ptrtoint ptr %incdec.ptr117.1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %incdec.ptr117.1, align 4
  %incdec.ptr124.1 = getelementptr i32, ptr %dma_ptr.4, i32 5
  %77 = ptrtoint ptr %incdec.ptr121.1 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and123, ptr %incdec.ptr121.1, align 4
  %incdec.ptr128.1 = getelementptr i32, ptr %dma_ptr.4, i32 6
  %78 = ptrtoint ptr %incdec.ptr124.1 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %and127, ptr %incdec.ptr124.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %sw.epilog.1, %for.inc.for.inc.1_crit_edge
  %dma_ptr.4.1 = phi ptr [ %incdec.ptr128.1, %sw.epilog.1 ], [ %dma_ptr.4, %for.inc.for.inc.1_crit_edge ]
  br i1 %tobool109.not.2, label %for.inc.1.for.inc.2_crit_edge, label %sw.epilog.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

sw.epilog.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr112.2 = getelementptr i32, ptr %dma_ptr.4.1, i32 1
  %79 = ptrtoint ptr %dma_ptr.4.1 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1271696384, ptr %dma_ptr.4.1, align 4
  %80 = ptrtoint ptr %depth_offset to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %depth_offset, align 4
  %incdec.ptr119.2 = getelementptr i32, ptr %dma_ptr.4.1, i32 2
  %82 = ptrtoint ptr %incdec.ptr112.2 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %incdec.ptr112.2, align 4
  %83 = ptrtoint ptr %depth_bd to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %depth_bd, align 4
  %incdec.ptr120.2 = getelementptr i32, ptr %dma_ptr.4.1, i32 3
  %85 = ptrtoint ptr %incdec.ptr119.2 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %incdec.ptr119.2, align 4
  %86 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %value, align 4
  %incdec.ptr121.2 = getelementptr i32, ptr %dma_ptr.4.1, i32 4
  %88 = ptrtoint ptr %incdec.ptr120.2 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %incdec.ptr120.2, align 4
  %incdec.ptr124.2 = getelementptr i32, ptr %dma_ptr.4.1, i32 5
  %89 = ptrtoint ptr %incdec.ptr121.2 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %and123, ptr %incdec.ptr121.2, align 4
  %incdec.ptr128.2 = getelementptr i32, ptr %dma_ptr.4.1, i32 6
  %90 = ptrtoint ptr %incdec.ptr124.2 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %and127, ptr %incdec.ptr124.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %sw.epilog.2, %for.inc.1.for.inc.2_crit_edge
  %dma_ptr.4.2 = phi ptr [ %incdec.ptr128.2, %sw.epilog.2 ], [ %dma_ptr.4.1, %for.inc.1.for.inc.2_crit_edge ]
  %91 = ptrtoint ptr %current_dma_page68 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %current_dma_page68, align 4
  %93 = ptrtoint ptr %cmd_dma81 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cmd_dma81, align 4
  %handle135 = getelementptr inbounds %struct.drm_local_map, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %handle135 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %handle135, align 4
  %mul136 = shl i32 %92, 10
  %add.ptr137 = getelementptr i32, ptr %96, i32 %mul136
  %97 = ptrtoint ptr %dma_pages70 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dma_pages70, align 4
  %used140 = getelementptr %struct.drm_savage_dma_page, ptr %98, i32 %92, i32 1
  %99 = ptrtoint ptr %used140 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %used140, align 4
  %add.ptr141 = getelementptr i32, ptr %add.ptr137, i32 %100
  %cmp142.not = icmp eq ptr %dma_ptr.4.2, %add.ptr141
  br i1 %cmp142.not, label %for.inc.2.if.end145_crit_edge, label %if.then144

for.inc.2.if.end145_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

if.then144:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef %add.ptr141, ptr noundef %dma_ptr.4.2) #6
  tail call void @savage_dma_reset(ptr noundef %dev_priv) #6
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %for.inc.2.if.end145_crit_edge
  %inc = add nuw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %nbox
  br i1 %exitcond.not, label %for.end149, label %if.end145.for.body_crit_edge

if.end145.for.body_crit_edge:                     ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end149:                                       ; preds = %if.end145
  %101 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %102)
  %cmp151.not = icmp eq i32 %102, -1
  br i1 %cmp151.not, label %for.end149.cleanup_crit_edge, label %do.body154

for.end149.cleanup_crit_edge:                     ; preds = %for.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body154:                                       ; preds = %for.end149
  %103 = ptrtoint ptr %current_dma_page68 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %current_dma_page68, align 4
  %105 = ptrtoint ptr %dma_pages70 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dma_pages70, align 4
  %used160 = getelementptr %struct.drm_savage_dma_page, ptr %106, i32 %104, i32 1
  %107 = ptrtoint ptr %used160 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %used160, align 4
  %109 = add i32 %108, -1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %cmp162 = icmp ult i32 %109, 2
  br i1 %cmp162, label %if.then164, label %if.else166

if.then164:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #8
  %call165 = tail call ptr @savage_dma_alloc(ptr noundef %dev_priv, i32 noundef 2) #6
  br label %if.end186

if.else166:                                       ; preds = %do.body154
  %cmd_dma167 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %110 = ptrtoint ptr %cmd_dma167 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cmd_dma167, align 4
  %handle168 = getelementptr inbounds %struct.drm_local_map, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %handle168 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %handle168, align 4
  %mul169 = shl i32 %104, 10
  %add.ptr170 = getelementptr i32, ptr %113, i32 %mul169
  %add.ptr174 = getelementptr i32, ptr %add.ptr170, i32 %108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp178 = icmp eq i32 %108, 0
  br i1 %cmp178, label %if.then180, label %if.else166.if.end181_crit_edge

if.else166.if.end181_crit_edge:                   ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end181

if.then180:                                       ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @savage_dma_wait(ptr noundef %dev_priv, i32 noundef %104) #6
  br label %if.end181

if.end181:                                        ; preds = %if.then180, %if.else166.if.end181_crit_edge
  %114 = ptrtoint ptr %dma_pages70 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dma_pages70, align 4
  %used184 = getelementptr %struct.drm_savage_dma_page, ptr %115, i32 %104, i32 1
  %116 = ptrtoint ptr %used184 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %used184, align 4
  %add185 = add i32 %117, 2
  store i32 %add185, ptr %used184, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.end181, %if.then164
  %dma_ptr.5 = phi ptr [ %call165, %if.then164 ], [ %add.ptr174, %if.end181 ]
  %incdec.ptr189 = getelementptr i32, ptr %dma_ptr.5, i32 1
  %118 = ptrtoint ptr %dma_ptr.5 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 -1778319145, ptr %dma_ptr.5, align 4
  %incdec.ptr190 = getelementptr i32, ptr %dma_ptr.5, i32 2
  %119 = ptrtoint ptr %incdec.ptr189 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %incdec.ptr189, align 4
  %120 = ptrtoint ptr %current_dma_page68 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %current_dma_page68, align 4
  %cmd_dma195 = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 27
  %122 = ptrtoint ptr %cmd_dma195 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cmd_dma195, align 4
  %handle196 = getelementptr inbounds %struct.drm_local_map, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %handle196 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %handle196, align 4
  %mul197 = shl i32 %121, 10
  %add.ptr198 = getelementptr i32, ptr %125, i32 %mul197
  %126 = ptrtoint ptr %dma_pages70 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dma_pages70, align 4
  %used201 = getelementptr %struct.drm_savage_dma_page, ptr %127, i32 %121, i32 1
  %128 = ptrtoint ptr %used201 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %used201, align 4
  %add.ptr202 = getelementptr i32, ptr %add.ptr198, i32 %129
  %cmp203.not = icmp eq ptr %incdec.ptr190, %add.ptr202
  br i1 %cmp203.not, label %if.end186.cleanup_crit_edge, label %if.then205

if.end186.cleanup_crit_edge:                      ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then205:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef %add.ptr202, ptr noundef %incdec.ptr190) #6
  tail call void @savage_dma_reset(ptr noundef %dev_priv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then205, %if.end186.cleanup_crit_edge, %for.end149.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @savage_bci_emit_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @savage_freelist_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @savage_verify_texaddr(ptr nocapture noundef readonly %dev_priv, i32 noundef %unit, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %addr, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp.not = icmp eq i32 %and, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, i32 noundef %unit, i32 noundef %addr) #6
  br label %return

if.end:                                           ; preds = %entry
  %and1 = and i32 %addr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %and3 = and i32 %addr, -8
  %texture_offset = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 19
  %0 = ptrtoint ptr %texture_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %texture_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %1)
  %cmp4 = icmp ult i32 %and3, %1
  br i1 %cmp4, label %if.then2.if.then7_crit_edge, label %lor.lhs.false

if.then2.if.then7_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.then2
  %texture_size = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 20
  %2 = ptrtoint ptr %texture_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %texture_size, align 4
  %add = add i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %add)
  %cmp6.not = icmp ult i32 %and3, %add
  br i1 %cmp6.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.then2.if.then7_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26, i32 noundef %unit, i32 noundef %and3) #6
  br label %return

if.else:                                          ; preds = %if.end
  %agp_textures = getelementptr inbounds %struct.drm_savage_private, ptr %dev_priv, i32 0, i32 26
  %4 = ptrtoint ptr %agp_textures to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %agp_textures, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %unit, i32 noundef %addr) #6
  br label %return

if.end11:                                         ; preds = %if.else
  %and12 = and i32 %addr, -8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and12, i32 %7)
  %cmp14 = icmp ult i32 %and12, %7
  br i1 %cmp14, label %if.end11.if.then21_crit_edge, label %lor.lhs.false15

if.end11.if.then21_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

lor.lhs.false15:                                  ; preds = %if.end11
  %size = getelementptr inbounds %struct.drm_local_map, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %add19 = add i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %and12, i32 %add19)
  %cmp20.not = icmp ult i32 %and12, %add19
  br i1 %cmp20.not, label %lor.lhs.false15.return_crit_edge, label %lor.lhs.false15.if.then21_crit_edge

lor.lhs.false15.if.then21_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

lor.lhs.false15.return_crit_edge:                 ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then21:                                        ; preds = %lor.lhs.false15.if.then21_crit_edge, %if.end11.if.then21_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28, i32 noundef %unit, i32 noundef %and12) #6
  br label %return

return:                                           ; preds = %if.then21, %lor.lhs.false15.return_crit_edge, %if.then10, %if.then7, %lor.lhs.false.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then21 ], [ -22, %if.then10 ], [ -22, %if.then7 ], [ 0, %lor.lhs.false15.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 58, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 980, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 982, i32 2}
!6 = !{ptr @__func__.savage_bci_cmdbuf, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 986, i32 4}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 1063, i32 5}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 1097, i32 5}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 1110, i32 5}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 1128, i32 4}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 953, i32 5}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 298, i32 3}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 312, i32 4}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 320, i32 4}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 327, i32 3}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 333, i32 4}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 345, i32 4}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 351, i32 3}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 471, i32 4}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 488, i32 3}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 572, i32 4}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 579, i32 4}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 639, i32 5}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 141, i32 3}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 92, i32 3}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 99, i32 4}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 106, i32 4}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/savage/savage_state.c", i32 114, i32 4}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2152117624, i64 2152117649}
!73 = !{i64 4613179}
!74 = !{i64 4613376}
!75 = !{i64 2152098609}
!76 = !{i64 2154165362}
