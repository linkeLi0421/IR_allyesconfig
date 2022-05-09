; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/via/via_verifier.c_pt.bc'
source_filename = "../drivers/gpu/drm/via/via_verifier.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hz_init_t = type { i32, i32 }
%struct.drm_via_state_t = type { i32, i32, i32, [2 x [10 x i32]], [2 x [10 x i32]], [2 x [10 x i32]], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, i32, i32, ptr, ptr, i32, i32, ptr }
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
%struct.drm_via_private = type { ptr, ptr, ptr, ptr, i32, [5 x %struct.wait_queue_head], ptr, i32, i32, i32, i32, ptr, ptr, %struct.drm_via_ring_buffer, i64, i32, i64, %struct.atomic_t, %struct.drm_via_state_t, [60000 x i8], [1024 x ptr], i32, i32, [4 x %struct.drm_via_irq], i32, ptr, i32, i32, ptr, i32, i32, %struct.drm_mm, i32, %struct.drm_mm, %struct.idr, i32, i32, [2 x %struct._drm_via_blitq], i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_via_ring_buffer = type { %struct.drm_local_map, ptr }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.drm_via_irq = type { %struct.atomic_t, i32, i32, %struct.wait_queue_head }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct._drm_via_blitq = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x ptr], %struct.spinlock, [8 x %struct.wait_queue_head], %struct.wait_queue_head, %struct.work_struct, %struct.timer_list }
%struct.drm_map_list = type { %struct.list_head, %struct.drm_hash_item, ptr, i64, ptr }
%struct.drm_hash_item = type { %struct.hlist_node, i32 }

@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Accelerated 3D is not supported on this chipset yet.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Invalid / Unimplemented DMA HEADER command. 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@init_table1 = internal constant { [48 x %struct.hz_init_t], [96 x i8] } { [48 x %struct.hz_init_t] [%struct.hz_init_t { i32 242, i32 3 }, %struct.hz_init_t { i32 240, i32 4 }, %struct.hz_init_t { i32 238, i32 5 }, %struct.hz_init_t { i32 204, i32 12 }, %struct.hz_init_t { i32 221, i32 13 }, %struct.hz_init_t zeroinitializer, %struct.hz_init_t { i32 16, i32 6 }, %struct.hz_init_t { i32 17, i32 7 }, %struct.hz_init_t { i32 18, i32 8 }, %struct.hz_init_t { i32 19, i32 0 }, %struct.hz_init_t { i32 20, i32 0 }, %struct.hz_init_t { i32 21, i32 0 }, %struct.hz_init_t { i32 35, i32 0 }, %struct.hz_init_t { i32 36, i32 0 }, %struct.hz_init_t { i32 51, i32 0 }, %struct.hz_init_t { i32 52, i32 0 }, %struct.hz_init_t { i32 53, i32 0 }, %struct.hz_init_t { i32 54, i32 0 }, %struct.hz_init_t { i32 55, i32 0 }, %struct.hz_init_t { i32 56, i32 0 }, %struct.hz_init_t { i32 57, i32 0 }, %struct.hz_init_t { i32 58, i32 0 }, %struct.hz_init_t { i32 59, i32 0 }, %struct.hz_init_t { i32 60, i32 0 }, %struct.hz_init_t { i32 61, i32 0 }, %struct.hz_init_t { i32 62, i32 0 }, %struct.hz_init_t { i32 64, i32 9 }, %struct.hz_init_t { i32 65, i32 10 }, %struct.hz_init_t { i32 66, i32 11 }, %struct.hz_init_t { i32 67, i32 0 }, %struct.hz_init_t { i32 68, i32 0 }, %struct.hz_init_t { i32 80, i32 0 }, %struct.hz_init_t { i32 81, i32 0 }, %struct.hz_init_t { i32 82, i32 0 }, %struct.hz_init_t { i32 83, i32 0 }, %struct.hz_init_t { i32 84, i32 0 }, %struct.hz_init_t { i32 85, i32 0 }, %struct.hz_init_t { i32 86, i32 0 }, %struct.hz_init_t { i32 87, i32 0 }, %struct.hz_init_t { i32 88, i32 0 }, %struct.hz_init_t { i32 112, i32 0 }, %struct.hz_init_t { i32 113, i32 0 }, %struct.hz_init_t { i32 120, i32 0 }, %struct.hz_init_t { i32 121, i32 0 }, %struct.hz_init_t { i32 122, i32 0 }, %struct.hz_init_t { i32 123, i32 0 }, %struct.hz_init_t { i32 124, i32 0 }, %struct.hz_init_t { i32 125, i32 24 }], [96 x i8] zeroinitializer }, align 32
@table1 = internal global { [256 x i32], [256 x i8] } zeroinitializer, align 32
@init_table2 = internal constant { [55 x %struct.hz_init_t], [104 x i8] } { [55 x %struct.hz_init_t] [%struct.hz_init_t { i32 242, i32 3 }, %struct.hz_init_t { i32 240, i32 4 }, %struct.hz_init_t { i32 238, i32 5 }, %struct.hz_init_t { i32 204, i32 12 }, %struct.hz_init_t { i32 0, i32 14 }, %struct.hz_init_t { i32 1, i32 14 }, %struct.hz_init_t { i32 2, i32 14 }, %struct.hz_init_t { i32 3, i32 14 }, %struct.hz_init_t { i32 4, i32 14 }, %struct.hz_init_t { i32 5, i32 14 }, %struct.hz_init_t { i32 6, i32 14 }, %struct.hz_init_t { i32 7, i32 14 }, %struct.hz_init_t { i32 8, i32 14 }, %struct.hz_init_t { i32 9, i32 14 }, %struct.hz_init_t { i32 32, i32 15 }, %struct.hz_init_t { i32 33, i32 15 }, %struct.hz_init_t { i32 34, i32 15 }, %struct.hz_init_t { i32 35, i32 18 }, %struct.hz_init_t { i32 43, i32 17 }, %struct.hz_init_t { i32 44, i32 17 }, %struct.hz_init_t { i32 45, i32 17 }, %struct.hz_init_t { i32 46, i32 17 }, %struct.hz_init_t { i32 47, i32 17 }, %struct.hz_init_t { i32 48, i32 17 }, %struct.hz_init_t { i32 49, i32 17 }, %struct.hz_init_t { i32 50, i32 17 }, %struct.hz_init_t { i32 51, i32 17 }, %struct.hz_init_t { i32 52, i32 17 }, %struct.hz_init_t { i32 75, i32 19 }, %struct.hz_init_t { i32 76, i32 20 }, %struct.hz_init_t { i32 81, i32 21 }, %struct.hz_init_t { i32 82, i32 22 }, %struct.hz_init_t { i32 119, i32 16 }, %struct.hz_init_t { i32 120, i32 0 }, %struct.hz_init_t { i32 121, i32 0 }, %struct.hz_init_t { i32 122, i32 0 }, %struct.hz_init_t { i32 123, i32 23 }, %struct.hz_init_t { i32 124, i32 0 }, %struct.hz_init_t { i32 125, i32 0 }, %struct.hz_init_t { i32 126, i32 0 }, %struct.hz_init_t { i32 127, i32 0 }, %struct.hz_init_t { i32 128, i32 0 }, %struct.hz_init_t { i32 129, i32 0 }, %struct.hz_init_t { i32 130, i32 0 }, %struct.hz_init_t { i32 131, i32 0 }, %struct.hz_init_t { i32 133, i32 0 }, %struct.hz_init_t { i32 134, i32 0 }, %struct.hz_init_t { i32 135, i32 0 }, %struct.hz_init_t { i32 136, i32 0 }, %struct.hz_init_t { i32 137, i32 0 }, %struct.hz_init_t { i32 138, i32 0 }, %struct.hz_init_t { i32 144, i32 0 }, %struct.hz_init_t { i32 145, i32 0 }, %struct.hz_init_t { i32 146, i32 0 }, %struct.hz_init_t { i32 147, i32 0 }], [104 x i8] zeroinitializer }, align 32
@table2 = internal global { [256 x i32], [256 x i8] } zeroinitializer, align 32
@table3 = internal global { [256 x i32], [256 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Illegal termination of DMA HALCYON_HEADER2 sequence.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Texture palettes are rejected because of lack of info how to determine their size.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"Fog factor palettes are rejected because of lack of info how to determine their size.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Invalid or unimplemented HALCYON_HEADER2 DMA subcommand: 0x%x. Previous dword: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unexpected termination of primitive list.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Expected Vertex List A command, got 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Illegal B command vertex data for AGP.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Fire offset buffer full.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Missing Vertex Fire command, Stray Vertex Fire command  or verifier lost sync.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Missing Vertex Fire command or verifier lost sync.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"AGP Primitive list end misaligned.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Illegal termination of DMA command buffer\0A\00", [53 x i8] zeroinitializer }, align 32
@seqs = internal constant { [25 x i32], [60 x i8] } { [25 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0], [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Illegal DMA HALCYON_HEADER2 command\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Illegal DMA HALCYON_HEADER1 command\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Illegal DMA HALCYON_FIRECMD command\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Illegal DMA HC_DUMMY command\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Illegal DMA 0xdddddddd command\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempt to place Z buffer in system memory\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Attempt to place 3D drawing buffer in system memory\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unimplemented texture level 0 pitch mode.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Attempt to fetch texture from system memory.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Illegal DMA data: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Z Buffer start address is 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Destination start address is 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AGP texture is not in allowed map\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Invalid HALCYON_HEADER1 command. Attempt to access 3D- or command burst area.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Invalid HALCYON_HEADER1 command. Attempt to access VGA registers.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Illegal termination of video header5 command\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Illegal header5 header data\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Invalid VIDEO DMA command. Attempt to access 3D- or command burst area.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Invalid VIDEO DMA command. Attempt to access PCI DMA area.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Invalid VIDEO DMA command. Attempt to access VGA registers.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Illegal termination of video command.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Illegal video command tail.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Illegal termination of video header6 command\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Illegal header6 header data\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.38 = internal global [12 x i64] [i64 10, i64 16, i64 0, i64 1, i64 2, i64 3, i64 254, i64 258, i64 259, i64 4099, i64 5123, i64 65026]
@__sancov_gen_cov_switch_values.39 = internal global [27 x i64] [i64 25, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.41 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 4261675008, i64 4261740544]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 4261675008, i64 4261740544]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1016, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 1019, i32 5 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"init_table1\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 118, i32 18 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"table1\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 234, i32 17 }
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"init_table2\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 169, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"table2\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 235, i32 17 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"table3\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 236, i32 17 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 635, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 674, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 678, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 688, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 534, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 543, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 557, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 584, i32 6 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 599, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 609, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 615, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 245, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [5 x i8] c"seqs\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 85, i32 27 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 370, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 375, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 380, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 385, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 390, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 406, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 422, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 460, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 499, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 514, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 294, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 297, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 334, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 816, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 823, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 860, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 870, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 768, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 772, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 776, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 790, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 795, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 912, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [38 x i8] c"../drivers/gpu/drm/via/via_verifier.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 918, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @.str, ptr @.str.1, ptr @init_table1, ptr @table1, ptr @init_table2, ptr @table2, ptr @table3, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @seqs, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_table1 to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table1 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_table2 to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table2 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table3 to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seqs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_verify_command_stream(ptr noundef %buf, i32 noundef %size, ptr noundef %dev, i32 noundef %agp) local_unnamed_addr #0 align 64 {
entry:
  %saved_state = alloca %struct.drm_via_state_t, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %hc_state1 = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 316, ptr nonnull %saved_state)
  %2 = call ptr @memcpy(ptr %saved_state, ptr %hc_state1, i32 316)
  %shr = lshr i32 %size, 2
  %add.ptr = getelementptr i32, ptr %buf, i32 %shr
  %chipset = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %chipset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chipset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp5.not = icmp eq i32 %4, 2
  %dev6 = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 13
  %5 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev6, align 4
  %unfinished = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 10
  %6 = ptrtoint ptr %unfinished to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %unfinished, align 4
  %map_cache = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 14
  %7 = ptrtoint ptr %map_cache to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %map_cache, align 4
  %agp7 = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 16
  %8 = ptrtoint ptr %agp7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %agp, ptr %agp7, align 4
  %buf_start = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 17
  %9 = ptrtoint ptr %buf_start to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %buf_start, align 4
  %num_fire_offsets = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %num_fire_offsets to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %num_fire_offsets, align 8
  %cmp8215 = icmp ugt ptr %add.ptr, %buf
  br i1 %cmp8215, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %.off = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %cmp5.not.not = xor i1 %cmp5.not, true
  %sub.ptr.lhs.cast.i113 = ptrtoint ptr %add.ptr to i32
  %multitex.i100.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 12
  %vertex_count.i.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 15
  %agp_texture.i.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 11
  %d_addr60.i.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 2
  %z_addr41.i.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 1
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %state.0222 = phi i32 [ 0, %while.body.lr.ph ], [ %state.1, %sw.epilog.while.body_crit_edge ]
  %buf.addr.0216 = phi ptr [ %buf, %while.body.lr.ph ], [ %buf.addr.4, %sw.epilog.while.body_crit_edge ]
  %11 = zext i32 %state.0222 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state.0222, label %while.body.cleanup.sink.split_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %while.body.while.body.i90_crit_edge
    i32 3, label %sw.bb12
    i32 4, label %sw.bb14
    i32 0, label %sw.bb16
  ]

while.body.while.body.i90_crit_edge:              ; preds = %while.body
  br label %while.body.i90

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %while.body
  %sub.ptr.rhs.cast.i = ptrtoint ptr %buf.addr.0216 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i113, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i, 8
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #6
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %incdec.ptr.i = getelementptr i32, ptr %buf.addr.0216, i32 1
  %incdec.ptr1.i = getelementptr i32, ptr %buf.addr.0216, i32 2
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr.i, align 4
  %shr.i = lshr i32 %13, 16
  %trunc.i = trunc i32 %shr.i to i16
  %14 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %trunc.i, label %sw.default.i [
    i16 0, label %sw.bb.i
    i16 1, label %if.end.i.sw.epilog.i_crit_edge
    i16 2, label %sw.bb5.i
    i16 258, label %sw.bb6.i
    i16 -510, label %sw.bb8.i
    i16 254, label %sw.bb9.i
    i16 5123, label %sw.bb14.i
    i16 3, label %if.end.i.sw.bb19.i_crit_edge
    i16 259, label %if.end.i.sw.bb19.i_crit_edge413
    i16 4099, label %sw.bb20.i
  ]

if.end.i.sw.bb19.i_crit_edge413:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19.i

if.end.i.sw.bb19.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  %15 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev6, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_private.i.i, align 4
  %cmp184.i.i = icmp ult ptr %incdec.ptr1.i, %add.ptr
  br i1 %cmp184.i.i, label %while.body.lr.ph.i.i, label %sw.bb.i.if.end3.i_crit_edge

sw.bb.i.if.end3.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

while.body.lr.ph.i.i:                             ; preds = %sw.bb.i
  %num_fire_offsets.i.i = getelementptr inbounds %struct.drm_via_private, ptr %18, i32 0, i32 21
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end99.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %ret.0186.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %ret.2152.i.i, %if.end99.i.i.while.body.i.i_crit_edge ]
  %buf.0185.i.i = phi ptr [ %incdec.ptr1.i, %while.body.lr.ph.i.i ], [ %buf.3151.i.i, %if.end99.i.i.while.body.i.i_crit_edge ]
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %buf.0185.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i113, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i.i)
  %cmp1.i.i = icmp slt i32 %sub.ptr.sub.i.i, 8
  br i1 %cmp1.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #6
  br label %sw.epilog

if.end.i.i:                                       ; preds = %while.body.i.i
  %19 = ptrtoint ptr %buf.0185.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf.0185.i.i, align 4
  %and.i.i = and i32 %20, -33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 -335544320, i32 %and.i.i)
  %cmp2.not.i.i = icmp eq i32 %and.i.i, -335544320
  br i1 %cmp2.not.i.i, label %if.end4.i.i, label %if.end.i.i.via_check_prim_list.exit.i_crit_edge

if.end.i.i.via_check_prim_list.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %via_check_prim_list.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %incdec.ptr.i.i = getelementptr i32, ptr %buf.0185.i.i, i32 1
  %21 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr.i.i, align 4
  %and5.i.i = and i32 %22, -33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 -301989888, i32 %and5.i.i)
  %cmp6.not.i.i = icmp eq i32 %and5.i.i, -301989888
  br i1 %cmp6.not.i.i, label %if.end8.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %22) #6
  br label %sw.epilog

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %incdec.ptr9.i.i = getelementptr i32, ptr %buf.0185.i.i, i32 2
  %or11.i.i = or i32 %22, 1049344
  %23 = ptrtoint ptr %agp7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %agp7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp ne i32 %24, 0
  %and12.i.i = and i32 %20, 30720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %cmp13.i.i = icmp eq i32 %and12.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp13.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then14.i.i, label %if.end15.i.i

