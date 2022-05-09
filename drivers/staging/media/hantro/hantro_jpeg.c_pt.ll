; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/hantro_jpeg.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/hantro_jpeg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hantro_jpeg_ctx = type { i32, i32, i32, ptr, [64 x i8], [64 x i8] }
%struct.hantro_ctx = type { ptr, %struct.v4l2_fh, i8, i32, i32, ptr, %struct.v4l2_pix_format_mplane, ptr, %struct.v4l2_pix_format_mplane, %struct.v4l2_ctrl_handler, i32, ptr, %struct.hantro_postproc_ctx, %union.anon.114 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hantro_postproc_ctx = type { [32 x %struct.hantro_aux_buf] }
%struct.hantro_aux_buf = type { ptr, i32, i32, i32 }
%union.anon.114 = type { %struct.hantro_vp9_dec_hw_ctx }
%struct.hantro_vp9_dec_hw_ctx = type { %struct.hantro_aux_buf, %struct.hantro_aux_buf, %struct.hantro_aux_buf, %struct.v4l2_vp9_frame_symbol_counts, %struct.v4l2_vp9_frame_context, [4 x %struct.v4l2_vp9_frame_context], %struct.hantro_vp9_frame_info, %struct.hantro_vp9_frame_info, i32, i32, i32, i32, [34 x i16], [64 x i16], i32, i32, i32, i32, i32, [8 x i8], [8 x [4 x i16]] }
%struct.v4l2_vp9_frame_symbol_counts = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [2 x [2 x [6 x [6 x ptr]]]]], [4 x [2 x [2 x [6 x [6 x [2 x ptr]]]]]] }
%struct.v4l2_vp9_frame_context = type { [2 x [1 x i8]], [2 x [2 x i8]], [2 x [3 x i8]], [4 x [2 x [2 x [6 x [6 x [3 x i8]]]]]], [3 x i8], [7 x [3 x i8]], [4 x [2 x i8]], [4 x i8], [5 x i8], [5 x [2 x i8]], [5 x i8], [4 x [9 x i8]], [10 x [9 x i8]], [16 x [3 x i8]], %struct.v4l2_vp9_frame_mv_context }
%struct.v4l2_vp9_frame_mv_context = type { [3 x i8], [2 x i8], [2 x [10 x i8]], [2 x i8], [2 x [10 x i8]], [2 x [2 x [3 x i8]]], [2 x [3 x i8]], [2 x i8], [2 x i8] }
%struct.hantro_vp9_frame_info = type { i16, i32, i64 }
%struct.hantro_fmt = type { ptr, i32, i32, i32, i32, i32, %struct.v4l2_frmsize_stepwise, i8 }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.hantro_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.delayed_work }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@hantro_jpeg_header = internal constant { [601 x i8], [135 x i8] } { [601 x i8] c"\FF\D8\FF\DB\00\84\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C0\00\11\08\00\F0\01@\03\01\22\00\02\11\01\03\11\01\FF\C4\00\1F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\1F\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\C4\00\B5\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\DA\00\0C\03\01\00\02\11\03\11\00?\00", [135 x i8] zeroinitializer }, align 32
@luma_dc_table = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B", [36 x i8] zeroinitializer }, align 32
@luma_ac_table = internal constant { [178 x i8], [46 x i8] } { [178 x i8] c"\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA", [46 x i8] zeroinitializer }, align 32
@chroma_dc_table = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B", [36 x i8] zeroinitializer }, align 32
@chroma_ac_table = internal constant { [178 x i8], [46 x i8] } { [178 x i8] c"\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", [46 x i8] zeroinitializer }, align 32
@luma_q_table = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\10\0B\0A\10\18(3=\0C\0C\0E\13\1A:<7\0E\0D\10\18(9E8\0E\11\16\1D3WP>\12\16%8DmgM\18#7@Qhq\\1@NWgyxeH\\_bpdgc", [32 x i8] zeroinitializer }, align 32
@chroma_q_table = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\11\12\18/cccc\12\15\1ABcccc\18\1A8ccccc/Bcccccccccccccccccccccccccccccccccccccc", [32 x i8] zeroinitializer }, align 32
@zigzag = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", [32 x i8] zeroinitializer }, align 32
@hw_reorder = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 32, i32 40, i32 48, i32 56, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 34, i32 42, i32 50, i32 58, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 36, i32 44, i32 52, i32 60, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31, i32 38, i32 46, i32 54, i32 62, i32 39, i32 47, i32 55, i32 63], [64 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"hantro_jpeg_header\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 143, i32 28 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"luma_dc_table\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 73, i32 28 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"luma_ac_table\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 87, i32 28 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"chroma_dc_table\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 80, i32 28 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"chroma_ac_table\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 113, i32 28 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"luma_q_table\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 28, i32 28 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"chroma_q_table\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 39, i32 28 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"zigzag\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 50, i32 28 }
@___asan_gen_.25 = private unnamed_addr constant [11 x i8] c"hw_reorder\00", align 1
@___asan_gen_.26 = private constant [46 x i8] c"../drivers/staging/media/hantro/hantro_jpeg.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 61, i32 18 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @hantro_jpeg_header, ptr @luma_dc_table, ptr @luma_ac_table, ptr @chroma_dc_table, ptr @chroma_ac_table, ptr @luma_q_table, ptr @chroma_q_table, ptr @zigzag, ptr @hw_reorder], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hantro_jpeg_header to i32), i32 601, i32 736, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luma_dc_table to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luma_ac_table to i32), i32 178, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chroma_dc_table to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chroma_ac_table to i32), i32 178, i32 224, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luma_q_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chroma_q_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zigzag to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_reorder to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_jpeg_header_assemble(ptr nocapture noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.hantro_jpeg_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %2 = call ptr @memcpy(ptr %1, ptr @hantro_jpeg_header, i32 601)
  %height = getelementptr inbounds %struct.hantro_jpeg_ctx, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %height, align 4
  %5 = lshr i32 %4, 8
  %conv = trunc i32 %5 to i8
  %arrayidx = getelementptr i8, ptr %1, i32 141
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx, align 1
  %7 = load i32, ptr %height, align 4
  %conv2 = trunc i32 %7 to i8
  %arrayidx3 = getelementptr i8, ptr %1, i32 142
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv2, ptr %arrayidx3, align 1
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctx, align 4
  %11 = lshr i32 %10, 8
  %conv5 = trunc i32 %11 to i8
  %arrayidx6 = getelementptr i8, ptr %1, i32 143
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv5, ptr %arrayidx6, align 1
  %13 = load i32, ptr %ctx, align 4
  %conv8 = trunc i32 %13 to i8
  %arrayidx9 = getelementptr i8, ptr %1, i32 144
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv8, ptr %arrayidx9, align 1
  %add.ptr = getelementptr i8, ptr %1, i32 160
  %15 = call ptr @memcpy(ptr %add.ptr, ptr @luma_dc_table, i32 28)
  %add.ptr10 = getelementptr i8, ptr %1, i32 193
  %16 = call ptr @memcpy(ptr %add.ptr10, ptr @luma_ac_table, i32 178)
  %add.ptr11 = getelementptr i8, ptr %1, i32 376
  %17 = call ptr @memcpy(ptr %add.ptr11, ptr @chroma_dc_table, i32 28)
  %add.ptr12 = getelementptr i8, ptr %1, i32 409
  %18 = call ptr @memcpy(ptr %add.ptr12, ptr @chroma_ac_table, i32 178)
  %quality.i = getelementptr inbounds %struct.hantro_jpeg_ctx, ptr %ctx, i32 0, i32 2
  %19 = ptrtoint ptr %quality.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %quality.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %20)
  %cmp.i = icmp slt i32 %20, 50
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %div.i = sdiv i32 5000, %20
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul.neg.i = mul i32 %20, -2
  %sub.i = add i32 %mul.neg.i, 200
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %scale.0.i = phi i32 [ %div.i, %if.then.i ], [ %sub.i, %if.else.i ]
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 7
  %hw_luma_qtable.i = getelementptr inbounds %struct.hantro_jpeg_ctx, ptr %ctx, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i
  %i.019.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [64 x i8], ptr @zigzag, i32 0, i32 %i.019.i.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i, align 1
  %idxprom.i.i = zext i8 %24 to i32
  %arrayidx1.i.i = getelementptr i8, ptr @luma_q_table, i32 %idxprom.i.i
  %25 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx1.i.i, align 1
  %conv.i.i.i = zext i8 %26 to i32
  %mul.i.i.i = mul i32 %scale.0.i, %conv.i.i.i
  %add.i.i.i = add i32 %mul.i.i.i, 50
  %div1.i.i.i = udiv i32 %add.i.i.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %add.i.i.i)
  %27 = icmp ult i32 %add.i.i.i, 100
  %28 = tail call i32 @llvm.umin.i32(i32 %div1.i.i.i, i32 255) #4
  %29 = trunc i32 %28 to i8
  %conv7.i.i.i = select i1 %27, i8 1, i8 %29
  %arrayidx2.i.i = getelementptr i8, ptr %add.ptr.i, i32 %i.019.i.i
  %30 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv7.i.i.i, ptr %arrayidx2.i.i, align 1
  %arrayidx3.i.i = getelementptr [64 x i32], ptr @hw_reorder, i32 0, i32 %i.019.i.i
  %31 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx3.i.i, align 4
  %arrayidx4.i.i = getelementptr i8, ptr @luma_q_table, i32 %32
  %33 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx4.i.i, align 1
  %conv.i14.i.i = zext i8 %34 to i32
  %mul.i15.i.i = mul i32 %scale.0.i, %conv.i14.i.i
  %add.i16.i.i = add i32 %mul.i15.i.i, 50
  %div1.i17.i.i = udiv i32 %add.i16.i.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %add.i16.i.i)
  %35 = icmp ult i32 %add.i16.i.i, 100
  %36 = tail call i32 @llvm.umin.i32(i32 %div1.i17.i.i, i32 255) #4
  %37 = trunc i32 %36 to i8
  %conv7.i18.i.i = select i1 %35, i8 1, i8 %37
  %arrayidx6.i.i = getelementptr i8, ptr %hw_luma_qtable.i, i32 %i.019.i.i
  %38 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv7.i18.i.i, ptr %arrayidx6.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.019.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %jpeg_scale_quant_table.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

