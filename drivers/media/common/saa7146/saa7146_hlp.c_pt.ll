; ModuleID = '/llk/IR_all_yes/drivers/media/common/saa7146/saa7146_hlp.c_pt.bc'
source_filename = "../drivers/media/common/saa7146/saa7146_hlp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+saa7146_set_hps_source_and_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_saa7146_set_hps_source_and_sync\09\09\09\09"
module asm "\09.long\09__crc_saa7146_set_hps_source_and_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_saa7146_set_hps_source_and_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22saa7146_set_hps_source_and_sync\22\09\09\09\09\09"
module asm "__kstrtabns_saa7146_set_hps_source_and_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.119 = type { i16, i16 }
%struct.anon.120 = type { i16, i16 }
%struct.saa7146_dev = type { ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, ptr, i32, [32 x i8], ptr, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.saa7146_dma, %struct.wait_queue_head, i32, %struct.saa7146_dma, %struct.saa7146_dma }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.saa7146_dma = type { i32, ptr }
%struct.saa7146_vv = type { %struct.saa7146_dmaqueue, %struct.v4l2_vbi_format, %struct.timer_list, ptr, %struct.wait_queue_head, i32, ptr, i32, ptr, %struct.saa7146_overlay, %struct.v4l2_framebuffer, ptr, ptr, %struct.saa7146_dmaqueue, %struct.v4l2_pix_format, i32, ptr, i32, i32, i32, i32, %struct.saa7146_dma, i32 }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.saa7146_overlay = type { ptr, %struct.v4l2_window, [16 x %struct.v4l2_clip], i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.93 }
%struct.anon.93 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.saa7146_dmaqueue = type { ptr, ptr, %struct.list_head, %struct.timer_list }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.88, i32, i32 }
%union.anon.88 = type { i32 }
%struct.saa7146_video_dma = type { i32, i32, i32, i32, i32, i32 }
%struct.saa7146_fh = type { %struct.v4l2_fh, ptr, %struct.videobuf_queue, %struct.videobuf_queue, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.saa7146_format = type { i32, i32, i8, i8, i8 }
%struct.saa7146_standard = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.saa7146_buf = type { %struct.videobuf_buffer, ptr, ptr, [3 x %struct.saa7146_pgtable] }
%struct.videobuf_buffer = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i64, i32, i32, i32, i32, ptr, i32, ptr }
%struct.saa7146_pgtable = type { i32, ptr, i32, i32, ptr, i32 }

@__kstrtab_saa7146_set_hps_source_and_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_saa7146_set_hps_source_and_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_saa7146_set_hps_source_and_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @saa7146_set_hps_source_and_sync to i32), ptr @__kstrtab_saa7146_set_hps_source_and_sync, ptr @__kstrtabns_saa7146_set_hps_source_and_sync }, section "___ksymtab_gpl+saa7146_set_hps_source_and_sync", align 4
@saa7146_debug = external dso_local local_unnamed_addr global i32, align 4
@saa7146_set_capture.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"saa7146_vv\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa7146_set_capture\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/common/saa7146/saa7146_hlp.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): buf:%p, next:%p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"saa7146_vv: %s(): buf:%p, next:%p\0A\00", [61 x i8] zeroinitializer }, align 32
@saa7146_set_capture.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s(): forcing sync to new frame\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"saa7146_vv: %s(): forcing sync to new frame\0A\00", [51 x i8] zeroinitializer }, align 32
@hps_v_coeff_tab = internal constant { [64 x %struct.anon.119], [64 x i8] } { [64 x %struct.anon.119] [%struct.anon.119 { i16 256, i16 2 }, %struct.anon.119 { i16 258, i16 4 }, %struct.anon.119 { i16 768, i16 4 }, %struct.anon.119 { i16 262, i16 8 }, %struct.anon.119 { i16 1282, i16 8 }, %struct.anon.119 { i16 1800, i16 8 }, %struct.anon.119 { i16 3840, i16 8 }, %struct.anon.119 { i16 286, i16 16 }, %struct.anon.119 { i16 4366, i16 16 }, %struct.anon.119 { i16 6438, i16 16 }, %struct.anon.119 { i16 14598, i16 16 }, %struct.anon.119 { i16 15682, i16 16 }, %struct.anon.119 { i16 32002, i16 16 }, %struct.anon.119 { i16 32640, i16 16 }, %struct.anon.119 { i16 -256, i16 16 }, %struct.anon.119 { i16 510, i16 32 }, %struct.anon.119 { i16 510, i16 32 }, %struct.anon.119 { i16 -32386, i16 32 }, %struct.anon.119 { i16 -32386, i16 32 }, %struct.anon.119 { i16 -16066, i16 32 }, %struct.anon.119 { i16 -16066, i16 32 }, %struct.anon.119 { i16 -7906, i16 32 }, %struct.anon.119 { i16 -7906, i16 32 }, %struct.anon.119 { i16 -3826, i16 32 }, %struct.anon.119 { i16 -3826, i16 32 }, %struct.anon.119 { i16 -1786, i16 32 }, %struct.anon.119 { i16 -1786, i16 32 }, %struct.anon.119 { i16 -766, i16 32 }, %struct.anon.119 { i16 -766, i16 32 }, %struct.anon.119 { i16 -256, i16 32 }, %struct.anon.119 { i16 -256, i16 32 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 510, i16 64 }, %struct.anon.119 { i16 -32386, i16 64 }, %struct.anon.119 { i16 -32386, i16 64 }, %struct.anon.119 { i16 -16066, i16 64 }, %struct.anon.119 { i16 -16066, i16 64 }, %struct.anon.119 { i16 -7906, i16 64 }, %struct.anon.119 { i16 -7906, i16 64 }, %struct.anon.119 { i16 -3826, i16 64 }, %struct.anon.119 { i16 -3826, i16 64 }, %struct.anon.119 { i16 -1786, i16 64 }, %struct.anon.119 { i16 -1786, i16 64 }, %struct.anon.119 { i16 -766, i16 64 }, %struct.anon.119 { i16 -766, i16 64 }, %struct.anon.119 { i16 -256, i16 64 }, %struct.anon.119 { i16 -256, i16 64 }, %struct.anon.119 { i16 510, i16 128 }], [64 x i8] zeroinitializer }, align 32
@hps_h_coeff_tab = internal constant { [64 x %struct.anon.120], [64 x i8] } { [64 x %struct.anon.120] [%struct.anon.120 { i16 0, i16 2 }, %struct.anon.120 { i16 2, i16 4 }, %struct.anon.120 { i16 0, i16 4 }, %struct.anon.120 { i16 6, i16 8 }, %struct.anon.120 { i16 2, i16 8 }, %struct.anon.120 { i16 8, i16 8 }, %struct.anon.120 { i16 0, i16 8 }, %struct.anon.120 { i16 30, i16 16 }, %struct.anon.120 { i16 14, i16 8 }, %struct.anon.120 { i16 38, i16 8 }, %struct.anon.120 { i16 6, i16 8 }, %struct.anon.120 { i16 66, i16 8 }, %struct.anon.120 { i16 2, i16 8 }, %struct.anon.120 { i16 128, i16 8 }, %struct.anon.120 { i16 0, i16 8 }, %struct.anon.120 { i16 254, i16 16 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 126, i16 8 }, %struct.anon.120 { i16 126, i16 8 }, %struct.anon.120 { i16 62, i16 8 }, %struct.anon.120 { i16 62, i16 8 }, %struct.anon.120 { i16 30, i16 8 }, %struct.anon.120 { i16 30, i16 8 }, %struct.anon.120 { i16 14, i16 8 }, %struct.anon.120 { i16 14, i16 8 }, %struct.anon.120 { i16 6, i16 8 }, %struct.anon.120 { i16 6, i16 8 }, %struct.anon.120 { i16 2, i16 8 }, %struct.anon.120 { i16 2, i16 8 }, %struct.anon.120 { i16 0, i16 8 }, %struct.anon.120 { i16 0, i16 8 }, %struct.anon.120 { i16 254, i16 16 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 254, i16 8 }, %struct.anon.120 { i16 126, i16 8 }, %struct.anon.120 { i16 126, i16 8 }, %struct.anon.120 { i16 62, i16 8 }, %struct.anon.120 { i16 62, i16 8 }, %struct.anon.120 { i16 30, i16 8 }, %struct.anon.120 { i16 30, i16 8 }, %struct.anon.120 { i16 14, i16 8 }, %struct.anon.120 { i16 14, i16 8 }, %struct.anon.120 { i16 6, i16 8 }, %struct.anon.120 { i16 6, i16 8 }, %struct.anon.120 { i16 2, i16 8 }, %struct.anon.120 { i16 2, i16 8 }, %struct.anon.120 { i16 0, i16 8 }, %struct.anon.120 { i16 0, i16 8 }, %struct.anon.120 { i16 254, i16 16 }], [64 x i8] zeroinitializer }, align 32
@calculate_video_dma_grab_planar.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"calculate_video_dma_grab_planar\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): [size=%dx%d,fields=%s]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"saa7146_vv: %s(): [size=%dx%d,fields=%s]\0A\00", [54 x i8] zeroinitializer }, align 32
@v4l2_field_names = external dso_local local_unnamed_addr global [0 x ptr], align 4
@calculate_video_dma_grab_packed.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.8, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"calculate_video_dma_grab_packed\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.11 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 5, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.12 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1003, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 1008, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"hps_v_coeff_tab\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 193, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"hps_h_coeff_tab\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 47, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 842, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [46 x i8] c"../drivers/media/common/saa7146/saa7146_hlp.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 716, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_saa7146_set_hps_source_and_sync, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @hps_v_coeff_tab, ptr @hps_h_coeff_tab, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hps_v_coeff_tab to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hps_h_coeff_tab to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7146_set_hps_source_and_sync(ptr nocapture noundef readonly %dev, i32 noundef %source, i32 noundef %sync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vv_data, align 4
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 92
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %5 = and i32 %4, -209
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %shl = shl i32 %source, 30
  %shl2 = shl i32 %sync, 28
  %or = or i32 %shl2, %shl
  %or3 = or i32 %or, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %or3)
  %8 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %7) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem, align 4
  %add.ptr10 = getelementptr i8, ptr %11, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 536879104) #5, !srcloc !41
  %current_hps_source = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %current_hps_source to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %source, ptr %current_hps_source, align 4
  %current_hps_sync = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 20
  %13 = ptrtoint ptr %current_hps_sync to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sync, ptr %current_hps_sync, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7146_enable_overlay(ptr nocapture noundef readonly %fh) local_unnamed_addr #0 align 64 {
entry:
  %line_list.i.i = alloca [32 x i32], align 4
  %pixel_list.i.i = alloca [32 x i32], align 4
  %x.i.i = alloca [32 x i32], align 4
  %y.i.i = alloca [32 x i32], align 4
  %w7.i.i = alloca [32 x i32], align 4
  %h.i.i = alloca [32 x i32], align 4
  %vdma1.i = alloca %struct.saa7146_video_dma, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  %win = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 9, i32 1
  %width = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 9, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 9, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %field = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 9, i32 1, i32 1
  %8 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %field, align 4
  tail call fastcc void @saa7146_set_window(ptr noundef %1, i32 noundef %5, i32 noundef %7, i32 noundef %9)
  %10 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %win, align 4
  %top = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 9, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %top, align 4
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %16 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field, align 4
  %ov_fmt = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 11
  %18 = ptrtoint ptr %ov_fmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ov_fmt, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vv_data, align 4
  %call.i = tail call ptr @saa7146_format_by_fourcc(ptr noundef %1, i32 noundef %21) #5
  %ov_fmt.i = getelementptr inbounds %struct.saa7146_vv, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %ov_fmt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ov_fmt.i, align 4
  %depth.i = getelementptr inbounds %struct.saa7146_format, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %depth.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %depth.i, align 4
  %conv.i = zext i8 %27 to i32
  %bytesperline.i = getelementptr inbounds %struct.saa7146_vv, ptr %23, i32 0, i32 10, i32 3, i32 4
  %28 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bytesperline.i, align 4
  %base2.i = getelementptr inbounds %struct.saa7146_vv, ptr %23, i32 0, i32 10, i32 2
  %30 = ptrtoint ptr %base2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base2.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %vdma1.i) #5
  %33 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma1.i, i32 0, i32 1
  %34 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma1.i, i32 0, i32 2
  %35 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma1.i, i32 0, i32 3
  %mul.i = shl i32 %29, 1
  %36 = call ptr @memset(ptr %vdma1.i, i32 255, i32 24)
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul.i, ptr %35, align 4
  %vflip.i = getelementptr inbounds %struct.saa7146_vv, ptr %23, i32 0, i32 17
  %38 = ptrtoint ptr %vflip.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vflip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i = icmp eq i32 %39, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %div119.i = and i32 %29, 2147483647
  %mul5.i = mul i32 %div119.i, %13
  %add.i = add i32 %mul5.i, %32
  %div6120.i = lshr i32 %conv.i, 3
  %mul7.i = mul i32 %div6120.i, %11
  %add8.i = add i32 %add.i, %mul7.i
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add8.i, ptr %33, align 4
  %add12.i = add i32 %add8.i, %div119.i
  %41 = ptrtoint ptr %vdma1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add12.i, ptr %vdma1.i, align 4
  %mul16.i = mul i32 %div119.i, %15
  %add17.i = add i32 %add8.i, %mul16.i
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add18.i = add i32 %15, %13
  %div20112.i = and i32 %29, 2147483647
  %mul21.i = mul i32 %div20112.i, %add18.i
  %add22.i = add i32 %mul21.i, %32
  %div23113.i = lshr i32 %conv.i, 3
  %mul24.i = mul i32 %div23113.i, %11
  %add25.i = add i32 %add22.i, %mul24.i
  %42 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add25.i, ptr %33, align 4
  %sub.i = sub i32 %add25.i, %div20112.i
  %43 = ptrtoint ptr %vdma1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub.i, ptr %vdma1.i, align 4
  %mul34.i = mul i32 %div20112.i, %15
  %sub35.i = sub i32 %sub.i, %mul34.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %sub35.i, %if.else.i ], [ %add17.i, %if.then.i ]
  %44 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %storemerge.i, ptr %34, align 4
  %45 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %if.end.i.if.end80.i_crit_edge [
    i32 3, label %if.then70.i
    i32 2, label %if.then62.i
    i32 7, label %if.then54.i
  ]

if.end.i.if.end80.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80.i

if.then54.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %vdma1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %storemerge.i, ptr %vdma1.i, align 4
  br label %if.end80.sink.split.i

if.then62.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %vdma1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %storemerge.i, ptr %vdma1.i, align 4
  br label %if.end80.sink.split.i

if.then70.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %33, align 4
  %50 = ptrtoint ptr %vdma1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %vdma1.i, align 4
  store i32 %storemerge.i, ptr %33, align 4
  br label %if.end80.sink.split.i

if.end80.sink.split.i:                            ; preds = %if.then70.i, %if.then62.i, %if.then54.i
  %div58118.i = and i32 %29, 2147483647
  %51 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div58118.i, ptr %35, align 4
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.end80.sink.split.i, %if.end.i.if.end80.i_crit_edge
  br i1 %cmp.i, label %if.end80.i.saa7146_set_position.exit_crit_edge, label %if.then84.i

if.end80.i.saa7146_set_position.exit_crit_edge:   ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %saa7146_set_position.exit

if.then84.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %35, align 4
  %mul86.i = sub i32 0, %53
  store i32 %mul86.i, ptr %35, align 4
  br label %saa7146_set_position.exit