if.then14.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #6
  br label %sw.epilog

if.end15.i.i:                                     ; preds = %if.end8.i.i
  %and16.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end15.i.i.if.end20.i.i_crit_edge, label %if.then18.i.i

if.end15.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %multitex.i100.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %multitex.i100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool19.not.i.i = icmp eq i32 %26, 0
  %cond.i.i = select i1 %tobool19.not.i.i, i32 1, i32 2
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then18.i.i, %if.end15.i.i.if.end20.i.i_crit_edge
  %dw_count.0.i.i = phi i32 [ %cond.i.i, %if.then18.i.i ], [ 0, %if.end15.i.i.if.end20.i.i_crit_edge ]
  %and21.i.i = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end20.i.i.if.end28.i.i_crit_edge, label %if.then23.i.i

if.end20.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i.i

if.then23.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %multitex.i100.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %multitex.i100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool25.not.i.i = icmp eq i32 %28, 0
  %cond26.i.i = select i1 %tobool25.not.i.i, i32 1, i32 2
  %add27.i.i = add nuw nsw i32 %cond26.i.i, %dw_count.0.i.i
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then23.i.i, %if.end20.i.i.if.end28.i.i_crit_edge
  %dw_count.1.i.i = phi i32 [ %add27.i.i, %if.then23.i.i ], [ %dw_count.0.i.i, %if.end20.i.i.if.end28.i.i_crit_edge ]
  %and29.i.i = lshr i32 %20, 9
  %and29.lobit.i.i = and i32 %and29.i.i, 1
  %and33.i.i = lshr i32 %20, 10
  %and33.lobit.i.i = and i32 %and33.i.i, 1
  %and38.i.i = lshr i32 %20, 11
  %and38.lobit.i.i = and i32 %and38.i.i, 1
  %and43.i.i = lshr i32 %20, 12
  %and43.lobit.i.i = and i32 %and43.i.i, 1
  %and48.i.i = lshr i32 %20, 13
  %and48.lobit.i.i = and i32 %and48.i.i, 1
  %and53.i.i = lshr i32 %20, 14
  %and53.lobit.i.i = and i32 %and53.i.i, 1
  %spec.select.i.i = add nuw nsw i32 %and33.lobit.i.i, %and29.lobit.i.i
  %dw_count.3.i.i = add nuw nsw i32 %spec.select.i.i, %and38.lobit.i.i
  %dw_count.4.i.i = add nuw nsw i32 %dw_count.3.i.i, %and43.lobit.i.i
  %dw_count.5.i.i = add nuw nsw i32 %dw_count.4.i.i, %and48.lobit.i.i
  %dw_count.6.i.i = add nuw nsw i32 %dw_count.5.i.i, %and53.lobit.i.i
  %dw_count.7.i.i = add nuw nsw i32 %dw_count.6.i.i, %dw_count.1.i.i
  %cmp59179.i.i = icmp ult ptr %incdec.ptr9.i.i, %add.ptr
  br i1 %cmp59179.i.i, label %while.body60.i.preheader.i, label %if.end28.i.i.while.end.i.i_crit_edge

if.end28.i.i.while.end.i.i_crit_edge:             ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.body60.i.preheader.i:                       ; preds = %if.end28.i.i
  %29 = ptrtoint ptr %incdec.ptr9.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %incdec.ptr9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %or11.i.i)
  %cmp61.i167.i = icmp eq i32 %30, %or11.i.i
  br i1 %cmp61.i167.i, label %while.body60.i.preheader.i.if.then62.i.i_crit_edge, label %while.body60.i.preheader.i.if.end75.i.i_crit_edge

while.body60.i.preheader.i.if.end75.i.i_crit_edge: ; preds = %while.body60.i.preheader.i
  br label %if.end75.i.i

while.body60.i.preheader.i.if.then62.i.i_crit_edge: ; preds = %while.body60.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62.i.i

while.body60.i.i:                                 ; preds = %eat_words.exit.i.i
  %31 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i.i, align 4
  %cmp61.i.i = icmp eq i32 %32, %or11.i.i
  br i1 %cmp61.i.i, label %while.body60.i.i.if.then62.i.i_crit_edge, label %while.body60.i.i.if.end75.i.i_crit_edge

while.body60.i.i.if.end75.i.i_crit_edge:          ; preds = %while.body60.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75.i.i

while.body60.i.i.if.then62.i.i_crit_edge:         ; preds = %while.body60.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62.i.i

if.then62.i.i:                                    ; preds = %while.body60.i.i.if.then62.i.i_crit_edge, %while.body60.i.preheader.i.if.then62.i.i_crit_edge
  %ret.1181.i.lcssa.i = phi i32 [ %ret.0186.i.i, %while.body60.i.preheader.i.if.then62.i.i_crit_edge ], [ 0, %while.body60.i.i.if.then62.i.i_crit_edge ]
  %buf.1180.i.lcssa.i = phi ptr [ %incdec.ptr9.i.i, %while.body60.i.preheader.i.if.then62.i.i_crit_edge ], [ %add.ptr.i.i.i, %while.body60.i.i.if.then62.i.i_crit_edge ]
  %33 = ptrtoint ptr %num_fire_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_fire_offsets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %34)
  %cmp63.i.i = icmp ugt i32 %34, 1023
  br i1 %cmp63.i.i, label %if.then62.i.i.while.end.sink.split.i.i_crit_edge, label %if.end65.i.i

if.then62.i.i.while.end.sink.split.i.i_crit_edge: ; preds = %if.then62.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.sink.split.i.i

if.end65.i.i:                                     ; preds = %if.then62.i.i
  %inc67.i.i = add nuw nsw i32 %34, 1
  %35 = ptrtoint ptr %num_fire_offsets.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %inc67.i.i, ptr %num_fire_offsets.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.drm_via_private, ptr %18, i32 0, i32 20, i32 %34
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.1180.i.lcssa.i, ptr %arrayidx.i.i, align 4
  %incdec.ptr68.i.i = getelementptr i32, ptr %buf.1180.i.lcssa.i, i32 1
  %cmp69.i.i = icmp ult ptr %incdec.ptr68.i.i, %add.ptr
  br i1 %cmp69.i.i, label %land.lhs.true70.i.i, label %if.end65.i.i.if.end88.i.i_crit_edge

if.end65.i.i.if.end88.i.i_crit_edge:              ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88.i.i

land.lhs.true70.i.i:                              ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %incdec.ptr68.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %incdec.ptr68.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %or11.i.i)
  %cmp71.i.i = icmp eq i32 %38, %or11.i.i
  %incdec.ptr73.i.i = getelementptr i32, ptr %buf.1180.i.lcssa.i, i32 2
  %spec.select153.i.i = select i1 %cmp71.i.i, ptr %incdec.ptr73.i.i, ptr %incdec.ptr68.i.i
  br label %if.end88.i.i

if.end75.i.i:                                     ; preds = %while.body60.i.i.if.end75.i.i_crit_edge, %while.body60.i.preheader.i.if.end75.i.i_crit_edge
  %39 = phi i32 [ %32, %while.body60.i.i.if.end75.i.i_crit_edge ], [ %30, %while.body60.i.preheader.i.if.end75.i.i_crit_edge ]
  %buf.1180.i168.i = phi ptr [ %add.ptr.i.i.i, %while.body60.i.i.if.end75.i.i_crit_edge ], [ %incdec.ptr9.i.i, %while.body60.i.preheader.i.if.end75.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -233770736, i32 %39)
  %cmp76.i.i = icmp eq i32 %39, -233770736
  %and77.i.i = and i32 %39, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 -300941312, i32 %and77.i.i)
  %cmp78.i.i = icmp eq i32 %and77.i.i, -300941312
  %or.cond135.i.i = or i1 %cmp76.i.i, %cmp78.i.i
  br i1 %or.cond135.i.i, label %if.end75.i.i.while.end.sink.split.i.i_crit_edge, label %if.end80.i.i

if.end75.i.i.while.end.sink.split.i.i_crit_edge:  ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.sink.split.i.i

if.end80.i.i:                                     ; preds = %if.end75.i.i
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %buf.1180.i168.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i113, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = ashr exact i32 %sub.ptr.sub.i.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i.i, i32 %dw_count.7.i.i)
  %cmp.not.i.i.i = icmp ult i32 %sub.ptr.div.i.i.i, %dw_count.7.i.i
  br i1 %cmp.not.i.i.i, label %if.end80.i.i.while.end.sink.split.i.i_crit_edge, label %eat_words.exit.i.i

if.end80.i.i.while.end.sink.split.i.i_crit_edge:  ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.sink.split.i.i

eat_words.exit.i.i:                               ; preds = %if.end80.i.i
  %add.ptr.i.i.i = getelementptr i32, ptr %buf.1180.i168.i, i32 %dw_count.7.i.i
  %cmp59.i.i = icmp ult ptr %add.ptr.i.i.i, %add.ptr
  br i1 %cmp59.i.i, label %while.body60.i.i, label %eat_words.exit.i.i.while.end.i.i_crit_edge

eat_words.exit.i.i.while.end.i.i_crit_edge:       ; preds = %eat_words.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.end.sink.split.i.i:                         ; preds = %if.end80.i.i.while.end.sink.split.i.i_crit_edge, %if.end75.i.i.while.end.sink.split.i.i_crit_edge, %if.then62.i.i.while.end.sink.split.i.i_crit_edge
  %buf.1180.i135.i = phi ptr [ %buf.1180.i.lcssa.i, %if.then62.i.i.while.end.sink.split.i.i_crit_edge ], [ %buf.1180.i168.i, %if.end75.i.i.while.end.sink.split.i.i_crit_edge ], [ %buf.1180.i168.i, %if.end80.i.i.while.end.sink.split.i.i_crit_edge ]
  %.str.13.sink.i.i = phi ptr [ @.str.9, %if.then62.i.i.while.end.sink.split.i.i_crit_edge ], [ @.str.13, %if.end80.i.i.while.end.sink.split.i.i_crit_edge ], [ @.str.10, %if.end75.i.i.while.end.sink.split.i.i_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.13.sink.i.i) #6
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.end.sink.split.i.i, %eat_words.exit.i.i.while.end.i.i_crit_edge, %if.end28.i.i.while.end.i.i_crit_edge
  %buf.1160.i.i = phi ptr [ %incdec.ptr9.i.i, %if.end28.i.i.while.end.i.i_crit_edge ], [ %buf.1180.i135.i, %while.end.sink.split.i.i ], [ %add.ptr.i.i.i, %eat_words.exit.i.i.while.end.i.i_crit_edge ]
  %ret.2.i.i = phi i32 [ %ret.0186.i.i, %if.end28.i.i.while.end.i.i_crit_edge ], [ 1, %while.end.sink.split.i.i ], [ 0, %eat_words.exit.i.i.while.end.i.i_crit_edge ]
  %cmp84.not.i.i = icmp ult ptr %buf.1160.i.i, %add.ptr
  br i1 %cmp84.not.i.i, label %while.end.i.i.if.end88.i.i_crit_edge, label %if.then87.i.i

while.end.i.i.if.end88.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88.i.i

if.then87.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #6
  br label %sw.epilog

if.end88.i.i:                                     ; preds = %while.end.i.i.if.end88.i.i_crit_edge, %land.lhs.true70.i.i, %if.end65.i.i.if.end88.i.i_crit_edge
  %ret.2152.i.i = phi i32 [ %ret.2.i.i, %while.end.i.i.if.end88.i.i_crit_edge ], [ %ret.1181.i.lcssa.i, %if.end65.i.i.if.end88.i.i_crit_edge ], [ %ret.1181.i.lcssa.i, %land.lhs.true70.i.i ]
  %buf.3151.i.i = phi ptr [ %buf.1160.i.i, %while.end.i.i.if.end88.i.i_crit_edge ], [ %incdec.ptr68.i.i, %if.end65.i.i.if.end88.i.i_crit_edge ], [ %spec.select153.i.i, %land.lhs.true70.i.i ]
  %40 = ptrtoint ptr %agp7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %agp7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool90.not.i.i = icmp eq i32 %41, 0
  br i1 %tobool90.not.i.i, label %if.end88.i.i.if.end99.i.i_crit_edge, label %land.lhs.true91.i.i

if.end88.i.i.if.end99.i.i_crit_edge:              ; preds = %if.end88.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99.i.i

land.lhs.true91.i.i:                              ; preds = %if.end88.i.i
  %42 = ptrtoint ptr %buf_start to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buf_start, align 4
  %sub.ptr.lhs.cast92.i.i = ptrtoint ptr %buf.3151.i.i to i32
  %sub.ptr.rhs.cast93.i.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub94.i.i = sub i32 %sub.ptr.lhs.cast92.i.i, %sub.ptr.rhs.cast93.i.i
  %44 = and i32 %sub.ptr.sub94.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool97.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool97.not.i.i, label %land.lhs.true91.i.i.if.end99.i.i_crit_edge, label %if.then98.i.i

land.lhs.true91.i.i.if.end99.i.i_crit_edge:       ; preds = %land.lhs.true91.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99.i.i

if.then98.i.i:                                    ; preds = %land.lhs.true91.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #6
  br label %sw.epilog

if.end99.i.i:                                     ; preds = %land.lhs.true91.i.i.if.end99.i.i_crit_edge, %if.end88.i.i.if.end99.i.i_crit_edge
  %cmp.i.i = icmp ult ptr %buf.3151.i.i, %add.ptr
  br i1 %cmp.i.i, label %if.end99.i.i.while.body.i.i_crit_edge, label %if.end99.i.i.via_check_prim_list.exit.i_crit_edge

if.end99.i.i.via_check_prim_list.exit.i_crit_edge: ; preds = %if.end99.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %via_check_prim_list.exit.i

if.end99.i.i.while.body.i.i_crit_edge:            ; preds = %if.end99.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

via_check_prim_list.exit.i:                       ; preds = %if.end99.i.i.via_check_prim_list.exit.i_crit_edge, %if.end.i.i.via_check_prim_list.exit.i_crit_edge
  %buf.4.i.i = phi ptr [ %buf.3151.i.i, %if.end99.i.i.via_check_prim_list.exit.i_crit_edge ], [ %buf.0185.i.i, %if.end.i.i.via_check_prim_list.exit.i_crit_edge ]
  %ret.3.i.i = phi i32 [ %ret.2152.i.i, %if.end99.i.i.via_check_prim_list.exit.i_crit_edge ], [ %ret.0186.i.i, %if.end.i.i.via_check_prim_list.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i.i)
  %tobool.not.i = icmp eq i32 %ret.3.i.i, 0
  br i1 %tobool.not.i, label %via_check_prim_list.exit.i.if.end3.i_crit_edge, label %via_check_prim_list.exit.i.sw.epilog_crit_edge

via_check_prim_list.exit.i.sw.epilog_crit_edge:   ; preds = %via_check_prim_list.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

via_check_prim_list.exit.i.if.end3.i_crit_edge:   ; preds = %via_check_prim_list.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %via_check_prim_list.exit.i.if.end3.i_crit_edge, %sw.bb.i.if.end3.i_crit_edge
  %buf.4.i117.i = phi ptr [ %buf.4.i.i, %via_check_prim_list.exit.i.if.end3.i_crit_edge ], [ %incdec.ptr1.i, %sw.bb.i.if.end3.i_crit_edge ]
  br label %sw.epilog

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %hc_state1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %hc_state1, align 4
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %hc_state1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %hc_state1, align 4
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.end.i
  %sub.ptr.rhs.cast.i72.i = ptrtoint ptr %incdec.ptr1.i to i32
  %sub.ptr.sub.i73.i = sub i32 %sub.ptr.lhs.cast.i113, %sub.ptr.rhs.cast.i72.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i73.i)
  %cmp.not.i.i = icmp ult i32 %sub.ptr.sub.i73.i, 8
  br i1 %cmp.not.i.i, label %eat_words.exit.i, label %if.end13.i

eat_words.exit.i:                                 ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #6
  br label %sw.epilog

if.end13.i:                                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i32, ptr %buf.addr.0216, i32 4
  br label %sw.epilog

sw.bb14.i:                                        ; preds = %if.end.i
  %sub.ptr.rhs.cast.i77.i = ptrtoint ptr %incdec.ptr1.i to i32
  %sub.ptr.sub.i78.i = sub i32 %sub.ptr.lhs.cast.i113, %sub.ptr.rhs.cast.i77.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub.ptr.sub.i78.i)
  %cmp.not.i80.i = icmp ult i32 %sub.ptr.sub.i78.i, 128
  br i1 %cmp.not.i80.i, label %eat_words.exit85.i, label %if.end18.i