jpeg_scale_quant_table.exit.i:                    ; preds = %for.body.i.i
  %39 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer, align 4
  %add.ptr4.i = getelementptr i8, ptr %40, i32 72
  %hw_chroma_qtable.i = getelementptr inbounds %struct.hantro_jpeg_ctx, ptr %ctx, i32 0, i32 5
  br label %for.body.i33.i

for.body.i33.i:                                   ; preds = %for.body.i33.i.for.body.i33.i_crit_edge, %jpeg_scale_quant_table.exit.i
  %i.019.i13.i = phi i32 [ 0, %jpeg_scale_quant_table.exit.i ], [ %inc.i31.i, %for.body.i33.i.for.body.i33.i_crit_edge ]
  %arrayidx.i14.i = getelementptr [64 x i8], ptr @zigzag, i32 0, i32 %i.019.i13.i
  %41 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i14.i, align 1
  %idxprom.i15.i = zext i8 %42 to i32
  %arrayidx1.i16.i = getelementptr i8, ptr @chroma_q_table, i32 %idxprom.i15.i
  %43 = ptrtoint ptr %arrayidx1.i16.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx1.i16.i, align 1
  %conv.i.i17.i = zext i8 %44 to i32
  %mul.i.i18.i = mul i32 %scale.0.i, %conv.i.i17.i
  %add.i.i19.i = add i32 %mul.i.i18.i, 50
  %div1.i.i20.i = udiv i32 %add.i.i19.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %add.i.i19.i)
  %45 = icmp ult i32 %add.i.i19.i, 100
  %46 = tail call i32 @llvm.umin.i32(i32 %div1.i.i20.i, i32 255) #4
  %47 = trunc i32 %46 to i8
  %conv7.i.i21.i = select i1 %45, i8 1, i8 %47
  %arrayidx2.i22.i = getelementptr i8, ptr %add.ptr4.i, i32 %i.019.i13.i
  %48 = ptrtoint ptr %arrayidx2.i22.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv7.i.i21.i, ptr %arrayidx2.i22.i, align 1
  %arrayidx3.i23.i = getelementptr [64 x i32], ptr @hw_reorder, i32 0, i32 %i.019.i13.i
  %49 = ptrtoint ptr %arrayidx3.i23.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx3.i23.i, align 4
  %arrayidx4.i24.i = getelementptr i8, ptr @chroma_q_table, i32 %50
  %51 = ptrtoint ptr %arrayidx4.i24.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx4.i24.i, align 1
  %conv.i14.i25.i = zext i8 %52 to i32
  %mul.i15.i26.i = mul i32 %scale.0.i, %conv.i14.i25.i
  %add.i16.i27.i = add i32 %mul.i15.i26.i, 50
  %div1.i17.i28.i = udiv i32 %add.i16.i27.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %add.i16.i27.i)
  %53 = icmp ult i32 %add.i16.i27.i, 100
  %54 = tail call i32 @llvm.umin.i32(i32 %div1.i17.i28.i, i32 255) #4
  %55 = trunc i32 %54 to i8
  %conv7.i18.i29.i = select i1 %53, i8 1, i8 %55
  %arrayidx6.i30.i = getelementptr i8, ptr %hw_chroma_qtable.i, i32 %i.019.i13.i
  %56 = ptrtoint ptr %arrayidx6.i30.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv7.i18.i29.i, ptr %arrayidx6.i30.i, align 1
  %inc.i31.i = add nuw nsw i32 %i.019.i13.i, 1
  %exitcond.not.i32.i = icmp eq i32 %inc.i31.i, 64
  br i1 %exitcond.not.i32.i, label %jpeg_set_quality.exit, label %for.body.i33.i.for.body.i33.i_crit_edge