saa7146_set_position.exit:                        ; preds = %if.then84.i, %if.end80.i.saa7146_set_position.exit_crit_edge
  %54 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma1.i, i32 0, i32 5
  %55 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma1.i, i32 0, i32 4
  %swap.i = getelementptr inbounds %struct.saa7146_format, ptr %call.i, i32 0, i32 4
  %56 = ptrtoint ptr %swap.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %swap.i, align 2
  %conv88.i = zext i8 %57 to i32
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv88.i, ptr %55, align 4
  %standard.i = getelementptr inbounds %struct.saa7146_vv, ptr %23, i32 0, i32 16
  %59 = ptrtoint ptr %standard.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %standard.i, align 4
  %v_field.i = getelementptr inbounds %struct.saa7146_standard, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %v_field.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %v_field.i, align 4
  %shl.i = shl i32 %62, 16
  %h_pixels.i = getelementptr inbounds %struct.saa7146_standard, ptr %60, i32 0, i32 5
  %63 = ptrtoint ptr %h_pixels.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %h_pixels.i, align 4
  %add90.i = add i32 %shl.i, %64
  %65 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add90.i, ptr %54, align 4
  call void @saa7146_write_out_dma(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %vdma1.i) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vdma1.i) #5
  %66 = ptrtoint ptr %ov_fmt to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ov_fmt, align 4
  %trans = getelementptr inbounds %struct.saa7146_format, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %trans, align 4
  %mem.i = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 5
  %70 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %71, i32 120
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %73 = and i32 %72, -65536
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #5
  %75 = shl i32 %69, 22
  %shl.i.i = and i32 %75, -1073741824
  %and2.i.i = shl i32 %69, 24
  %shl3.i.i = and i32 %and2.i.i, 251658240
  %or.i.i = or i32 %shl.i.i, %shl3.i.i
  %76 = shl i32 %69, 12
  %shl6.i.i = and i32 %76, 983040
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %or8.i.i = or i32 %or7.i.i, %74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %77 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i) #5
  %78 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mem.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %79, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %77) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %80 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mem.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %81, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 536879104) #5, !srcloc !41
  %82 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev1, align 4
  %vv_data.i34 = getelementptr inbounds %struct.saa7146_dev, ptr %83, i32 0, i32 14
  %84 = ptrtoint ptr %vv_data.i34 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vv_data.i34, align 4
  %field2.i = getelementptr inbounds %struct.saa7146_vv, ptr %85, i32 0, i32 9, i32 1, i32 1
  %86 = ptrtoint ptr %field2.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %field2.i, align 4
  %nclips.i = getelementptr inbounds %struct.saa7146_vv, ptr %85, i32 0, i32 9, i32 3
  %88 = ptrtoint ptr %nclips.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nclips.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.i35 = icmp eq i32 %89, 0
  %mem.i.i = getelementptr inbounds %struct.saa7146_dev, ptr %83, i32 0, i32 5
  %90 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %91, i32 120
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5
  br i1 %cmp.i35, label %if.then.i36, label %if.end.i38

if.then.i36:                                      ; preds = %saa7146_set_position.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %93 = and i32 %92, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %94 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mem.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %95, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %93) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %96 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mem.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %97, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 536879104) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %98 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mem.i.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %99, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 8192) #5, !srcloc !41
  br label %saa7146_set_clipping_rect.exit

if.end.i38:                                       ; preds = %saa7146_set_position.exit
  %100 = tail call i32 @llvm.bswap.i32(i32 %92) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  %101 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mem.i.i, align 4
  %add.ptr8.i37 = getelementptr i8, ptr %102, i32 72
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i37) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  %104 = ptrtoint ptr %vv_data.i34 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %vv_data.i34, align 4
  %d_clipping.i.i = getelementptr inbounds %struct.saa7146_vv, ptr %105, i32 0, i32 21
  %cpu_addr.i.i = getelementptr inbounds %struct.saa7146_vv, ptr %105, i32 0, i32 21, i32 1
  %106 = ptrtoint ptr %cpu_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cpu_addr.i.i, align 4
  %width1.i.i = getelementptr inbounds %struct.saa7146_vv, ptr %105, i32 0, i32 9, i32 1, i32 0, i32 2
  %108 = ptrtoint ptr %width1.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %width1.i.i, align 4
  %height5.i.i = getelementptr inbounds %struct.saa7146_vv, ptr %105, i32 0, i32 9, i32 1, i32 0, i32 3
  %110 = ptrtoint ptr %height5.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %height5.i.i, align 4
  %nclips.i.i = getelementptr inbounds %struct.saa7146_vv, ptr %105, i32 0, i32 9, i32 3
  %112 = ptrtoint ptr %nclips.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nclips.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %line_list.i.i) #5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %pixel_list.i.i) #5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %x.i.i) #5
  %114 = call ptr @memset(ptr %x.i.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %y.i.i) #5
  %115 = call ptr @memset(ptr %y.i.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %w7.i.i) #5
  %116 = call ptr @memset(ptr %w7.i.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %h.i.i) #5
  %117 = call ptr @memset(ptr %h.i.i, i32 255, i32 128)
  %118 = call ptr @memset(ptr %line_list.i.i, i32 0, i32 128)
  %119 = call ptr @memset(ptr %pixel_list.i.i, i32 0, i32 128)
  %120 = call ptr @memset(ptr %107, i32 0, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp68.i.i = icmp sgt i32 %113, 0
  br i1 %cmp68.i.i, label %for.body.lr.ph.i.i, label %if.end.i38.for.end.i.i_crit_edge

if.end.i38.for.end.i.i_crit_edge:                 ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i38
  %vflip.i.i = getelementptr inbounds %struct.saa7146_vv, ptr %105, i32 0, i32 17
  %121 = ptrtoint ptr %vflip.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %vflip.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp61.not.i.i = icmp eq i32 %122, 0
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end68.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.069.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end68.i.i.for.body.i.i_crit_edge ]
  %arrayidx10.i.i = getelementptr %struct.saa7146_vv, ptr %105, i32 0, i32 9, i32 2, i32 %i.069.i.i
  %123 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx10.i.i, align 4
  %arrayidx11.i.i = getelementptr [32 x i32], ptr %x.i.i, i32 0, i32 %i.069.i.i
  %125 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %arrayidx11.i.i, align 4
  %top.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx10.i.i, i32 0, i32 1
  %126 = ptrtoint ptr %top.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %top.i.i, align 4
  %arrayidx16.i.i = getelementptr [32 x i32], ptr %y.i.i, i32 0, i32 %i.069.i.i
  %128 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %arrayidx16.i.i, align 4
  %width21.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx10.i.i, i32 0, i32 2
  %129 = ptrtoint ptr %width21.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %width21.i.i, align 4
  %arrayidx22.i.i = getelementptr [32 x i32], ptr %w7.i.i, i32 0, i32 %i.069.i.i
  %131 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %arrayidx22.i.i, align 4
  %height27.i.i = getelementptr inbounds %struct.v4l2_rect, ptr %arrayidx10.i.i, i32 0, i32 3
  %132 = ptrtoint ptr %height27.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %height27.i.i, align 4
  %arrayidx28.i.i = getelementptr [32 x i32], ptr %h.i.i, i32 0, i32 %i.069.i.i
  %134 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %arrayidx28.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp30.i.i = icmp slt i32 %130, 0
  br i1 %cmp30.i.i, label %if.then.i.i, label %for.body.i.i.if.end.i.i_crit_edge

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i = add i32 %130, %124
  %135 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %add.i.i, ptr %arrayidx11.i.i, align 4
  %sub.i.i = sub i32 0, %130
  %136 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %sub.i.i, ptr %arrayidx22.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp36.i.i = icmp slt i32 %133, 0
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end.i.i.if.end44.i.i_crit_edge

if.end.i.i.if.end44.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i.i

if.then37.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add40.i.i = add i32 %133, %127
  %137 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %add40.i.i, ptr %arrayidx16.i.i, align 4
  %sub42.i.i = sub i32 0, %133
  %138 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %sub42.i.i, ptr %arrayidx28.i.i, align 4
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then37.i.i, %if.end.i.i.if.end44.i.i_crit_edge
  %139 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx11.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp46.i.i = icmp slt i32 %140, 0
  br i1 %cmp46.i.i, label %if.then47.i.i, label %if.end44.i.i.if.end52.i.i_crit_edge

if.end44.i.i.if.end52.i.i_crit_edge:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52.i.i

if.then47.i.i:                                    ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %141 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx22.i.i, align 4
  %add50.i.i = add i32 %142, %140
  store i32 %add50.i.i, ptr %arrayidx22.i.i, align 4
  %143 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %arrayidx11.i.i, align 4
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then47.i.i, %if.end44.i.i.if.end52.i.i_crit_edge
  %144 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx16.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp54.i.i = icmp slt i32 %145, 0
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end52.i.i.if.end60.i.i_crit_edge

if.end52.i.i.if.end60.i.i_crit_edge:              ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i.i

if.then55.i.i:                                    ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %146 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx28.i.i, align 4
  %add58.i.i = add i32 %147, %145
  store i32 %add58.i.i, ptr %arrayidx28.i.i, align 4
  %148 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %arrayidx16.i.i, align 4
  br label %if.end60.i.i

if.end60.i.i:                                     ; preds = %if.then55.i.i, %if.end52.i.i.if.end60.i.i_crit_edge
  br i1 %cmp61.not.i.i, label %if.end60.i.i.if.end68.i.i_crit_edge, label %if.then62.i.i

if.end60.i.i.if.end68.i.i_crit_edge:              ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.i.i

if.then62.i.i:                                    ; preds = %if.end60.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %149 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx16.i.i, align 4
  %151 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx28.i.i, align 4
  %153 = add i32 %150, %152
  %sub66.i.i = sub i32 %111, %153
  store i32 %sub66.i.i, ptr %arrayidx16.i.i, align 4
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.then62.i.i, %if.end60.i.i.if.end68.i.i_crit_edge
  %154 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx11.i.i, align 4
  %156 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx22.i.i, align 4
  %add72.i.i = add i32 %157, %155
  %158 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx16.i.i, align 4
  %160 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx28.i.i, align 4
  %add76.i.i = add i32 %161, %159
  %162 = tail call i32 @llvm.smin.i32(i32 %155, i32 %109) #5
  %mul.i.i = shl nuw i32 %i.069.i.i, 1
  %arrayidx78.i.i = getelementptr [32 x i32], ptr %pixel_list.i.i, i32 0, i32 %mul.i.i
  %163 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %arrayidx78.i.i, align 4
  %164 = tail call i32 @llvm.smin.i32(i32 %add72.i.i, i32 %109) #5
  %add86.i.i = or i32 %mul.i.i, 1
  %arrayidx87.i.i = getelementptr [32 x i32], ptr %pixel_list.i.i, i32 0, i32 %add86.i.i
  %165 = ptrtoint ptr %arrayidx87.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %arrayidx87.i.i, align 4
  %166 = tail call i32 @llvm.smin.i32(i32 %159, i32 %111) #5
  %arrayidx95.i.i = getelementptr [32 x i32], ptr %line_list.i.i, i32 0, i32 %mul.i.i
  %167 = ptrtoint ptr %arrayidx95.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %arrayidx95.i.i, align 4
  %168 = tail call i32 @llvm.smin.i32(i32 %add76.i.i, i32 %111) #5
  %arrayidx104.i.i = getelementptr [32 x i32], ptr %line_list.i.i, i32 0, i32 %add86.i.i
  %169 = ptrtoint ptr %arrayidx104.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %arrayidx104.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.069.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %113
  br i1 %exitcond.not.i.i, label %if.end68.i.i.for.end.i.i_crit_edge, label %if.end68.i.i.for.body.i.i_crit_edge

if.end68.i.i.for.body.i.i_crit_edge:              ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

if.end68.i.i.for.end.i.i_crit_edge:               ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end68.i.i.for.end.i.i_crit_edge, %if.end.i38.for.end.i.i_crit_edge
  %mul105.i.i = shl i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul105.i.i)
  %cmp.i.i.i = icmp slt i32 %mul105.i.i, 0
  br i1 %cmp.i.i.i, label %for.end.i.i.sort_and_eliminate.exit42.i.i_crit_edge, label %for.cond.preheader.i.i.i

for.end.i.i.sort_and_eliminate.exit42.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sort_and_eliminate.exit42.i.i

for.cond.preheader.i.i.i:                         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul105.i.i)
  %cmp24.not.i.i.i = icmp eq i32 %mul105.i.i, 0
  br i1 %cmp24.not.i.i.i, label %for.cond.preheader.i.i.i.for.end30.i41.i.i_crit_edge, label %for.cond.preheader.i.i.i.for.body5.i.i.preheader.i_crit_edge

for.cond.preheader.i.i.i.for.body5.i.i.preheader.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body5.i.i.preheader.i

for.cond.preheader.i.i.i.for.end30.i41.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30.i41.i.i

for.cond3.preheader.i.i.loopexit.i:               ; preds = %for.inc.i.i.i
  %cmp41.i.i.i = icmp ugt i32 %indvars.iv.i.i88.i, 1
  br i1 %cmp41.i.i.i, label %for.cond3.preheader.i.i.loopexit.i.for.body5.i.i.preheader.i_crit_edge, label %for.cond17.preheader.i.i.i

for.cond3.preheader.i.i.loopexit.i.for.body5.i.i.preheader.i_crit_edge: ; preds = %for.cond3.preheader.i.i.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.i.i.preheader.i

for.body5.i.i.preheader.i:                        ; preds = %for.cond3.preheader.i.i.loopexit.i.for.body5.i.i.preheader.i_crit_edge, %for.cond.preheader.i.i.i.for.body5.i.i.preheader.i_crit_edge
  %indvars.iv.i.i88.in.i = phi i32 [ %indvars.iv.i.i88.i, %for.cond3.preheader.i.i.loopexit.i.for.body5.i.i.preheader.i_crit_edge ], [ %mul105.i.i, %for.cond.preheader.i.i.i.for.body5.i.i.preheader.i_crit_edge ]
  %indvars.iv.i.i88.i = add i32 %indvars.iv.i.i88.in.i, -1
  br label %for.body5.i.i.i

for.cond17.preheader.i.i.i:                       ; preds = %for.cond3.preheader.i.i.loopexit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul105.i.i)
  %cmp186.i.i.i = icmp sgt i32 %mul105.i.i, 1
  br i1 %cmp186.i.i.i, label %for.cond17.preheader.i.i.i.for.body19.i.i.i_crit_edge, label %for.cond17.preheader.i.i.i.for.body5.i18.i.preheader.preheader.i_crit_edge

for.cond17.preheader.i.i.i.for.body5.i18.i.preheader.preheader.i_crit_edge: ; preds = %for.cond17.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.i18.i.preheader.preheader.i

for.cond17.preheader.i.i.i.for.body19.i.i.i_crit_edge: ; preds = %for.cond17.preheader.i.i.i
  br label %for.body19.i.i.i

for.body5.i.i.i:                                  ; preds = %for.inc.i.i.i.for.body5.i.i.i_crit_edge, %for.body5.i.i.preheader.i
  %high.03.i.i.i = phi i32 [ %inc14.i.i.i, %for.inc.i.i.i.for.body5.i.i.i_crit_edge ], [ 1, %for.body5.i.i.preheader.i ]
  %low.02.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body5.i.i.i_crit_edge ], [ 0, %for.body5.i.i.preheader.i ]
  %arrayidx.i.i.i = getelementptr i32, ptr %pixel_list.i.i, i32 %low.02.i.i.i
  %170 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx6.i.i.i = getelementptr i32, ptr %pixel_list.i.i, i32 %high.03.i.i.i
  %172 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx6.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %173)
  %cmp7.i.i.i = icmp ugt i32 %171, %173
  br i1 %cmp7.i.i.i, label %do.body.i.i.i, label %for.body5.i.i.i.for.inc.i.i.i_crit_edge

for.body5.i.i.i.for.inc.i.i.i_crit_edge:          ; preds = %for.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

do.body.i.i.i:                                    ; preds = %for.body5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %174 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %arrayidx.i.i.i, align 4
  %175 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %171, ptr %arrayidx6.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %do.body.i.i.i, %for.body5.i.i.i.for.inc.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %low.02.i.i.i, 1
  %inc14.i.i.i = add nuw nsw i32 %high.03.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %indvars.iv.i.i88.i
  br i1 %exitcond.not.i.i.i, label %for.cond3.preheader.i.i.loopexit.i, label %for.inc.i.i.i.for.body5.i.i.i_crit_edge