eat_words.exit85.i:                               ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #6
  br label %sw.epilog

if.end18.i:                                       ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i81.i = getelementptr i32, ptr %buf.addr.0216, i32 34
  br label %sw.epilog

sw.bb19.i:                                        ; preds = %if.end.i.sw.bb19.i_crit_edge, %if.end.i.sw.bb19.i_crit_edge413
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #6
  br label %sw.epilog

sw.bb20.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #6
  br label %sw.epilog

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %buf.addr.0216 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buf.addr.0216, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %shr.i, i32 noundef %48) #6
  br label %sw.epilog

sw.epilog.i:                                      ; preds = %sw.bb8.i, %sw.bb6.i, %sw.bb5.i, %if.end.i.sw.epilog.i_crit_edge
  %hz_table.0.i = phi ptr [ @table3, %sw.bb8.i ], [ @table2, %sw.bb6.i ], [ @table2, %sw.bb5.i ], [ @table1, %if.end.i.sw.epilog.i_crit_edge ]
  %cmp21164.i = icmp ult ptr %incdec.ptr1.i, %add.ptr
  br i1 %cmp21164.i, label %sw.epilog.i.while.body.i_crit_edge, label %sw.epilog.i.while.end.i_crit_edge

sw.epilog.i.while.end.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end39.i.while.body.i_crit_edge, %sw.epilog.i.while.body.i_crit_edge
  %buf.2165.i = phi ptr [ %incdec.ptr22.i, %if.end39.i.while.body.i_crit_edge ], [ %incdec.ptr1.i, %sw.epilog.i.while.body.i_crit_edge ]
  %incdec.ptr22.i = getelementptr i32, ptr %buf.2165.i, i32 1
  %49 = ptrtoint ptr %buf.2165.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %buf.2165.i, align 4
  %shr23.i = lshr i32 %50, 24
  %arrayidx.i = getelementptr i32, ptr %hz_table.0.i, i32 %shr23.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool24.not.i = icmp eq i32 %52, 0
  %53 = ptrtoint ptr %unfinished to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %unfinished, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool34.not.i = icmp eq i32 %54, 0
  br i1 %tobool24.not.i, label %if.else.i, label %if.then25.i

if.then25.i:                                      ; preds = %while.body.i
  br i1 %tobool34.not.i, label %if.then25.i.if.end4.i90.i_crit_edge, label %land.lhs.true.i.i

if.then25.i.if.end4.i90.i_crit_edge:              ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i90.i

land.lhs.true.i.i:                                ; preds = %if.then25.i
  %arrayidx.i87.i = getelementptr [25 x i32], ptr @seqs, i32 0, i32 %52
  %55 = ptrtoint ptr %arrayidx.i87.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i87.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp.not.i88.i = icmp eq i32 %54, %56
  br i1 %cmp.not.i88.i, label %land.lhs.true.i.i.if.end4.i90.i_crit_edge, label %if.then.i89.i

land.lhs.true.i.i.if.end4.i90.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i90.i

if.then.i89.i:                                    ; preds = %land.lhs.true.i.i
  %call.i.i = tail call fastcc i32 @finish_current_sequence(ptr noundef %hc_state1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then.i89.i.if.end4.i90.i_crit_edge, label %if.then.i89.i.investigate_hazard.exit.i_crit_edge

if.then.i89.i.investigate_hazard.exit.i_crit_edge: ; preds = %if.then.i89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %investigate_hazard.exit.i

if.then.i89.i.if.end4.i90.i_crit_edge:            ; preds = %if.then.i89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i90.i

if.end4.i90.i:                                    ; preds = %if.then.i89.i.if.end4.i90.i_crit_edge, %land.lhs.true.i.i.if.end4.i90.i_crit_edge, %if.then25.i.if.end4.i90.i_crit_edge
  %57 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %52, label %sw.default.i.i [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb8.i.i
    i32 3, label %sw.bb12.i.i
    i32 4, label %sw.bb16.i.i
    i32 5, label %sw.bb21.i.i
    i32 12, label %sw.bb26.i.i
    i32 13, label %sw.bb30.i.i
    i32 6, label %sw.bb34.i.i
    i32 7, label %sw.bb39.i.i
    i32 8, label %sw.bb46.i.i
    i32 9, label %sw.bb52.i.i
    i32 10, label %sw.bb58.i.i
    i32 11, label %sw.bb66.i.i
    i32 14, label %sw.bb72.i.i
    i32 15, label %sw.bb79.i.i
    i32 16, label %sw.bb100.i.i
    i32 17, label %sw.bb108.i.i
    i32 18, label %sw.bb137.i.i
    i32 19, label %if.end4.i90.i.sw.bb147.i.i_crit_edge
    i32 20, label %if.end4.i90.i.sw.bb147.i.i_crit_edge414
    i32 21, label %sw.bb149.i.i
    i32 22, label %sw.bb177.i.i
    i32 23, label %sw.bb198.i.i
    i32 24, label %sw.bb209.i.i
    i32 25, label %sw.bb211.i.i
  ]

if.end4.i90.i.sw.bb147.i.i_crit_edge414:          ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb147.i.i

if.end4.i90.i.sw.bb147.i.i_crit_edge:             ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb147.i.i

sw.bb.i.i:                                        ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -233770736, i32 %50)
  %cmp5.i.i = icmp eq i32 %50, -233770736
  %..i.i = zext i1 %cmp5.i.i to i32
  br label %investigate_hazard.exit.i

sw.bb8.i.i:                                       ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i91.i = and i32 %50, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i91.i)
  %cmp9.i.i = icmp eq i32 %and.i91.i, -268435456
  %.338.i.i = zext i1 %cmp9.i.i to i32
  br label %investigate_hazard.exit.i

sw.bb12.i.i:                                      ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -233770736, i32 %50)
  %cmp13.i92.i = icmp eq i32 %50, -233770736
  br i1 %cmp13.i92.i, label %sw.bb12.i.i.while.end.i_crit_edge, label %if.end15.i93.i

sw.bb12.i.i.while.end.i_crit_edge:                ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end15.i93.i:                                   ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #6
  br label %sw.epilog

sw.bb16.i.i:                                      ; preds = %if.end4.i90.i
  %and17.i.i = and i32 %50, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and17.i.i)
  %cmp18.i.i = icmp eq i32 %and17.i.i, -268435456
  br i1 %cmp18.i.i, label %sw.bb16.i.i.while.end.i_crit_edge, label %if.end20.i94.i

sw.bb16.i.i.while.end.i_crit_edge:                ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end20.i94.i:                                   ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #6
  br label %sw.epilog

sw.bb21.i.i:                                      ; preds = %if.end4.i90.i
  %and22.i.i = and i32 %50, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 -300941312, i32 %and22.i.i)
  %cmp23.i.i = icmp eq i32 %and22.i.i, -300941312
  br i1 %cmp23.i.i, label %sw.bb21.i.i.while.end.i_crit_edge, label %if.end25.i.i

sw.bb21.i.i.while.end.i_crit_edge:                ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end25.i.i:                                     ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #6
  br label %sw.epilog

sw.bb26.i.i:                                      ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -858993460, i32 %50)
  %cmp27.i.i = icmp eq i32 %50, -858993460
  br i1 %cmp27.i.i, label %sw.bb26.i.i.if.end39.i_crit_edge, label %if.end29.i.i

sw.bb26.i.i.if.end39.i_crit_edge:                 ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.end29.i.i:                                     ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %sw.epilog

sw.bb30.i.i:                                      ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -572662307, i32 %50)
  %cmp31.i.i = icmp eq i32 %50, -572662307
  br i1 %cmp31.i.i, label %sw.bb30.i.i.if.end39.i_crit_edge, label %if.end33.i.i

sw.bb30.i.i.if.end39.i_crit_edge:                 ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.end33.i.i:                                     ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #6
  br label %sw.epilog

sw.bb34.i.i:                                      ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %unfinished to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %unfinished, align 4
  %59 = ptrtoint ptr %z_addr41.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %z_addr41.i.i, align 4
  %and36.i.i = and i32 %60, -16777216
  %and37.i.i = and i32 %50, 16777215
  %or.i.i = or i32 %and36.i.i, %and37.i.i
  store i32 %or.i.i, ptr %z_addr41.i.i, align 4
  br label %if.end39.i

sw.bb39.i.i:                                      ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %unfinished to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %unfinished, align 4
  %62 = ptrtoint ptr %z_addr41.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %z_addr41.i.i, align 4
  %and42.i.i = and i32 %63, 16777215
  %shl.i.i = shl i32 %50, 24
  %or44.i.i = or i32 %and42.i.i, %shl.i.i
  store i32 %or44.i.i, ptr %z_addr41.i.i, align 4
  br label %if.end39.i

sw.bb46.i.i:                                      ; preds = %if.end4.i90.i
  %64 = ptrtoint ptr %unfinished to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %unfinished, align 4
  %and48.i95.i = and i32 %50, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i95.i)
  %cmp49.i.i = icmp eq i32 %and48.i95.i, 0
  br i1 %cmp49.i.i, label %sw.bb46.i.i.if.end39.i_crit_edge, label %if.end51.i.i

sw.bb46.i.i.if.end39.i_crit_edge:                 ; preds = %sw.bb46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.end51.i.i:                                     ; preds = %sw.bb46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #6
  br label %sw.epilog

sw.bb52.i.i:                                      ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %unfinished to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %unfinished, align 4
  %66 = ptrtoint ptr %d_addr60.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %d_addr60.i.i, align 4
  %and54.i.i = and i32 %67, -16777216
  %and55.i.i = and i32 %50, 16777215
  %or56.i.i = or i32 %and54.i.i, %and55.i.i
  store i32 %or56.i.i, ptr %d_addr60.i.i, align 4
  br label %if.end39.i

sw.bb58.i.i:                                      ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %unfinished to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %unfinished, align 4
  %69 = ptrtoint ptr %d_addr60.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %d_addr60.i.i, align 4
  %and61.i.i = and i32 %70, 16777215
  %shl63.i.i = shl i32 %50, 24
  %or64.i.i = or i32 %and61.i.i, %shl63.i.i
  store i32 %or64.i.i, ptr %d_addr60.i.i, align 4
  br label %if.end39.i

sw.bb66.i.i:                                      ; preds = %if.end4.i90.i
  %71 = ptrtoint ptr %unfinished to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %unfinished, align 4
  %and68.i.i = and i32 %50, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i.i)
  %cmp69.i96.i = icmp eq i32 %and68.i.i, 0
  br i1 %cmp69.i96.i, label %sw.bb66.i.i.if.end39.i_crit_edge, label %if.end71.i.i

sw.bb66.i.i.if.end39.i_crit_edge:                 ; preds = %sw.bb66.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.end71.i.i:                                     ; preds = %sw.bb66.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #6
  br label %sw.epilog

sw.bb72.i.i:                                      ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %unfinished to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 3, ptr %unfinished, align 4
  %73 = ptrtoint ptr %hc_state1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hc_state1, align 4
  %arrayidx75.i.i = getelementptr %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 3, i32 %74, i32 %shr23.i
  %75 = ptrtoint ptr %arrayidx75.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx75.i.i, align 4
  %and76.i.i = and i32 %76, -16777216
  %and77.i97.i = and i32 %50, 16777215
  %or78.i.i = or i32 %and76.i.i, %and77.i97.i
  store i32 %or78.i.i, ptr %arrayidx75.i.i, align 4
  br label %if.end39.i

sw.bb79.i.i:                                      ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %unfinished to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3, ptr %unfinished, align 4
  %78 = mul nuw nsw i32 %shr23.i, 3
  %add.i.i = add nsw i32 %78, -96
  %79 = ptrtoint ptr %hc_state1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %hc_state1, align 4
  %arrayidx86.i.i = getelementptr %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 3, i32 %80, i32 %add.i.i
  %81 = ptrtoint ptr %arrayidx86.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx86.i.i, align 4
  %and87.i.i = and i32 %82, 16777215
  %shl89.i.i = shl i32 %50, 24
  %or90.i.i = or i32 %and87.i.i, %shl89.i.i
  store i32 %or90.i.i, ptr %arrayidx86.i.i, align 4
  %incdec.ptr.i98.i = getelementptr i32, ptr %arrayidx86.i.i, i32 1
  %83 = ptrtoint ptr %incdec.ptr.i98.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %incdec.ptr.i98.i, align 4
  %and91.i.i = and i32 %84, 16777215
  %and92.i.i = shl i32 %50, 16
  %shl93.i.i = and i32 %and92.i.i, -16777216
  %or94.i.i = or i32 %and91.i.i, %shl93.i.i
  store i32 %or94.i.i, ptr %incdec.ptr.i98.i, align 4
  %incdec.ptr95.i.i = getelementptr i32, ptr %arrayidx86.i.i, i32 2
  %85 = ptrtoint ptr %incdec.ptr95.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %incdec.ptr95.i.i, align 4
  %and96.i.i = and i32 %86, 16777215
  %and97.i.i = shl i32 %50, 8
  %shl98.i.i = and i32 %and97.i.i, -16777216
  %or99.i.i = or i32 %and96.i.i, %shl98.i.i
  store i32 %or99.i.i, ptr %incdec.ptr95.i.i, align 4
  br label %if.end39.i

sw.bb100.i.i:                                     ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %unfinished to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 3, ptr %unfinished, align 4
  %and102.i.i = and i32 %50, 63
  %88 = ptrtoint ptr %hc_state1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %hc_state1, align 4
  %arrayidx104.i.i = getelementptr %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 6, i32 %89
  %90 = ptrtoint ptr %arrayidx104.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %and102.i.i, ptr %arrayidx104.i.i, align 4
  %and105.i.i = lshr i32 %50, 6
  %shr106.i.i = and i32 %and105.i.i, 63
  %arrayidx107.i.i = getelementptr %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 7, i32 %89
  %91 = ptrtoint ptr %arrayidx107.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %shr106.i.i, ptr %arrayidx107.i.i, align 4
  br label %if.end39.i

sw.bb108.i.i:                                     ; preds = %if.end4.i90.i
  %92 = ptrtoint ptr %unfinished to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 3, ptr %unfinished, align 4
  %sub111.i.i = add nsw i32 %shr23.i, -43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub111.i.i)
  %cmp112.i.i = icmp ne i32 %sub111.i.i, 0
  %and114.i.i = and i32 %50, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i.i)
  %tobool115.not.i.i = icmp eq i32 %and114.i.i, 0
  %or.cond.i99.i = or i1 %tobool115.not.i.i, %cmp112.i.i
  br i1 %or.cond.i99.i, label %if.else.i.i, label %if.then116.i.i

if.then116.i.i:                                   ; preds = %sw.bb108.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and117.i.i = and i32 %50, 16383
  %93 = ptrtoint ptr %hc_state1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %hc_state1, align 4
  %arrayidx119.i.i = getelementptr %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 4, i32 %94
  %95 = ptrtoint ptr %arrayidx119.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %and117.i.i, ptr %arrayidx119.i.i, align 4
  %arrayidx122.i.i = getelementptr %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 9, i32 %94
  %96 = ptrtoint ptr %arrayidx122.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %arrayidx122.i.i, align 4
  br label %if.end39.i

if.else.i.i:                                      ; preds = %sw.bb108.i.i
  %and123.i.i = lshr i32 %50, 20
  %shr124.i.i = and i32 %and123.i.i, 15
  %97 = ptrtoint ptr %hc_state1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %hc_state1, align 4
  %arrayidx128.i.i = getelementptr %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 4, i32 %98, i32 %sub111.i.i
  %99 = ptrtoint ptr %arrayidx128.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %shr124.i.i, ptr %arrayidx128.i.i, align 4
  %100 = load i32, ptr %hc_state1, align 4
  %arrayidx131.i.i = getelementptr %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 9, i32 %100
  %101 = ptrtoint ptr %arrayidx131.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %arrayidx131.i.i, align 4
  %and132.i.i = and i32 %50, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132.i.i)
  %tobool133.not.i.i = icmp eq i32 %and132.i.i, 0
  br i1 %tobool133.not.i.i, label %if.else.i.i.if.end39.i_crit_edge, label %if.then134.i.i

if.else.i.i.if.end39.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.then134.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #6
  br label %sw.epilog

sw.bb137.i.i:                                     ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %unfinished to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 3, ptr %unfinished, align 4
  %103 = ptrtoint ptr %hc_state1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %hc_state1, align 4
  %arrayidx142.i.i = getelementptr %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 3, i32 %104, i32 9
  %105 = ptrtoint ptr %arrayidx142.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx142.i.i, align 4
  %and143.i.i = and i32 %106, 16777215
  %shl145.i.i = shl i32 %50, 24
  %or146.i.i = or i32 %and143.i.i, %shl145.i.i
  store i32 %or146.i.i, ptr %arrayidx142.i.i, align 4
  br label %if.end39.i