for.body.i33.i.for.body.i33.i_crit_edge:          ; preds = %for.body.i33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i33.i

jpeg_set_quality.exit:                            ; preds = %for.body.i33.i
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hantro_jpeg_enc_init(ptr noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %plane_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 8, i32 5
  %0 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %plane_fmt, align 4
  %vpu_dst_fmt = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %vpu_dst_fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vpu_dst_fmt, align 4
  %header_size = getelementptr inbounds %struct.hantro_fmt, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %header_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %header_size, align 4
  %sub = sub i32 %1, %5
  %6 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %size = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %size, align 8
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 8
  %dev1 = getelementptr inbounds %struct.hantro_dev, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  %dma = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %call = tail call ptr @dma_alloc_attrs(ptr noundef %11, i32 noundef %sub, ptr noundef %dma, i32 noundef 3264, i32 noundef 128) #4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %6, align 8
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hantro_jpeg_enc_exit(ptr nocapture noundef readonly %ctx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dev1 = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13
  %size = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %dma = getelementptr inbounds %struct.hantro_ctx, ptr %ctx, i32 0, i32 13, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef 128) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @hantro_jpeg_header, !1, !"hantro_jpeg_header", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/hantro_jpeg.c", i32 143, i32 28}
!2 = !{ptr @luma_dc_table, !3, !"luma_dc_table", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/hantro/hantro_jpeg.c", i32 73, i32 28}
!4 = !{ptr @luma_ac_table, !5, !"luma_ac_table", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/hantro/hantro_jpeg.c", i32 87, i32 28}
!6 = !{ptr @chroma_dc_table, !7, !"chroma_dc_table", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/hantro/hantro_jpeg.c", i32 80, i32 28}
!8 = !{ptr @chroma_ac_table, !9, !"chroma_ac_table", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/hantro/hantro_jpeg.c", i32 113, i32 28}
!10 = !{ptr @zigzag, !11, !"zigzag", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/hantro/hantro_jpeg.c", i32 50, i32 28}
!12 = !{ptr @hw_reorder, !13, !"hw_reorder", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/hantro/hantro_jpeg.c", i32 61, i32 18}
!14 = !{ptr @luma_q_table, !15, !"luma_q_table", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/hantro/hantro_jpeg.c", i32 28, i32 28}
!16 = !{ptr @chroma_q_table, !17, !"chroma_q_table", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/hantro/hantro_jpeg.c", i32 39, i32 28}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