for.inc.i.i.i.for.body5.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.i.i.i

for.body19.i.i.i:                                 ; preds = %for.inc28.i.i.i.for.body19.i.i.i_crit_edge, %for.cond17.preheader.i.i.i.for.body19.i.i.i_crit_edge
  %next.08.i.i.i = phi i32 [ %inc29.i.i.i, %for.inc28.i.i.i.for.body19.i.i.i_crit_edge ], [ 1, %for.cond17.preheader.i.i.i.for.body19.i.i.i_crit_edge ]
  %cur.07.i.i.i = phi i32 [ %cur.1.i.i.i, %for.inc28.i.i.i.for.body19.i.i.i_crit_edge ], [ 0, %for.cond17.preheader.i.i.i.for.body19.i.i.i_crit_edge ]
  %arrayidx20.i.i.i = getelementptr i32, ptr %pixel_list.i.i, i32 %cur.07.i.i.i
  %176 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx20.i.i.i, align 4
  %arrayidx21.i.i.i = getelementptr i32, ptr %pixel_list.i.i, i32 %next.08.i.i.i
  %178 = ptrtoint ptr %arrayidx21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx21.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %179)
  %cmp22.not.i.i.i = icmp eq i32 %177, %179
  br i1 %cmp22.not.i.i.i, label %for.body19.i.i.i.for.inc28.i.i.i_crit_edge, label %if.then23.i.i.i

for.body19.i.i.i.for.inc28.i.i.i_crit_edge:       ; preds = %for.body19.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc28.i.i.i

if.then23.i.i.i:                                  ; preds = %for.body19.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc25.i.i.i = add i32 %cur.07.i.i.i, 1
  %arrayidx26.i.i.i = getelementptr i32, ptr %pixel_list.i.i, i32 %inc25.i.i.i
  %180 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %arrayidx26.i.i.i, align 4
  br label %for.inc28.i.i.i

for.inc28.i.i.i:                                  ; preds = %if.then23.i.i.i, %for.body19.i.i.i.for.inc28.i.i.i_crit_edge
  %cur.1.i.i.i = phi i32 [ %inc25.i.i.i, %if.then23.i.i.i ], [ %cur.07.i.i.i, %for.body19.i.i.i.for.inc28.i.i.i_crit_edge ]
  %inc29.i.i.i = add nuw nsw i32 %next.08.i.i.i, 1
  %exitcond86.not.i.i = icmp eq i32 %inc29.i.i.i, %mul105.i.i
  br i1 %exitcond86.not.i.i, label %for.inc28.i.i.i.for.body5.i18.i.preheader.preheader.i_crit_edge, label %for.inc28.i.i.i.for.body19.i.i.i_crit_edge

for.inc28.i.i.i.for.body19.i.i.i_crit_edge:       ; preds = %for.inc28.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body19.i.i.i

for.inc28.i.i.i.for.body5.i18.i.preheader.preheader.i_crit_edge: ; preds = %for.inc28.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.i18.i.preheader.preheader.i

for.body5.i18.i.preheader.preheader.i:            ; preds = %for.inc28.i.i.i.for.body5.i18.i.preheader.preheader.i_crit_edge, %for.cond17.preheader.i.i.i.for.body5.i18.i.preheader.preheader.i_crit_edge
  %cur.0.lcssa.i.i.i = phi i32 [ 0, %for.cond17.preheader.i.i.i.for.body5.i18.i.preheader.preheader.i_crit_edge ], [ %cur.1.i.i.i, %for.inc28.i.i.i.for.body5.i18.i.preheader.preheader.i_crit_edge ]
  br label %for.body5.i18.i.preheader.i

for.cond3.preheader.i10.i.loopexit.i:             ; preds = %for.inc.i23.i.i
  %cmp41.i9.i.i = icmp ugt i32 %indvars.iv.i8.i91.i, 1
  br i1 %cmp41.i9.i.i, label %for.cond3.preheader.i10.i.loopexit.i.for.body5.i18.i.preheader.i_crit_edge, label %for.cond17.preheader.i12.i.i

for.cond3.preheader.i10.i.loopexit.i.for.body5.i18.i.preheader.i_crit_edge: ; preds = %for.cond3.preheader.i10.i.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.i18.i.preheader.i

for.body5.i18.i.preheader.i:                      ; preds = %for.cond3.preheader.i10.i.loopexit.i.for.body5.i18.i.preheader.i_crit_edge, %for.body5.i18.i.preheader.preheader.i
  %indvars.iv.i8.i91.in.i = phi i32 [ %indvars.iv.i8.i91.i, %for.cond3.preheader.i10.i.loopexit.i.for.body5.i18.i.preheader.i_crit_edge ], [ %mul105.i.i, %for.body5.i18.i.preheader.preheader.i ]
  %indvars.iv.i8.i91.i = add i32 %indvars.iv.i8.i91.in.i, -1
  br label %for.body5.i18.i.i

for.cond17.preheader.i12.i.i:                     ; preds = %for.cond3.preheader.i10.i.loopexit.i
  %add.i.i.i = add i32 %cur.0.lcssa.i.i.i, 1
  br i1 %cmp186.i.i.i, label %for.cond17.preheader.i12.i.i.for.body19.i31.i.i_crit_edge, label %for.cond17.preheader.i12.i.i.for.end30.i41.i.i_crit_edge

for.cond17.preheader.i12.i.i.for.end30.i41.i.i_crit_edge: ; preds = %for.cond17.preheader.i12.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30.i41.i.i

for.cond17.preheader.i12.i.i.for.body19.i31.i.i_crit_edge: ; preds = %for.cond17.preheader.i12.i.i
  br label %for.body19.i31.i.i

for.body5.i18.i.i:                                ; preds = %for.inc.i23.i.i.for.body5.i18.i.i_crit_edge, %for.body5.i18.i.preheader.i
  %high.03.i13.i.i = phi i32 [ %inc14.i21.i.i, %for.inc.i23.i.i.for.body5.i18.i.i_crit_edge ], [ 1, %for.body5.i18.i.preheader.i ]
  %low.02.i14.i.i = phi i32 [ %inc.i20.i.i, %for.inc.i23.i.i.for.body5.i18.i.i_crit_edge ], [ 0, %for.body5.i18.i.preheader.i ]
  %arrayidx.i15.i.i = getelementptr i32, ptr %line_list.i.i, i32 %low.02.i14.i.i
  %181 = ptrtoint ptr %arrayidx.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx.i15.i.i, align 4
  %arrayidx6.i16.i.i = getelementptr i32, ptr %line_list.i.i, i32 %high.03.i13.i.i
  %183 = ptrtoint ptr %arrayidx6.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx6.i16.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %182, i32 %184)
  %cmp7.i17.i.i = icmp ugt i32 %182, %184
  br i1 %cmp7.i17.i.i, label %do.body.i19.i.i, label %for.body5.i18.i.i.for.inc.i23.i.i_crit_edge

for.body5.i18.i.i.for.inc.i23.i.i_crit_edge:      ; preds = %for.body5.i18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i23.i.i

do.body.i19.i.i:                                  ; preds = %for.body5.i18.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %185 = ptrtoint ptr %arrayidx.i15.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %arrayidx.i15.i.i, align 4
  %186 = ptrtoint ptr %arrayidx6.i16.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %182, ptr %arrayidx6.i16.i.i, align 4
  br label %for.inc.i23.i.i

for.inc.i23.i.i:                                  ; preds = %do.body.i19.i.i, %for.body5.i18.i.i.for.inc.i23.i.i_crit_edge
  %inc.i20.i.i = add nuw nsw i32 %low.02.i14.i.i, 1
  %inc14.i21.i.i = add nuw nsw i32 %high.03.i13.i.i, 1
  %exitcond.not.i22.i.i = icmp eq i32 %inc.i20.i.i, %indvars.iv.i8.i91.i
  br i1 %exitcond.not.i22.i.i, label %for.cond3.preheader.i10.i.loopexit.i, label %for.inc.i23.i.i.for.body5.i18.i.i_crit_edge

for.inc.i23.i.i.for.body5.i18.i.i_crit_edge:      ; preds = %for.inc.i23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.i18.i.i

for.body19.i31.i.i:                               ; preds = %for.inc28.i38.i.i.for.body19.i31.i.i_crit_edge, %for.cond17.preheader.i12.i.i.for.body19.i31.i.i_crit_edge
  %next.08.i26.i.i = phi i32 [ %inc29.i36.i.i, %for.inc28.i38.i.i.for.body19.i31.i.i_crit_edge ], [ 1, %for.cond17.preheader.i12.i.i.for.body19.i31.i.i_crit_edge ]
  %cur.07.i27.i.i = phi i32 [ %cur.1.i35.i.i, %for.inc28.i38.i.i.for.body19.i31.i.i_crit_edge ], [ 0, %for.cond17.preheader.i12.i.i.for.body19.i31.i.i_crit_edge ]
  %arrayidx20.i28.i.i = getelementptr i32, ptr %line_list.i.i, i32 %cur.07.i27.i.i
  %187 = ptrtoint ptr %arrayidx20.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx20.i28.i.i, align 4
  %arrayidx21.i29.i.i = getelementptr i32, ptr %line_list.i.i, i32 %next.08.i26.i.i
  %189 = ptrtoint ptr %arrayidx21.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx21.i29.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %188, i32 %190)
  %cmp22.not.i30.i.i = icmp eq i32 %188, %190
  br i1 %cmp22.not.i30.i.i, label %for.body19.i31.i.i.for.inc28.i38.i.i_crit_edge, label %if.then23.i34.i.i

for.body19.i31.i.i.for.inc28.i38.i.i_crit_edge:   ; preds = %for.body19.i31.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc28.i38.i.i

if.then23.i34.i.i:                                ; preds = %for.body19.i31.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc25.i32.i.i = add i32 %cur.07.i27.i.i, 1
  %arrayidx26.i33.i.i = getelementptr i32, ptr %line_list.i.i, i32 %inc25.i32.i.i
  %191 = ptrtoint ptr %arrayidx26.i33.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %arrayidx26.i33.i.i, align 4
  br label %for.inc28.i38.i.i

for.inc28.i38.i.i:                                ; preds = %if.then23.i34.i.i, %for.body19.i31.i.i.for.inc28.i38.i.i_crit_edge
  %cur.1.i35.i.i = phi i32 [ %inc25.i32.i.i, %if.then23.i34.i.i ], [ %cur.07.i27.i.i, %for.body19.i31.i.i.for.inc28.i38.i.i_crit_edge ]
  %inc29.i36.i.i = add nuw nsw i32 %next.08.i26.i.i, 1
  %exitcond87.not.i.i = icmp eq i32 %inc29.i36.i.i, %mul105.i.i
  br i1 %exitcond87.not.i.i, label %for.inc28.i38.i.i.for.end30.i41.i.i_crit_edge, label %for.inc28.i38.i.i.for.body19.i31.i.i_crit_edge

for.inc28.i38.i.i.for.body19.i31.i.i_crit_edge:   ; preds = %for.inc28.i38.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body19.i31.i.i

for.inc28.i38.i.i.for.end30.i41.i.i_crit_edge:    ; preds = %for.inc28.i38.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30.i41.i.i

for.end30.i41.i.i:                                ; preds = %for.inc28.i38.i.i.for.end30.i41.i.i_crit_edge, %for.cond17.preheader.i12.i.i.for.end30.i41.i.i_crit_edge, %for.cond.preheader.i.i.i.for.end30.i41.i.i_crit_edge
  %add.i596265.i.i = phi i32 [ %add.i.i.i, %for.cond17.preheader.i12.i.i.for.end30.i41.i.i_crit_edge ], [ 1, %for.cond.preheader.i.i.i.for.end30.i41.i.i_crit_edge ], [ %add.i.i.i, %for.inc28.i38.i.i.for.end30.i41.i.i_crit_edge ]
  %cur.0.lcssa.i39.i.i = phi i32 [ 0, %for.cond17.preheader.i12.i.i.for.end30.i41.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.end30.i41.i.i_crit_edge ], [ %cur.1.i35.i.i, %for.inc28.i38.i.i.for.end30.i41.i.i_crit_edge ]
  %add.i40.i.i = add i32 %cur.0.lcssa.i39.i.i, 1
  br label %sort_and_eliminate.exit42.i.i

sort_and_eliminate.exit42.i.i:                    ; preds = %for.end30.i41.i.i, %for.end.i.i.sort_and_eliminate.exit42.i.i_crit_edge
  %cnt_pixel.055.i.i = phi i32 [ %add.i596265.i.i, %for.end30.i41.i.i ], [ %mul105.i.i, %for.end.i.i.sort_and_eliminate.exit42.i.i_crit_edge ]
  %cnt_line.0.i.i = phi i32 [ %add.i40.i.i, %for.end30.i41.i.i ], [ %mul105.i.i, %for.end.i.i.sort_and_eliminate.exit42.i.i_crit_edge ]
  %add109.i.i = add i32 %cnt_line.0.i.i, 1
  %add110.i.i = add i32 %cnt_pixel.055.i.i, 1
  %192 = tail call i32 @llvm.smax.i32(i32 %add109.i.i, i32 %add110.i.i) #5
  %mul117.i.i = shl i32 %192, 1
  %193 = tail call i32 @llvm.smax.i32(i32 %mul117.i.i, i32 4) #5
  %194 = tail call i32 @llvm.umin.i32(i32 %193, i32 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt_pixel.055.i.i)
  %cmp13170.i.i = icmp sgt i32 %cnt_pixel.055.i.i, 0
  br i1 %cmp13170.i.i, label %sort_and_eliminate.exit42.i.i.for.body132.i.i_crit_edge, label %sort_and_eliminate.exit42.i.i.for.cond139.preheader.i.i_crit_edge

sort_and_eliminate.exit42.i.i.for.cond139.preheader.i.i_crit_edge: ; preds = %sort_and_eliminate.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond139.preheader.i.i

sort_and_eliminate.exit42.i.i.for.body132.i.i_crit_edge: ; preds = %sort_and_eliminate.exit42.i.i
  br label %for.body132.i.i

for.cond139.preheader.i.i:                        ; preds = %for.body132.i.i.for.cond139.preheader.i.i_crit_edge, %sort_and_eliminate.exit42.i.i.for.cond139.preheader.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt_line.0.i.i)
  %cmp14072.i.i = icmp sgt i32 %cnt_line.0.i.i, 0
  br i1 %cmp14072.i.i, label %for.cond139.preheader.i.i.for.body141.i.i_crit_edge, label %for.cond139.preheader.i.i.for.cond151.preheader.i.i_crit_edge

for.cond139.preheader.i.i.for.cond151.preheader.i.i_crit_edge: ; preds = %for.cond139.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond151.preheader.i.i

for.cond139.preheader.i.i.for.body141.i.i_crit_edge: ; preds = %for.cond139.preheader.i.i
  br label %for.body141.i.i

for.body132.i.i:                                  ; preds = %for.body132.i.i.for.body132.i.i_crit_edge, %sort_and_eliminate.exit42.i.i.for.body132.i.i_crit_edge
  %i.171.i.i = phi i32 [ %inc137.i.i, %for.body132.i.i.for.body132.i.i_crit_edge ], [ 0, %sort_and_eliminate.exit42.i.i.for.body132.i.i_crit_edge ]
  %arrayidx133.i.i = getelementptr [32 x i32], ptr %pixel_list.i.i, i32 0, i32 %i.171.i.i
  %195 = ptrtoint ptr %arrayidx133.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx133.i.i, align 4
  %197 = tail call i32 @llvm.bswap.i32(i32 %196) #5
  %198 = lshr i32 %197, 16
  %mul134.i.i = shl nuw i32 %i.171.i.i, 1
  %arrayidx135.i.i = getelementptr i32, ptr %107, i32 %mul134.i.i
  %199 = ptrtoint ptr %arrayidx135.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx135.i.i, align 4
  %or.i.i39 = or i32 %198, %200
  store i32 %or.i.i39, ptr %arrayidx135.i.i, align 4
  %inc137.i.i = add nuw nsw i32 %i.171.i.i, 1
  %exitcond88.not.i.i = icmp eq i32 %inc137.i.i, %cnt_pixel.055.i.i
  br i1 %exitcond88.not.i.i, label %for.body132.i.i.for.cond139.preheader.i.i_crit_edge, label %for.body132.i.i.for.body132.i.i_crit_edge