sw.bb147.i.i:                                     ; preds = %if.end4.i90.i.sw.bb147.i.i_crit_edge, %if.end4.i90.i.sw.bb147.i.i_crit_edge414
  %107 = ptrtoint ptr %unfinished to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 3, ptr %unfinished, align 4
  br label %if.end39.i

sw.bb149.i.i:                                     ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %unfinished to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 3, ptr %unfinished, align 4
  %109 = ptrtoint ptr %hc_state1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %hc_state1, align 4
  %arrayidx152.i.i = getelementptr %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 5, i32 %110
  %and154.i.i = lshr i32 %50, 20
  %shr155.i.i = and i32 %and154.i.i, 15
  %shl156.i.i = shl nuw nsw i32 1, %shr155.i.i
  %arrayidx157.i.i = getelementptr i32, ptr %arrayidx152.i.i, i32 5
  %111 = ptrtoint ptr %arrayidx157.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %shl156.i.i, ptr %arrayidx157.i.i, align 4
  %and158.i.i = lshr i32 %50, 16
  %shr159.i.i = and i32 %and158.i.i, 15
  %shl160.i.i = shl nuw nsw i32 1, %shr159.i.i
  %arrayidx161.i.i = getelementptr i32, ptr %arrayidx152.i.i, i32 4
  %112 = ptrtoint ptr %arrayidx161.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %shl160.i.i, ptr %arrayidx161.i.i, align 4
  %and162.i.i = lshr i32 %50, 12
  %shr163.i.i = and i32 %and162.i.i, 15
  %shl164.i.i = shl nuw nsw i32 1, %shr163.i.i
  %arrayidx165.i.i = getelementptr i32, ptr %arrayidx152.i.i, i32 3
  %113 = ptrtoint ptr %arrayidx165.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %shl164.i.i, ptr %arrayidx165.i.i, align 4
  %and166.i.i = lshr i32 %50, 8
  %shr167.i.i = and i32 %and166.i.i, 15
  %shl168.i.i = shl nuw nsw i32 1, %shr167.i.i
  %arrayidx169.i.i = getelementptr i32, ptr %arrayidx152.i.i, i32 2
  %114 = ptrtoint ptr %arrayidx169.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %shl168.i.i, ptr %arrayidx169.i.i, align 4
  %and170.i.i = lshr i32 %50, 4
  %shr171.i.i = and i32 %and170.i.i, 15
  %shl172.i.i = shl nuw nsw i32 1, %shr171.i.i
  %arrayidx173.i.i = getelementptr i32, ptr %arrayidx152.i.i, i32 1
  %115 = ptrtoint ptr %arrayidx173.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %shl172.i.i, ptr %arrayidx173.i.i, align 4
  %and174.i.i = and i32 %50, 15
  %shl175.i.i = shl nuw nsw i32 1, %and174.i.i
  %116 = ptrtoint ptr %arrayidx152.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %shl175.i.i, ptr %arrayidx152.i.i, align 4
  br label %if.end39.i

sw.bb177.i.i:                                     ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %unfinished to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 3, ptr %unfinished, align 4
  %118 = ptrtoint ptr %hc_state1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %hc_state1, align 4
  %arrayidx181.i.i = getelementptr %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 5, i32 %119
  %and183.i.i = lshr i32 %50, 12
  %shr184.i.i = and i32 %and183.i.i, 15
  %shl185.i.i = shl nuw nsw i32 1, %shr184.i.i
  %arrayidx186.i.i = getelementptr i32, ptr %arrayidx181.i.i, i32 9
  %120 = ptrtoint ptr %arrayidx186.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %shl185.i.i, ptr %arrayidx186.i.i, align 4
  %and187.i.i = lshr i32 %50, 8
  %shr188.i.i = and i32 %and187.i.i, 15
  %shl189.i.i = shl nuw nsw i32 1, %shr188.i.i
  %arrayidx190.i.i = getelementptr i32, ptr %arrayidx181.i.i, i32 8
  %121 = ptrtoint ptr %arrayidx190.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %shl189.i.i, ptr %arrayidx190.i.i, align 4
  %and191.i.i = lshr i32 %50, 4
  %shr192.i.i = and i32 %and191.i.i, 15
  %shl193.i.i = shl nuw nsw i32 1, %shr192.i.i
  %arrayidx194.i.i = getelementptr i32, ptr %arrayidx181.i.i, i32 7
  %122 = ptrtoint ptr %arrayidx194.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %shl193.i.i, ptr %arrayidx194.i.i, align 4
  %and195.i.i = and i32 %50, 15
  %shl196.i.i = shl nuw nsw i32 1, %and195.i.i
  %arrayidx197.i.i = getelementptr i32, ptr %arrayidx181.i.i, i32 6
  %123 = ptrtoint ptr %arrayidx197.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %shl196.i.i, ptr %arrayidx197.i.i, align 4
  br label %if.end39.i

sw.bb198.i.i:                                     ; preds = %if.end4.i90.i
  %124 = ptrtoint ptr %unfinished to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 3, ptr %unfinished, align 4
  %and200.i.i = and i32 %50, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and200.i.i)
  %cmp201.i.i = icmp eq i32 %and200.i.i, 2
  br i1 %cmp201.i.i, label %if.then202.i.i, label %if.end203.i.i

if.then202.i.i:                                   ; preds = %sw.bb198.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #6
  br label %sw.epilog

if.end203.i.i:                                    ; preds = %sw.bb198.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and200.i.i)
  %cmp204.i.i = icmp eq i32 %and200.i.i, 3
  %conv.i.i = zext i1 %cmp204.i.i to i32
  %125 = ptrtoint ptr %agp_texture.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv.i.i, ptr %agp_texture.i.i, align 4
  %shr205.i.i = lshr i32 %50, 16
  %and206.i.i = and i32 %shr205.i.i, 7
  %126 = ptrtoint ptr %hc_state1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %hc_state1, align 4
  %arrayidx208.i.i = getelementptr %struct.drm_via_private, ptr %1, i32 0, i32 18, i32 8, i32 %127
  %128 = ptrtoint ptr %arrayidx208.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %and206.i.i, ptr %arrayidx208.i.i, align 4
  br label %if.end39.i

sw.bb209.i.i:                                     ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  %and210.i.i = and i32 %50, 65535
  %129 = ptrtoint ptr %vertex_count.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %and210.i.i, ptr %vertex_count.i.i, align 4
  br label %if.end39.i

sw.bb211.i.i:                                     ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr212.i.i = lshr i32 %50, 3
  %and213.i.i = and i32 %shr212.i.i, 1
  %130 = ptrtoint ptr %multitex.i100.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %and213.i.i, ptr %multitex.i100.i, align 4
  br label %if.end39.i

sw.default.i.i:                                   ; preds = %if.end4.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %50) #6
  br label %sw.epilog

investigate_hazard.exit.i:                        ; preds = %sw.bb8.i.i, %sw.bb.i.i, %if.then.i89.i.investigate_hazard.exit.i_crit_edge
  %retval.1.i.i = phi i32 [ %call.i.i, %if.then.i89.i.investigate_hazard.exit.i_crit_edge ], [ %..i.i, %sw.bb.i.i ], [ %.338.i.i, %sw.bb8.i.i ]
  %131 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %retval.1.i.i, label %investigate_hazard.exit.i.sw.epilog_crit_edge [
    i32 0, label %investigate_hazard.exit.i.if.end39.i_crit_edge
    i32 1, label %investigate_hazard.exit.i.while.end.i_crit_edge
  ]

investigate_hazard.exit.i.while.end.i_crit_edge:  ; preds = %investigate_hazard.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

investigate_hazard.exit.i.if.end39.i_crit_edge:   ; preds = %investigate_hazard.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

investigate_hazard.exit.i.sw.epilog_crit_edge:    ; preds = %investigate_hazard.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else.i:                                        ; preds = %while.body.i
  br i1 %tobool34.not.i, label %if.else.i.if.end39.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end39.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %call35.i = tail call fastcc i32 @finish_current_sequence(ptr noundef %hc_state1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %land.lhs.true.i.if.end39.i_crit_edge, label %land.lhs.true.i.sw.epilog_crit_edge

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i.if.end39.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.end39.i:                                       ; preds = %land.lhs.true.i.if.end39.i_crit_edge, %if.else.i.if.end39.i_crit_edge, %investigate_hazard.exit.i.if.end39.i_crit_edge, %sw.bb211.i.i, %sw.bb209.i.i, %if.end203.i.i, %sw.bb177.i.i, %sw.bb149.i.i, %sw.bb147.i.i, %sw.bb137.i.i, %if.else.i.i.if.end39.i_crit_edge, %if.then116.i.i, %sw.bb100.i.i, %sw.bb79.i.i, %sw.bb72.i.i, %sw.bb66.i.i.if.end39.i_crit_edge, %sw.bb58.i.i, %sw.bb52.i.i, %sw.bb46.i.i.if.end39.i_crit_edge, %sw.bb39.i.i, %sw.bb34.i.i, %sw.bb30.i.i.if.end39.i_crit_edge, %sw.bb26.i.i.if.end39.i_crit_edge
  %cmp21.i = icmp ult ptr %incdec.ptr22.i, %add.ptr
  br i1 %cmp21.i, label %if.end39.i.while.body.i_crit_edge, label %if.end39.i.while.end.i_crit_edge

if.end39.i.while.end.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end39.i.while.body.i_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %if.end39.i.while.end.i_crit_edge, %investigate_hazard.exit.i.while.end.i_crit_edge, %sw.bb21.i.i.while.end.i_crit_edge, %sw.bb16.i.i.while.end.i_crit_edge, %sw.bb12.i.i.while.end.i_crit_edge, %sw.epilog.i.while.end.i_crit_edge
  %buf.2152.i = phi ptr [ %buf.2165.i, %sw.bb12.i.i.while.end.i_crit_edge ], [ %buf.2165.i, %sw.bb16.i.i.while.end.i_crit_edge ], [ %buf.2165.i, %sw.bb21.i.i.while.end.i_crit_edge ], [ %incdec.ptr1.i, %sw.epilog.i.while.end.i_crit_edge ], [ %buf.2165.i, %investigate_hazard.exit.i.while.end.i_crit_edge ], [ %incdec.ptr22.i, %if.end39.i.while.end.i_crit_edge ]
  %132 = ptrtoint ptr %unfinished to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %unfinished, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool41.not.i = icmp eq i32 %133, 0
  br i1 %tobool41.not.i, label %while.end.i.if.end46.i_crit_edge, label %land.lhs.true42.i

while.end.i.if.end46.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

land.lhs.true42.i:                                ; preds = %while.end.i
  %call43.i = tail call fastcc i32 @finish_current_sequence(ptr noundef %hc_state1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %land.lhs.true42.i.if.end46.i_crit_edge, label %land.lhs.true42.i.sw.epilog_crit_edge

land.lhs.true42.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true42.i.if.end46.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

if.end46.i:                                       ; preds = %land.lhs.true42.i.if.end46.i_crit_edge, %while.end.i.if.end46.i_crit_edge
  br label %sw.epilog

while.body.i90:                                   ; preds = %if.else11.i.while.body.i90_crit_edge, %while.body.while.body.i90_crit_edge
  %buf.027.i = phi ptr [ %add.ptr.i, %if.else11.i.while.body.i90_crit_edge ], [ %buf.addr.0216, %while.body.while.body.i90_crit_edge ]
  %134 = ptrtoint ptr %buf.027.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %buf.027.i, align 4
  %136 = add i32 %135, 268435200
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %136)
  %137 = icmp ult i32 %136, 512
  br i1 %137, label %if.then.i91, label %if.else.i92

if.then.i91:                                      ; preds = %while.body.i90
  %and.i = and i32 %135, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i)
  %cmp3.not.i = icmp eq i32 %and.i, -268435456
  br i1 %cmp3.not.i, label %if.then.i91.while.end.sink.split.i_crit_edge, label %if.then.i91.sw.epilog_crit_edge

if.then.i91.sw.epilog_crit_edge:                  ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i91.while.end.sink.split.i_crit_edge:     ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.sink.split.i

if.else.i92:                                      ; preds = %while.body.i90
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268434625, i32 %135)
  %cmp5.i = icmp ugt i32 %135, -268434625
  br i1 %cmp5.i, label %if.then6.i, label %if.else11.i

if.then6.i:                                       ; preds = %if.else.i92
  %and7.i = and i32 %135, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and7.i)
  %cmp8.not.i = icmp eq i32 %and7.i, -268435456
  br i1 %cmp8.not.i, label %if.then6.i.while.end.sink.split.i_crit_edge, label %if.then6.i.sw.epilog_crit_edge

if.then6.i.sw.epilog_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then6.i.while.end.sink.split.i_crit_edge:      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.sink.split.i

if.else11.i:                                      ; preds = %if.else.i92
  %add.ptr.i = getelementptr i32, ptr %buf.027.i, i32 2
  %cmp.i93 = icmp ult ptr %add.ptr.i, %add.ptr
  br i1 %cmp.i93, label %if.else11.i.while.body.i90_crit_edge, label %if.else11.i.sw.epilog_crit_edge

if.else11.i.sw.epilog_crit_edge:                  ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else11.i.while.body.i90_crit_edge:             ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i90

while.end.sink.split.i:                           ; preds = %if.then6.i.while.end.sink.split.i_crit_edge, %if.then.i91.while.end.sink.split.i_crit_edge
  %.str.28.sink.i = phi ptr [ @.str.27, %if.then.i91.while.end.sink.split.i_crit_edge ], [ @.str.28, %if.then6.i.while.end.sink.split.i_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.28.sink.i) #6
  br label %sw.epilog

sw.bb12:                                          ; preds = %while.body
  %sub.ptr.rhs.cast.i96 = ptrtoint ptr %buf.addr.0216 to i32
  %sub.ptr.sub.i97 = sub i32 %sub.ptr.lhs.cast.i113, %sub.ptr.rhs.cast.i96
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i97)
  %cmp.i98 = icmp slt i32 %sub.ptr.sub.i97, 16
  br i1 %cmp.i98, label %if.then.i99, label %if.end.i102

if.then.i99:                                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29) #6
  br label %sw.epilog

if.end.i102:                                      ; preds = %sw.bb12
  %incdec.ptr.i100 = getelementptr i32, ptr %buf.addr.0216, i32 1
  %138 = ptrtoint ptr %buf.addr.0216 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %buf.addr.0216, align 4
  %and.i101 = and i32 %139, 65535
  %140 = add nsw i32 %and.i101, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %140)
  %141 = icmp ult i32 %140, 2048
  br i1 %141, label %if.end.i102.verify_mmio_address.exit.i_crit_edge, label %if.else.i.i103

if.end.i102.verify_mmio_address.exit.i_crit_edge: ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %verify_mmio_address.exit.i

if.else.i.i103:                                   ; preds = %if.end.i102
  %142 = add nsw i32 %and.i101, -3328
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %142)
  %143 = icmp ult i32 %142, 1536
  br i1 %143, label %if.else.i.i103.verify_mmio_address.exit.i_crit_edge, label %if.else6.i.i

if.else.i.i103.verify_mmio_address.exit.i_crit_edge: ; preds = %if.else.i.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %verify_mmio_address.exit.i

if.else6.i.i:                                     ; preds = %if.else.i.i103
  call void @__sanitizer_cov_trace_const_cmp4(i32 5119, i32 %and.i101)
  %cmp7.i.i = icmp ugt i32 %and.i101, 5119
  br i1 %cmp7.i.i, label %if.else6.i.i.verify_mmio_address.exit.i_crit_edge, label %if.end2.i

if.else6.i.i.verify_mmio_address.exit.i_crit_edge: ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %verify_mmio_address.exit.i

verify_mmio_address.exit.i:                       ; preds = %if.else6.i.i.verify_mmio_address.exit.i_crit_edge, %if.else.i.i103.verify_mmio_address.exit.i_crit_edge, %if.end.i102.verify_mmio_address.exit.i_crit_edge
  %.str.33.sink.i.i = phi ptr [ @.str.31, %if.end.i102.verify_mmio_address.exit.i_crit_edge ], [ @.str.32, %if.else.i.i103.verify_mmio_address.exit.i_crit_edge ], [ @.str.33, %if.else6.i.i.verify_mmio_address.exit.i_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.33.sink.i.i) #6
  br label %sw.epilog

if.end2.i:                                        ; preds = %if.else6.i.i
  %incdec.ptr3.i = getelementptr i32, ptr %buf.addr.0216, i32 2
  %144 = ptrtoint ptr %incdec.ptr.i100 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %incdec.ptr.i100, align 4
  %146 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %incdec.ptr3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16056320, i32 %147)
  %cmp5.not.i = icmp eq i32 %147, 16056320
  br i1 %cmp5.not.i, label %if.end7.i, label %if.then6.i104

if.then6.i104:                                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30) #6
  br label %sw.epilog

if.end7.i:                                        ; preds = %if.end2.i
  %incdec.ptr4.i = getelementptr i32, ptr %buf.addr.0216, i32 3
  %incdec.ptr8.i = getelementptr i32, ptr %buf.addr.0216, i32 4
  %148 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %incdec.ptr4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp9.not.i = icmp eq i32 %149, 0
  br i1 %cmp9.not.i, label %if.end11.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30) #6
  br label %sw.epilog

if.end11.i:                                       ; preds = %if.end7.i
  %sub.ptr.rhs.cast.i.i105 = ptrtoint ptr %incdec.ptr8.i to i32
  %sub.ptr.sub.i.i106 = sub i32 %sub.ptr.lhs.cast.i113, %sub.ptr.rhs.cast.i.i105
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i106, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i, i32 %145)
  %cmp.not.i.i107 = icmp ult i32 %sub.ptr.div.i.i, %145
  br i1 %cmp.not.i.i107, label %eat_words.exit.i108, label %if.end15.i

eat_words.exit.i108:                              ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #6
  br label %sw.epilog

if.end15.i:                                       ; preds = %if.end11.i
  %add.ptr.i.i109 = getelementptr i32, ptr %incdec.ptr8.i, i32 %145
  %and16.i = and i32 %145, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.sw.epilog_crit_edge, label %land.lhs.true.i110

if.end15.i.sw.epilog_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i110:                               ; preds = %if.end15.i
  %sub.i = sub nuw nsw i32 4, %and16.i
  %sub.ptr.rhs.cast.i132 = ptrtoint ptr %add.ptr.i.i109 to i32
  %sub.ptr.sub.i133 = sub i32 %sub.ptr.lhs.cast.i113, %sub.ptr.rhs.cast.i132
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i133, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %sub.i)
  %cmp.i134 = icmp ult i32 %sub.ptr.div.i, %sub.i
  br i1 %cmp.i134, label %if.then.i136, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %land.lhs.true.i110
  %150 = shl nuw nsw i32 %sub.i, 2
  %uglygep.i135 = getelementptr i8, ptr %add.ptr.i.i109, i32 %150
  %incdec.ptr.i138 = getelementptr i32, ptr %add.ptr.i.i109, i32 1
  %151 = ptrtoint ptr %add.ptr.i.i109 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %add.ptr.i.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool1.not.i = icmp eq i32 %152, 0
  br i1 %tobool1.not.i, label %while.cond.i.1, label %while.cond.preheader.i.if.then2.i_crit_edge

while.cond.preheader.i.if.then2.i_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

if.then.i136:                                     ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34) #6
  br label %sw.epilog

while.cond.i.1:                                   ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and16.i)
  %tobool.not.i137.1 = icmp eq i32 %and16.i, 3
  br i1 %tobool.not.i137.1, label %while.cond.i.1.sw.epilog_crit_edge, label %while.body.i139.1

while.cond.i.1.sw.epilog_crit_edge:               ; preds = %while.cond.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.body.i139.1:                                ; preds = %while.cond.i.1
  %incdec.ptr.i138.1 = getelementptr i32, ptr %incdec.ptr.i138, i32 1
  %153 = ptrtoint ptr %incdec.ptr.i138 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %incdec.ptr.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool1.not.i.1 = icmp eq i32 %154, 0
  br i1 %tobool1.not.i.1, label %while.cond.i.2, label %while.body.i139.1.if.then2.i_crit_edge

while.body.i139.1.if.then2.i_crit_edge:           ; preds = %while.body.i139.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

while.cond.i.2:                                   ; preds = %while.body.i139.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and16.i)
  %tobool.not.i137.2 = icmp eq i32 %and16.i, 2
  br i1 %tobool.not.i137.2, label %while.cond.i.2.sw.epilog_crit_edge, label %while.body.i139.2

while.cond.i.2.sw.epilog_crit_edge:               ; preds = %while.cond.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.body.i139.2:                                ; preds = %while.cond.i.2
  %155 = ptrtoint ptr %incdec.ptr.i138.1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %incdec.ptr.i138.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool1.not.i.2 = icmp eq i32 %156, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and16.i)
  %tobool.not.i137.3 = icmp eq i32 %and16.i, 1
  %or.cond412 = select i1 %tobool1.not.i.2, i1 %tobool.not.i137.3, i1 false
  br i1 %or.cond412, label %while.body.i139.2.sw.epilog_crit_edge, label %while.body.i139.2.if.then2.i_crit_edge

while.body.i139.2.if.then2.i_crit_edge:           ; preds = %while.body.i139.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2.i

while.body.i139.2.sw.epilog_crit_edge:            ; preds = %while.body.i139.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then2.i:                                       ; preds = %while.body.i139.2.if.then2.i_crit_edge, %while.body.i139.1.if.then2.i_crit_edge, %while.cond.preheader.i.if.then2.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #6
  br label %sw.epilog

sw.bb14:                                          ; preds = %while.body
  %sub.ptr.rhs.cast.i114 = ptrtoint ptr %buf.addr.0216 to i32
  %sub.ptr.sub.i115 = sub i32 %sub.ptr.lhs.cast.i113, %sub.ptr.rhs.cast.i114
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i115)
  %cmp.i116 = icmp slt i32 %sub.ptr.sub.i115, 16
  br i1 %cmp.i116, label %if.then.i117, label %if.end.i121

if.then.i117:                                     ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36) #6
  br label %sw.epilog

if.end.i121:                                      ; preds = %sw.bb14
  %incdec.ptr.i118 = getelementptr i32, ptr %buf.addr.0216, i32 1
  %incdec.ptr1.i119 = getelementptr i32, ptr %buf.addr.0216, i32 2
  %157 = ptrtoint ptr %incdec.ptr.i118 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %incdec.ptr.i118, align 4
  %159 = ptrtoint ptr %incdec.ptr1.i119 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %incdec.ptr1.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16121856, i32 %160)
  %cmp3.not.i120 = icmp eq i32 %160, 16121856
  br i1 %cmp3.not.i120, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37) #6
  br label %sw.epilog

if.end5.i:                                        ; preds = %if.end.i121
  %incdec.ptr2.i = getelementptr i32, ptr %buf.addr.0216, i32 3
  %incdec.ptr6.i = getelementptr i32, ptr %buf.addr.0216, i32 4
  %161 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %incdec.ptr2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp7.not.i = icmp eq i32 %162, 0
  br i1 %cmp7.not.i, label %if.end9.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37) #6
  br label %sw.epilog

if.end9.i:                                        ; preds = %if.end5.i
  %sub.ptr.rhs.cast11.i = ptrtoint ptr %incdec.ptr6.i to i32
  %sub.ptr.sub12.i = sub i32 %sub.ptr.lhs.cast.i113, %sub.ptr.rhs.cast11.i
  %sub.ptr.div13.i = ashr exact i32 %sub.ptr.sub12.i, 2
  %shl.i = shl i32 %158, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div13.i, i32 %shl.i)
  %cmp14.i = icmp ult i32 %sub.ptr.div13.i, %shl.i
  br i1 %cmp14.i, label %if.then15.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp1742.not.i = icmp eq i32 %158, 0
  br i1 %cmp1742.not.i, label %for.cond.preheader.i.sw.epilog_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.sw.epilog_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %163 = shl i32 %158, 3
  %uglygep.i = getelementptr i8, ptr %incdec.ptr6.i, i32 %163
  br label %for.body.i

if.then15.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36) #6
  br label %sw.epilog

for.body.i:                                       ; preds = %if.end20.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.044.i = phi i32 [ %inc.i, %if.end20.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %incdec.ptr214143.i = phi ptr [ %incdec.ptr21.i, %if.end20.i.for.body.i_crit_edge ], [ %incdec.ptr6.i, %for.body.preheader.i ]
  %164 = ptrtoint ptr %incdec.ptr214143.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %incdec.ptr214143.i, align 4
  %166 = add i32 %165, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %166)
  %167 = icmp ult i32 %166, 2048
  br i1 %167, label %for.body.i.verify_mmio_address.exit.i126_crit_edge, label %if.else.i.i122

for.body.i.verify_mmio_address.exit.i126_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %verify_mmio_address.exit.i126

if.else.i.i122:                                   ; preds = %for.body.i
  %168 = add i32 %165, -3328
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %168)
  %169 = icmp ult i32 %168, 1536
  br i1 %169, label %if.else.i.i122.verify_mmio_address.exit.i126_crit_edge, label %if.else6.i.i124

if.else.i.i122.verify_mmio_address.exit.i126_crit_edge: ; preds = %if.else.i.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %verify_mmio_address.exit.i126

if.else6.i.i124:                                  ; preds = %if.else.i.i122
  call void @__sanitizer_cov_trace_const_cmp4(i32 5119, i32 %165)
  %cmp7.i.i123 = icmp ugt i32 %165, 5119
  br i1 %cmp7.i.i123, label %if.else6.i.i124.verify_mmio_address.exit.i126_crit_edge, label %if.end20.i

if.else6.i.i124.verify_mmio_address.exit.i126_crit_edge: ; preds = %if.else6.i.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %verify_mmio_address.exit.i126

verify_mmio_address.exit.i126:                    ; preds = %if.else6.i.i124.verify_mmio_address.exit.i126_crit_edge, %if.else.i.i122.verify_mmio_address.exit.i126_crit_edge, %for.body.i.verify_mmio_address.exit.i126_crit_edge
  %.str.33.sink.i.i125 = phi ptr [ @.str.31, %for.body.i.verify_mmio_address.exit.i126_crit_edge ], [ @.str.32, %if.else.i.i122.verify_mmio_address.exit.i126_crit_edge ], [ @.str.33, %if.else6.i.i124.verify_mmio_address.exit.i126_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.33.sink.i.i125) #6
  br label %sw.epilog

if.end20.i:                                       ; preds = %if.else6.i.i124
  %incdec.ptr21.i = getelementptr i32, ptr %incdec.ptr214143.i, i32 2
  %inc.i = add nuw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %158
  br i1 %exitcond.not.i, label %for.end.i, label %if.end20.i.for.body.i_crit_edge

if.end20.i.for.body.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end20.i
  %and.i127 = and i32 %shl.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i127)
  %tobool23.not.i = icmp eq i32 %and.i127, 0
  br i1 %tobool23.not.i, label %for.end.i.sw.epilog_crit_edge, label %land.lhs.true.i129

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true.i129:                               ; preds = %for.end.i
  %sub.i128 = sub nuw nsw i32 4, %and.i127
  %sub.ptr.rhs.cast.i143 = ptrtoint ptr %uglygep.i to i32
  %sub.ptr.sub.i144 = sub i32 %sub.ptr.lhs.cast.i113, %sub.ptr.rhs.cast.i143
  %sub.ptr.div.i145 = ashr exact i32 %sub.ptr.sub.i144, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i145, i32 %sub.i128)
  %cmp.i146 = icmp ult i32 %sub.ptr.div.i145, %sub.i128
  br i1 %cmp.i146, label %if.then.i149, label %while.cond.preheader.i148

while.cond.preheader.i148:                        ; preds = %land.lhs.true.i129
  %170 = shl nuw nsw i32 %sub.i128, 2
  %uglygep.i147 = getelementptr i8, ptr %uglygep.i, i32 %170
  br label %while.cond.i153

if.then.i149:                                     ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34) #6
  br label %sw.epilog

while.cond.i153:                                  ; preds = %while.body.i157.while.cond.i153_crit_edge, %while.cond.preheader.i148
  %dwords.addr.0.i150 = phi i32 [ %dec.i154, %while.body.i157.while.cond.i153_crit_edge ], [ %sub.i128, %while.cond.preheader.i148 ]
  %buf.0.i151 = phi ptr [ %incdec.ptr.i155, %while.body.i157.while.cond.i153_crit_edge ], [ %uglygep.i, %while.cond.preheader.i148 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dwords.addr.0.i150)
  %tobool.not.i152 = icmp eq i32 %dwords.addr.0.i150, 0
  br i1 %tobool.not.i152, label %while.cond.i153.sw.epilog_crit_edge, label %while.body.i157

while.cond.i153.sw.epilog_crit_edge:              ; preds = %while.cond.i153
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.body.i157:                                  ; preds = %while.cond.i153
  %dec.i154 = add i32 %dwords.addr.0.i150, -1
  %incdec.ptr.i155 = getelementptr i32, ptr %buf.0.i151, i32 1
  %171 = ptrtoint ptr %buf.0.i151 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %buf.0.i151, align 4
  %tobool1.not.i156 = icmp eq i32 %172, 0
  br i1 %tobool1.not.i156, label %while.body.i157.while.cond.i153_crit_edge, label %if.then2.i158

while.body.i157.while.cond.i153_crit_edge:        ; preds = %while.body.i157
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i153

if.then2.i158:                                    ; preds = %while.body.i157
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #6
  br label %sw.epilog

sw.bb16:                                          ; preds = %while.body
  %173 = ptrtoint ptr %buf.addr.0216 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %buf.addr.0216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -233770736, i32 %174)
  %cmp17 = icmp ne i32 %174, -233770736
  %brmerge = select i1 %cmp17, i1 true, i1 %cmp5.not
  br i1 %brmerge, label %if.else, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb16
  %and = and i32 %174, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and)
  %cmp19 = icmp eq i32 %and, -268435456
  br i1 %cmp19, label %if.else.sw.epilog_crit_edge, label %if.else22

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else22:                                        ; preds = %if.else
  %and25 = and i32 %174, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33292288, i32 %and25)
  %cmp26 = icmp eq i32 %and25, -33292288
  %or.cond = select i1 %switch, i1 %cmp26, i1 false
  br i1 %or.cond, label %if.else22.sw.epilog_crit_edge, label %if.else29

if.else22.sw.epilog_crit_edge:                    ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else29:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33226752, i32 %and25)
  %cmp33 = icmp eq i32 %and25, -33226752
  %or.cond89 = select i1 %switch, i1 %cmp33, i1 false
  br i1 %or.cond89, label %if.else29.sw.epilog_crit_edge, label %if.else36

if.else29.sw.epilog_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else36:                                        ; preds = %if.else29
  %brmerge86 = select i1 %cmp17, i1 true, i1 %cmp5.not.not
  br i1 %brmerge86, label %if.else42, label %if.then41

if.then41:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #6
  br label %sw.epilog