for.body132.i.i.for.body132.i.i_crit_edge:        ; preds = %for.body132.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body132.i.i

for.body132.i.i.for.cond139.preheader.i.i_crit_edge: ; preds = %for.body132.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond139.preheader.i.i

for.cond151.preheader.i.i:                        ; preds = %for.body141.i.i.for.cond151.preheader.i.i_crit_edge, %for.cond139.preheader.i.i.for.cond151.preheader.i.i_crit_edge
  br i1 %cmp68.i.i, label %for.cond151.preheader.i.i.for.cond154.preheader.i.i_crit_edge, label %for.cond151.preheader.i.i.for.end211.i.i_crit_edge

for.cond151.preheader.i.i.for.end211.i.i_crit_edge: ; preds = %for.cond151.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end211.i.i

for.cond151.preheader.i.i.for.cond154.preheader.i.i_crit_edge: ; preds = %for.cond151.preheader.i.i
  br label %for.cond154.preheader.i.i

for.body141.i.i:                                  ; preds = %for.body141.i.i.for.body141.i.i_crit_edge, %for.cond139.preheader.i.i.for.body141.i.i_crit_edge
  %i.273.i.i = phi i32 [ %inc149.i.i, %for.body141.i.i.for.body141.i.i_crit_edge ], [ 0, %for.cond139.preheader.i.i.for.body141.i.i_crit_edge ]
  %arrayidx142.i.i = getelementptr [32 x i32], ptr %line_list.i.i, i32 0, i32 %i.273.i.i
  %201 = ptrtoint ptr %arrayidx142.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx142.i.i, align 4
  %203 = tail call i32 @llvm.bswap.i32(i32 %202) #5
  %204 = lshr i32 %203, 16
  %mul144.i.i = shl nuw i32 %i.273.i.i, 1
  %add145.i.i = or i32 %mul144.i.i, 1
  %arrayidx146.i.i = getelementptr i32, ptr %107, i32 %add145.i.i
  %205 = ptrtoint ptr %arrayidx146.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx146.i.i, align 4
  %or147.i.i = or i32 %204, %206
  store i32 %or147.i.i, ptr %arrayidx146.i.i, align 4
  %inc149.i.i = add nuw nsw i32 %i.273.i.i, 1
  %exitcond89.not.i.i = icmp eq i32 %inc149.i.i, %cnt_line.0.i.i
  br i1 %exitcond89.not.i.i, label %for.body141.i.i.for.cond151.preheader.i.i_crit_edge, label %for.body141.i.i.for.body141.i.i_crit_edge

for.body141.i.i.for.body141.i.i_crit_edge:        ; preds = %for.body141.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body141.i.i

for.body141.i.i.for.cond151.preheader.i.i_crit_edge: ; preds = %for.body141.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond151.preheader.i.i

for.cond154.preheader.i.i:                        ; preds = %for.inc209.i.i.for.cond154.preheader.i.i_crit_edge, %for.cond151.preheader.i.i.for.cond154.preheader.i.i_crit_edge
  %j.082.i.i = phi i32 [ %inc210.i.i, %for.inc209.i.i.for.cond154.preheader.i.i_crit_edge ], [ 0, %for.cond151.preheader.i.i.for.cond154.preheader.i.i_crit_edge ]
  br i1 %cmp13170.i.i, label %for.body156.lr.ph.i.i, label %for.cond154.preheader.i.i.for.cond181.preheader.i.i_crit_edge

for.cond154.preheader.i.i.for.cond181.preheader.i.i_crit_edge: ; preds = %for.cond154.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond181.preheader.i.i

for.body156.lr.ph.i.i:                            ; preds = %for.cond154.preheader.i.i
  %arrayidx157.i.i = getelementptr [32 x i32], ptr %x.i.i, i32 0, i32 %j.082.i.i
  %arrayidx164.i.i = getelementptr [32 x i32], ptr %w7.i.i, i32 0, i32 %j.082.i.i
  %207 = ptrtoint ptr %arrayidx164.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx164.i.i, align 4
  %shl172.i.i = shl nuw i32 1, %j.082.i.i
  %209 = tail call i32 @llvm.bswap.i32(i32 %shl172.i.i) #5
  %210 = ptrtoint ptr %arrayidx157.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %arrayidx157.promoted.i.i = load i32, ptr %arrayidx157.i.i, align 4
  br label %for.body156.i.i

for.cond154.for.cond181.preheader_crit_edge.i.i:  ; preds = %for.inc178.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %211 = ptrtoint ptr %arrayidx157.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %217, ptr %arrayidx157.i.i, align 4
  br label %for.cond181.preheader.i.i

for.cond181.preheader.i.i:                        ; preds = %for.cond154.for.cond181.preheader_crit_edge.i.i, %for.cond154.preheader.i.i.for.cond181.preheader.i.i_crit_edge
  br i1 %cmp14072.i.i, label %for.body183.lr.ph.i.i, label %for.cond181.preheader.i.i.for.inc209.i.i_crit_edge

for.cond181.preheader.i.i.for.inc209.i.i_crit_edge: ; preds = %for.cond181.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc209.i.i

for.body183.lr.ph.i.i:                            ; preds = %for.cond181.preheader.i.i
  %arrayidx184.i.i = getelementptr [32 x i32], ptr %y.i.i, i32 0, i32 %j.082.i.i
  %arrayidx191.i.i = getelementptr [32 x i32], ptr %h.i.i, i32 0, i32 %j.082.i.i
  %212 = ptrtoint ptr %arrayidx191.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx191.i.i, align 4
  %shl199.i.i = shl nuw i32 1, %j.082.i.i
  %214 = tail call i32 @llvm.bswap.i32(i32 %shl199.i.i) #5
  %215 = ptrtoint ptr %arrayidx184.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %arrayidx184.promoted.i.i = load i32, ptr %arrayidx184.i.i, align 4
  br label %for.body183.i.i

for.body156.i.i:                                  ; preds = %for.inc178.i.i.for.body156.i.i_crit_edge, %for.body156.lr.ph.i.i
  %216 = phi i32 [ %arrayidx157.promoted.i.i, %for.body156.lr.ph.i.i ], [ %217, %for.inc178.i.i.for.body156.i.i_crit_edge ]
  %i.375.i.i = phi i32 [ 0, %for.body156.lr.ph.i.i ], [ %inc179.i.i, %for.inc178.i.i.for.body156.i.i_crit_edge ]
  %217 = tail call i32 @llvm.smax.i32(i32 %216, i32 0) #5
  %arrayidx162.i.i = getelementptr [32 x i32], ptr %pixel_list.i.i, i32 0, i32 %i.375.i.i
  %218 = ptrtoint ptr %arrayidx162.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx162.i.i, align 4
  %add165.i.i = add i32 %217, %208
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %add165.i.i)
  %cmp166.i.i = icmp uge i32 %219, %add165.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %219, i32 %217)
  %cmp170.not.i.i = icmp ult i32 %219, %217
  %or.cond.i.i = or i1 %cmp170.not.i.i, %cmp166.i.i
  br i1 %or.cond.i.i, label %for.body156.i.i.for.inc178.i.i_crit_edge, label %if.then171.i.i

for.body156.i.i.for.inc178.i.i_crit_edge:         ; preds = %for.body156.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc178.i.i

if.then171.i.i:                                   ; preds = %for.body156.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul173.i.i = shl nuw i32 %i.375.i.i, 1
  %arrayidx174.i.i = getelementptr i32, ptr %107, i32 %mul173.i.i
  %220 = ptrtoint ptr %arrayidx174.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx174.i.i, align 4
  %or175.i.i = or i32 %221, %209
  store i32 %or175.i.i, ptr %arrayidx174.i.i, align 4
  br label %for.inc178.i.i

for.inc178.i.i:                                   ; preds = %if.then171.i.i, %for.body156.i.i.for.inc178.i.i_crit_edge
  %inc179.i.i = add nuw nsw i32 %i.375.i.i, 1
  %exitcond90.not.i.i = icmp eq i32 %inc179.i.i, %cnt_pixel.055.i.i
  br i1 %exitcond90.not.i.i, label %for.cond154.for.cond181.preheader_crit_edge.i.i, label %for.inc178.i.i.for.body156.i.i_crit_edge

for.inc178.i.i.for.body156.i.i_crit_edge:         ; preds = %for.inc178.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body156.i.i

for.body183.i.i:                                  ; preds = %for.inc206.i.i.for.body183.i.i_crit_edge, %for.body183.lr.ph.i.i
  %222 = phi i32 [ %arrayidx184.promoted.i.i, %for.body183.lr.ph.i.i ], [ %223, %for.inc206.i.i.for.body183.i.i_crit_edge ]
  %i.478.i.i = phi i32 [ 0, %for.body183.lr.ph.i.i ], [ %inc207.i.i, %for.inc206.i.i.for.body183.i.i_crit_edge ]
  %223 = tail call i32 @llvm.smax.i32(i32 %222, i32 0) #5
  %arrayidx189.i.i = getelementptr [32 x i32], ptr %line_list.i.i, i32 0, i32 %i.478.i.i
  %224 = ptrtoint ptr %arrayidx189.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx189.i.i, align 4
  %add192.i.i = add i32 %223, %213
  call void @__sanitizer_cov_trace_cmp4(i32 %225, i32 %add192.i.i)
  %cmp193.i.i = icmp uge i32 %225, %add192.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %225, i32 %223)
  %cmp197.not.i.i = icmp ult i32 %225, %223
  %or.cond2.i.i = or i1 %cmp197.not.i.i, %cmp193.i.i
  br i1 %or.cond2.i.i, label %for.body183.i.i.for.inc206.i.i_crit_edge, label %if.then198.i.i

for.body183.i.i.for.inc206.i.i_crit_edge:         ; preds = %for.body183.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc206.i.i

if.then198.i.i:                                   ; preds = %for.body183.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul200.i.i = shl nuw i32 %i.478.i.i, 1
  %add201.i.i = or i32 %mul200.i.i, 1
  %arrayidx202.i.i = getelementptr i32, ptr %107, i32 %add201.i.i
  %226 = ptrtoint ptr %arrayidx202.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx202.i.i, align 4
  %or203.i.i = or i32 %227, %214
  store i32 %or203.i.i, ptr %arrayidx202.i.i, align 4
  br label %for.inc206.i.i

for.inc206.i.i:                                   ; preds = %if.then198.i.i, %for.body183.i.i.for.inc206.i.i_crit_edge
  %inc207.i.i = add nuw nsw i32 %i.478.i.i, 1
  %exitcond91.not.i.i = icmp eq i32 %inc207.i.i, %cnt_line.0.i.i
  br i1 %exitcond91.not.i.i, label %for.cond181.for.inc209_crit_edge.i.i, label %for.inc206.i.i.for.body183.i.i_crit_edge

for.inc206.i.i.for.body183.i.i_crit_edge:         ; preds = %for.inc206.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body183.i.i

for.cond181.for.inc209_crit_edge.i.i:             ; preds = %for.inc206.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %228 = ptrtoint ptr %arrayidx184.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %223, ptr %arrayidx184.i.i, align 4
  br label %for.inc209.i.i

for.inc209.i.i:                                   ; preds = %for.cond181.for.inc209_crit_edge.i.i, %for.cond181.preheader.i.i.for.inc209.i.i_crit_edge
  %inc210.i.i = add nuw nsw i32 %j.082.i.i, 1
  %exitcond92.not.i.i = icmp eq i32 %inc210.i.i, %113
  br i1 %exitcond92.not.i.i, label %for.inc209.i.i.for.end211.i.i_crit_edge, label %for.inc209.i.i.for.cond154.preheader.i.i_crit_edge

for.inc209.i.i.for.cond154.preheader.i.i_crit_edge: ; preds = %for.inc209.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond154.preheader.i.i

for.inc209.i.i.for.end211.i.i_crit_edge:          ; preds = %for.inc209.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end211.i.i

for.end211.i.i:                                   ; preds = %for.inc209.i.i.for.end211.i.i_crit_edge, %for.cond151.preheader.i.i.for.end211.i.i_crit_edge
  %229 = and i32 %103, -16711681
  %230 = or i32 %229, 1835008
  %231 = ptrtoint ptr %d_clipping.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %d_clipping.i.i, align 4
  %mul218.i.i = shl nuw nsw i32 %194, 2
  %add219.i.i = add i32 %232, %mul218.i.i
  %mul221.i.i = add nsw i32 %mul218.i.i, -4
  %and223.i.i = and i32 %100, -9
  %233 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %233, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %87, label %for.end211.i.i.calculate_clipping_registers_rect.exit.i_crit_edge [
    i32 4, label %for.end211.i.i.if.then232.i.i_crit_edge
    i32 8, label %for.end211.i.i.if.then232.i.i_crit_edge48
    i32 9, label %for.end211.i.i.if.then232.i.i_crit_edge49
    i32 5, label %for.end211.i.i.if.then232.i.i_crit_edge50
    i32 6, label %for.end211.i.i.if.then232.i.i_crit_edge51
  ]

for.end211.i.i.if.then232.i.i_crit_edge51:        ; preds = %for.end211.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then232.i.i

for.end211.i.i.if.then232.i.i_crit_edge50:        ; preds = %for.end211.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then232.i.i

for.end211.i.i.if.then232.i.i_crit_edge49:        ; preds = %for.end211.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then232.i.i

for.end211.i.i.if.then232.i.i_crit_edge48:        ; preds = %for.end211.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then232.i.i

for.end211.i.i.if.then232.i.i_crit_edge:          ; preds = %for.end211.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then232.i.i

for.end211.i.i.calculate_clipping_registers_rect.exit.i_crit_edge: ; preds = %for.end211.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %calculate_clipping_registers_rect.exit.i

if.then232.i.i:                                   ; preds = %for.end211.i.i.if.then232.i.i_crit_edge, %for.end211.i.i.if.then232.i.i_crit_edge48, %for.end211.i.i.if.then232.i.i_crit_edge49, %for.end211.i.i.if.then232.i.i_crit_edge50, %for.end211.i.i.if.then232.i.i_crit_edge51
  %or233.i.i = or i32 %100, 8
  br label %calculate_clipping_registers_rect.exit.i

calculate_clipping_registers_rect.exit.i:         ; preds = %if.then232.i.i, %for.end211.i.i.calculate_clipping_registers_rect.exit.i_crit_edge
  %storemerge.i.i = phi i32 [ %or233.i.i, %if.then232.i.i ], [ %and223.i.i, %for.end211.i.i.calculate_clipping_registers_rect.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %h.i.i) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %w7.i.i) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %y.i.i) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %x.i.i) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %pixel_list.i.i) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %line_list.i.i) #5
  %and.i = and i32 %storemerge.i.i, -65528
  %or.i = or i32 %and.i, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %234 = tail call i32 @llvm.bswap.i32(i32 %232) #5
  %235 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %mem.i.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %236, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %234) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %237 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mem.i.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %238, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %234) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %239 = tail call i32 @llvm.bswap.i32(i32 %add219.i.i) #5
  %240 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %mem.i.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %241, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %239) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %242 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %mem.i.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %243, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 67108864) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %244 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %mem.i.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %245, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 0) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %246 = tail call i32 @llvm.bswap.i32(i32 %mul221.i.i) #5
  %247 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %mem.i.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %248, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %246) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %249 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %250 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %mem.i.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %251, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %249) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %252 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %mem.i.i, align 4
  %add.ptr48.i = getelementptr i8, ptr %253, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %230) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %254 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %mem.i.i, align 4
  %add.ptr53.i = getelementptr i8, ptr %255, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 671098880) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %256 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %mem.i.i, align 4
  %add.ptr58.i = getelementptr i8, ptr %257, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.i, i32 536879104) #5, !srcloc !41
  br label %saa7146_set_clipping_rect.exit