if.else42:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %174) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else42, %if.then41, %if.else29.sw.epilog_crit_edge, %if.else22.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge, %if.then2.i158, %while.cond.i153.sw.epilog_crit_edge, %if.then.i149, %for.end.i.sw.epilog_crit_edge, %verify_mmio_address.exit.i126, %if.then15.i, %for.cond.preheader.i.sw.epilog_crit_edge, %if.then8.i, %if.then4.i, %if.then.i117, %if.then2.i, %while.body.i139.2.sw.epilog_crit_edge, %while.cond.i.2.sw.epilog_crit_edge, %while.cond.i.1.sw.epilog_crit_edge, %if.then.i136, %if.end15.i.sw.epilog_crit_edge, %eat_words.exit.i108, %if.then10.i, %if.then6.i104, %verify_mmio_address.exit.i, %if.then.i99, %while.end.sink.split.i, %if.else11.i.sw.epilog_crit_edge, %if.then6.i.sw.epilog_crit_edge, %if.then.i91.sw.epilog_crit_edge, %if.end46.i, %land.lhs.true42.i.sw.epilog_crit_edge, %land.lhs.true.i.sw.epilog_crit_edge, %investigate_hazard.exit.i.sw.epilog_crit_edge, %sw.default.i.i, %if.then202.i.i, %if.then134.i.i, %if.end71.i.i, %if.end51.i.i, %if.end33.i.i, %if.end29.i.i, %if.end25.i.i, %if.end20.i94.i, %if.end15.i93.i, %sw.default.i, %sw.bb20.i, %sw.bb19.i, %if.end18.i, %eat_words.exit85.i, %if.end13.i, %eat_words.exit.i, %if.end3.i, %via_check_prim_list.exit.i.sw.epilog_crit_edge, %if.then98.i.i, %if.then87.i.i, %if.then14.i.i, %if.then7.i.i, %if.then.i.i, %if.then.i
  %buf.addr.4 = phi ptr [ %buf.addr.0216, %if.else.sw.epilog_crit_edge ], [ %buf.addr.0216, %if.else22.sw.epilog_crit_edge ], [ %buf.addr.0216, %if.else29.sw.epilog_crit_edge ], [ %buf.addr.0216, %if.else42 ], [ %buf.addr.0216, %if.then41 ], [ %buf.addr.0216, %sw.bb16.sw.epilog_crit_edge ], [ %buf.addr.0216, %if.then.i ], [ %incdec.ptr1.i, %sw.default.i ], [ %buf.addr.0216, %sw.bb20.i ], [ %buf.addr.0216, %sw.bb19.i ], [ %buf.addr.0216, %eat_words.exit85.i ], [ %add.ptr.i81.i, %if.end18.i ], [ %buf.addr.0216, %eat_words.exit.i ], [ %add.ptr.i.i, %if.end13.i ], [ %buf.2152.i, %if.end46.i ], [ %buf.addr.0216, %land.lhs.true42.i.sw.epilog_crit_edge ], [ %buf.addr.0216, %sw.default.i.i ], [ %buf.addr.0216, %if.then202.i.i ], [ %buf.addr.0216, %if.then134.i.i ], [ %buf.addr.0216, %if.end71.i.i ], [ %buf.addr.0216, %if.end51.i.i ], [ %buf.addr.0216, %if.end33.i.i ], [ %buf.addr.0216, %if.end29.i.i ], [ %buf.addr.0216, %if.end25.i.i ], [ %buf.addr.0216, %if.end20.i94.i ], [ %buf.addr.0216, %if.end15.i93.i ], [ %buf.addr.0216, %if.then.i.i ], [ %buf.addr.0216, %if.then14.i.i ], [ %buf.4.i117.i, %if.end3.i ], [ %buf.addr.0216, %via_check_prim_list.exit.i.sw.epilog_crit_edge ], [ %buf.addr.0216, %if.then98.i.i ], [ %buf.addr.0216, %if.then87.i.i ], [ %buf.addr.0216, %if.then7.i.i ], [ %buf.027.i, %if.then.i91.sw.epilog_crit_edge ], [ %buf.027.i, %if.then6.i.sw.epilog_crit_edge ], [ %buf.027.i, %while.end.sink.split.i ], [ %buf.addr.0216, %if.then.i99 ], [ %buf.addr.0216, %verify_mmio_address.exit.i ], [ %buf.addr.0216, %eat_words.exit.i108 ], [ %buf.addr.0216, %if.then10.i ], [ %buf.addr.0216, %if.then6.i104 ], [ %add.ptr.i.i109, %if.end15.i.sw.epilog_crit_edge ], [ %buf.addr.0216, %if.then.i117 ], [ %buf.addr.0216, %if.then15.i ], [ %buf.addr.0216, %verify_mmio_address.exit.i126 ], [ %buf.addr.0216, %if.then8.i ], [ %buf.addr.0216, %if.then4.i ], [ %incdec.ptr6.i, %for.cond.preheader.i.sw.epilog_crit_edge ], [ %uglygep.i, %for.end.i.sw.epilog_crit_edge ], [ %buf.addr.0216, %if.then.i136 ], [ %buf.addr.0216, %if.then2.i ], [ %buf.addr.0216, %if.then.i149 ], [ %buf.addr.0216, %if.then2.i158 ], [ %buf.addr.0216, %investigate_hazard.exit.i.sw.epilog_crit_edge ], [ %buf.addr.0216, %land.lhs.true.i.sw.epilog_crit_edge ], [ %add.ptr.i, %if.else11.i.sw.epilog_crit_edge ], [ %uglygep.i135, %while.cond.i.2.sw.epilog_crit_edge ], [ %uglygep.i135, %while.cond.i.1.sw.epilog_crit_edge ], [ %uglygep.i147, %while.cond.i153.sw.epilog_crit_edge ], [ %uglygep.i135, %while.body.i139.2.sw.epilog_crit_edge ]
  %cmp48 = phi i1 [ false, %if.else.sw.epilog_crit_edge ], [ false, %if.else22.sw.epilog_crit_edge ], [ false, %if.else29.sw.epilog_crit_edge ], [ true, %if.else42 ], [ true, %if.then41 ], [ false, %sw.bb16.sw.epilog_crit_edge ], [ true, %if.then.i ], [ true, %sw.default.i ], [ true, %sw.bb20.i ], [ true, %sw.bb19.i ], [ true, %eat_words.exit85.i ], [ false, %if.end18.i ], [ true, %eat_words.exit.i ], [ false, %if.end13.i ], [ false, %if.end46.i ], [ true, %land.lhs.true42.i.sw.epilog_crit_edge ], [ true, %sw.default.i.i ], [ true, %if.then202.i.i ], [ true, %if.then134.i.i ], [ true, %if.end71.i.i ], [ true, %if.end51.i.i ], [ true, %if.end33.i.i ], [ true, %if.end29.i.i ], [ true, %if.end25.i.i ], [ true, %if.end20.i94.i ], [ true, %if.end15.i93.i ], [ true, %if.then.i.i ], [ true, %if.then14.i.i ], [ false, %if.end3.i ], [ true, %via_check_prim_list.exit.i.sw.epilog_crit_edge ], [ true, %if.then98.i.i ], [ true, %if.then87.i.i ], [ true, %if.then7.i.i ], [ false, %if.then.i91.sw.epilog_crit_edge ], [ false, %if.then6.i.sw.epilog_crit_edge ], [ true, %while.end.sink.split.i ], [ true, %if.then.i99 ], [ true, %verify_mmio_address.exit.i ], [ true, %eat_words.exit.i108 ], [ true, %if.then10.i ], [ true, %if.then6.i104 ], [ false, %if.end15.i.sw.epilog_crit_edge ], [ true, %if.then.i117 ], [ true, %if.then15.i ], [ true, %verify_mmio_address.exit.i126 ], [ true, %if.then8.i ], [ true, %if.then4.i ], [ false, %for.cond.preheader.i.sw.epilog_crit_edge ], [ false, %for.end.i.sw.epilog_crit_edge ], [ true, %if.then.i136 ], [ true, %if.then2.i ], [ true, %if.then.i149 ], [ true, %if.then2.i158 ], [ true, %investigate_hazard.exit.i.sw.epilog_crit_edge ], [ true, %land.lhs.true.i.sw.epilog_crit_edge ], [ false, %if.else11.i.sw.epilog_crit_edge ], [ false, %while.cond.i.2.sw.epilog_crit_edge ], [ false, %while.cond.i.1.sw.epilog_crit_edge ], [ false, %while.cond.i153.sw.epilog_crit_edge ], [ false, %while.body.i139.2.sw.epilog_crit_edge ]
  %state.1 = phi i32 [ 2, %if.else.sw.epilog_crit_edge ], [ 3, %if.else22.sw.epilog_crit_edge ], [ 4, %if.else29.sw.epilog_crit_edge ], [ 5, %if.else42 ], [ 5, %if.then41 ], [ 1, %sw.bb16.sw.epilog_crit_edge ], [ 5, %if.then.i ], [ 5, %sw.default.i ], [ 5, %sw.bb20.i ], [ 5, %sw.bb19.i ], [ 5, %eat_words.exit85.i ], [ 0, %if.end18.i ], [ 5, %eat_words.exit.i ], [ 0, %if.end13.i ], [ 0, %if.end46.i ], [ 5, %land.lhs.true42.i.sw.epilog_crit_edge ], [ 5, %sw.default.i.i ], [ 5, %if.then202.i.i ], [ 5, %if.then134.i.i ], [ 5, %if.end71.i.i ], [ 5, %if.end51.i.i ], [ 5, %if.end33.i.i ], [ 5, %if.end29.i.i ], [ 5, %if.end25.i.i ], [ 5, %if.end20.i94.i ], [ 5, %if.end15.i93.i ], [ 5, %if.then.i.i ], [ 5, %if.then14.i.i ], [ 0, %if.end3.i ], [ 5, %via_check_prim_list.exit.i.sw.epilog_crit_edge ], [ 5, %if.then98.i.i ], [ 5, %if.then87.i.i ], [ 5, %if.then7.i.i ], [ 0, %if.then.i91.sw.epilog_crit_edge ], [ 0, %if.then6.i.sw.epilog_crit_edge ], [ 5, %while.end.sink.split.i ], [ 5, %if.then.i99 ], [ 5, %verify_mmio_address.exit.i ], [ 5, %eat_words.exit.i108 ], [ 5, %if.then10.i ], [ 5, %if.then6.i104 ], [ 0, %if.end15.i.sw.epilog_crit_edge ], [ 5, %if.then.i117 ], [ 5, %if.then15.i ], [ 5, %verify_mmio_address.exit.i126 ], [ 5, %if.then8.i ], [ 5, %if.then4.i ], [ 0, %for.cond.preheader.i.sw.epilog_crit_edge ], [ 0, %for.end.i.sw.epilog_crit_edge ], [ 5, %if.then.i136 ], [ 5, %if.then2.i ], [ 5, %if.then.i149 ], [ 5, %if.then2.i158 ], [ 5, %investigate_hazard.exit.i.sw.epilog_crit_edge ], [ 5, %land.lhs.true.i.sw.epilog_crit_edge ], [ 0, %if.else11.i.sw.epilog_crit_edge ], [ 0, %while.cond.i.2.sw.epilog_crit_edge ], [ 0, %while.cond.i.1.sw.epilog_crit_edge ], [ 0, %while.cond.i153.sw.epilog_crit_edge ], [ 0, %while.body.i139.2.sw.epilog_crit_edge ]
  %cmp8 = icmp ult ptr %buf.addr.4, %add.ptr
  br i1 %cmp8, label %sw.epilog.while.body_crit_edge, label %while.end

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %sw.epilog
  br i1 %cmp48, label %while.end.cleanup.sink.split_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.end.cleanup.sink.split_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.end.cleanup.sink.split_crit_edge, %while.body.cleanup.sink.split_crit_edge
  %175 = call ptr @memcpy(ptr %hc_state1, ptr %saved_state, i32 316)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 316, ptr nonnull %saved_state)
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_parse_command_stream(ptr nocapture noundef readonly %dev, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %shr = lshr i32 %size, 2
  %add.ptr = getelementptr i32, ptr %buf, i32 %shr
  %cmp94 = icmp ugt ptr %add.ptr, %buf
  br i1 %cmp94, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %mmio.i.i65 = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 3
  %num_fire_offsets.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 21
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %state.097 = phi i32 [ 0, %while.body.lr.ph ], [ %state.1, %sw.epilog.while.body_crit_edge ]
  %fire_count.096 = phi i32 [ 0, %while.body.lr.ph ], [ %fire_count.3, %sw.epilog.while.body_crit_edge ]
  %buf.addr.095 = phi ptr [ %buf, %while.body.lr.ph ], [ %buf.addr.1, %sw.epilog.while.body_crit_edge ]
  %2 = zext i32 %state.097 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %state.097, label %while.body.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %while.body.while.body.i_crit_edge
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
    i32 0, label %sw.bb7
  ]

while.body.while.body.i_crit_edge:                ; preds = %while.body
  br label %while.body.i

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %while.body
  %arrayidx.i = getelementptr %struct.drm_via_private, ptr %1, i32 0, i32 20, i32 %fire_count.096
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %buf.addr.095, i32 1
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %incdec.ptr.i, align 4
  %incdec.ptr1.i = getelementptr i32, ptr %buf.addr.095, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %8 = ptrtoint ptr %mmio.i.i65 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i65, align 4
  %handle.i.i = getelementptr inbounds %struct.drm_local_map, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 1084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #6, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %6)
  %cond.i = icmp ult i32 %6, 65536
  %cmp20.i = icmp ult ptr %incdec.ptr1.i, %add.ptr
  br i1 %cond.i, label %while.cond.preheader.i, label %while.cond23.preheader.i

while.cond23.preheader.i:                         ; preds = %sw.bb
  br i1 %cmp20.i, label %while.cond23.preheader.i.while.body25.i_crit_edge, label %while.cond23.preheader.i.sw.epilog_crit_edge

while.cond23.preheader.i.sw.epilog_crit_edge:     ; preds = %while.cond23.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.cond23.preheader.i.while.body25.i_crit_edge: ; preds = %while.cond23.preheader.i
  br label %while.body25.i

while.cond.preheader.i:                           ; preds = %sw.bb
  br i1 %cmp20.i, label %while.cond.preheader.i.land.lhs.true.i_crit_edge, label %while.cond.preheader.i.sw.epilog_crit_edge

while.cond.preheader.i.sw.epilog_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.cond.preheader.i.land.lhs.true.i_crit_edge: ; preds = %while.cond.preheader.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end21.i.land.lhs.true.i_crit_edge, %while.cond.preheader.i.land.lhs.true.i_crit_edge
  %fire_count.1 = phi i32 [ %inc.i, %if.end21.i.land.lhs.true.i_crit_edge ], [ %fire_count.096, %while.cond.preheader.i.land.lhs.true.i_crit_edge ]
  %burst.023.i = phi i32 [ %burst.1.lcssa.i, %if.end21.i.land.lhs.true.i_crit_edge ], [ 0, %while.cond.preheader.i.land.lhs.true.i_crit_edge ]
  %next_fire.022.i = phi ptr [ %next_fire.1.i, %if.end21.i.land.lhs.true.i_crit_edge ], [ %4, %while.cond.preheader.i.land.lhs.true.i_crit_edge ]
  %buf.021.i = phi ptr [ %buf.2.i, %if.end21.i.land.lhs.true.i_crit_edge ], [ %incdec.ptr1.i, %while.cond.preheader.i.land.lhs.true.i_crit_edge ]
  %12 = ptrtoint ptr %num_fire_offsets.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_fire_offsets.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %fire_count.1, i32 %13)
  %cmp2.i = icmp ult i32 %fire_count.1, %13
  br i1 %cmp2.i, label %land.rhs.i, label %land.lhs.true.i.sw.epilog_crit_edge

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %14 = ptrtoint ptr %buf.021.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf.021.i, align 4
  %and3.i = and i32 %15, -33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 -335544320, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, -335544320
  br i1 %cmp4.i, label %while.cond5.preheader.i, label %land.rhs.i.sw.epilog_crit_edge

land.rhs.i.sw.epilog_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

while.cond5.preheader.i:                          ; preds = %land.rhs.i
  %cmp6.not15.i = icmp ugt ptr %buf.021.i, %next_fire.022.i
  br i1 %cmp6.not15.i, label %while.cond5.preheader.i.while.end.i_crit_edge, label %while.cond5.preheader.i.while.body7.i_crit_edge

while.cond5.preheader.i.while.body7.i_crit_edge:  ; preds = %while.cond5.preheader.i
  br label %while.body7.i

while.cond5.preheader.i.while.end.i_crit_edge:    ; preds = %while.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body7.i:                                    ; preds = %while.body7.i.while.body7.i_crit_edge, %while.cond5.preheader.i.while.body7.i_crit_edge
  %burst.117.i = phi i32 [ %add10.i, %while.body7.i.while.body7.i_crit_edge ], [ %burst.023.i, %while.cond5.preheader.i.while.body7.i_crit_edge ]
  %buf.116.i = phi ptr [ %incdec.ptr9.i, %while.body7.i.while.body7.i_crit_edge ], [ %buf.021.i, %while.cond5.preheader.i.while.body7.i_crit_edge ]
  %and8.i = and i32 %burst.117.i, 63
  %add.i = or i32 %and8.i, 1088
  %incdec.ptr9.i = getelementptr i32, ptr %buf.116.i, i32 1
  %16 = ptrtoint ptr %buf.116.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf.116.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  %19 = ptrtoint ptr %mmio.i.i65 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i.i65, align 4
  %handle.i2.i = getelementptr inbounds %struct.drm_local_map, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %handle.i2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handle.i2.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %22, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %18) #6, !srcloc !100
  %add10.i = add i32 %burst.117.i, 4
  %cmp6.not.i = icmp ugt ptr %incdec.ptr9.i, %next_fire.022.i
  br i1 %cmp6.not.i, label %while.body7.i.while.end.i_crit_edge, label %while.body7.i.while.body7.i_crit_edge

while.body7.i.while.body7.i_crit_edge:            ; preds = %while.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body7.i

while.body7.i.while.end.i_crit_edge:              ; preds = %while.body7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %while.body7.i.while.end.i_crit_edge, %while.cond5.preheader.i.while.end.i_crit_edge
  %buf.1.lcssa.i = phi ptr [ %buf.021.i, %while.cond5.preheader.i.while.end.i_crit_edge ], [ %incdec.ptr9.i, %while.body7.i.while.end.i_crit_edge ]
  %burst.1.lcssa.i = phi i32 [ %burst.023.i, %while.cond5.preheader.i.while.end.i_crit_edge ], [ %add10.i, %while.body7.i.while.end.i_crit_edge ]
  %cmp11.i = icmp ult ptr %buf.1.lcssa.i, %add.ptr
  br i1 %cmp11.i, label %land.lhs.true12.i, label %while.end.i.if.end.i_crit_edge

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true12.i:                                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %buf.1.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf.1.lcssa.i, align 4
  %and13.i = and i32 %24, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 -300941312, i32 %and13.i)
  %cmp14.i = icmp eq i32 %and13.i, -300941312
  %spec.select.idx.i = zext i1 %cmp14.i to i32
  %spec.select.i = getelementptr i32, ptr %buf.1.lcssa.i, i32 %spec.select.idx.i
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true12.i, %while.end.i.if.end.i_crit_edge
  %buf.2.i = phi ptr [ %buf.1.lcssa.i, %while.end.i.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true12.i ]
  %inc.i = add i32 %fire_count.1, 1
  %25 = ptrtoint ptr %num_fire_offsets.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_fire_offsets.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %26)
  %cmp17.i = icmp ult i32 %inc.i, %26
  br i1 %cmp17.i, label %if.then18.i, label %if.end.i.if.end21.i_crit_edge

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

if.then18.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx20.i = getelementptr %struct.drm_via_private, ptr %1, i32 0, i32 20, i32 %inc.i
  %27 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx20.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then18.i, %if.end.i.if.end21.i_crit_edge
  %next_fire.1.i = phi ptr [ %28, %if.then18.i ], [ %next_fire.022.i, %if.end.i.if.end21.i_crit_edge ]
  %cmp.i = icmp ult ptr %buf.2.i, %add.ptr
  br i1 %cmp.i, label %if.end21.i.land.lhs.true.i_crit_edge, label %if.end21.i.sw.epilog_crit_edge

if.end21.i.sw.epilog_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end21.i.land.lhs.true.i_crit_edge:             ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

while.body25.i:                                   ; preds = %if.end36.i.while.body25.i_crit_edge, %while.cond23.preheader.i.while.body25.i_crit_edge
  %burst.210.i = phi i32 [ %add40.i, %if.end36.i.while.body25.i_crit_edge ], [ 0, %while.cond23.preheader.i.while.body25.i_crit_edge ]
  %buf.39.i = phi ptr [ %incdec.ptr39.i, %if.end36.i.while.body25.i_crit_edge ], [ %incdec.ptr1.i, %while.cond23.preheader.i.while.body25.i_crit_edge ]
  %29 = ptrtoint ptr %buf.39.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf.39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -233770736, i32 %30)
  %cmp26.i = icmp eq i32 %30, -233770736
  %and27.i = and i32 %30, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and27.i)
  %cmp28.i = icmp eq i32 %and27.i, -268435456
  %or.cond.i = or i1 %cmp26.i, %cmp28.i
  br i1 %or.cond.i, label %while.body25.i.sw.epilog_crit_edge, label %lor.lhs.false29.i

while.body25.i.sw.epilog_crit_edge:               ; preds = %while.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

lor.lhs.false29.i:                                ; preds = %while.body25.i
  %and30.i = and i32 %30, -65536
  %31 = zext i32 %and30.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %and30.i, label %if.end36.i [
    i32 -33292288, label %lor.lhs.false29.i.sw.epilog_crit_edge
    i32 -33226752, label %lor.lhs.false29.i.sw.epilog_crit_edge116
  ]

lor.lhs.false29.i.sw.epilog_crit_edge116:         ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

lor.lhs.false29.i.sw.epilog_crit_edge:            ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end36.i:                                       ; preds = %lor.lhs.false29.i
  %and37.i = and i32 %burst.210.i, 60
  %add38.i = or i32 %and37.i, 1088
  %incdec.ptr39.i = getelementptr i32, ptr %buf.39.i, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  %33 = ptrtoint ptr %mmio.i.i65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i.i65, align 4
  %handle.i5.i = getelementptr inbounds %struct.drm_local_map, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %handle.i5.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handle.i5.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %36, i32 %add38.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %32) #6, !srcloc !100
  %add40.i = add i32 %burst.210.i, 4
  %cmp24.i = icmp ult ptr %incdec.ptr39.i, %add.ptr
  br i1 %cmp24.i, label %if.end36.i.while.body25.i_crit_edge, label %if.end36.i.sw.epilog_crit_edge

if.end36.i.sw.epilog_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end36.i.while.body25.i_crit_edge:              ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body25.i

while.body.i:                                     ; preds = %if.end.i49.while.body.i_crit_edge, %while.body.while.body.i_crit_edge
  %buf.02.i = phi ptr [ %incdec.ptr3.i, %if.end.i49.while.body.i_crit_edge ], [ %buf.addr.095, %while.body.while.body.i_crit_edge ]
  %37 = ptrtoint ptr %buf.02.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buf.02.i, align 4
  %and.i = and i32 %38, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i)
  %cmp1.not.i = icmp eq i32 %and.i, -268435456
  br i1 %cmp1.not.i, label %if.end.i49, label %while.body.i.sw.epilog_crit_edge

while.body.i.sw.epilog_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i49:                                       ; preds = %while.body.i
  %and2.i = shl nsw i32 %38, 2
  %shl.i = and i32 %and2.i, 4092
  %incdec.ptr.i45 = getelementptr i32, ptr %buf.02.i, i32 1
  %39 = ptrtoint ptr %incdec.ptr.i45 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %incdec.ptr.i45, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #6
  %42 = ptrtoint ptr %mmio.i.i65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i.i65, align 4
  %handle.i.i46 = getelementptr inbounds %struct.drm_local_map, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %handle.i.i46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %handle.i.i46, align 4
  %add.ptr.i.i47 = getelementptr i8, ptr %45, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i47, i32 %41) #6, !srcloc !100
  %incdec.ptr3.i = getelementptr i32, ptr %buf.02.i, i32 2
  %cmp.i48 = icmp ult ptr %incdec.ptr3.i, %add.ptr
  br i1 %cmp.i48, label %if.end.i49.while.body.i_crit_edge, label %if.end.i49.sw.epilog_crit_edge

if.end.i49.sw.epilog_crit_edge:                   ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i49.while.body.i_crit_edge:                ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

sw.bb3:                                           ; preds = %while.body
  %incdec.ptr.i51 = getelementptr i32, ptr %buf.addr.095, i32 1
  %46 = ptrtoint ptr %buf.addr.095 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %buf.addr.095, align 4
  %and.i52 = and i32 %47, 65535
  %48 = ptrtoint ptr %incdec.ptr.i51 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %incdec.ptr.i51, align 4
  %add.ptr.i = getelementptr i32, ptr %buf.addr.095, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not1.i = icmp eq i32 %49, 0
  br i1 %tobool.not1.i, label %sw.bb3.via_parse_vheader5.exit_crit_edge, label %sw.bb3.while.body.i58_crit_edge

sw.bb3.while.body.i58_crit_edge:                  ; preds = %sw.bb3
  br label %while.body.i58

sw.bb3.via_parse_vheader5.exit_crit_edge:         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %via_parse_vheader5.exit

while.body.i58:                                   ; preds = %while.body.i58.while.body.i58_crit_edge, %sw.bb3.while.body.i58_crit_edge
  %buf.03.i = phi ptr [ %incdec.ptr1.i55, %while.body.i58.while.body.i58_crit_edge ], [ %add.ptr.i, %sw.bb3.while.body.i58_crit_edge ]
  %i.02.i = phi i32 [ %dec.i, %while.body.i58.while.body.i58_crit_edge ], [ %49, %sw.bb3.while.body.i58_crit_edge ]
  %dec.i = add i32 %i.02.i, -1
  %incdec.ptr1.i55 = getelementptr i32, ptr %buf.03.i, i32 1
  %50 = ptrtoint ptr %buf.03.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %buf.03.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #6
  %53 = ptrtoint ptr %mmio.i.i65 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i.i65, align 4
  %handle.i.i56 = getelementptr inbounds %struct.drm_local_map, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %handle.i.i56 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %handle.i.i56, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %56, i32 %and.i52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 %52) #6, !srcloc !100
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i58.via_parse_vheader5.exit_crit_edge, label %while.body.i58.while.body.i58_crit_edge

while.body.i58.while.body.i58_crit_edge:          ; preds = %while.body.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i58

while.body.i58.via_parse_vheader5.exit_crit_edge: ; preds = %while.body.i58
  call void @__sanitizer_cov_trace_pc() #8
  br label %via_parse_vheader5.exit

via_parse_vheader5.exit:                          ; preds = %while.body.i58.via_parse_vheader5.exit_crit_edge, %sw.bb3.via_parse_vheader5.exit_crit_edge
  %buf.0.lcssa.i59 = phi ptr [ %add.ptr.i, %sw.bb3.via_parse_vheader5.exit_crit_edge ], [ %incdec.ptr1.i55, %while.body.i58.via_parse_vheader5.exit_crit_edge ]
  %and2.i60 = and i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i60)
  %tobool3.not.i = icmp eq i32 %and2.i60, 0
  %sub.i = sub nuw nsw i32 4, %and2.i60
  %buf.1.idx.i = select i1 %tobool3.not.i, i32 0, i32 %sub.i
  %buf.1.i = getelementptr i32, ptr %buf.0.lcssa.i59, i32 %buf.1.idx.i
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body
  %incdec.ptr.i62 = getelementptr i32, ptr %buf.addr.095, i32 1
  %57 = ptrtoint ptr %incdec.ptr.i62 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %incdec.ptr.i62, align 4
  %add.ptr.i63 = getelementptr i32, ptr %buf.addr.095, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not1.i64 = icmp eq i32 %58, 0
  br i1 %tobool.not1.i64, label %sw.bb5.via_parse_vheader6.exit_crit_edge, label %sw.bb5.while.body.i74_crit_edge

sw.bb5.while.body.i74_crit_edge:                  ; preds = %sw.bb5
  br label %while.body.i74

sw.bb5.via_parse_vheader6.exit_crit_edge:         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %via_parse_vheader6.exit

while.body.i74:                                   ; preds = %while.body.i74.while.body.i74_crit_edge, %sw.bb5.while.body.i74_crit_edge
  %buf.03.i67 = phi ptr [ %incdec.ptr2.i, %while.body.i74.while.body.i74_crit_edge ], [ %add.ptr.i63, %sw.bb5.while.body.i74_crit_edge ]
  %i.02.i68 = phi i32 [ %dec.i69, %while.body.i74.while.body.i74_crit_edge ], [ %58, %sw.bb5.while.body.i74_crit_edge ]
  %dec.i69 = add i32 %i.02.i68, -1
  %incdec.ptr1.i70 = getelementptr i32, ptr %buf.03.i67, i32 1
  %59 = ptrtoint ptr %buf.03.i67 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %buf.03.i67, align 4
  %incdec.ptr2.i = getelementptr i32, ptr %buf.03.i67, i32 2
  %61 = ptrtoint ptr %incdec.ptr1.i70 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %incdec.ptr1.i70, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #6
  %64 = ptrtoint ptr %mmio.i.i65 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i.i65, align 4
  %handle.i.i71 = getelementptr inbounds %struct.drm_local_map, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %handle.i.i71 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %handle.i.i71, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %67, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i72, i32 %63) #6, !srcloc !100
  %tobool.not.i73 = icmp eq i32 %dec.i69, 0
  br i1 %tobool.not.i73, label %while.body.i74.via_parse_vheader6.exit_crit_edge, label %while.body.i74.while.body.i74_crit_edge

while.body.i74.while.body.i74_crit_edge:          ; preds = %while.body.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i74

while.body.i74.via_parse_vheader6.exit_crit_edge: ; preds = %while.body.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %via_parse_vheader6.exit

via_parse_vheader6.exit:                          ; preds = %while.body.i74.via_parse_vheader6.exit_crit_edge, %sw.bb5.via_parse_vheader6.exit_crit_edge
  %buf.0.lcssa.i75 = phi ptr [ %add.ptr.i63, %sw.bb5.via_parse_vheader6.exit_crit_edge ], [ %incdec.ptr2.i, %while.body.i74.via_parse_vheader6.exit_crit_edge ]
  %shl.i76 = shl i32 %58, 1
  %and.i77 = and i32 %shl.i76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool3.not.i78 = icmp eq i32 %and.i77, 0
  %sub.i79 = sub nuw nsw i32 4, %and.i77
  %buf.1.idx.i80 = select i1 %tobool3.not.i78, i32 0, i32 %sub.i79
  %buf.1.i81 = getelementptr i32, ptr %buf.0.lcssa.i75, i32 %buf.1.idx.i80
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  %68 = ptrtoint ptr %buf.addr.095 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %buf.addr.095, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -233770736, i32 %69)
  %cmp8 = icmp eq i32 %69, -233770736
  br i1 %cmp8, label %sw.bb7.sw.epilog_crit_edge, label %if.else

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb7
  %and = and i32 %69, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and)
  %cmp9 = icmp eq i32 %and, -268435456
  br i1 %cmp9, label %if.else.sw.epilog_crit_edge, label %if.else11

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else11:                                        ; preds = %if.else
  %and12 = and i32 %69, -65536
  %70 = zext i32 %and12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %and12, label %if.else19 [
    i32 -33292288, label %if.else11.sw.epilog_crit_edge
    i32 -33226752, label %if.then18
  ]