saa7146_set_clipping_rect.exit:                   ; preds = %calculate_clipping_registers_rect.exit.i, %if.then.i36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %258 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %mem.i, align 4
  %add.ptr = getelementptr i8, ptr %259, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1073758208) #5, !srcloc !41
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7146_set_window(ptr nocapture noundef readonly %dev, i32 noundef %width, i32 noundef %height, i32 noundef %field) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vv_data, align 4
  %current_hps_source = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %current_hps_source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_hps_source, align 4
  %current_hps_sync = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %current_hps_sync to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_hps_sync, align 4
  %standard = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %standard, align 4
  %v_field = getelementptr inbounds %struct.saa7146_standard, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %v_field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %v_field, align 4
  %mul = shl i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %height)
  %cmp.i = icmp slt i32 %mul, %height
  br i1 %cmp.i, label %entry.calculate_v_scale_registers.exit_crit_edge, label %if.end.i

entry.calculate_v_scale_registers.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %calculate_v_scale_registers.exit

if.end.i:                                         ; preds = %entry
  %10 = zext i32 %field to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %field, label %if.end.i.if.else36.i_crit_edge [
    i32 4, label %if.end.i.if.then9.i_crit_edge
    i32 8, label %if.end.i.if.then9.i_crit_edge74
    i32 9, label %if.end.i.if.then9.i_crit_edge75
    i32 5, label %if.end.i.if.then9.i_crit_edge76
    i32 6, label %if.end.i.if.then9.i_crit_edge77
    i32 2, label %if.end.i.if.then18.i_crit_edge
    i32 7, label %if.end.i.if.then18.i_crit_edge78
    i32 3, label %if.end.i.if.then18.i_crit_edge79
  ]

if.end.i.if.then18.i_crit_edge79:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18.i

if.end.i.if.then18.i_crit_edge78:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18.i

if.end.i.if.then18.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18.i

if.end.i.if.then9.i_crit_edge77:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i

if.end.i.if.then9.i_crit_edge76:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i

if.end.i.if.then9.i_crit_edge75:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i

if.end.i.if.then9.i_crit_edge74:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i

if.end.i.if.then9.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i

if.end.i.if.else36.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else36.i

if.then9.i:                                       ; preds = %if.end.i.if.then9.i_crit_edge, %if.end.i.if.then9.i_crit_edge74, %if.end.i.if.then9.i_crit_edge75, %if.end.i.if.then9.i_crit_edge76, %if.end.i.if.then9.i_crit_edge77
  %mul.i = shl i32 %height, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %mul)
  %cmp10.not.i = icmp slt i32 %mul.i, %mul
  br i1 %cmp10.not.i, label %if.then9.i.if.else36.i_crit_edge, label %if.then9.i.if.then27.i_crit_edge

if.then9.i.if.then27.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27.i

if.then9.i.if.else36.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else36.i

if.then18.i:                                      ; preds = %if.end.i.if.then18.i_crit_edge, %if.end.i.if.then18.i_crit_edge78, %if.end.i.if.then18.i_crit_edge79
  %mul19.i = shl i32 %height, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul19.i, i32 %mul)
  %cmp20.not.i = icmp slt i32 %mul19.i, %mul
  %mul23.i = shl i32 %height, 1
  br i1 %cmp20.not.i, label %if.then18.i.if.else36.i_crit_edge, label %if.then18.i.if.then27.i_crit_edge

if.then18.i.if.then27.i_crit_edge:                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27.i

if.then18.i.if.else36.i_crit_edge:                ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else36.i

if.then27.i:                                      ; preds = %if.then18.i.if.then27.i_crit_edge, %if.then9.i.if.then27.i_crit_edge
  %out_y.addr.0.i = phi i32 [ %mul23.i, %if.then18.i.if.then27.i_crit_edge ], [ %height, %if.then9.i.if.then27.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %out_y.addr.0.i, i32 %mul)
  %cmp28.i = icmp slt i32 %out_y.addr.0.i, %mul
  br i1 %cmp28.i, label %if.then29.i, label %if.then27.i.if.end32.i_crit_edge

if.then27.i.if.end32.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul30.i = shl i32 %9, 11
  %add.i = add nsw i32 %out_y.addr.0.i, 1
  %div.i = sdiv i32 %mul30.i, %add.i
  %sub.i = add i32 %div.i, -1024
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.then27.i.if.end32.i_crit_edge
  %ysci.0.i = phi i32 [ %sub.i, %if.then29.i ], [ 0, %if.then27.i.if.end32.i_crit_edge ]
  %div332.i = lshr i32 %ysci.0.i, 4
  %div343.i = lshr i32 %ysci.0.i, 6
  %add35.i = add nuw nsw i32 %div332.i, %div343.i
  br label %if.end70.i

if.else36.i:                                      ; preds = %if.then18.i.if.else36.i_crit_edge, %if.then9.i.if.else36.i_crit_edge, %if.end.i.if.else36.i_crit_edge
  %out_y.addr.0.ph.i = phi i32 [ %height, %if.end.i.if.else36.i_crit_edge ], [ %mul23.i, %if.then18.i.if.else36.i_crit_edge ], [ %height, %if.then9.i.if.else36.i_crit_edge ]
  %11 = xor i32 %out_y.addr.0.ph.i, -1
  %sub38.i = add i32 %mul, %11
  %mul39.i = mul i32 %sub38.i, 10240
  %div40.i = sdiv i32 %mul39.i, %mul
  %add41.i = add i32 %div40.i, 9
  %div42.i = sdiv i32 %add41.i, 10
  %add43.i = add nsw i32 %div42.i, 15
  %div441.i = lshr i32 %add43.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %div42.i)
  %cmp45.i = icmp ult i32 %div42.i, 512
  br i1 %cmp45.i, label %if.else36.i.if.end70.loopexit.i_crit_edge, label %if.end50.i

if.else36.i.if.end70.loopexit.i_crit_edge:        ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70.loopexit.i

if.end50.i:                                       ; preds = %if.else36.i
  %sub48.i = sub nsw i32 1024, %div42.i
  %div49.i = udiv i32 %div42.i, %sub48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %div49.i)
  %cmp51.i = icmp ult i32 %div49.i, 63
  br i1 %cmp51.i, label %for.body.i, label %if.end50.i.if.end70.loopexit.i_crit_edge

if.end50.i.if.end70.loopexit.i_crit_edge:         ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70.loopexit.i

for.body.i:                                       ; preds = %if.end50.i
  %arrayidx.i = getelementptr [64 x %struct.anon.119], ptr @hps_v_coeff_tab, i32 0, i32 %div49.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub48.i, i32 %div42.i)
  %cmp66.not.not.i = icmp ugt i32 %sub48.i, %div42.i
  br i1 %cmp66.not.not.i, label %for.body.i.if.end70.loopexit.i_crit_edge, label %for.inc.i

for.body.i.if.end70.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70.loopexit.i

for.inc.i:                                        ; preds = %for.body.i
  %14 = add nsw i32 %div49.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %14)
  %cmp66.not.1.i = icmp ult i32 %14, 61
  br i1 %cmp66.not.1.i, label %for.inc.1.i, label %for.inc.i.if.end70.loopexit.i_crit_edge

for.inc.i.if.end70.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70.loopexit.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %15 = add nsw i32 %div49.i, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %15)
  %cmp66.not.2.i = icmp ult i32 %15, 57
  br i1 %cmp66.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.end70.loopexit.i_crit_edge

for.inc.1.i.if.end70.loopexit.i_crit_edge:        ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70.loopexit.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %16 = add nsw i32 %div49.i, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %16)
  %cmp66.not.3.i = icmp ult i32 %16, 49
  br i1 %cmp66.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.end70.loopexit.i_crit_edge

for.inc.2.i.if.end70.loopexit.i_crit_edge:        ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70.loopexit.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = add nsw i32 %div49.i, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %17)
  %cmp66.not.4.i = icmp ult i32 %17, 33
  %spec.select.i = select i1 %cmp66.not.4.i, i32 327680, i32 262144
  br label %if.end70.loopexit.i

if.end70.loopexit.i:                              ; preds = %for.inc.3.i, %for.inc.2.i.if.end70.loopexit.i_crit_edge, %for.inc.1.i.if.end70.loopexit.i_crit_edge, %for.inc.i.if.end70.loopexit.i_crit_edge, %for.body.i.if.end70.loopexit.i_crit_edge, %if.end50.i.if.end70.loopexit.i_crit_edge, %if.else36.i.if.end70.loopexit.i_crit_edge
  %18 = phi i16 [ %13, %for.body.i.if.end70.loopexit.i_crit_edge ], [ %13, %for.inc.i.if.end70.loopexit.i_crit_edge ], [ %13, %for.inc.1.i.if.end70.loopexit.i_crit_edge ], [ %13, %for.inc.2.i.if.end70.loopexit.i_crit_edge ], [ 256, %if.else36.i.if.end70.loopexit.i_crit_edge ], [ %13, %for.inc.3.i ], [ 510, %if.end50.i.if.end70.loopexit.i_crit_edge ]
  %yacl.01320.i = phi i32 [ %div49.i, %for.body.i.if.end70.loopexit.i_crit_edge ], [ %div49.i, %for.inc.i.if.end70.loopexit.i_crit_edge ], [ %div49.i, %for.inc.1.i.if.end70.loopexit.i_crit_edge ], [ %div49.i, %for.inc.2.i.if.end70.loopexit.i_crit_edge ], [ 0, %if.else36.i.if.end70.loopexit.i_crit_edge ], [ %div49.i, %for.inc.3.i ], [ %div49.i, %if.end50.i.if.end70.loopexit.i_crit_edge ]
  %dcgy.0.ph.i = phi i32 [ 0, %for.body.i.if.end70.loopexit.i_crit_edge ], [ 65536, %for.inc.i.if.end70.loopexit.i_crit_edge ], [ 131072, %for.inc.1.i.if.end70.loopexit.i_crit_edge ], [ 196608, %for.inc.2.i.if.end70.loopexit.i_crit_edge ], [ 0, %if.else36.i.if.end70.loopexit.i_crit_edge ], [ %spec.select.i, %for.inc.3.i ], [ 393216, %if.end50.i.if.end70.loopexit.i_crit_edge ]
  %phi.cast.i = zext i16 %18 to i32
  %19 = or i32 %dcgy.0.ph.i, %phi.cast.i
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.end70.loopexit.i, %if.end32.i
  %yacm.0.i = phi i32 [ 0, %if.end32.i ], [ -2147483648, %if.end70.loopexit.i ]
  %ysci.1.i = phi i32 [ %ysci.0.i, %if.end32.i ], [ %div42.i, %if.end70.loopexit.i ]
  %yacl.1.i = phi i32 [ 0, %if.end32.i ], [ %yacl.01320.i, %if.end70.loopexit.i ]
  %ypo.0.i = phi i32 [ %add35.i, %if.end32.i ], [ %div441.i, %if.end70.loopexit.i ]
  %ype.0.i = phi i32 [ %div332.i, %if.end32.i ], [ %div441.i, %if.end70.loopexit.i ]
  %or81.i = phi i32 [ 255, %if.end32.i ], [ %19, %if.end70.loopexit.i ]
  %shl71.i = shl i32 %ysci.1.i, 21
  %or.i = or i32 %shl71.i, %yacm.0.i
  %shl72.i = shl i32 %yacl.1.i, 15
  %or73.i = or i32 %or.i, %shl72.i
  %shl74.i = shl i32 %ypo.0.i, 8
  %or75.i = or i32 %or73.i, %shl74.i
  %shl76.i = shl nuw nsw i32 %ype.0.i, 1
  %or77.i = or i32 %or75.i, %shl76.i
  br label %calculate_v_scale_registers.exit

calculate_v_scale_registers.exit:                 ; preds = %if.end70.i, %entry.calculate_v_scale_registers.exit_crit_edge
  %hps_v_scale.0 = phi i32 [ 0, %entry.calculate_v_scale_registers.exit_crit_edge ], [ %or77.i, %if.end70.i ]
  %hps_v_gain.0 = phi i32 [ 0, %entry.calculate_v_scale_registers.exit_crit_edge ], [ %or81.i, %if.end70.i ]
  %h_pixels = getelementptr inbounds %struct.saa7146_standard, ptr %7, i32 0, i32 5
  %20 = ptrtoint ptr %h_pixels to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %h_pixels, align 4
  %hflip = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 18
  %22 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hflip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width)
  %cmp.i42 = icmp eq i32 %width, 0
  br i1 %cmp.i42, label %calculate_v_scale_registers.exit.calculate_h_scale_registers.exit_crit_edge, label %if.end.i44

calculate_v_scale_registers.exit.calculate_h_scale_registers.exit_crit_edge: ; preds = %calculate_v_scale_registers.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %calculate_h_scale_registers.exit

if.end.i44:                                       ; preds = %calculate_v_scale_registers.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %width)
  %cmp1.i = icmp sgt i32 %21, %width
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i44.if.end3.i_crit_edge

if.end.i44.if.end3.i_crit_edge:                   ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #7
  %div.i45 = sdiv i32 %21, %width
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i44.if.end3.i_crit_edge
  %xpsc.0.i = phi i32 [ %div.i45, %if.then2.i ], [ 1, %if.end.i44.if.end3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp4.not.i = icmp eq i32 %23, 0
  br i1 %cmp4.not.i, label %if.end3.i.while.cond9.i_crit_edge, label %if.end3.i.while.cond.i_crit_edge

if.end3.i.while.cond.i_crit_edge:                 ; preds = %if.end3.i
  br label %while.cond.i

if.end3.i.while.cond9.i_crit_edge:                ; preds = %if.end3.i
  br label %while.cond9.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end3.i.while.cond.i_crit_edge
  %xpsc.1.i = phi i32 [ %inc.i, %while.cond.i.while.cond.i_crit_edge ], [ %xpsc.0.i, %if.end3.i.while.cond.i_crit_edge ]
  %div6.i = udiv i32 %21, %xpsc.1.i
  %cmp7.i = icmp ugt i32 %div6.i, 383
  %inc.i = add i32 %xpsc.1.i, 1
  br i1 %cmp7.i, label %while.cond.i.while.cond.i_crit_edge, label %while.cond.i.if.end15.i_crit_edge

while.cond.i.if.end15.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.cond9.i:                                    ; preds = %while.cond9.i.while.cond9.i_crit_edge, %if.end3.i.while.cond9.i_crit_edge
  %xpsc.2.i = phi i32 [ %inc13.i, %while.cond9.i.while.cond9.i_crit_edge ], [ %xpsc.0.i, %if.end3.i.while.cond9.i_crit_edge ]
  %div10.i = udiv i32 %21, %xpsc.2.i
  %cmp11.i = icmp ugt i32 %div10.i, 767
  %inc13.i = add i32 %xpsc.2.i, 1
  br i1 %cmp11.i, label %while.cond9.i.while.cond9.i_crit_edge, label %while.cond9.i.if.end15.i_crit_edge

while.cond9.i.if.end15.i_crit_edge:               ; preds = %while.cond9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i

while.cond9.i.while.cond9.i_crit_edge:            ; preds = %while.cond9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond9.i

if.end15.i:                                       ; preds = %while.cond9.i.if.end15.i_crit_edge, %while.cond.i.if.end15.i_crit_edge
  %hps_ctrl.0 = phi i32 [ 0, %while.cond9.i.if.end15.i_crit_edge ], [ 536870912, %while.cond.i.if.end15.i_crit_edge ]
  %xpsc.3.i = phi i32 [ %xpsc.2.i, %while.cond9.i.if.end15.i_crit_edge ], [ %xpsc.1.i, %while.cond.i.if.end15.i_crit_edge ]
  %24 = tail call i32 @llvm.umin.i32(i32 %xpsc.3.i, i32 64) #5
  %sub.i47 = add nsw i32 %24, -1
  %25 = tail call i32 @llvm.umin.i32(i32 %sub.i47, i32 63) #5
  %arrayidx.i48 = getelementptr [64 x %struct.anon.120], ptr @hps_h_coeff_tab, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i48, align 2
  %conv.i = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %width)
  %cmp21.i = icmp eq i32 %21, %width
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp23.i = icmp eq i32 %24, 1
  %or.cond.i = select i1 %cmp21.i, i1 %cmp23.i, i1 false
  br i1 %or.cond.i, label %if.end15.i.if.end29.i_crit_edge, label %if.else26.i