if.else11.sw.epilog_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then18:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else19:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %69) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else19, %if.then18, %if.else11.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %via_parse_vheader6.exit, %via_parse_vheader5.exit, %if.end.i49.sw.epilog_crit_edge, %while.body.i.sw.epilog_crit_edge, %if.end36.i.sw.epilog_crit_edge, %lor.lhs.false29.i.sw.epilog_crit_edge, %lor.lhs.false29.i.sw.epilog_crit_edge116, %while.body25.i.sw.epilog_crit_edge, %if.end21.i.sw.epilog_crit_edge, %land.rhs.i.sw.epilog_crit_edge, %land.lhs.true.i.sw.epilog_crit_edge, %while.cond.preheader.i.sw.epilog_crit_edge, %while.cond23.preheader.i.sw.epilog_crit_edge
  %buf.addr.1 = phi ptr [ %buf.addr.095, %sw.bb7.sw.epilog_crit_edge ], [ %buf.addr.095, %if.else.sw.epilog_crit_edge ], [ %buf.addr.095, %if.else19 ], [ %buf.addr.095, %if.then18 ], [ %buf.addr.095, %if.else11.sw.epilog_crit_edge ], [ %buf.1.i81, %via_parse_vheader6.exit ], [ %buf.1.i, %via_parse_vheader5.exit ], [ %incdec.ptr1.i, %while.cond.preheader.i.sw.epilog_crit_edge ], [ %incdec.ptr1.i, %while.cond23.preheader.i.sw.epilog_crit_edge ], [ %buf.021.i, %land.rhs.i.sw.epilog_crit_edge ], [ %buf.021.i, %land.lhs.true.i.sw.epilog_crit_edge ], [ %buf.2.i, %if.end21.i.sw.epilog_crit_edge ], [ %buf.39.i, %lor.lhs.false29.i.sw.epilog_crit_edge ], [ %buf.39.i, %lor.lhs.false29.i.sw.epilog_crit_edge116 ], [ %incdec.ptr39.i, %if.end36.i.sw.epilog_crit_edge ], [ %buf.39.i, %while.body25.i.sw.epilog_crit_edge ], [ %incdec.ptr3.i, %if.end.i49.sw.epilog_crit_edge ], [ %buf.02.i, %while.body.i.sw.epilog_crit_edge ]
  %fire_count.3 = phi i32 [ %fire_count.096, %sw.bb7.sw.epilog_crit_edge ], [ %fire_count.096, %if.else.sw.epilog_crit_edge ], [ %fire_count.096, %if.else19 ], [ %fire_count.096, %if.then18 ], [ %fire_count.096, %if.else11.sw.epilog_crit_edge ], [ %fire_count.096, %via_parse_vheader6.exit ], [ %fire_count.096, %via_parse_vheader5.exit ], [ %fire_count.096, %while.cond.preheader.i.sw.epilog_crit_edge ], [ %fire_count.096, %while.cond23.preheader.i.sw.epilog_crit_edge ], [ %fire_count.1, %land.rhs.i.sw.epilog_crit_edge ], [ %fire_count.1, %land.lhs.true.i.sw.epilog_crit_edge ], [ %inc.i, %if.end21.i.sw.epilog_crit_edge ], [ %fire_count.096, %while.body25.i.sw.epilog_crit_edge ], [ %fire_count.096, %lor.lhs.false29.i.sw.epilog_crit_edge ], [ %fire_count.096, %lor.lhs.false29.i.sw.epilog_crit_edge116 ], [ %fire_count.096, %if.end36.i.sw.epilog_crit_edge ], [ %fire_count.096, %while.body.i.sw.epilog_crit_edge ], [ %fire_count.096, %if.end.i49.sw.epilog_crit_edge ]
  %cmp24 = phi i32 [ 0, %sw.bb7.sw.epilog_crit_edge ], [ 0, %if.else.sw.epilog_crit_edge ], [ -22, %if.else19 ], [ 0, %if.then18 ], [ 0, %if.else11.sw.epilog_crit_edge ], [ 0, %via_parse_vheader6.exit ], [ 0, %via_parse_vheader5.exit ], [ 0, %while.cond.preheader.i.sw.epilog_crit_edge ], [ 0, %while.cond23.preheader.i.sw.epilog_crit_edge ], [ 0, %land.lhs.true.i.sw.epilog_crit_edge ], [ 0, %land.rhs.i.sw.epilog_crit_edge ], [ 0, %if.end21.i.sw.epilog_crit_edge ], [ 0, %while.body25.i.sw.epilog_crit_edge ], [ 0, %lor.lhs.false29.i.sw.epilog_crit_edge ], [ 0, %lor.lhs.false29.i.sw.epilog_crit_edge116 ], [ 0, %if.end36.i.sw.epilog_crit_edge ], [ 0, %while.body.i.sw.epilog_crit_edge ], [ 0, %if.end.i49.sw.epilog_crit_edge ]
  %state.1 = phi i32 [ 1, %sw.bb7.sw.epilog_crit_edge ], [ 2, %if.else.sw.epilog_crit_edge ], [ 5, %if.else19 ], [ 4, %if.then18 ], [ 3, %if.else11.sw.epilog_crit_edge ], [ 0, %via_parse_vheader6.exit ], [ 0, %via_parse_vheader5.exit ], [ 0, %while.cond.preheader.i.sw.epilog_crit_edge ], [ 0, %while.cond23.preheader.i.sw.epilog_crit_edge ], [ 0, %land.lhs.true.i.sw.epilog_crit_edge ], [ 0, %land.rhs.i.sw.epilog_crit_edge ], [ 0, %if.end21.i.sw.epilog_crit_edge ], [ 0, %while.body25.i.sw.epilog_crit_edge ], [ 0, %lor.lhs.false29.i.sw.epilog_crit_edge ], [ 0, %lor.lhs.false29.i.sw.epilog_crit_edge116 ], [ 0, %if.end36.i.sw.epilog_crit_edge ], [ 0, %while.body.i.sw.epilog_crit_edge ], [ 0, %if.end.i49.sw.epilog_crit_edge ]
  %cmp = icmp ult ptr %buf.addr.1, %add.ptr
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %while.body.cleanup_crit_edge ], [ %cmp24, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_init_command_verifier() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.018.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr @table1, i32 %i.018.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 26, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body.i.for.body3.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.body3.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body.i.for.body3.i_crit_edge
  %i.120.i = phi i32 [ %inc8.i, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.body.i.for.body3.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.hz_init_t, ptr @init_table1, i32 %i.120.i
  %hz.i = getelementptr %struct.hz_init_t, ptr @init_table1, i32 %i.120.i, i32 1
  %1 = ptrtoint ptr %hz.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hz.i, align 4
  %3 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr i32, ptr @table1, i32 %4
  %5 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %arrayidx6.i, align 4
  %inc8.i = add nuw nsw i32 %i.120.i, 1
  %exitcond21.not.i = icmp eq i32 %inc8.i, 48
  br i1 %exitcond21.not.i, label %for.body3.i.for.body.i6_crit_edge, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i

for.body3.i.for.body.i6_crit_edge:                ; preds = %for.body3.i
  br label %for.body.i6

for.body.i6:                                      ; preds = %for.body.i6.for.body.i6_crit_edge, %for.body3.i.for.body.i6_crit_edge
  %i.018.i2 = phi i32 [ %inc.i4, %for.body.i6.for.body.i6_crit_edge ], [ 0, %for.body3.i.for.body.i6_crit_edge ]
  %arrayidx.i3 = getelementptr i32, ptr @table2, i32 %i.018.i2
  %6 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 26, ptr %arrayidx.i3, align 4
  %inc.i4 = add nuw nsw i32 %i.018.i2, 1
  %exitcond.not.i5 = icmp eq i32 %inc.i4, 256
  br i1 %exitcond.not.i5, label %for.body.i6.for.body3.i13_crit_edge, label %for.body.i6.for.body.i6_crit_edge

for.body.i6.for.body.i6_crit_edge:                ; preds = %for.body.i6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i6

for.body.i6.for.body3.i13_crit_edge:              ; preds = %for.body.i6
  br label %for.body3.i13

for.body3.i13:                                    ; preds = %for.body3.i13.for.body3.i13_crit_edge, %for.body.i6.for.body3.i13_crit_edge
  %i.120.i7 = phi i32 [ %inc8.i11, %for.body3.i13.for.body3.i13_crit_edge ], [ 0, %for.body.i6.for.body3.i13_crit_edge ]
  %arrayidx4.i8 = getelementptr %struct.hz_init_t, ptr @init_table2, i32 %i.120.i7
  %hz.i9 = getelementptr %struct.hz_init_t, ptr @init_table2, i32 %i.120.i7, i32 1
  %7 = ptrtoint ptr %hz.i9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hz.i9, align 4
  %9 = ptrtoint ptr %arrayidx4.i8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4.i8, align 4
  %arrayidx6.i10 = getelementptr i32, ptr @table2, i32 %10
  %11 = ptrtoint ptr %arrayidx6.i10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %arrayidx6.i10, align 4
  %inc8.i11 = add nuw nsw i32 %i.120.i7, 1
  %exitcond21.not.i12 = icmp eq i32 %inc8.i11, 55
  br i1 %exitcond21.not.i12, label %for.body3.i13.for.body.i20_crit_edge, label %for.body3.i13.for.body3.i13_crit_edge

for.body3.i13.for.body3.i13_crit_edge:            ; preds = %for.body3.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3.i13

for.body3.i13.for.body.i20_crit_edge:             ; preds = %for.body3.i13
  br label %for.body.i20

for.body.i20:                                     ; preds = %for.body.i20.for.body.i20_crit_edge, %for.body3.i13.for.body.i20_crit_edge
  %i.018.i16 = phi i32 [ %inc.i18, %for.body.i20.for.body.i20_crit_edge ], [ 0, %for.body3.i13.for.body.i20_crit_edge ]
  %arrayidx.i17 = getelementptr i32, ptr @table3, i32 %i.018.i16
  %12 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 26, ptr %arrayidx.i17, align 4
  %inc.i18 = add nuw nsw i32 %i.018.i16, 1
  %exitcond.not.i19 = icmp eq i32 %inc.i18, 256
  br i1 %exitcond.not.i19, label %for.body3.i27.preheader, label %for.body.i20.for.body.i20_crit_edge

for.body.i20.for.body.i20_crit_edge:              ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i20

for.body3.i27.preheader:                          ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #8
  store i32 3, ptr getelementptr inbounds ([256 x i32], ptr @table3, i32 0, i32 242), align 4
  store i32 4, ptr getelementptr inbounds ([256 x i32], ptr @table3, i32 0, i32 240), align 4
  store i32 12, ptr getelementptr inbounds ([256 x i32], ptr @table3, i32 0, i32 204), align 4
  store i32 25, ptr @table3, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @finish_current_sequence(ptr nocapture noundef %cur_seq) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %unfinished = getelementptr inbounds %struct.drm_via_state_t, ptr %cur_seq, i32 0, i32 10
  %0 = ptrtoint ptr %unfinished to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %unfinished, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %z_addr = getelementptr inbounds %struct.drm_via_state_t, ptr %cur_seq, i32 0, i32 1
  %3 = ptrtoint ptr %z_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %z_addr, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, i32 noundef %4) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %d_addr = getelementptr inbounds %struct.drm_via_state_t, ptr %cur_seq, i32 0, i32 2
  %5 = ptrtoint ptr %d_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %d_addr, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.25, i32 noundef %6) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %agp_texture = getelementptr inbounds %struct.drm_via_state_t, ptr %cur_seq, i32 0, i32 11
  %7 = ptrtoint ptr %agp_texture to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %agp_texture, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %sw.bb2.sw.epilog_crit_edge, label %if.then

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb2
  %9 = ptrtoint ptr %cur_seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_seq, align 4
  %arrayidx = getelementptr %struct.drm_via_state_t, ptr %cur_seq, i32 0, i32 6, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.drm_via_state_t, ptr %cur_seq, i32 0, i32 7, i32 %10
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 9)
  %16 = tail call i32 @llvm.umin.i32(i32 %12, i32 9)
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %15)
  %cmp19.not93 = icmp ugt i32 %16, %15
  br i1 %cmp19.not93, label %if.then.for.end_crit_edge, label %for.body.lr.ph

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %arrayidx18 = getelementptr %struct.drm_via_state_t, ptr %cur_seq, i32 0, i32 9, i32 %10
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx18, align 4
  %arrayidx17 = getelementptr %struct.drm_via_state_t, ptr %cur_seq, i32 0, i32 5, i32 %10, i32 %16
  %arrayidx14 = getelementptr %struct.drm_via_state_t, ptr %cur_seq, i32 0, i32 4, i32 %10, i32 %16
  %arrayidx11 = getelementptr %struct.drm_via_state_t, ptr %cur_seq, i32 0, i32 3, i32 %10, i32 %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool24.not = icmp eq i32 %18, 0
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.099 = phi i32 [ %16, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %height.098 = phi ptr [ %arrayidx17, %for.body.lr.ph ], [ %height.1, %for.body.for.body_crit_edge ]
  %pitch.097 = phi ptr [ %arrayidx14, %for.body.lr.ph ], [ %pitch.1, %for.body.for.body_crit_edge ]
  %addr.096 = phi ptr [ %arrayidx11, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %hi.095 = phi i32 [ 0, %for.body.lr.ph ], [ %26, %for.body.for.body_crit_edge ]
  %lo.094 = phi i32 [ -1, %for.body.lr.ph ], [ %21, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %addr.096, i32 1
  %19 = ptrtoint ptr %addr.096 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr.096, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %lo.094)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.099)
  %cmp23 = icmp ne i32 %i.099, 0
  %or.cond = select i1 %cmp23, i1 true, i1 %tobool24.not
  %22 = ptrtoint ptr %height.098 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height.098, align 4
  %24 = ptrtoint ptr %pitch.097 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pitch.097, align 4
  %mul = mul i32 %25, %23
  %shl = shl i32 %23, %25
  %mul.pn = select i1 %or.cond, i32 %shl, i32 %mul
  %height.1 = getelementptr i32, ptr %height.098, i32 1
  %pitch.1 = getelementptr i32, ptr %pitch.097, i32 1
  %tmp.0 = add i32 %mul.pn, %20
  %26 = tail call i32 @llvm.umax.i32(i32 %tmp.0, i32 %hi.095)
  %inc = add nuw nsw i32 %i.099, 1
  %exitcond = icmp eq i32 %i.099, %15
  br i1 %exitcond, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %lo.0.lcssa = phi i32 [ -1, %if.then.for.end_crit_edge ], [ %21, %for.body.for.end_crit_edge ]
  %hi.0.lcssa = phi i32 [ 0, %if.then.for.end_crit_edge ], [ %26, %for.body.for.end_crit_edge ]
  %dev = getelementptr inbounds %struct.drm_via_state_t, ptr %cur_seq, i32 0, i32 13
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %map_cache.i = getelementptr inbounds %struct.drm_via_state_t, ptr %cur_seq, i32 0, i32 14
  %29 = ptrtoint ptr %map_cache.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map_cache.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %for.end.if.end.i_crit_edge, label %land.lhs.true.i

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.end
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %lo.0.lcssa)
  %cmp.not.i = icmp ugt i32 %32, %lo.0.lcssa
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %size4.i = getelementptr inbounds %struct.drm_local_map, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size4.i, align 4
  %add5.i = add i32 %34, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %hi.0.lcssa, i32 %add5.i)
  %cmp6.not.i = icmp ugt i32 %hi.0.lcssa, %add5.i
  br i1 %cmp6.not.i, label %land.lhs.true2.i.if.end.i_crit_edge, label %land.lhs.true2.i.sw.epilog_crit_edge

land.lhs.true2.i.sw.epilog_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true2.i.if.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true2.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %for.end.if.end.i_crit_edge
  %maplist.i = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 42
  %35 = ptrtoint ptr %maplist.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %r_list.057.i = load ptr, ptr %maplist.i, align 4
  %cmp8.not58.i = icmp eq ptr %r_list.057.i, %maplist.i
  br i1 %cmp8.not58.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %r_list.059.i = phi ptr [ %r_list.0.i, %for.inc.i.for.body.i_crit_edge ], [ %r_list.057.i, %if.end.i.for.body.i_crit_edge ]
  %map9.i = getelementptr inbounds %struct.drm_map_list, ptr %r_list.059.i, i32 0, i32 2
  %36 = ptrtoint ptr %map9.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map9.i, align 4
  %tobool10.not.i = icmp eq ptr %37, null
  br i1 %tobool10.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end12.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end12.i:                                       ; preds = %for.body.i
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %lo.0.lcssa)
  %cmp14.not.i = icmp ugt i32 %39, %lo.0.lcssa
  br i1 %cmp14.not.i, label %if.end12.i.for.inc.i_crit_edge, label %land.lhs.true15.i

if.end12.i.for.inc.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true15.i:                                ; preds = %if.end12.i
  %size18.i = getelementptr inbounds %struct.drm_local_map, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %size18.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size18.i, align 4
  %add19.i = add i32 %41, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %hi.0.lcssa, i32 %add19.i)
  %cmp20.not.i = icmp ugt i32 %hi.0.lcssa, %add19.i
  br i1 %cmp20.not.i, label %land.lhs.true15.i.for.inc.i_crit_edge, label %land.lhs.true21.i

land.lhs.true15.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true21.i:                                ; preds = %land.lhs.true15.i
  %flags.i = getelementptr inbounds %struct.drm_local_map, ptr %37, i32 0, i32 3
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool22.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool22.not.i, label %land.lhs.true23.i, label %land.lhs.true21.i.for.inc.i_crit_edge

land.lhs.true21.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true23.i:                                ; preds = %land.lhs.true21.i
  %type.i = getelementptr inbounds %struct.drm_local_map, ptr %37, i32 0, i32 2
  %44 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp24.i = icmp eq i32 %45, 3
  br i1 %cmp24.i, label %if.then25.i, label %land.lhs.true23.i.for.inc.i_crit_edge

land.lhs.true23.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then25.i:                                      ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %map_cache.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %37, ptr %map_cache.i, align 4
  br label %sw.epilog

for.inc.i:                                        ; preds = %land.lhs.true23.i.for.inc.i_crit_edge, %land.lhs.true21.i.for.inc.i_crit_edge, %land.lhs.true15.i.for.inc.i_crit_edge, %if.end12.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %47 = ptrtoint ptr %r_list.059.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %r_list.0.i = load ptr, ptr %r_list.059.i, align 4
  %cmp8.not.i = icmp eq ptr %r_list.0.i, %maplist.i
  br i1 %cmp8.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #6
  br label %return

sw.epilog:                                        ; preds = %if.then25.i, %land.lhs.true2.i.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %48 = ptrtoint ptr %unfinished to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %unfinished, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %cleanup
  %retval.1 = phi i32 [ 0, %sw.epilog ], [ 2, %cleanup ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 1016, i32 5}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 1019, i32 5}
!4 = !{ptr @table1, !5, !"table1", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 234, i32 17}
!6 = !{ptr @table2, !7, !"table2", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 235, i32 17}
!8 = !{ptr @table3, !9, !"table3", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 236, i32 17}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 635, i32 3}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 674, i32 3}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 678, i32 3}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 688, i32 3}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 534, i32 4}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 543, i32 4}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 557, i32 4}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 584, i32 6}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 599, i32 5}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 609, i32 4}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 615, i32 4}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 245, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 370, i32 3}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 375, i32 3}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 380, i32 3}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 385, i32 3}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 390, i32 3}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 406, i32 3}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 422, i32 3}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 460, i32 5}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 499, i32 4}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 514, i32 3}
!54 = !{ptr @seqs, !55, !"seqs", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 85, i32 27}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 294, i32 3}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 297, i32 3}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 334, i32 5}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 816, i32 4}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 823, i32 4}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 860, i32 3}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 870, i32 3}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 768, i32 3}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 772, i32 3}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 776, i32 3}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 790, i32 3}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 795, i32 4}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 912, i32 3}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 918, i32 3}
!84 = !{ptr @init_table1, !85, !"init_table1", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 118, i32 18}
!86 = !{ptr @init_table2, !87, !"init_table2", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 169, i32 18}
!88 = distinct !{null, !89, !"init_table3", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/via/via_verifier.c", i32 227, i32 18}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 2154188642}
!100 = !{i64 6608086}