if.end15.i.if.end29.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.else26.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i49 = shl i32 %21, 10
  %mul27.i = mul i32 %24, %width
  %div28.i = udiv i32 %mul.i49, %mul27.i
  %add.i50 = add nuw i32 %div28.i, %24
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else26.i, %if.end15.i.if.end29.i_crit_edge
  %xsci.0.i = phi i32 [ %add.i50, %if.else26.i ], [ 1024, %if.end15.i.if.end29.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %xsci.0.i)
  %cmp30.i = icmp eq i32 %xsci.0.i, 1024
  %..i = select i1 %cmp30.i, i32 -2147483648, i32 0
  br i1 %cmp23.i, label %if.end29.i.if.end60.i_crit_edge, label %for.inc.i51

if.end29.i.if.end60.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i

for.inc.i51:                                      ; preds = %if.end29.i
  %weight_sum.i = getelementptr [64 x %struct.anon.120], ptr @hps_h_coeff_tab, i32 0, i32 %25, i32 1
  %28 = ptrtoint ptr %weight_sum.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %weight_sum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp55.not.1.not.i = icmp eq i32 %25, 0
  br i1 %cmp55.not.1.not.i, label %for.inc.i51.if.end60.i_crit_edge, label %for.inc.1.i52

for.inc.i51.if.end60.i_crit_edge:                 ; preds = %for.inc.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i

for.inc.1.i52:                                    ; preds = %for.inc.i51
  %30 = add nsw i32 %25, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %30)
  %cmp55.not.2.i = icmp ult i32 %30, 61
  br i1 %cmp55.not.2.i, label %for.inc.2.i54, label %for.inc.1.i52.if.end60.i_crit_edge

for.inc.1.i52.if.end60.i_crit_edge:               ; preds = %for.inc.1.i52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60.i

for.inc.2.i54:                                    ; preds = %for.inc.1.i52
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %29)
  %cmp55.not.3.i = icmp ugt i16 %29, 8
  %spec.select.i53 = select i1 %cmp55.not.3.i, i32 939524096, i32 402653184
  br label %if.end60.i

if.end60.i:                                       ; preds = %for.inc.2.i54, %for.inc.1.i52.if.end60.i_crit_edge, %for.inc.i51.if.end60.i_crit_edge, %if.end29.i.if.end60.i_crit_edge
  %dcgx.0.i = phi i32 [ 0, %if.end29.i.if.end60.i_crit_edge ], [ 134217728, %for.inc.i51.if.end60.i_crit_edge ], [ 268435456, %for.inc.1.i52.if.end60.i_crit_edge ], [ %spec.select.i53, %for.inc.2.i54 ]
  %xacm.0.i = phi i32 [ 131072, %if.end29.i.if.end60.i_crit_edge ], [ 0, %for.inc.i51.if.end60.i_crit_edge ], [ 0, %for.inc.1.i52.if.end60.i_crit_edge ], [ 0, %for.inc.2.i54 ]
  br i1 %cmp30.i, label %if.end60.i.if.end80.i_crit_edge, label %if.else64.i

if.end60.i.if.end80.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80.i

if.else64.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %xsci.0.i)
  %cmp65.i = icmp ult i32 %xsci.0.i, 1536
  br i1 %cmp65.i, label %if.else64.i.if.end80.i_crit_edge, label %if.else68.i

if.else64.i.if.end80.i_crit_edge:                 ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80.i

if.else68.i:                                      ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1664, i32 %xsci.0.i)
  %cmp69.i = icmp ult i32 %xsci.0.i, 1664
  br i1 %cmp69.i, label %if.else68.i.if.end80.i_crit_edge, label %if.else72.i

if.else68.i.if.end80.i_crit_edge:                 ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80.i

if.else72.i:                                      ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1792, i32 %xsci.0.i)
  %cmp73.i = icmp ult i32 %xsci.0.i, 1792
  %.2.i = select i1 %cmp73.i, i32 570425344, i32 855638016
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.else72.i, %if.else68.i.if.end80.i_crit_edge, %if.else64.i.if.end80.i_crit_edge, %if.end60.i.if.end80.i_crit_edge
  %pfuv.0.i = phi i32 [ 0, %if.end60.i.if.end80.i_crit_edge ], [ 16777216, %if.else64.i.if.end80.i_crit_edge ], [ 285212672, %if.else68.i.if.end80.i_crit_edge ], [ %.2.i, %if.else72.i ]
  %and81.i = and i32 %hps_v_gain.0, 16777215
  %or82.i55 = or i32 %pfuv.0.i, %and81.i
  %shl87.i = shl i32 %xsci.0.i, 12
  %or88.i = or i32 %..i, %shl87.i
  %shl92.i = shl nsw i32 %sub.i47, 18
  %shl96.i = shl nuw nsw i32 %conv.i, 8
  %or93.i = or i32 %shl92.i, %conv.i
  %or95.i = or i32 %or93.i, %shl96.i
  %or97.i = or i32 %or95.i, %dcgx.0.i
  %or99.i = or i32 %or97.i, %xacm.0.i
  br label %calculate_h_scale_registers.exit

calculate_h_scale_registers.exit:                 ; preds = %if.end80.i, %calculate_v_scale_registers.exit.calculate_h_scale_registers.exit_crit_edge
  %hps_v_gain.1 = phi i32 [ %hps_v_gain.0, %calculate_v_scale_registers.exit.calculate_h_scale_registers.exit_crit_edge ], [ %or82.i55, %if.end80.i ]
  %hps_ctrl.1 = phi i32 [ 0, %calculate_v_scale_registers.exit.calculate_h_scale_registers.exit_crit_edge ], [ %hps_ctrl.0, %if.end80.i ]
  %hps_h_prescale.0 = phi i32 [ 0, %calculate_v_scale_registers.exit.calculate_h_scale_registers.exit_crit_edge ], [ %or99.i, %if.end80.i ]
  %hps_h_scale.0 = phi i32 [ 0, %calculate_v_scale_registers.exit.calculate_h_scale_registers.exit_crit_edge ], [ %or88.i, %if.end80.i ]
  %v_offset.i = getelementptr inbounds %struct.saa7146_standard, ptr %7, i32 0, i32 2
  %31 = ptrtoint ptr %v_offset.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %v_offset.i, align 8
  %h_offset.i = getelementptr inbounds %struct.saa7146_standard, ptr %7, i32 0, i32 4
  %33 = ptrtoint ptr %h_offset.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %h_offset.i, align 8
  %or.i57 = or i32 %34, %hps_h_scale.0
  %and2.i = and i32 %hps_ctrl.1, 788529152
  %shl3.i = shl i32 %32, 12
  %shl3.i.masked = and i32 %shl3.i, 805302272
  %shl.i = shl i32 %3, 30
  %shl1.i = shl i32 %5, 28
  %and.i58 = or i32 %shl1.i, %shl.i
  %or.i59 = or i32 %and.i58, %and2.i
  %or2.i = or i32 %or.i59, %shl3.i.masked
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %35 = tail call i32 @llvm.bswap.i32(i32 %hps_v_scale.0)
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %36 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %35) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %38 = tail call i32 @llvm.bswap.i32(i32 %hps_v_gain.1)
  %39 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mem, align 4
  %add.ptr7 = getelementptr i8, ptr %40, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %38) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %41 = tail call i32 @llvm.bswap.i32(i32 %or2.i)
  %42 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mem, align 4
  %add.ptr12 = getelementptr i8, ptr %43, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %41) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %44 = tail call i32 @llvm.bswap.i32(i32 %hps_h_prescale.0)
  %45 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mem, align 4
  %add.ptr17 = getelementptr i8, ptr %46, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %44) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %47 = tail call i32 @llvm.bswap.i32(i32 %or.i57)
  %48 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mem, align 4
  %add.ptr22 = getelementptr i8, ptr %49, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %47) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mem, align 4
  %add.ptr27 = getelementptr i8, ptr %51, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 1610637312) #5, !srcloc !41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7146_disable_overlay(ptr nocapture noundef readonly %fh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %mem.i = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %5 = and i32 %4, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %7, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %5) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %9, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 536879104) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mem.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %11, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 8192) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mem.i, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16384) #5, !srcloc !41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7146_write_out_dma(ptr nocapture noundef readonly %dev, i32 noundef %which, ptr nocapture noundef readonly %vdma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %which, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %0)
  %1 = icmp ult i32 %0, -3
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = mul nuw nsw i32 %which, 24
  %mul = add nsw i32 %2, -24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %3 = ptrtoint ptr %vdma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vdma, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %base_even = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma, i32 0, i32 1
  %8 = ptrtoint ptr %base_even to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_even, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem, align 4
  %add = or i32 %mul, 4
  %add.ptr6 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %10) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %prot_addr = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma, i32 0, i32 2
  %13 = ptrtoint ptr %prot_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prot_addr, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem, align 4
  %add11 = add nsw i32 %2, -16
  %add.ptr12 = getelementptr i8, ptr %17, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %15) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %pitch = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma, i32 0, i32 3
  %18 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pitch, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mem, align 4
  %add17 = add nsw i32 %2, -12
  %add.ptr18 = getelementptr i8, ptr %22, i32 %add17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %20) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %base_page = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma, i32 0, i32 4
  %23 = ptrtoint ptr %base_page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base_page, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mem, align 4
  %add23 = add nsw i32 %2, -8
  %add.ptr24 = getelementptr i8, ptr %27, i32 %add23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %25) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %num_line_byte = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma, i32 0, i32 5
  %28 = ptrtoint ptr %num_line_byte to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_line_byte, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mem, align 4
  %add29 = add nsw i32 %2, -4
  %add.ptr30 = getelementptr i8, ptr %32, i32 %add29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %30) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %or = shl nuw nsw i32 131074, %which
  %33 = tail call i32 @llvm.bswap.i32(i32 %or)
  %34 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mem, align 4
  %add.ptr38 = getelementptr i8, ptr %35, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %33) #5, !srcloc !41
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7146_set_capture(ptr noundef %dev, ptr noundef %buf, ptr noundef %next) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.saa7146_buf, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmt, align 8
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %call = tail call ptr @saa7146_format_by_fourcc(ptr noundef %dev, i32 noundef %3) #5
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %6 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_set_capture.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_set_capture, %if.then6)) #5
          to label %do.end9 [label %if.then6], !srcloc !77

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_set_capture.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %buf, ptr noundef %next) #5
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %do.body14, label %do.end9.if.end42_crit_edge

do.end9.if.end42_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

do.body14:                                        ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %10 = load i32, ptr @saa7146_debug, align 4
  %and15 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body14.do.body37_crit_edge, label %do.body18

do.body14.do.body37_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37

do.body18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7146_set_capture.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7146_set_capture, %if.then30)) #5
          to label %do.body37 [label %if.then30], !srcloc !77

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7146_set_capture.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #5
  br label %do.body37

do.body37:                                        ; preds = %if.then30, %do.body18, %do.body14.do.body37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem, align 4
  %add.ptr41 = getelementptr i8, ptr %12, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 8) #5, !srcloc !41
  br label %if.end42

if.end42:                                         ; preds = %do.body37, %do.end9.if.end42_crit_edge
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fmt, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %height = getelementptr inbounds %struct.v4l2_pix_format, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_pix_format, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %field, align 4
  tail call fastcc void @saa7146_set_window(ptr noundef %dev, i32 noundef %16, i32 noundef %18, i32 noundef %20)
  %trans = getelementptr inbounds %struct.saa7146_format, ptr %call, i32 0, i32 1
  %21 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %trans, align 4
  %23 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mem, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 120
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %26 = and i32 %25, -65536
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  %28 = shl i32 %22, 22
  %shl.i.i = and i32 %28, -1073741824
  %and2.i.i = shl i32 %22, 24
  %shl3.i.i = and i32 %and2.i.i, 251658240
  %or.i.i = or i32 %shl.i.i, %shl3.i.i
  %29 = shl i32 %22, 12
  %shl6.i.i = and i32 %29, 983040
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %or8.i.i = or i32 %or7.i.i, %27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %30 = tail call i32 @llvm.bswap.i32(i32 %or8.i.i) #5
  %31 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mem, align 4
  %add.ptr3.i = getelementptr i8, ptr %32, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %30) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %33 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mem, align 4
  %add.ptr8.i = getelementptr i8, ptr %34, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 536879104) #5, !srcloc !41
  %35 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mem, align 4
  %add.ptr.i106 = getelementptr i8, ptr %36, i32 120
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %38 = and i32 %37, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mem, align 4
  %add.ptr3.i107 = getelementptr i8, ptr %40, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i107, i32 %38) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mem, align 4
  %add.ptr8.i108 = getelementptr i8, ptr %42, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i108, i32 536879104) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %43 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mem, align 4
  %add.ptr13.i = getelementptr i8, ptr %44, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 8192) #5, !srcloc !41
  %last_field = getelementptr inbounds %struct.saa7146_vv, ptr %5, i32 0, i32 15
  %45 = ptrtoint ptr %last_field to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %last_field, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %46, label %if.end42.if.end59_crit_edge [
    i32 3, label %if.then55
    i32 2, label %if.end42.if.end59.sink.split_crit_edge
  ]

if.end42.if.end59.sink.split_crit_edge:           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.sink.split

if.end42.if.end59_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then55:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %if.then55, %if.end42.if.end59.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.then55 ], [ 3, %if.end42.if.end59.sink.split_crit_edge ]
  %48 = ptrtoint ptr %last_field to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink, ptr %last_field, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %if.end42.if.end59_crit_edge
  %49 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %trans, align 4
  %and61 = and i32 %50, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %cmp62.not = icmp eq i32 %and61, 0
  br i1 %cmp62.not, label %if.else65, label %if.then63

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @calculate_video_dma_grab_planar(ptr noundef %dev, ptr noundef %buf)
  br label %do.body68

if.else65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @calculate_video_dma_grab_packed(ptr noundef %dev, ptr noundef %buf)
  br label %do.body68

do.body68:                                        ; preds = %if.else65, %if.then63
  %.sink111 = phi i32 [ 1, %if.then63 ], [ 0, %if.else65 ]
  tail call fastcc void @program_capture_engine(ptr noundef %dev, i32 noundef %.sink111)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %d_rps0 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 21
  %51 = ptrtoint ptr %d_rps0 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %d_rps0, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mem, align 4
  %add.ptr72 = getelementptr i8, ptr %55, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %53) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mem, align 4
  %add.ptr77 = getelementptr i8, ptr %57, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 1048592) #5, !srcloc !41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @saa7146_format_by_fourcc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @calculate_video_dma_grab_planar(ptr noundef %dev, ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  %vdma1 = alloca %struct.saa7146_video_dma, align 4
  %vdma2 = alloca %struct.saa7146_video_dma, align 4
  %vdma3 = alloca %struct.saa7146_video_dma, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vv_data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %vdma1) #5
  %2 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma1, i32 0, i32 1
  %3 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma1, i32 0, i32 2
  %4 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma1, i32 0, i32 3
  %5 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma1, i32 0, i32 4
  %6 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma1, i32 0, i32 5
  %7 = call ptr @memset(ptr %vdma1, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %vdma2) #5
  %8 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma2, i32 0, i32 2
  %10 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma2, i32 0, i32 3
  %11 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma2, i32 0, i32 4
  %12 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma2, i32 0, i32 5
  %13 = call ptr @memset(ptr %vdma2, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %vdma3) #5
  %14 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma3, i32 0, i32 2
  %16 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma3, i32 0, i32 3
  %17 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma3, i32 0, i32 4
  %18 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma3, i32 0, i32 5
  %fmt = getelementptr inbounds %struct.saa7146_buf, ptr %buf, i32 0, i32 1
  %19 = call ptr @memset(ptr %vdma3, i32 255, i32 16)
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fmt, align 8
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pixelformat, align 4
  %call = tail call ptr @saa7146_format_by_fourcc(ptr noundef %dev, i32 noundef %23) #5
  %24 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fmt, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %height4 = getelementptr inbounds %struct.v4l2_pix_format, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height4, align 4
  %field6 = getelementptr inbounds %struct.v4l2_pix_format, ptr %25, i32 0, i32 3
  %30 = ptrtoint ptr %field6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %field6, align 4
  %dma = getelementptr inbounds %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 0, i32 2
  %32 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp = icmp eq i32 %33, 0
  br i1 %cmp, label %do.body8, label %do.body14, !prof !82

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/common/saa7146/saa7146_hlp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 838, 0\0A.popsection", ""() #5, !srcloc !83
  unreachable

do.body14:                                        ; preds = %entry
  %dma17 = getelementptr %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 1, i32 2
  %34 = ptrtoint ptr %dma17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp18 = icmp eq i32 %35, 0
  br i1 %cmp18, label %do.body26, label %do.body35, !prof !82

do.body26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/common/saa7146/saa7146_hlp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 839, 0\0A.popsection", ""() #5, !srcloc !84
  unreachable

do.body35:                                        ; preds = %do.body14
  %dma38 = getelementptr %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 2, i32 2
  %36 = ptrtoint ptr %dma38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp39 = icmp eq i32 %37, 0
  br i1 %cmp39, label %do.body47, label %do.body56, !prof !82

do.body47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/common/saa7146/saa7146_hlp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 840, 0\0A.popsection", ""() #5, !srcloc !85
  unreachable

do.body56:                                        ; preds = %do.body35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %38 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %do.body56.do.end75_crit_edge, label %do.body59

do.body56.do.end75_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end75

do.body59:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calculate_video_dma_grab_planar.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@calculate_video_dma_grab_planar, %if.then68)) #5
          to label %do.end75 [label %if.then68], !srcloc !77

if.then68:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx69 = getelementptr [0 x ptr], ptr @v4l2_field_names, i32 0, i32 %31
  %39 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx69, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @calculate_video_dma_grab_planar.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %27, i32 noundef %29, ptr noundef %40) #5
  br label %do.end75

do.end75:                                         ; preds = %if.then68, %do.body59, %do.body56.do.end75_crit_edge
  %mul = shl i32 %27, 1
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul, ptr %4, align 4
  %standard = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 16
  %42 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %standard, align 4
  %v_field = getelementptr inbounds %struct.saa7146_standard, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %v_field to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %v_field, align 4
  %shl = shl i32 %45, 16
  %h_pixels = getelementptr inbounds %struct.saa7146_standard, ptr %43, i32 0, i32 5
  %46 = ptrtoint ptr %h_pixels to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %h_pixels, align 4
  %add = add i32 %shl, %47
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add, ptr %6, align 4
  %49 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma, align 8
  %or = or i32 %50, 2048
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or, ptr %5, align 4
  %vflip = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 17
  %52 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vflip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp80.not = icmp eq i32 %53, 0
  %offset95 = getelementptr inbounds %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 0, i32 3
  %54 = ptrtoint ptr %offset95 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset95, align 4
  br i1 %cmp80.not, label %if.else, label %if.then81

if.then81:                                        ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %3, align 4
  %div12 = and i32 %27, 2147483647
  %mul85 = mul i32 %div12, %29
  %add89 = add i32 %55, %mul85
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add89, ptr %2, align 4
  %sub = sub i32 %add89, %div12
  %58 = ptrtoint ptr %vdma1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub, ptr %vdma1, align 4
  br label %if.end110

if.else:                                          ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %55, ptr %2, align 4
  %div991 = and i32 %27, 2147483647
  %add100 = add i32 %55, %div991
  %60 = ptrtoint ptr %vdma1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add100, ptr %vdma1, align 4
  %mul104 = mul i32 %div991, %29
  %add108 = add i32 %55, %mul104
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add108, ptr %3, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.else, %if.then81
  %62 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %12, align 4
  %63 = ptrtoint ptr %dma17 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma17, align 8
  %or115 = or i32 %64, 2048
  %65 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or115, ptr %11, align 4
  %66 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %18, align 4
  %67 = ptrtoint ptr %dma38 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma38, align 8
  %or121 = or i32 %68, 2048
  %69 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or121, ptr %17, align 4
  %depth = getelementptr inbounds %struct.saa7146_format, ptr %call, i32 0, i32 2
  %70 = ptrtoint ptr %depth to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %depth, align 4
  %72 = zext i8 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %71, label %if.end110.cleanup_crit_edge [
    i8 12, label %sw.bb
    i8 16, label %sw.bb124
  ]

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end110
  %73 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %fmt, align 8
  %height1.i = getelementptr inbounds %struct.v4l2_pix_format, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %height1.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %height1.i, align 4
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %74, align 4
  %div.i = sdiv i32 %78, 2
  %79 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %div.i, ptr %10, align 4
  %80 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %div.i, ptr %16, align 4
  %offset33.i = getelementptr %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 2, i32 3
  %81 = ptrtoint ptr %offset33.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %offset33.i, align 4
  br i1 %cmp80.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %9, align 4
  %div73.i = lshr i32 %div.i, 1
  %mul.i = mul i32 %div73.i, %76
  %add.i = add i32 %mul.i, %82
  %84 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add.i, ptr %8, align 4
  %sub.i = sub i32 %add.i, %div73.i
  %85 = ptrtoint ptr %vdma2 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %sub.i, ptr %vdma2, align 4
  %offset16.i = getelementptr %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 1, i32 3
  %86 = ptrtoint ptr %offset16.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %offset16.i, align 4
  %88 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %15, align 4
  %add24.i = add i32 %87, %mul.i
  %89 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add24.i, ptr %14, align 4
  %sub29.i = sub i32 %add24.i, %div73.i
  %90 = ptrtoint ptr %vdma3 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %sub29.i, ptr %vdma3, align 4
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %82, ptr %14, align 4
  %add37.i = add i32 %82, %div.i
  %92 = ptrtoint ptr %vdma3 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add37.i, ptr %vdma3, align 4
  %div401.i = lshr i32 %div.i, 1
  %mul41.i = mul i32 %div401.i, %76
  %add45.i = add i32 %82, %mul41.i
  %93 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add45.i, ptr %15, align 4
  %offset49.i = getelementptr %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 1, i32 3
  %94 = ptrtoint ptr %offset49.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %offset49.i, align 4
  %96 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %8, align 4
  %add53.i = add i32 %95, %div.i
  %97 = ptrtoint ptr %vdma2 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add53.i, ptr %vdma2, align 4
  %add61.i = add i32 %95, %mul41.i
  %98 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add61.i, ptr %9, align 4
  br label %sw.epilog

sw.bb124:                                         ; preds = %if.end110
  %99 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fmt, align 8
  %height1.i15 = getelementptr inbounds %struct.v4l2_pix_format, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %height1.i15 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %height1.i15, align 4
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %100, align 4
  %105 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %10, align 4
  %106 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %104, ptr %16, align 4
  br i1 %cmp80.not, label %if.else.i29, label %if.then.i24

if.then.i24:                                      ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #7
  %offset.i = getelementptr %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 1, i32 3
  %107 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %offset.i, align 4
  %109 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %9, align 4
  %div5.i = lshr i32 %104, 1
  %mul.i20 = mul i32 %div5.i, %102
  %add.i21 = add i32 %108, %mul.i20
  %110 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add.i21, ptr %8, align 4
  %sub.i23 = sub i32 %add.i21, %div5.i
  %111 = ptrtoint ptr %vdma2 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %sub.i23, ptr %vdma2, align 4
  %offset14.i = getelementptr %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 2, i32 3
  %112 = ptrtoint ptr %offset14.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %offset14.i, align 4
  %114 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %15, align 4
  %add22.i = add i32 %113, %mul.i20
  %115 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add22.i, ptr %14, align 4
  %sub27.i = sub i32 %add22.i, %div5.i
  %116 = ptrtoint ptr %vdma3 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %sub27.i, ptr %vdma3, align 4
  br label %sw.epilog

if.else.i29:                                      ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #7
  %offset31.i = getelementptr %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 2, i32 3
  %117 = ptrtoint ptr %offset31.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %offset31.i, align 4
  %119 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %14, align 4
  %div351.i = lshr i32 %104, 1
  %add36.i = add i32 %118, %div351.i
  %120 = ptrtoint ptr %vdma3 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %add36.i, ptr %vdma3, align 4
  %mul40.i = mul i32 %div351.i, %102
  %add44.i = add i32 %118, %mul40.i
  %121 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %add44.i, ptr %15, align 4
  %offset48.i = getelementptr %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 1, i32 3
  %122 = ptrtoint ptr %offset48.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %offset48.i, align 4
  %124 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %8, align 4
  %add53.i25 = add i32 %123, %div351.i
  %125 = ptrtoint ptr %vdma2 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %add53.i25, ptr %vdma2, align 4
  %add61.i27 = add i32 %123, %mul40.i
  %126 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %add61.i27, ptr %9, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.i29, %if.then.i24, %if.else.i, %if.then.i
  %127 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %31, label %sw.epilog.if.end197_crit_edge [
    i32 3, label %if.then175
    i32 2, label %if.then159
    i32 7, label %if.then143
  ]

sw.epilog.if.end197_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

if.then143:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %128 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %3, align 4
  %130 = ptrtoint ptr %vdma1 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %vdma1, align 4
  %div1479 = and i32 %27, 2147483647
  %131 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %div1479, ptr %4, align 4
  %132 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %9, align 4
  %134 = ptrtoint ptr %vdma2 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %vdma2, align 4
  %135 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %10, align 4
  %div15110 = lshr i32 %136, 1
  store i32 %div15110, ptr %10, align 4
  %137 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %15, align 4
  %139 = ptrtoint ptr %vdma3 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %vdma3, align 4
  br label %if.end197.sink.split

if.then159:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %140 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %3, align 4
  %142 = ptrtoint ptr %vdma1 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %vdma1, align 4
  %div1636 = and i32 %27, 2147483647
  %143 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %div1636, ptr %4, align 4
  %144 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %9, align 4
  %146 = ptrtoint ptr %vdma2 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %vdma2, align 4
  %147 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %10, align 4
  %div1677 = lshr i32 %148, 1
  store i32 %div1677, ptr %10, align 4
  %149 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %15, align 4
  %151 = ptrtoint ptr %vdma3 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %vdma3, align 4
  br label %if.end197.sink.split

if.then175:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %152 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %2, align 4
  %154 = ptrtoint ptr %vdma1 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %vdma1, align 4
  %155 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %3, align 4
  store i32 %156, ptr %2, align 4
  %div1813 = and i32 %27, 2147483647
  %157 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %div1813, ptr %4, align 4
  %158 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %8, align 4
  %160 = ptrtoint ptr %vdma2 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %vdma2, align 4
  %161 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %9, align 4
  store i32 %162, ptr %8, align 4
  %163 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %10, align 4
  %div1874 = lshr i32 %164, 1
  store i32 %div1874, ptr %10, align 4
  %165 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %14, align 4
  %167 = ptrtoint ptr %vdma3 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %vdma3, align 4
  %168 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %15, align 4
  store i32 %169, ptr %14, align 4
  br label %if.end197.sink.split

if.end197.sink.split:                             ; preds = %if.then175, %if.then159, %if.then143
  %170 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %16, align 4
  %div15511 = lshr i32 %171, 1
  store i32 %div15511, ptr %16, align 4
  br label %if.end197

if.end197:                                        ; preds = %if.end197.sink.split, %sw.epilog.if.end197_crit_edge
  %172 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %vflip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp199.not = icmp eq i32 %173, 0
  br i1 %cmp199.not, label %if.end197.if.end208_crit_edge, label %if.then201

if.end197.if.end208_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end208

if.then201:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #7
  %174 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %4, align 4
  %mul203 = sub i32 0, %175
  store i32 %mul203, ptr %4, align 4
  %176 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %10, align 4
  %mul205 = sub i32 0, %177
  store i32 %mul205, ptr %10, align 4
  %178 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %16, align 4
  %mul207 = sub i32 0, %179
  store i32 %mul207, ptr %16, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.then201, %if.end197.if.end208_crit_edge
  call void @saa7146_write_out_dma(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %vdma1)
  %flags = getelementptr inbounds %struct.saa7146_format, ptr %call, i32 0, i32 3
  %180 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %flags, align 1
  %182 = and i8 %181, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %cmp211.not = icmp eq i8 %182, 0
  %. = select i1 %cmp211.not, i32 2, i32 3
  %.32 = select i1 %cmp211.not, i32 3, i32 2
  call void @saa7146_write_out_dma(ptr noundef %dev, i32 noundef %., ptr noundef nonnull %vdma2)
  call void @saa7146_write_out_dma(ptr noundef %dev, i32 noundef %.32, ptr noundef nonnull %vdma3)
  br label %cleanup

cleanup:                                          ; preds = %if.end208, %if.end110.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vdma3) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vdma2) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vdma1) #5
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @program_capture_engine(ptr noundef readonly %dev, i32 noundef %planar) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vv_data, align 4
  %current_hps_sync = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %current_hps_sync to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_hps_sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %cond = select i1 %cmp, i32 2048, i32 8192
  %cond3 = select i1 %cmp, i32 4096, i32 16384
  %or = or i32 %cond3, 673185792
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %cpu_addr = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 21, i32 1
  %5 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpu_addr, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %6, align 4
  %or5 = or i32 %cond, 673185792
  %8 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %9 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_addr, align 4
  %arrayidx9 = getelementptr i32, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %arrayidx9, align 4
  %12 = load ptr, ptr %cpu_addr, align 4
  %arrayidx16 = getelementptr i32, ptr %12, i32 2
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1073807504, ptr %arrayidx16, align 4
  %14 = load ptr, ptr %cpu_addr, align 4
  %arrayidx23 = getelementptr i32, ptr %14, i32 3
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 524296, ptr %arrayidx23, align 4
  %16 = load ptr, ptr %cpu_addr, align 4
  %arrayidx30 = getelementptr i32, ptr %16, i32 4
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1056964800, ptr %arrayidx30, align 4
  %18 = load ptr, ptr %cpu_addr, align 4
  %arrayidx37 = getelementptr i32, ptr %18, i32 5
  %19 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1073758208, ptr %arrayidx37, align 4
  %20 = load ptr, ptr %cpu_addr, align 4
  %arrayidx44 = getelementptr i32, ptr %20, i32 6
  %21 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1073758208, ptr %arrayidx44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %planar)
  %cmp47.not = icmp eq i32 %planar, 0
  br i1 %cmp47.not, label %entry.if.end_crit_edge, label %do.body48

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body48:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cpu_addr, align 4
  %arrayidx52 = getelementptr i32, ptr %23, i32 7
  %24 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1056964800, ptr %arrayidx52, align 4
  %25 = load ptr, ptr %cpu_addr, align 4
  %arrayidx59 = getelementptr i32, ptr %25, i32 8
  %26 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 536879104, ptr %arrayidx59, align 4
  %27 = load ptr, ptr %cpu_addr, align 4
  %arrayidx66 = getelementptr i32, ptr %27, i32 9
  %28 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 536879104, ptr %arrayidx66, align 4
  %29 = load ptr, ptr %cpu_addr, align 4
  %arrayidx73 = getelementptr i32, ptr %29, i32 10
  %30 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1056964800, ptr %arrayidx73, align 4
  %31 = load ptr, ptr %cpu_addr, align 4
  %arrayidx80 = getelementptr i32, ptr %31, i32 11
  %32 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 268439552, ptr %arrayidx80, align 4
  %33 = load ptr, ptr %cpu_addr, align 4
  %arrayidx87 = getelementptr i32, ptr %33, i32 12
  %34 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 268439552, ptr %arrayidx87, align 4
  br label %if.end

if.end:                                           ; preds = %do.body48, %entry.if.end_crit_edge
  %count.0 = phi i32 [ 13, %do.body48 ], [ 7, %entry.if.end_crit_edge ]
  %last_field = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 15
  %35 = ptrtoint ptr %last_field to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %last_field, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %36, label %if.end.do.body156_crit_edge [
    i32 4, label %do.body92
    i32 2, label %do.body111
    i32 3, label %do.body134
  ]

if.end.do.body156_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body156

do.body92:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or93 = or i32 %cond3, 536870912
  br label %do.body156.sink.split

do.body111:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %current_hps_sync to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %current_hps_sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp113 = icmp eq i32 %39, 0
  %or115 = select i1 %cmp113, i32 536871936, i32 536871424
  br label %do.body156.sink.split

do.body134:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %current_hps_sync to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %current_hps_sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp136 = icmp eq i32 %41, 0
  %or138 = select i1 %cmp136, i32 536871936, i32 536871424
  br label %do.body156.sink.split

do.body156.sink.split:                            ; preds = %do.body134, %do.body111, %do.body92
  %or93.sink = phi i32 [ %or93, %do.body92 ], [ %or138, %do.body134 ], [ %or115, %do.body111 ]
  %cond.sink = phi i32 [ %cond, %do.body92 ], [ %cond, %do.body134 ], [ %cond3, %do.body111 ]
  %42 = tail call i32 @llvm.bswap.i32(i32 %or93.sink)
  %43 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cpu_addr, align 4
  %inc96 = add nuw nsw i32 %count.0, 1
  %arrayidx97 = getelementptr i32, ptr %44, i32 %count.0
  %45 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %arrayidx97, align 4
  %or101 = or i32 %cond.sink, 536870912
  %46 = tail call i32 @llvm.bswap.i32(i32 %or101)
  %47 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cpu_addr, align 4
  %inc104 = add nuw nsw i32 %count.0, 2
  %arrayidx105 = getelementptr i32, ptr %48, i32 %inc96
  %49 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %arrayidx105, align 4
  br label %do.body156

do.body156:                                       ; preds = %do.body156.sink.split, %if.end.do.body156_crit_edge
  %count.1 = phi i32 [ %count.0, %if.end.do.body156_crit_edge ], [ %inc104, %do.body156.sink.split ]
  %50 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cpu_addr, align 4
  %inc159 = add nuw nsw i32 %count.1, 1
  %arrayidx160 = getelementptr i32, ptr %51, i32 %count.1
  %52 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1056964800, ptr %arrayidx160, align 4
  %53 = load ptr, ptr %cpu_addr, align 4
  %inc166 = add nuw nsw i32 %count.1, 2
  %arrayidx167 = getelementptr i32, ptr %53, i32 %inc159
  %54 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1073758208, ptr %arrayidx167, align 4
  %55 = load ptr, ptr %cpu_addr, align 4
  %inc173 = add nuw nsw i32 %count.1, 3
  %arrayidx174 = getelementptr i32, ptr %55, i32 %inc166
  %56 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 16384, ptr %arrayidx174, align 4
  br i1 %cmp47.not, label %do.body156.do.body222_crit_edge, label %do.body179

do.body156.do.body222_crit_edge:                  ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body222

do.body179:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cpu_addr, align 4
  %inc182 = add nuw nsw i32 %count.1, 4
  %arrayidx183 = getelementptr i32, ptr %58, i32 %inc173
  %59 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1056964800, ptr %arrayidx183, align 4
  %60 = load ptr, ptr %cpu_addr, align 4
  %inc189 = add nuw nsw i32 %count.1, 5
  %arrayidx190 = getelementptr i32, ptr %60, i32 %inc182
  %61 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 536879104, ptr %arrayidx190, align 4
  %62 = load ptr, ptr %cpu_addr, align 4
  %inc196 = add nuw nsw i32 %count.1, 6
  %arrayidx197 = getelementptr i32, ptr %62, i32 %inc189
  %63 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 8192, ptr %arrayidx197, align 4
  %64 = load ptr, ptr %cpu_addr, align 4
  %inc203 = add nuw nsw i32 %count.1, 7
  %arrayidx204 = getelementptr i32, ptr %64, i32 %inc196
  %65 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1056964800, ptr %arrayidx204, align 4
  %66 = load ptr, ptr %cpu_addr, align 4
  %inc210 = add nuw nsw i32 %count.1, 8
  %arrayidx211 = getelementptr i32, ptr %66, i32 %inc203
  %67 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 268439552, ptr %arrayidx211, align 4
  %68 = load ptr, ptr %cpu_addr, align 4
  %inc217 = add nuw nsw i32 %count.1, 9
  %arrayidx218 = getelementptr i32, ptr %68, i32 %inc210
  %69 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 4096, ptr %arrayidx218, align 4
  br label %do.body222

do.body222:                                       ; preds = %do.body179, %do.body156.do.body222_crit_edge
  %count.2 = phi i32 [ %inc217, %do.body179 ], [ %inc173, %do.body156.do.body222_crit_edge ]
  %70 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cpu_addr, align 4
  %inc225 = add nuw nsw i32 %count.2, 1
  %arrayidx226 = getelementptr i32, ptr %71, i32 %count.2
  %72 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 96, ptr %arrayidx226, align 4
  %73 = load ptr, ptr %cpu_addr, align 4
  %arrayidx233 = getelementptr i32, ptr %73, i32 %inc225
  %74 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 80, ptr %arrayidx233, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @calculate_video_dma_grab_packed(ptr noundef %dev, ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  %vdma1 = alloca %struct.saa7146_video_dma, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vv_data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %vdma1) #5
  %2 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma1, i32 0, i32 1
  %3 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma1, i32 0, i32 2
  %4 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma1, i32 0, i32 3
  %5 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma1, i32 0, i32 4
  %6 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma1, i32 0, i32 5
  %fmt = getelementptr inbounds %struct.saa7146_buf, ptr %buf, i32 0, i32 1
  %7 = call ptr @memset(ptr %vdma1, i32 255, i32 12)
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmt, align 8
  %pixelformat = getelementptr inbounds %struct.v4l2_pix_format, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat, align 4
  %call = tail call ptr @saa7146_format_by_fourcc(ptr noundef %dev, i32 noundef %11) #5
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %height4 = getelementptr inbounds %struct.v4l2_pix_format, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height4, align 4
  %bytesperline6 = getelementptr inbounds %struct.v4l2_pix_format, ptr %13, i32 0, i32 4
  %18 = ptrtoint ptr %bytesperline6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bytesperline6, align 4
  %field8 = getelementptr inbounds %struct.v4l2_pix_format, ptr %13, i32 0, i32 3
  %20 = ptrtoint ptr %field8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %field8, align 4
  %depth9 = getelementptr inbounds %struct.saa7146_format, ptr %call, i32 0, i32 2
  %22 = ptrtoint ptr %depth9 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %depth9, align 4
  %conv = zext i8 %23 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %24 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end18_crit_edge, label %do.body10

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @calculate_video_dma_grab_packed.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@calculate_video_dma_grab_packed, %if.then15)) #5
          to label %do.end18 [label %if.then15], !srcloc !77

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [0 x ptr], ptr @v4l2_field_names, i32 0, i32 %21
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @calculate_video_dma_grab_packed.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %15, i32 noundef %17, ptr noundef %26) #5
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.body10, %entry.do.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  %mul21 = shl i32 %15, 1
  %mul22 = mul i32 %mul21, %conv
  %div = sdiv i32 %mul22, 8
  %mul = shl i32 %19, 1
  %storemerge = select i1 %cmp.not, i32 %div, i32 %mul
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge, ptr %4, align 4
  %standard = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 16
  %28 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %standard, align 4
  %v_field = getelementptr inbounds %struct.saa7146_standard, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %v_field to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %v_field, align 4
  %shl = shl i32 %31, 16
  %h_pixels = getelementptr inbounds %struct.saa7146_standard, ptr %29, i32 0, i32 5
  %32 = ptrtoint ptr %h_pixels to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %h_pixels, align 4
  %add = add i32 %shl, %33
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %6, align 4
  %dma = getelementptr inbounds %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 0, i32 2
  %35 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma, align 8
  %swap = getelementptr inbounds %struct.saa7146_format, ptr %call, i32 0, i32 4
  %37 = ptrtoint ptr %swap to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %swap, align 2
  %conv27 = zext i8 %38 to i32
  %or = or i32 %36, %conv27
  %or28 = or i32 %or, 2048
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or28, ptr %5, align 4
  %vflip = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 17
  %40 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vflip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp29.not = icmp eq i32 %41, 0
  %offset47 = getelementptr inbounds %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 0, i32 3
  %42 = ptrtoint ptr %offset47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset47, align 4
  br i1 %cmp29.not, label %if.else44, label %if.then31

if.then31:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %3, align 4
  %div387 = lshr i32 %storemerge, 1
  %mul39 = mul i32 %div387, %17
  %add40 = add i32 %43, %mul39
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add40, ptr %2, align 4
  %sub = sub i32 %add40, %div387
  %46 = ptrtoint ptr %vdma1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub, ptr %vdma1, align 4
  br label %if.end62

if.else44:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %43, ptr %2, align 4
  %div511 = lshr i32 %storemerge, 1
  %add52 = add i32 %43, %div511
  %48 = ptrtoint ptr %vdma1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add52, ptr %vdma1, align 4
  %mul59 = mul i32 %div511, %17
  %add60 = add i32 %43, %mul59
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add60, ptr %3, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.else44, %if.then31
  %50 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %21, label %if.end62.if.end122_crit_edge [
    i32 3, label %if.then112
    i32 2, label %if.then104
    i32 7, label %if.then80
  ]

if.end62.if.end122_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122

if.then80:                                        ; preds = %if.end62
  %last_field = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 15
  %51 = ptrtoint ptr %last_field to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %last_field, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %52, label %if.then80.if.end122_crit_edge [
    i32 2, label %if.then83
    i32 3, label %if.then92
  ]

if.then80.if.end122_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122

if.then83:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %3, align 4
  %56 = ptrtoint ptr %vdma1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %vdma1, align 4
  br label %if.end122.sink.split

if.then92:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %2, align 4
  %59 = ptrtoint ptr %vdma1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %vdma1, align 4
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %3, align 4
  store i32 %61, ptr %2, align 4
  br label %if.end122.sink.split

if.then104:                                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %3, align 4
  %64 = ptrtoint ptr %vdma1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %vdma1, align 4
  br label %if.end122.sink.split

if.then112:                                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %2, align 4
  %67 = ptrtoint ptr %vdma1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %vdma1, align 4
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %3, align 4
  store i32 %69, ptr %2, align 4
  br label %if.end122.sink.split

if.end122.sink.split:                             ; preds = %if.then112, %if.then104, %if.then92, %if.then83
  %div985 = lshr i32 %storemerge, 1
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div985, ptr %4, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.end122.sink.split, %if.then80.if.end122_crit_edge, %if.end62.if.end122_crit_edge
  br i1 %cmp29.not, label %if.end122.if.end129_crit_edge, label %if.then126

if.end122.if.end129_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

if.then126:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %4, align 4
  %mul128 = sub i32 0, %72
  store i32 %mul128, ptr %4, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %if.end122.if.end129_crit_edge
  call void @saa7146_write_out_dma(ptr noundef %dev, i32 noundef 1, ptr noundef nonnull %vdma1)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vdma1) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__ksymtab_saa7146_set_hps_source_and_sync, !1, !"__ksymtab_saa7146_set_hps_source_and_sync", i1 false, i1 false}
!1 = !{!"../drivers/media/common/saa7146/saa7146_hlp.c", i32 646, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/common/saa7146/saa7146_hlp.c", i32 1003, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @saa7146_set_capture.__UNIQUE_ID_ddebug312, !3, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/common/saa7146/saa7146_hlp.c", i32 1008, i32 3}
!11 = !{ptr @saa7146_set_capture.__UNIQUE_ID_ddebug313, !10, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!12 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hps_v_coeff_tab, !14, !"hps_v_coeff_tab", i1 false, i1 false}
!14 = !{!"../drivers/media/common/saa7146/saa7146_hlp.c", i32 193, i32 3}
!15 = distinct !{null, !16, !"v_attenuation", i1 false, i1 false}
!16 = !{!"../drivers/media/common/saa7146/saa7146_hlp.c", i32 210, i32 12}
!17 = !{ptr @hps_h_coeff_tab, !18, !"hps_h_coeff_tab", i1 false, i1 false}
!18 = !{!"../drivers/media/common/saa7146/saa7146_hlp.c", i32 47, i32 3}
!19 = distinct !{null, !20, !"h_attenuation", i1 false, i1 false}
!20 = !{!"../drivers/media/common/saa7146/saa7146_hlp.c", i32 64, i32 11}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/common/saa7146/saa7146_hlp.c", i32 842, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @calculate_video_dma_grab_planar.__UNIQUE_ID_ddebug311, !22, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!25 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/common/saa7146/saa7146_hlp.c", i32 716, i32 2}
!28 = !{ptr @calculate_video_dma_grab_packed.__UNIQUE_ID_ddebug310, !27, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 7179714}
!39 = !{i64 2156650595}
!40 = !{i64 2156650909}
!41 = !{i64 7179296}
!42 = !{i64 2156651459}
!43 = !{i64 2156648959}
!44 = !{i64 2156649246}
!45 = !{i64 2156649805}
!46 = !{i64 2156636774}
!47 = !{i64 2156637072}
!48 = !{i64 2156637631}
!49 = !{i64 2156638191}
!50 = !{i64 2156638929}
!51 = !{i64 2156639455}
!52 = !{i64 2156639754}
!53 = !{i64 2156640274}
!54 = !{i64 2156640793}
!55 = !{i64 2156641315}
!56 = !{i64 2156641829}
!57 = !{i64 2156642347}
!58 = !{i64 2156642873}
!59 = !{i64 2156643373}
!60 = !{i64 2156644003}
!61 = !{i64 2156644686}
!62 = !{i64 2156653909}
!63 = !{i64 2156645236}
!64 = !{i64 2156645736}
!65 = !{i64 2156646229}
!66 = !{i64 2156646728}
!67 = !{i64 2156647239}
!68 = !{i64 2156647872}
!69 = !{i64 2156654468}
!70 = !{i64 2156654970}
!71 = !{i64 2156655497}
!72 = !{i64 2156656032}
!73 = !{i64 2156656559}
!74 = !{i64 2156657082}
!75 = !{i64 2156657625}
!76 = !{i64 2156658262}
!77 = !{i64 2148720394, i64 2148720399, i64 2148720412, i64 2148720456, i64 2148720490, i64 2148720511}
!78 = !{i64 2156680787}
!79 = !{i64 2156683729}
!80 = !{i64 2156684279}
!81 = !{i64 2156684869}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i64 2156662073, i64 2156662580, i64 2156662110, i64 2156662166, i64 2156662200, i64 2156662224, i64 2156662265, i64 2156662286, i64 2156662314, i64 2156662348}
!84 = !{i64 2156663736, i64 2156664243, i64 2156663773, i64 2156663829, i64 2156663863, i64 2156663887, i64 2156663928, i64 2156663949, i64 2156663977, i64 2156664011}
!85 = !{i64 2156665399, i64 2156665906, i64 2156665436, i64 2156665492, i64 2156665526, i64 2156665550, i64 2156665591, i64 2156665612, i64 2156665640, i64 2156665674}
