; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_format = type { %struct.msm_format, i32, [4 x i8], [4 x i8], i32, i8, i8, i8, i8, i8, i8, i32, [1 x i32], i16, i16 }
%struct.msm_format = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dpu_media_color_map = type { i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dpu_hw_fmt_layout = type { ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32] }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.91, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.91 = type { [4 x i8] }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid arguments\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"image dimensions outside max range\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid handle for plane %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"buffers total size too small %u expected %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"plane format modifier 0x%llX\0A\00", [34 x i8] zeroinitializer }, align 32
@dpu_format_map = internal constant { [46 x %struct.dpu_format], [464 x i8] } { [46 x %struct.dpu_format] [%struct.dpu_format { %struct.msm_format { i32 875713089 }, i32 0, [4 x i8] c"\01\00\02\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875708993 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875709016 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875708754 }, i32 0, [4 x i8] c"\03\01\00\02", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875708738 }, i32 0, [4 x i8] c"\03\02\00\01", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875714626 }, i32 0, [4 x i8] c"\03\02\00\01", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875713112 }, i32 0, [4 x i8] c"\01\00\02\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875714642 }, i32 0, [4 x i8] c"\03\01\00\02", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875710290 }, i32 0, [4 x i8] c"\01\00\02\00", [4 x i8] c"\03\03\03\00", i32 0, i8 0, i8 1, i8 3, i8 3, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 875710274 }, i32 0, [4 x i8] c"\02\00\01\00", [4 x i8] c"\03\03\03\00", i32 0, i8 0, i8 1, i8 3, i8 3, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 909199186 }, i32 0, [4 x i8] c"\01\00\02\00", [4 x i8] c"\02\01\01\00", i32 0, i8 0, i8 1, i8 3, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 909199170 }, i32 0, [4 x i8] c"\02\00\01\00", [4 x i8] c"\02\01\01\00", i32 0, i8 0, i8 1, i8 3, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 892424769 }, i32 0, [4 x i8] c"\01\00\02\03", [4 x i8] c"\01\01\01\00", i32 0, i8 0, i8 1, i8 4, i8 2, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 892420673 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\01\01\01\00", i32 0, i8 0, i8 1, i8 4, i8 2, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 892420434 }, i32 0, [4 x i8] c"\03\01\00\02", [4 x i8] c"\01\01\01\00", i32 0, i8 0, i8 1, i8 4, i8 2, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 892420418 }, i32 0, [4 x i8] c"\03\02\00\01", [4 x i8] c"\01\01\01\00", i32 0, i8 0, i8 1, i8 4, i8 2, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 892424792 }, i32 0, [4 x i8] c"\01\00\02\03", [4 x i8] c"\01\01\01\00", i32 0, i8 0, i8 1, i8 4, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 892420696 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\01\01\01\00", i32 0, i8 0, i8 1, i8 4, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 892426322 }, i32 0, [4 x i8] c"\03\01\00\02", [4 x i8] c"\01\01\01\00", i32 0, i8 0, i8 1, i8 4, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 892426306 }, i32 0, [4 x i8] c"\03\02\00\01", [4 x i8] c"\01\01\01\00", i32 0, i8 0, i8 1, i8 4, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842093121 }, i32 0, [4 x i8] c"\01\00\02\03", [4 x i8] c"\00\00\00\01", i32 0, i8 0, i8 1, i8 4, i8 2, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842089025 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\00\00\00\01", i32 0, i8 0, i8 1, i8 4, i8 2, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842088786 }, i32 0, [4 x i8] c"\03\01\00\02", [4 x i8] c"\00\00\00\01", i32 0, i8 0, i8 1, i8 4, i8 2, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842088770 }, i32 0, [4 x i8] c"\03\02\00\01", [4 x i8] c"\00\00\00\01", i32 0, i8 0, i8 1, i8 4, i8 2, i8 1, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842093144 }, i32 0, [4 x i8] c"\01\00\02\03", [4 x i8] c"\00\00\00\01", i32 0, i8 0, i8 1, i8 4, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842089048 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\00\00\00\01", i32 0, i8 0, i8 1, i8 4, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842094674 }, i32 0, [4 x i8] c"\03\01\00\02", [4 x i8] c"\00\00\00\01", i32 0, i8 0, i8 1, i8 4, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842094658 }, i32 0, [4 x i8] c"\03\02\00\01", [4 x i8] c"\00\00\00\01", i32 0, i8 0, i8 1, i8 4, i8 2, i8 0, i8 1, i32 0, [1 x i32] zeroinitializer, i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 808665410 }, i32 0, [4 x i8] c"\03\02\00\01", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 1, i32 0, [1 x i32] [i32 2], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 808665426 }, i32 0, [4 x i8] c"\03\01\00\02", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 1, i32 0, [1 x i32] [i32 2], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 808665665 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 1, i32 0, [1 x i32] [i32 2], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 808669761 }, i32 0, [4 x i8] c"\01\00\02\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 1, i32 0, [1 x i32] [i32 2], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 808669784 }, i32 0, [4 x i8] c"\01\00\02\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 1, i32 0, [1 x i32] [i32 2], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 808671298 }, i32 0, [4 x i8] c"\03\02\00\01", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 1, i32 0, [1 x i32] [i32 2], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 808665688 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 1, i32 0, [1 x i32] [i32 2], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 808671314 }, i32 0, [4 x i8] c"\03\01\00\02", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 1, i32 0, [1 x i32] [i32 2], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842094158 }, i32 2, [4 x i8] c"\01\02\00\00", [4 x i8] c"\03\03\03\00", i32 3, i8 0, i8 1, i8 2, i8 2, i8 0, i8 2, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 825382478 }, i32 2, [4 x i8] c"\02\01\00\00", [4 x i8] c"\03\03\03\00", i32 3, i8 0, i8 1, i8 2, i8 2, i8 0, i8 2, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 909203022 }, i32 2, [4 x i8] c"\01\02\00\00", [4 x i8] c"\03\03\03\00", i32 1, i8 0, i8 1, i8 2, i8 2, i8 0, i8 2, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 825644622 }, i32 2, [4 x i8] c"\02\01\00\00", [4 x i8] c"\03\03\03\00", i32 1, i8 0, i8 1, i8 2, i8 2, i8 0, i8 2, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 1498765654 }, i32 0, [4 x i8] c"\02\00\01\00", [4 x i8] c"\03\03\03\00", i32 1, i8 0, i8 1, i8 4, i8 2, i8 0, i8 2, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 1498831189 }, i32 0, [4 x i8] c"\01\00\02\00", [4 x i8] c"\03\03\03\00", i32 1, i8 0, i8 1, i8 4, i8 2, i8 0, i8 2, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 1448695129 }, i32 0, [4 x i8] c"\00\01\00\02", [4 x i8] c"\03\03\03\00", i32 1, i8 0, i8 1, i8 4, i8 2, i8 0, i8 2, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 1431918169 }, i32 0, [4 x i8] c"\00\02\00\01", [4 x i8] c"\03\03\03\00", i32 1, i8 0, i8 1, i8 4, i8 2, i8 0, i8 2, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842093913 }, i32 1, [4 x i8] c"\02\01\00\00", [4 x i8] c"\03\03\03\00", i32 3, i8 0, i8 1, i8 1, i8 1, i8 0, i8 3, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }, %struct.dpu_format { %struct.msm_format { i32 842094169 }, i32 1, [4 x i8] c"\01\02\00\00", [4 x i8] c"\03\03\03\00", i32 3, i8 0, i8 1, i8 1, i8 1, i8 0, i8 3, i32 0, [1 x i32] [i32 1], i16 0, i16 1 }], [464 x i8] zeroinitializer }, align 32
@dpu_format_map_ubwc = internal constant { [8 x %struct.dpu_format], [64 x i8] } { [8 x %struct.dpu_format] [%struct.dpu_format { %struct.msm_format { i32 909199170 }, i32 0, [4 x i8] c"\02\00\01\00", [4 x i8] c"\02\01\01\00", i32 0, i8 0, i8 1, i8 3, i8 2, i8 0, i8 2, i32 2, [1 x i32] [i32 4], i16 0, i16 4 }, %struct.dpu_format { %struct.msm_format { i32 875708993 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 2, i32 2, [1 x i32] [i32 4], i16 0, i16 4 }, %struct.dpu_format { %struct.msm_format { i32 875713089 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 2, i32 2, [1 x i32] [i32 4], i16 0, i16 4 }, %struct.dpu_format { %struct.msm_format { i32 875709016 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 2, i32 2, [1 x i32] [i32 4], i16 0, i16 4 }, %struct.dpu_format { %struct.msm_format { i32 875713112 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 0, i8 2, i32 2, [1 x i32] [i32 4], i16 0, i16 4 }, %struct.dpu_format { %struct.msm_format { i32 808665665 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 2, i32 2, [1 x i32] [i32 6], i16 0, i16 4 }, %struct.dpu_format { %struct.msm_format { i32 808665688 }, i32 0, [4 x i8] c"\02\00\01\03", [4 x i8] c"\03\03\03\03", i32 0, i8 0, i8 1, i8 4, i8 4, i8 1, i8 2, i32 2, [1 x i32] [i32 6], i16 0, i16 4 }, %struct.dpu_format { %struct.msm_format { i32 842094158 }, i32 2, [4 x i8] c"\01\02\00\00", [4 x i8] c"\03\03\03\00", i32 3, i8 0, i8 1, i8 2, i8 2, i8 0, i8 4, i32 2, [1 x i32] [i32 5], i16 0, i16 8 }], [64 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"found fmt: %4.4s  DRM_FORMAT_MOD_QCOM_COMPRESSED\0A\00", [46 x i8] zeroinitializer }, align 32
@dpu_get_dpu_format_ext._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013[drm:%s:%d] [dpu error]unsupported format modifier %llX\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dpu_get_dpu_format_ext\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c\00", [52 x i8] zeroinitializer }, align 32
@dpu_get_dpu_format_ext._entry_ptr = internal global ptr @dpu_get_dpu_format_ext._entry, section ".printk_index", align 4
@dpu_get_dpu_format_ext._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.8, i32 1022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013[drm:%s:%d] [dpu error]unsupported fmt: %4.4s modifier 0x%llX\0A\00", [63 x i8] zeroinitializer }, align 32
@dpu_get_dpu_format_ext._entry_ptr.11 = internal global ptr @dpu_get_dpu_format_ext._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fmt %4.4s mod 0x%llX ubwc %d yuv %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid pointer\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"UBWC format not supported for fmt: %4.4s\0A\00", [54 x i8] zeroinitializer }, align 32
@_dpu_format_get_media_color_ubwc.dpu_media_ubwc_map = internal constant { [7 x %struct.dpu_media_color_map], [40 x i8] } { [7 x %struct.dpu_media_color_map] [%struct.dpu_media_color_map { i32 875708993, i32 6 }, %struct.dpu_media_color_map { i32 875713089, i32 6 }, %struct.dpu_media_color_map { i32 875709016, i32 6 }, %struct.dpu_media_color_map { i32 875713112, i32 6 }, %struct.dpu_media_color_map { i32 808665665, i32 7 }, %struct.dpu_media_color_map { i32 808665688, i32 7 }, %struct.dpu_media_color_map { i32 909199170, i32 8 }], [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mismatch in subsample vs dimensions\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to retrieve base addr\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"plane %u expected pitch %u, fb %u\0A\00", [61 x i8] zeroinitializer }, align 32
@switch.table.dpu_format_get_plane_sizes = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 128, i32 256, i32 256, i32 256], [16 x i8] zeroinitializer }, align 32
@switch.table.dpu_format_get_plane_sizes.19 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 4, i32 4, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.dpu_format_get_plane_sizes.20 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 32, i32 16, i32 16, i32 16], [16 x i8] zeroinitializer }, align 32
@switch.table.dpu_format_get_plane_sizes.21 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 1, i16 2, i16 2], [26 x i8] zeroinitializer }, align 32
@switch.table.dpu_format_get_plane_sizes.22 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 2, i16 1, i16 2], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 808665665, i64 808665688, i64 842094158, i64 875708993, i64 875709016, i64 875713089, i64 875713112, i64 909199170]
@__sancov_gen_cov_switch_values.23 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 9, i64 10]
@__sancov_gen_cov_switch_values.24 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 9, i64 10]
@__sancov_gen_cov_switch_values.25 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 9, i64 10]
@__sancov_gen_cov_switch_values.26 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 9, i64 10]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 9]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 9]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 9]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 9]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 360287970189639681]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 902, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 908, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 966, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 974, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 995, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"dpu_format_map\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 195, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c"dpu_format_map_ubwc\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 479, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1005, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1009, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1021, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 1024, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 757, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 616, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [19 x i8] c"dpu_media_ubwc_map\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 567, i32 42 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 707, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 788, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [47 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 873, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [40 x i8] c"switch.table.dpu_format_get_plane_sizes\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [43 x i8] c"switch.table.dpu_format_get_plane_sizes.19\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [43 x i8] c"switch.table.dpu_format_get_plane_sizes.20\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [43 x i8] c"switch.table.dpu_format_get_plane_sizes.21\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [43 x i8] c"switch.table.dpu_format_get_plane_sizes.22\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @dpu_get_dpu_format_ext._entry, ptr @dpu_get_dpu_format_ext._entry.9, ptr @dpu_get_dpu_format_ext._entry_ptr, ptr @dpu_get_dpu_format_ext._entry_ptr.11, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @dpu_format_map, ptr @dpu_format_map_ubwc, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @_dpu_format_get_media_color_ubwc.dpu_media_ubwc_map, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @switch.table.dpu_format_get_plane_sizes, ptr @switch.table.dpu_format_get_plane_sizes.19, ptr @switch.table.dpu_format_get_plane_sizes.20, ptr @switch.table.dpu_format_get_plane_sizes.21, ptr @switch.table.dpu_format_get_plane_sizes.22], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_format_map to i32), i32 1840, i32 2304, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_format_map_ubwc to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_get_dpu_format_ext._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_get_dpu_format_ext._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_format_get_media_color_ubwc.dpu_media_ubwc_map to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dpu_format_get_plane_sizes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dpu_format_get_plane_sizes.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dpu_format_get_plane_sizes.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dpu_format_get_plane_sizes.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dpu_format_get_plane_sizes.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_format_populate_layout(ptr noundef %aspace, ptr noundef %fb, ptr noundef %layout) local_unnamed_addr #0 align 64 {
entry:
  %plane_addr = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %plane_addr) #6
  %tobool.not = icmp eq ptr %fb, null
  %tobool1.not = icmp eq ptr %layout, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 9
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %1)
  %cmp = icmp ugt i32 %1, 16383
  br i1 %cmp, label %if.end.if.then4_crit_edge, label %lor.lhs.false2

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

lor.lhs.false2:                                   ; preds = %if.end
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 10
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %3)
  %cmp3 = icmp ugt i32 %3, 16383
  br i1 %cmp3, label %lor.lhs.false2.if.then4_crit_edge, label %if.end5

lor.lhs.false2.if.then4_crit_edge:                ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false2.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false2
  %call = tail call ptr @msm_framebuffer_format(ptr noundef nonnull %fb) #6
  %4 = ptrtoint ptr %layout to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %layout, align 4
  %5 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width, align 8
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 6
  %call9 = tail call fastcc i32 @dpu_format_get_plane_sizes(ptr noundef %call, i32 noundef %6, i32 noundef %8, ptr noundef nonnull %layout, ptr noundef %pitches)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.body.preheader, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end5
  %uglygep = getelementptr i8, ptr %layout, i32 20
  %9 = call ptr @memcpy(ptr %plane_addr, ptr %uglygep, i32 16)
  %10 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %layout, align 4
  %fetch_mode = getelementptr inbounds %struct.dpu_format, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %fetch_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fetch_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp17 = icmp eq i32 %13, 2
  br i1 %cmp17, label %land.lhs.true, label %for.body.preheader.if.else_crit_edge

for.body.preheader.if.else_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %for.body.preheader
  %flag = getelementptr inbounds %struct.dpu_format, ptr %11, i32 0, i32 12
  %14 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flag, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool21.not = icmp eq i32 %16, 0
  br i1 %tobool21.not, label %land.lhs.true26, label %land.lhs.true.if.end.i_crit_edge

land.lhs.true.if.end.i_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true26:                                  ; preds = %land.lhs.true
  %17 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flag, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool31.not = icmp eq i32 %19, 0
  br i1 %tobool31.not, label %land.lhs.true26.if.end.i_crit_edge, label %land.lhs.true26.if.else_crit_edge

land.lhs.true26.if.else_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true26.if.end.i_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true26.if.end.i_crit_edge, %land.lhs.true.if.end.i_crit_edge
  %tobool2.not.i = icmp eq ptr %aspace, null
  br i1 %tobool2.not.i, label %if.end.i.if.then6.i_crit_edge, label %if.end4.i

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

if.end4.i:                                        ; preds = %if.end.i
  %call.i = tail call i32 @msm_framebuffer_iova(ptr noundef nonnull %fb, ptr noundef nonnull %aspace, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.then6.i_crit_edge, label %if.end7.i

if.end4.i.if.then6.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end4.i.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %cleanup

if.end7.i:                                        ; preds = %if.end4.i
  %20 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %layout, align 4
  %fetch_mode.i = getelementptr inbounds %struct.dpu_format, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %fetch_mode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fetch_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i = icmp eq i32 %23, 2
  br i1 %cmp.i, label %land.rhs.i, label %if.end7.i.land.end.i_crit_edge

if.end7.i.land.end.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %flag.i = getelementptr inbounds %struct.dpu_format, ptr %21, i32 0, i32 12
  %24 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flag.i, align 4
  %26 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool10.i = icmp ne i32 %26, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end7.i.land.end.i_crit_edge
  %27 = phi i1 [ false, %if.end7.i.land.end.i_crit_edge ], [ %tobool10.i, %land.rhs.i ]
  %flag12.i = getelementptr inbounds %struct.dpu_format, ptr %21, i32 0, i32 12
  %28 = ptrtoint ptr %flag12.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flag12.i, align 4
  %and1.i85.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i85.i)
  %tobool15.not.i = icmp eq i32 %and1.i85.i, 0
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %land.end.i
  %plane_size.i = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6
  %arrayidx.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6, i32 2
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %31, %call.i
  %32 = ptrtoint ptr %uglygep to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add.i, ptr %uglygep, align 4
  %33 = ptrtoint ptr %plane_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %plane_size.i, align 4
  %add23.i = add i32 %34, %add.i
  %arrayidx25.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6, i32 3
  %35 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx25.i, align 4
  %add26.i = add i32 %add23.i, %36
  %arrayidx28.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add26.i, ptr %arrayidx28.i, align 4
  br i1 %27, label %if.then16.i.land.lhs.true37.sink.split_crit_edge, label %if.then16.i.land.lhs.true37_crit_edge

if.then16.i.land.lhs.true37_crit_edge:            ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true37

if.then16.i.land.lhs.true37.sink.split_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true37.sink.split

if.else.i:                                        ; preds = %land.end.i
  %arrayidx43.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6, i32 2
  %38 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx43.i, align 4
  %add44.i = add i32 %39, %call.i
  %40 = ptrtoint ptr %uglygep to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add44.i, ptr %uglygep, align 4
  %arrayidx48.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx48.i, align 4
  br i1 %27, label %if.else.i.land.lhs.true37.sink.split_crit_edge, label %if.else.i.land.lhs.true37_crit_edge

if.else.i.land.lhs.true37_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true37

if.else.i.land.lhs.true37.sink.split_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true37.sink.split

if.else:                                          ; preds = %land.lhs.true26.if.else_crit_edge, %for.body.preheader.if.else_crit_edge
  %num_planes.i = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 1
  %42 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp45.not.i = icmp eq i32 %43, 0
  br i1 %cmp45.not.i, label %if.else.land.lhs.true37_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.land.lhs.true37_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true37

for.body10.lr.ph.i:                               ; preds = %for.inc.i
  %tobool.not.i75 = icmp eq ptr %aspace, null
  br label %for.body10.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %i.046.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %arrayidx.i76 = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 7, i32 %i.046.i
  %44 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i76, align 4
  %arrayidx1.i = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 %i.046.i
  %46 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp2.i = icmp ugt i32 %45, %47
  br i1 %cmp2.i, label %if.then.i77, label %for.inc.i

if.then.i77:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %i.046.i, i32 noundef %45, i32 noundef %47) #6
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %43
  br i1 %exitcond.not.i, label %for.body10.lr.ph.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond7.i:                                      ; preds = %if.end13.i
  %inc20.i = add nuw i32 %i.148.i, 1
  %48 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_planes.i, align 4
  %cmp9.i = icmp ult i32 %inc20.i, %49
  br i1 %cmp9.i, label %for.cond7.i.for.body10.i_crit_edge, label %for.cond7.i.land.lhs.true37_crit_edge

for.cond7.i.land.lhs.true37_crit_edge:            ; preds = %for.cond7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true37

for.cond7.i.for.body10.i_crit_edge:               ; preds = %for.cond7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.cond7.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %i.148.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc20.i, %for.cond7.i.for.body10.i_crit_edge ]
  br i1 %tobool.not.i75, label %for.body10.i.if.end13.i_crit_edge, label %if.then11.i

for.body10.i.if.end13.i_crit_edge:                ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then11.i:                                      ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i78 = tail call i32 @msm_framebuffer_iova(ptr noundef %fb, ptr noundef nonnull %aspace, i32 noundef %i.148.i) #6
  %arrayidx12.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 5, i32 %i.148.i
  %50 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call.i78, ptr %arrayidx12.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %for.body10.i.if.end13.i_crit_edge
  %arrayidx15.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 5, i32 %i.148.i
  %51 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool16.not.i = icmp eq i32 %52, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %for.cond7.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  br label %cleanup

land.lhs.true37.sink.split:                       ; preds = %if.else.i.land.lhs.true37.sink.split_crit_edge, %if.then16.i.land.lhs.true37.sink.split_crit_edge
  %.sink = phi i32 [ %add23.i, %if.then16.i.land.lhs.true37.sink.split_crit_edge ], [ 0, %if.else.i.land.lhs.true37.sink.split_crit_edge ]
  %arrayidx53.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 5, i32 2
  %53 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call.i, ptr %arrayidx53.i, align 4
  %arrayidx55.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 5, i32 3
  %54 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink, ptr %arrayidx55.i, align 4
  br label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true37.sink.split, %for.cond7.i.land.lhs.true37_crit_edge, %if.else.land.lhs.true37_crit_edge, %if.else.i.land.lhs.true37_crit_edge, %if.then16.i.land.lhs.true37_crit_edge
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %plane_addr, ptr noundef dereferenceable(16) %uglygep, i32 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool42.not = icmp eq i32 %bcmp, 0
  %spec.select = select i1 %tobool42.not, i32 -11, i32 0
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true37, %if.then17.i, %if.then.i77, %if.then6.i, %if.end5.cleanup_crit_edge, %if.then4, %if.then
  %retval.0 = phi i32 [ -34, %if.then4 ], [ -22, %if.then ], [ %call9, %if.end5.cleanup_crit_edge ], [ %spec.select, %land.lhs.true37 ], [ -14, %if.then6.i ], [ -22, %if.then.i77 ], [ -14, %if.then17.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %plane_addr) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_framebuffer_format(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpu_format_get_plane_sizes(ptr noundef %fmt, i32 noundef %w, i32 noundef %h, ptr noundef %layout, ptr noundef readonly %pitches) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %layout, null
  %tobool1.not = icmp eq ptr %fmt, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #6
  br label %return

if.end:                                           ; preds = %entry
  %0 = or i32 %h, %w
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %0)
  %.not = icmp ult i32 %0, 16384
  br i1 %.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %return

if.end5:                                          ; preds = %if.end
  %fetch_mode = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 11
  %1 = ptrtoint ptr %fetch_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fetch_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp6 = icmp eq i32 %2, 2
  br i1 %cmp6, label %land.lhs.true, label %if.end5.if.end18_crit_edge

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end5
  %flag = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 12
  %3 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flag, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %land.lhs.true11, label %land.lhs.true.land.end.i_crit_edge

land.lhs.true.land.end.i_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.i

land.lhs.true11:                                  ; preds = %land.lhs.true
  %6 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flag, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool15.not = icmp eq i32 %8, 0
  br i1 %tobool15.not, label %land.lhs.true11.land.end.i_crit_edge, label %land.lhs.true11.if.end18_crit_edge

land.lhs.true11.if.end18_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true11.land.end.i_crit_edge:             ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.i

land.end.i:                                       ; preds = %land.lhs.true11.land.end.i_crit_edge, %land.lhs.true.land.end.i_crit_edge
  %9 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flag, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  %12 = getelementptr inbounds i8, ptr %layout, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 64)
  %14 = ptrtoint ptr %layout to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %fmt, ptr %layout, align 4
  %width1.i = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 2
  %15 = ptrtoint ptr %width1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %w, ptr %width1.i, align 4
  %height2.i = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 3
  %16 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %h, ptr %height2.i, align 4
  %num_planes.i = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 10
  %17 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_planes.i, align 1
  %conv.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.i, ptr %12, align 4
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fmt, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.then.i [
    i32 842094158, label %if.then.i.i
    i32 875708993, label %land.end.i._dpu_format_get_media_color_ubwc.exit.i_crit_edge
    i32 875713089, label %if.then11.fold.split.i.i
    i32 875709016, label %if.then11.fold.split25.i.i
    i32 875713112, label %if.then11.fold.split26.i.i
    i32 808665665, label %if.then11.fold.split27.i.i
    i32 808665688, label %if.then11.fold.split28.i.i
    i32 909199170, label %if.then11.fold.split29.i.i
  ]

land.end.i._dpu_format_get_media_color_ubwc.exit.i_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_dpu_format_get_media_color_ubwc.exit.i

if.then.i.i:                                      ; preds = %land.end.i
  %23 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flag, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end.i_crit_edge, label %if.then1.i.i

if.then.i.i.if.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %unpack_tight.i.i = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 6
  %26 = ptrtoint ptr %unpack_tight.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %unpack_tight.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool2.not.i.i = icmp eq i8 %27, 0
  %..i.i = select i1 %tobool2.not.i.i, i32 9, i32 4
  br label %if.end.i

if.then11.fold.split.i.i:                         ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_dpu_format_get_media_color_ubwc.exit.i

if.then11.fold.split25.i.i:                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_dpu_format_get_media_color_ubwc.exit.i

if.then11.fold.split26.i.i:                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_dpu_format_get_media_color_ubwc.exit.i

if.then11.fold.split27.i.i:                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_dpu_format_get_media_color_ubwc.exit.i

if.then11.fold.split28.i.i:                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_dpu_format_get_media_color_ubwc.exit.i

if.then11.fold.split29.i.i:                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_dpu_format_get_media_color_ubwc.exit.i

_dpu_format_get_media_color_ubwc.exit.i:          ; preds = %if.then11.fold.split29.i.i, %if.then11.fold.split28.i.i, %if.then11.fold.split27.i.i, %if.then11.fold.split26.i.i, %if.then11.fold.split25.i.i, %if.then11.fold.split.i.i, %land.end.i._dpu_format_get_media_color_ubwc.exit.i_crit_edge
  %i.023.lcssa.i.i = phi i32 [ 0, %land.end.i._dpu_format_get_media_color_ubwc.exit.i_crit_edge ], [ 1, %if.then11.fold.split.i.i ], [ 2, %if.then11.fold.split25.i.i ], [ 3, %if.then11.fold.split26.i.i ], [ 4, %if.then11.fold.split27.i.i ], [ 5, %if.then11.fold.split28.i.i ], [ 6, %if.then11.fold.split29.i.i ]
  %color.i.i = getelementptr [7 x %struct.dpu_media_color_map], ptr @_dpu_format_get_media_color_ubwc.dpu_media_ubwc_map, i32 0, i32 %i.023.lcssa.i.i, i32 1
  %28 = ptrtoint ptr %color.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %color.i.i, align 4
  br label %if.end.i

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, ptr noundef nonnull %fmt) #6
  br label %return

if.end.i:                                         ; preds = %_dpu_format_get_media_color_ubwc.exit.i, %if.then1.i.i, %if.then.i.i.if.end.i_crit_edge
  %retval.0.i282.i = phi i32 [ %29, %_dpu_format_get_media_color_ubwc.exit.i ], [ 3, %if.then.i.i.if.end.i_crit_edge ], [ %..i.i, %if.then1.i.i ]
  %30 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flag, align 4
  %and1.i168.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i168.i)
  %tobool11.not.i = icmp eq i32 %and1.i168.i, 0
  br i1 %tobool11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i
  %32 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %w)
  %tobool.not.i169.i = icmp eq i32 %w, 0
  br i1 %tobool.not.i169.i, label %if.then12.i.VENUS_Y_STRIDE.exit.i_crit_edge, label %if.end.i.i

if.then12.i.VENUS_Y_STRIDE.exit.i_crit_edge:      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_Y_STRIDE.exit.i

if.end.i.i:                                       ; preds = %if.then12.i
  %33 = zext i32 %retval.0.i282.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %retval.0.i282.i, label %if.end.i.i.VENUS_Y_STRIDE.exit.i_crit_edge [
    i32 1, label %if.end.i.i.sw.bb.i.i_crit_edge
    i32 0, label %if.end.i.i.sw.bb.i.i_crit_edge88
    i32 2, label %if.end.i.i.sw.bb.i.i_crit_edge89
    i32 3, label %if.end.i.i.sw.bb.i.i_crit_edge90
    i32 4, label %sw.bb1.i.i
    i32 9, label %sw.bb9.i.i
    i32 10, label %sw.bb14.i.i
  ]

if.end.i.i.sw.bb.i.i_crit_edge90:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

if.end.i.i.sw.bb.i.i_crit_edge89:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

if.end.i.i.sw.bb.i.i_crit_edge88:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

if.end.i.i.sw.bb.i.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

if.end.i.i.VENUS_Y_STRIDE.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_Y_STRIDE.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i.i.sw.bb.i.i_crit_edge, %if.end.i.i.sw.bb.i.i_crit_edge88, %if.end.i.i.sw.bb.i.i_crit_edge89, %if.end.i.i.sw.bb.i.i_crit_edge90
  %sub.i.i = add nuw nsw i32 %w, 127
  %and.i.i = and i32 %sub.i.i, -128
  br label %VENUS_Y_STRIDE.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub3.i.i = add nuw nsw i32 %w, 191
  %.lhs.trunc67 = trunc i32 %sub3.i.i to i16
  %34 = urem i16 %.lhs.trunc67, 192
  %.zext68 = zext i16 %34 to i32
  %mul.i.i = sub nuw nsw i32 %sub3.i.i, %.zext68
  %mul4.i.i = shl nuw nsw i32 %mul.i.i, 2
  %div5.i.i = udiv i32 %mul4.i.i, 3
  %sub7.i.i = add nuw nsw i32 %div5.i.i, 255
  %and8.i.i = and i32 %sub7.i.i, -256
  br label %VENUS_Y_STRIDE.exit.i

sw.bb9.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul10.i.i = shl nuw nsw i32 %w, 1
  %sub12.i.i = add nuw nsw i32 %mul10.i.i, 255
  %and13.i.i = and i32 %sub12.i.i, -256
  br label %VENUS_Y_STRIDE.exit.i

sw.bb14.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul15.i.i = shl nuw nsw i32 %w, 1
  %sub17.i.i = add nuw nsw i32 %mul15.i.i, 127
  %and18.i.i = and i32 %sub17.i.i, -128
  br label %VENUS_Y_STRIDE.exit.i

VENUS_Y_STRIDE.exit.i:                            ; preds = %sw.bb14.i.i, %sw.bb9.i.i, %sw.bb1.i.i, %sw.bb.i.i, %if.end.i.i.VENUS_Y_STRIDE.exit.i_crit_edge, %if.then12.i.VENUS_Y_STRIDE.exit.i_crit_edge
  %retval.0.i283.i = phi i32 [ %retval.0.i282.i, %if.then12.i.VENUS_Y_STRIDE.exit.i_crit_edge ], [ %retval.0.i282.i, %if.end.i.i.VENUS_Y_STRIDE.exit.i_crit_edge ], [ 10, %sw.bb14.i.i ], [ 9, %sw.bb9.i.i ], [ 4, %sw.bb1.i.i ], [ %retval.0.i282.i, %sw.bb.i.i ]
  %retval.0.i170.i = phi i32 [ 0, %if.then12.i.VENUS_Y_STRIDE.exit.i_crit_edge ], [ 0, %if.end.i.i.VENUS_Y_STRIDE.exit.i_crit_edge ], [ %and18.i.i, %sw.bb14.i.i ], [ %and13.i.i, %sw.bb9.i.i ], [ %and8.i.i, %sw.bb1.i.i ], [ %and.i.i, %sw.bb.i.i ]
  %plane_pitch.i = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 7
  %35 = ptrtoint ptr %plane_pitch.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i170.i, ptr %plane_pitch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h)
  %tobool.not.i171.i = icmp eq i32 %h, 0
  br i1 %tobool.not.i171.i, label %VENUS_Y_STRIDE.exit.i.VENUS_Y_SCANLINES.exit.i_crit_edge, label %if.end.i172.i

VENUS_Y_STRIDE.exit.i.VENUS_Y_SCANLINES.exit.i_crit_edge: ; preds = %VENUS_Y_STRIDE.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_Y_SCANLINES.exit.i

if.end.i172.i:                                    ; preds = %VENUS_Y_STRIDE.exit.i
  %36 = zext i32 %retval.0.i283.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %retval.0.i283.i, label %if.end.i172.i.VENUS_Y_SCANLINES.exit.i_crit_edge [
    i32 1, label %if.end.i172.i.sw.bb.i175.i_crit_edge
    i32 0, label %if.end.i172.i.sw.bb.i175.i_crit_edge91
    i32 2, label %if.end.i172.i.sw.bb.i175.i_crit_edge92
    i32 3, label %if.end.i172.i.sw.bb.i175.i_crit_edge93
    i32 10, label %if.end.i172.i.sw.bb.i175.i_crit_edge94
    i32 4, label %if.end.i172.i.sw.bb1.i177.i_crit_edge
    i32 9, label %if.end.i172.i.sw.bb1.i177.i_crit_edge95
  ]

if.end.i172.i.sw.bb1.i177.i_crit_edge95:          ; preds = %if.end.i172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i177.i

if.end.i172.i.sw.bb1.i177.i_crit_edge:            ; preds = %if.end.i172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i177.i

if.end.i172.i.sw.bb.i175.i_crit_edge94:           ; preds = %if.end.i172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i175.i

if.end.i172.i.sw.bb.i175.i_crit_edge93:           ; preds = %if.end.i172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i175.i

if.end.i172.i.sw.bb.i175.i_crit_edge92:           ; preds = %if.end.i172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i175.i

if.end.i172.i.sw.bb.i175.i_crit_edge91:           ; preds = %if.end.i172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i175.i

if.end.i172.i.sw.bb.i175.i_crit_edge:             ; preds = %if.end.i172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i175.i

if.end.i172.i.VENUS_Y_SCANLINES.exit.i_crit_edge: ; preds = %if.end.i172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_Y_SCANLINES.exit.i

sw.bb.i175.i:                                     ; preds = %if.end.i172.i.sw.bb.i175.i_crit_edge, %if.end.i172.i.sw.bb.i175.i_crit_edge91, %if.end.i172.i.sw.bb.i175.i_crit_edge92, %if.end.i172.i.sw.bb.i175.i_crit_edge93, %if.end.i172.i.sw.bb.i175.i_crit_edge94
  %sub.i173.i = add nuw nsw i32 %h, 31
  %and.i174.i = and i32 %sub.i173.i, -32
  br label %VENUS_Y_SCANLINES.exit.i

sw.bb1.i177.i:                                    ; preds = %if.end.i172.i.sw.bb1.i177.i_crit_edge, %if.end.i172.i.sw.bb1.i177.i_crit_edge95
  %sub3.i176.i = add nuw nsw i32 %h, 15
  %and4.i.i = and i32 %sub3.i176.i, -16
  br label %VENUS_Y_SCANLINES.exit.i

VENUS_Y_SCANLINES.exit.i:                         ; preds = %sw.bb1.i177.i, %sw.bb.i175.i, %if.end.i172.i.VENUS_Y_SCANLINES.exit.i_crit_edge, %VENUS_Y_STRIDE.exit.i.VENUS_Y_SCANLINES.exit.i_crit_edge
  %retval.0.i178.i = phi i32 [ 0, %VENUS_Y_STRIDE.exit.i.VENUS_Y_SCANLINES.exit.i_crit_edge ], [ 0, %if.end.i172.i.VENUS_Y_SCANLINES.exit.i_crit_edge ], [ %and4.i.i, %sw.bb1.i177.i ], [ %and.i174.i, %sw.bb.i175.i ]
  %mul.i = mul nuw nsw i32 %retval.0.i178.i, %retval.0.i170.i
  %sub.i = add nuw nsw i32 %mul.i, 4095
  %and.i = and i32 %sub.i, -4096
  %plane_size.i = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6
  %37 = ptrtoint ptr %plane_size.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i, ptr %plane_size.i, align 4
  br i1 %tobool.not.i169.i, label %VENUS_Y_SCANLINES.exit.i.VENUS_UV_STRIDE.exit.i_crit_edge, label %if.end.i180.i

VENUS_Y_SCANLINES.exit.i.VENUS_UV_STRIDE.exit.i_crit_edge: ; preds = %VENUS_Y_SCANLINES.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_UV_STRIDE.exit.i

if.end.i180.i:                                    ; preds = %VENUS_Y_SCANLINES.exit.i
  %38 = zext i32 %retval.0.i283.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %retval.0.i283.i, label %if.end.i180.i.VENUS_UV_STRIDE.exit.i_crit_edge [
    i32 1, label %if.end.i180.i.sw.bb.i183.i_crit_edge
    i32 0, label %if.end.i180.i.sw.bb.i183.i_crit_edge96
    i32 2, label %if.end.i180.i.sw.bb.i183.i_crit_edge97
    i32 3, label %if.end.i180.i.sw.bb.i183.i_crit_edge98
    i32 4, label %sw.bb1.i190.i
    i32 9, label %sw.bb9.i194.i
    i32 10, label %sw.bb14.i198.i
  ]

if.end.i180.i.sw.bb.i183.i_crit_edge98:           ; preds = %if.end.i180.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i183.i

if.end.i180.i.sw.bb.i183.i_crit_edge97:           ; preds = %if.end.i180.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i183.i

if.end.i180.i.sw.bb.i183.i_crit_edge96:           ; preds = %if.end.i180.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i183.i

if.end.i180.i.sw.bb.i183.i_crit_edge:             ; preds = %if.end.i180.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i183.i

if.end.i180.i.VENUS_UV_STRIDE.exit.i_crit_edge:   ; preds = %if.end.i180.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_UV_STRIDE.exit.i

sw.bb.i183.i:                                     ; preds = %if.end.i180.i.sw.bb.i183.i_crit_edge, %if.end.i180.i.sw.bb.i183.i_crit_edge96, %if.end.i180.i.sw.bb.i183.i_crit_edge97, %if.end.i180.i.sw.bb.i183.i_crit_edge98
  %sub.i181.i = add nuw nsw i32 %w, 127
  %and.i182.i = and i32 %sub.i181.i, -128
  br label %VENUS_UV_STRIDE.exit.i

sw.bb1.i190.i:                                    ; preds = %if.end.i180.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub3.i184.i = add nuw nsw i32 %w, 191
  %.lhs.trunc65 = trunc i32 %sub3.i184.i to i16
  %39 = urem i16 %.lhs.trunc65, 192
  %.zext66 = zext i16 %39 to i32
  %mul.i185.i = sub nuw nsw i32 %sub3.i184.i, %.zext66
  %mul4.i186.i = shl nuw nsw i32 %mul.i185.i, 2
  %div5.i187.i = udiv i32 %mul4.i186.i, 3
  %sub7.i188.i = add nuw nsw i32 %div5.i187.i, 255
  %and8.i189.i = and i32 %sub7.i188.i, -256
  br label %VENUS_UV_STRIDE.exit.i

sw.bb9.i194.i:                                    ; preds = %if.end.i180.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul10.i191.i = shl nuw nsw i32 %w, 1
  %sub12.i192.i = add nuw nsw i32 %mul10.i191.i, 255
  %and13.i193.i = and i32 %sub12.i192.i, -256
  br label %VENUS_UV_STRIDE.exit.i

sw.bb14.i198.i:                                   ; preds = %if.end.i180.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul15.i195.i = shl nuw nsw i32 %w, 1
  %sub17.i196.i = add nuw nsw i32 %mul15.i195.i, 127
  %and18.i197.i = and i32 %sub17.i196.i, -128
  br label %VENUS_UV_STRIDE.exit.i

VENUS_UV_STRIDE.exit.i:                           ; preds = %sw.bb14.i198.i, %sw.bb9.i194.i, %sw.bb1.i190.i, %sw.bb.i183.i, %if.end.i180.i.VENUS_UV_STRIDE.exit.i_crit_edge, %VENUS_Y_SCANLINES.exit.i.VENUS_UV_STRIDE.exit.i_crit_edge
  %retval.0.i285.i = phi i32 [ %retval.0.i283.i, %VENUS_Y_SCANLINES.exit.i.VENUS_UV_STRIDE.exit.i_crit_edge ], [ %retval.0.i283.i, %if.end.i180.i.VENUS_UV_STRIDE.exit.i_crit_edge ], [ 10, %sw.bb14.i198.i ], [ 9, %sw.bb9.i194.i ], [ 4, %sw.bb1.i190.i ], [ %retval.0.i283.i, %sw.bb.i183.i ]
  %retval.0.i199.i = phi i32 [ 0, %VENUS_Y_SCANLINES.exit.i.VENUS_UV_STRIDE.exit.i_crit_edge ], [ 0, %if.end.i180.i.VENUS_UV_STRIDE.exit.i_crit_edge ], [ %and18.i197.i, %sw.bb14.i198.i ], [ %and13.i193.i, %sw.bb9.i194.i ], [ %and8.i189.i, %sw.bb1.i190.i ], [ %and.i182.i, %sw.bb.i183.i ]
  %arrayidx21.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i199.i, ptr %arrayidx21.i, align 4
  br i1 %tobool.not.i171.i, label %VENUS_UV_STRIDE.exit.i.VENUS_UV_SCANLINES.exit.i_crit_edge, label %if.end.i201.i

VENUS_UV_STRIDE.exit.i.VENUS_UV_SCANLINES.exit.i_crit_edge: ; preds = %VENUS_UV_STRIDE.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_UV_SCANLINES.exit.i

if.end.i201.i:                                    ; preds = %VENUS_UV_STRIDE.exit.i
  %41 = zext i32 %retval.0.i285.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %retval.0.i285.i, label %if.end.i201.i.VENUS_UV_SCANLINES.exit.i_crit_edge [
    i32 1, label %if.end.i201.i.sw.bb.i205.i_crit_edge
    i32 0, label %if.end.i201.i.sw.bb.i205.i_crit_edge99
    i32 2, label %if.end.i201.i.sw.bb.i205.i_crit_edge100
    i32 4, label %if.end.i201.i.sw.bb.i205.i_crit_edge101
    i32 9, label %if.end.i201.i.sw.bb.i205.i_crit_edge102
    i32 10, label %if.end.i201.i.sw.bb.i205.i_crit_edge103
    i32 3, label %sw.bb2.i.i
  ]

if.end.i201.i.sw.bb.i205.i_crit_edge103:          ; preds = %if.end.i201.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i205.i

if.end.i201.i.sw.bb.i205.i_crit_edge102:          ; preds = %if.end.i201.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i205.i

if.end.i201.i.sw.bb.i205.i_crit_edge101:          ; preds = %if.end.i201.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i205.i

if.end.i201.i.sw.bb.i205.i_crit_edge100:          ; preds = %if.end.i201.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i205.i

if.end.i201.i.sw.bb.i205.i_crit_edge99:           ; preds = %if.end.i201.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i205.i

if.end.i201.i.sw.bb.i205.i_crit_edge:             ; preds = %if.end.i201.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i205.i

if.end.i201.i.VENUS_UV_SCANLINES.exit.i_crit_edge: ; preds = %if.end.i201.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_UV_SCANLINES.exit.i

sw.bb.i205.i:                                     ; preds = %if.end.i201.i.sw.bb.i205.i_crit_edge, %if.end.i201.i.sw.bb.i205.i_crit_edge99, %if.end.i201.i.sw.bb.i205.i_crit_edge100, %if.end.i201.i.sw.bb.i205.i_crit_edge101, %if.end.i201.i.sw.bb.i205.i_crit_edge102, %if.end.i201.i.sw.bb.i205.i_crit_edge103
  %add.i.i = add nuw nsw i32 %h, 1
  %shr.i202.i63 = lshr i32 %add.i.i, 1
  %sub.i203.i = add nuw nsw i32 %shr.i202.i63, 15
  %and.i204.i = and i32 %sub.i203.i, 2147483632
  br label %VENUS_UV_SCANLINES.exit.i

sw.bb2.i.i:                                       ; preds = %if.end.i201.i
  call void @__sanitizer_cov_trace_pc() #8
  %add3.i.i = add nuw nsw i32 %h, 1
  %shr4.i.i64 = lshr i32 %add3.i.i, 1
  %sub6.i.i = add nuw nsw i32 %shr4.i.i64, 31
  %and7.i.i = and i32 %sub6.i.i, 2147483616
  br label %VENUS_UV_SCANLINES.exit.i

VENUS_UV_SCANLINES.exit.i:                        ; preds = %sw.bb2.i.i, %sw.bb.i205.i, %if.end.i201.i.VENUS_UV_SCANLINES.exit.i_crit_edge, %VENUS_UV_STRIDE.exit.i.VENUS_UV_SCANLINES.exit.i_crit_edge
  %retval.0.i286.i = phi i32 [ %retval.0.i285.i, %VENUS_UV_STRIDE.exit.i.VENUS_UV_SCANLINES.exit.i_crit_edge ], [ %retval.0.i285.i, %if.end.i201.i.VENUS_UV_SCANLINES.exit.i_crit_edge ], [ 3, %sw.bb2.i.i ], [ %retval.0.i285.i, %sw.bb.i205.i ]
  %retval.0.i206.i = phi i32 [ 0, %VENUS_UV_STRIDE.exit.i.VENUS_UV_SCANLINES.exit.i_crit_edge ], [ 0, %if.end.i201.i.VENUS_UV_SCANLINES.exit.i_crit_edge ], [ %and7.i.i, %sw.bb2.i.i ], [ %and.i204.i, %sw.bb.i205.i ]
  %mul25.i = mul nuw nsw i32 %retval.0.i206.i, %retval.0.i199.i
  %sub27.i = add nuw nsw i32 %mul25.i, 4095
  %and28.i = and i32 %sub27.i, -4096
  %arrayidx30.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6, i32 1
  %42 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and28.i, ptr %arrayidx30.i, align 4
  br i1 %tobool.i.not, label %VENUS_UV_SCANLINES.exit.i.done.i_crit_edge, label %if.end33.i

VENUS_UV_SCANLINES.exit.i.done.i_crit_edge:       ; preds = %VENUS_UV_SCANLINES.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.i

if.end33.i:                                       ; preds = %VENUS_UV_SCANLINES.exit.i
  %43 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %12, align 4
  br i1 %tobool.not.i169.i, label %if.end33.i.VENUS_Y_META_STRIDE.exit.i_crit_edge, label %if.end.i208.i

if.end33.i.VENUS_Y_META_STRIDE.exit.i_crit_edge:  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_Y_META_STRIDE.exit.i

if.end.i208.i:                                    ; preds = %if.end33.i
  %44 = zext i32 %retval.0.i286.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %retval.0.i286.i, label %if.end.i208.i.VENUS_Y_META_STRIDE.exit.i_crit_edge [
    i32 3, label %if.end.i208.i.sw.epilog.i.i_crit_edge
    i32 9, label %if.end.i208.i.sw.epilog.i.i_crit_edge104
    i32 4, label %sw.bb1.i209.i
  ]

if.end.i208.i.sw.epilog.i.i_crit_edge104:         ; preds = %if.end.i208.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

if.end.i208.i.sw.epilog.i.i_crit_edge:            ; preds = %if.end.i208.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

if.end.i208.i.VENUS_Y_META_STRIDE.exit.i_crit_edge: ; preds = %if.end.i208.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_Y_META_STRIDE.exit.i

sw.bb1.i209.i:                                    ; preds = %if.end.i208.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i209.i, %if.end.i208.i.sw.epilog.i.i_crit_edge, %if.end.i208.i.sw.epilog.i.i_crit_edge104
  %y_tile_width.0.i.i = phi i32 [ 48, %sw.bb1.i209.i ], [ 32, %if.end.i208.i.sw.epilog.i.i_crit_edge ], [ 32, %if.end.i208.i.sw.epilog.i.i_crit_edge104 ]
  %sub.i210.i = add nuw nsw i32 %w, 65535
  %add.i211.i = add nuw nsw i32 %sub.i210.i, %y_tile_width.0.i.i
  %div.i.i61.lhs.trunc = trunc i32 %add.i211.i to i16
  %div.i.i61.rhs.trunc = trunc i32 %y_tile_width.0.i.i to i16
  %div.i.i6162 = udiv i16 %div.i.i61.lhs.trunc, %div.i.i61.rhs.trunc
  %narrow = add nuw nsw i16 %div.i.i6162, 63
  %45 = and i16 %narrow, 4032
  %and.i213.i = zext i16 %45 to i32
  br label %VENUS_Y_META_STRIDE.exit.i

VENUS_Y_META_STRIDE.exit.i:                       ; preds = %sw.epilog.i.i, %if.end.i208.i.VENUS_Y_META_STRIDE.exit.i_crit_edge, %if.end33.i.VENUS_Y_META_STRIDE.exit.i_crit_edge
  %retval.0.i214.i = phi i32 [ %and.i213.i, %sw.epilog.i.i ], [ 0, %if.end33.i.VENUS_Y_META_STRIDE.exit.i_crit_edge ], [ 0, %if.end.i208.i.VENUS_Y_META_STRIDE.exit.i_crit_edge ]
  %arrayidx38.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 7, i32 2
  %46 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %retval.0.i214.i, ptr %arrayidx38.i, align 4
  br i1 %tobool.not.i171.i, label %VENUS_Y_META_STRIDE.exit.i.VENUS_Y_META_SCANLINES.exit.i_crit_edge, label %if.end.i216.i

VENUS_Y_META_STRIDE.exit.i.VENUS_Y_META_SCANLINES.exit.i_crit_edge: ; preds = %VENUS_Y_META_STRIDE.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_Y_META_SCANLINES.exit.i

if.end.i216.i:                                    ; preds = %VENUS_Y_META_STRIDE.exit.i
  %47 = zext i32 %retval.0.i286.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %retval.0.i286.i, label %if.end.i216.i.VENUS_Y_META_SCANLINES.exit.i_crit_edge [
    i32 3, label %if.end.i216.i.sw.epilog.i223.i_crit_edge
    i32 4, label %if.end.i216.i.sw.bb1.i217.i_crit_edge
    i32 9, label %if.end.i216.i.sw.bb1.i217.i_crit_edge105
  ]

if.end.i216.i.sw.bb1.i217.i_crit_edge105:         ; preds = %if.end.i216.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i217.i

if.end.i216.i.sw.bb1.i217.i_crit_edge:            ; preds = %if.end.i216.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i217.i

if.end.i216.i.sw.epilog.i223.i_crit_edge:         ; preds = %if.end.i216.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i223.i

if.end.i216.i.VENUS_Y_META_SCANLINES.exit.i_crit_edge: ; preds = %if.end.i216.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_Y_META_SCANLINES.exit.i

sw.bb1.i217.i:                                    ; preds = %if.end.i216.i.sw.bb1.i217.i_crit_edge, %if.end.i216.i.sw.bb1.i217.i_crit_edge105
  br label %sw.epilog.i223.i

sw.epilog.i223.i:                                 ; preds = %sw.bb1.i217.i, %if.end.i216.i.sw.epilog.i223.i_crit_edge
  %y_tile_height.0.i.i = phi i32 [ 4, %sw.bb1.i217.i ], [ 8, %if.end.i216.i.sw.epilog.i223.i_crit_edge ]
  %sub.i218.i = add nuw nsw i32 %h, 65535
  %add.i219.i = add nuw nsw i32 %sub.i218.i, %y_tile_height.0.i.i
  %div.i220.i59.lhs.trunc = trunc i32 %add.i219.i to i16
  %div.i220.i59.rhs.trunc = trunc i32 %y_tile_height.0.i.i to i16
  %div.i220.i5960 = udiv i16 %div.i220.i59.lhs.trunc, %div.i220.i59.rhs.trunc
  %div.i220.i59.zext = zext i16 %div.i220.i5960 to i32
  %sub3.i221.i = add nuw nsw i32 %div.i220.i59.zext, 15
  %and.i222.i = and i32 %sub3.i221.i, 131056
  br label %VENUS_Y_META_SCANLINES.exit.i

VENUS_Y_META_SCANLINES.exit.i:                    ; preds = %sw.epilog.i223.i, %if.end.i216.i.VENUS_Y_META_SCANLINES.exit.i_crit_edge, %VENUS_Y_META_STRIDE.exit.i.VENUS_Y_META_SCANLINES.exit.i_crit_edge
  %retval.0.i224.i = phi i32 [ %and.i222.i, %sw.epilog.i223.i ], [ 0, %VENUS_Y_META_STRIDE.exit.i.VENUS_Y_META_SCANLINES.exit.i_crit_edge ], [ 0, %if.end.i216.i.VENUS_Y_META_SCANLINES.exit.i_crit_edge ]
  %mul42.i = mul nuw nsw i32 %retval.0.i224.i, %retval.0.i214.i
  %sub44.i = add nuw nsw i32 %mul42.i, 4095
  %and45.i = and i32 %sub44.i, 2147479552
  %arrayidx47.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6, i32 2
  %48 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and45.i, ptr %arrayidx47.i, align 4
  br i1 %tobool.not.i169.i, label %VENUS_Y_META_SCANLINES.exit.i.VENUS_UV_META_STRIDE.exit.i_crit_edge, label %if.end.i226.i

VENUS_Y_META_SCANLINES.exit.i.VENUS_UV_META_STRIDE.exit.i_crit_edge: ; preds = %VENUS_Y_META_SCANLINES.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_UV_META_STRIDE.exit.i

if.end.i226.i:                                    ; preds = %VENUS_Y_META_SCANLINES.exit.i
  %49 = zext i32 %retval.0.i286.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %retval.0.i286.i, label %if.end.i226.i.VENUS_UV_META_STRIDE.exit.i_crit_edge [
    i32 3, label %if.end.i226.i.sw.epilog.i233.i_crit_edge
    i32 9, label %if.end.i226.i.sw.epilog.i233.i_crit_edge106
    i32 4, label %sw.bb1.i227.i
  ]

if.end.i226.i.sw.epilog.i233.i_crit_edge106:      ; preds = %if.end.i226.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i233.i

if.end.i226.i.sw.epilog.i233.i_crit_edge:         ; preds = %if.end.i226.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i233.i

if.end.i226.i.VENUS_UV_META_STRIDE.exit.i_crit_edge: ; preds = %if.end.i226.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_UV_META_STRIDE.exit.i

sw.bb1.i227.i:                                    ; preds = %if.end.i226.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i233.i

sw.epilog.i233.i:                                 ; preds = %sw.bb1.i227.i, %if.end.i226.i.sw.epilog.i233.i_crit_edge, %if.end.i226.i.sw.epilog.i233.i_crit_edge106
  %uv_tile_width.0.i.i = phi i32 [ 24, %sw.bb1.i227.i ], [ 16, %if.end.i226.i.sw.epilog.i233.i_crit_edge ], [ 16, %if.end.i226.i.sw.epilog.i233.i_crit_edge106 ]
  %add.i228.i = add nuw nsw i32 %w, 1
  %shr.i229.i56 = lshr i32 %add.i228.i, 1
  %sub.i230.i = add nuw nsw i32 %shr.i229.i56, 65535
  %add2.i.i = add nuw nsw i32 %sub.i230.i, %uv_tile_width.0.i.i
  %div.i231.i57.lhs.trunc = trunc i32 %add2.i.i to i16
  %div.i231.i57.rhs.trunc = trunc i32 %uv_tile_width.0.i.i to i16
  %div.i231.i5758 = udiv i16 %div.i231.i57.lhs.trunc, %div.i231.i57.rhs.trunc
  %narrow73 = add nuw nsw i16 %div.i231.i5758, 63
  %50 = and i16 %narrow73, 8128
  %and.i232.i = zext i16 %50 to i32
  br label %VENUS_UV_META_STRIDE.exit.i

VENUS_UV_META_STRIDE.exit.i:                      ; preds = %sw.epilog.i233.i, %if.end.i226.i.VENUS_UV_META_STRIDE.exit.i_crit_edge, %VENUS_Y_META_SCANLINES.exit.i.VENUS_UV_META_STRIDE.exit.i_crit_edge
  %retval.0.i234.i = phi i32 [ %and.i232.i, %sw.epilog.i233.i ], [ 0, %VENUS_Y_META_SCANLINES.exit.i.VENUS_UV_META_STRIDE.exit.i_crit_edge ], [ 0, %if.end.i226.i.VENUS_UV_META_STRIDE.exit.i_crit_edge ]
  %arrayidx50.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 7, i32 3
  %51 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %retval.0.i234.i, ptr %arrayidx50.i, align 4
  br i1 %tobool.not.i171.i, label %VENUS_UV_META_STRIDE.exit.i.VENUS_UV_META_SCANLINES.exit.i_crit_edge, label %if.end.i236.i

VENUS_UV_META_STRIDE.exit.i.VENUS_UV_META_SCANLINES.exit.i_crit_edge: ; preds = %VENUS_UV_META_STRIDE.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_UV_META_SCANLINES.exit.i

if.end.i236.i:                                    ; preds = %VENUS_UV_META_STRIDE.exit.i
  %52 = zext i32 %retval.0.i286.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %retval.0.i286.i, label %if.end.i236.i.VENUS_UV_META_SCANLINES.exit.i_crit_edge [
    i32 3, label %if.end.i236.i.sw.epilog.i245.i_crit_edge
    i32 4, label %if.end.i236.i.sw.bb1.i237.i_crit_edge
    i32 9, label %if.end.i236.i.sw.bb1.i237.i_crit_edge107
  ]

if.end.i236.i.sw.bb1.i237.i_crit_edge107:         ; preds = %if.end.i236.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i237.i

if.end.i236.i.sw.bb1.i237.i_crit_edge:            ; preds = %if.end.i236.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i237.i

if.end.i236.i.sw.epilog.i245.i_crit_edge:         ; preds = %if.end.i236.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i245.i

if.end.i236.i.VENUS_UV_META_SCANLINES.exit.i_crit_edge: ; preds = %if.end.i236.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_UV_META_SCANLINES.exit.i

sw.bb1.i237.i:                                    ; preds = %if.end.i236.i.sw.bb1.i237.i_crit_edge, %if.end.i236.i.sw.bb1.i237.i_crit_edge107
  br label %sw.epilog.i245.i

sw.epilog.i245.i:                                 ; preds = %sw.bb1.i237.i, %if.end.i236.i.sw.epilog.i245.i_crit_edge
  %uv_tile_height.0.i.i = phi i32 [ 4, %sw.bb1.i237.i ], [ 8, %if.end.i236.i.sw.epilog.i245.i_crit_edge ]
  %add.i238.i = add nuw nsw i32 %h, 1
  %shr.i239.i53 = lshr i32 %add.i238.i, 1
  %sub.i240.i = add nuw nsw i32 %shr.i239.i53, 65535
  %add2.i241.i = add nuw nsw i32 %sub.i240.i, %uv_tile_height.0.i.i
  %div.i242.i54.lhs.trunc = trunc i32 %add2.i241.i to i16
  %div.i242.i54.rhs.trunc = trunc i32 %uv_tile_height.0.i.i to i16
  %div.i242.i5455 = udiv i16 %div.i242.i54.lhs.trunc, %div.i242.i54.rhs.trunc
  %div.i242.i54.zext = zext i16 %div.i242.i5455 to i32
  %sub4.i243.i = add nuw nsw i32 %div.i242.i54.zext, 15
  %and.i244.i = and i32 %sub4.i243.i, 131056
  br label %VENUS_UV_META_SCANLINES.exit.i

VENUS_UV_META_SCANLINES.exit.i:                   ; preds = %sw.epilog.i245.i, %if.end.i236.i.VENUS_UV_META_SCANLINES.exit.i_crit_edge, %VENUS_UV_META_STRIDE.exit.i.VENUS_UV_META_SCANLINES.exit.i_crit_edge
  %retval.0.i246.i = phi i32 [ %and.i244.i, %sw.epilog.i245.i ], [ 0, %VENUS_UV_META_STRIDE.exit.i.VENUS_UV_META_SCANLINES.exit.i_crit_edge ], [ 0, %if.end.i236.i.VENUS_UV_META_SCANLINES.exit.i_crit_edge ]
  %mul54.i = mul nuw nsw i32 %retval.0.i246.i, %retval.0.i234.i
  %sub56.i = add nuw nsw i32 %mul54.i, 4095
  %and57.i = and i32 %sub56.i, 2147479552
  %arrayidx59.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6, i32 3
  %53 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and57.i, ptr %arrayidx59.i, align 4
  br label %done.i

if.else.i:                                        ; preds = %if.end.i
  %54 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %w)
  %tobool.not.i247.i = icmp eq i32 %w, 0
  br i1 %tobool.not.i247.i, label %if.else.i.VENUS_RGB_STRIDE.exit.i_crit_edge, label %if.end.i248.i

if.else.i.VENUS_RGB_STRIDE.exit.i_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_RGB_STRIDE.exit.i

if.end.i248.i:                                    ; preds = %if.else.i
  %switch.tableidx = add i32 %retval.0.i282.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %55 = icmp ult i32 %switch.tableidx, 4
  br i1 %55, label %switch.lookup, label %if.end.i248.i.VENUS_RGB_STRIDE.exit.i_crit_edge

if.end.i248.i.VENUS_RGB_STRIDE.exit.i_crit_edge:  ; preds = %if.end.i248.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_RGB_STRIDE.exit.i

switch.lookup:                                    ; preds = %if.end.i248.i
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.dpu_format_get_plane_sizes, i32 0, i32 %switch.tableidx
  %56 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %56)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep76 = getelementptr inbounds [4 x i32], ptr @switch.table.dpu_format_get_plane_sizes.19, i32 0, i32 %switch.tableidx
  %57 = ptrtoint ptr %switch.gep76 to i32
  call void @__asan_load4_noabort(i32 %57)
  %switch.load77 = load i32, ptr %switch.gep76, align 4
  %58 = tail call i32 @llvm.ctpop.i32(i32 %switch.load) #6, !range !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %tobool3.not.i.i = icmp ult i32 %58, 2
  %mul6.i.i = mul nuw nsw i32 %switch.load77, %w
  %add7.i.i = add nsw i32 %switch.load, -1
  %sub8.i.i = add nuw nsw i32 %add7.i.i, %mul6.i.i
  br i1 %tobool3.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %59 = urem i32 %sub8.i.i, %switch.load
  %mul5.i.i = sub nsw i32 %sub8.i.i, %59
  br label %VENUS_RGB_STRIDE.exit.i

cond.false.i.i:                                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %neg.i.i = sub nsw i32 0, %switch.load
  %and10.i.i = and i32 %sub8.i.i, %neg.i.i
  br label %VENUS_RGB_STRIDE.exit.i

VENUS_RGB_STRIDE.exit.i:                          ; preds = %cond.false.i.i, %cond.true.i.i, %if.end.i248.i.VENUS_RGB_STRIDE.exit.i_crit_edge, %if.else.i.VENUS_RGB_STRIDE.exit.i_crit_edge
  %retval.0.i252.i = phi i32 [ 0, %if.else.i.VENUS_RGB_STRIDE.exit.i_crit_edge ], [ 0, %if.end.i248.i.VENUS_RGB_STRIDE.exit.i_crit_edge ], [ %mul5.i.i, %cond.true.i.i ], [ %and10.i.i, %cond.false.i.i ]
  %plane_pitch65.i = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 7
  %60 = ptrtoint ptr %plane_pitch65.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %retval.0.i252.i, ptr %plane_pitch65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h)
  %tobool.not.i253.i = icmp eq i32 %h, 0
  br i1 %tobool.not.i253.i, label %VENUS_RGB_STRIDE.exit.i.VENUS_RGB_SCANLINES.exit.i_crit_edge, label %if.end.i254.i

VENUS_RGB_STRIDE.exit.i.VENUS_RGB_SCANLINES.exit.i_crit_edge: ; preds = %VENUS_RGB_STRIDE.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_RGB_SCANLINES.exit.i

if.end.i254.i:                                    ; preds = %VENUS_RGB_STRIDE.exit.i
  %switch.tableidx79 = add i32 %retval.0.i282.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx79)
  %61 = icmp ult i32 %switch.tableidx79, 4
  br i1 %61, label %switch.lookup78, label %if.end.i254.i.VENUS_RGB_SCANLINES.exit.i_crit_edge

if.end.i254.i.VENUS_RGB_SCANLINES.exit.i_crit_edge: ; preds = %if.end.i254.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %VENUS_RGB_SCANLINES.exit.i

switch.lookup78:                                  ; preds = %if.end.i254.i
  %switch.gep80 = getelementptr inbounds [4 x i32], ptr @switch.table.dpu_format_get_plane_sizes.20, i32 0, i32 %switch.tableidx79
  %62 = ptrtoint ptr %switch.gep80 to i32
  call void @__asan_load4_noabort(i32 %62)
  %switch.load81 = load i32, ptr %switch.gep80, align 4
  %63 = tail call i32 @llvm.ctpop.i32(i32 %switch.load81) #6, !range !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %tobool2.not.i257.i = icmp ult i32 %63, 2
  %add4.i.i = add nsw i32 %h, -1
  %sub5.i.i = add nuw nsw i32 %add4.i.i, %switch.load81
  br i1 %tobool2.not.i257.i, label %cond.false.i263.i, label %cond.true.i260.i

cond.true.i260.i:                                 ; preds = %switch.lookup78
  call void @__sanitizer_cov_trace_pc() #8
  %.lhs.trunc = trunc i32 %sub5.i.i to i16
  %.rhs.trunc = trunc i32 %switch.load81 to i16
  %64 = urem i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext i16 %64 to i32
  %mul.i259.i = sub nsw i32 %sub5.i.i, %.zext
  br label %VENUS_RGB_SCANLINES.exit.i

cond.false.i263.i:                                ; preds = %switch.lookup78
  call void @__sanitizer_cov_trace_pc() #8
  %neg.i261.i = sub nsw i32 0, %switch.load81
  %and7.i262.i = and i32 %sub5.i.i, %neg.i261.i
  br label %VENUS_RGB_SCANLINES.exit.i

VENUS_RGB_SCANLINES.exit.i:                       ; preds = %cond.false.i263.i, %cond.true.i260.i, %if.end.i254.i.VENUS_RGB_SCANLINES.exit.i_crit_edge, %VENUS_RGB_STRIDE.exit.i.VENUS_RGB_SCANLINES.exit.i_crit_edge
  %retval.0.i264.i = phi i32 [ 0, %VENUS_RGB_STRIDE.exit.i.VENUS_RGB_SCANLINES.exit.i_crit_edge ], [ 0, %if.end.i254.i.VENUS_RGB_SCANLINES.exit.i_crit_edge ], [ %mul.i259.i, %cond.true.i260.i ], [ %and7.i262.i, %cond.false.i263.i ]
  %mul70.i = mul nsw i32 %retval.0.i264.i, %retval.0.i252.i
  %sub72.i = add nsw i32 %mul70.i, 4095
  %and73.i = and i32 %sub72.i, -4096
  %plane_size74.i = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6
  %65 = ptrtoint ptr %plane_size74.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and73.i, ptr %plane_size74.i, align 4
  br i1 %tobool.i.not, label %VENUS_RGB_SCANLINES.exit.i.done.i_crit_edge, label %if.end78.i

VENUS_RGB_SCANLINES.exit.i.done.i_crit_edge:      ; preds = %VENUS_RGB_SCANLINES.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.i

if.end78.i:                                       ; preds = %VENUS_RGB_SCANLINES.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 3, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %w)
  %tobool.not.i265.i = icmp ne i32 %w, 0
  %color_fmt.off.i.i = add nsw i32 %retval.0.i282.i, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %color_fmt.off.i.i)
  %switch.i.i = icmp ult i32 %color_fmt.off.i.i, 3
  %or.cond.i.i = and i1 %tobool.not.i265.i, %switch.i.i
  %div.i267.i49.lhs.trunc = add nuw nsw i32 %w, 15
  %div.i267.i495074 = lshr i32 %div.i267.i49.lhs.trunc, 4
  %sub.i268.i = add nuw nsw i32 %div.i267.i495074, 63
  %and.i269.i = and i32 %sub.i268.i, 8128
  %retval.0.i270.i = select i1 %or.cond.i.i, i32 %and.i269.i, i32 0
  %arrayidx83.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 7, i32 2
  %67 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %retval.0.i270.i, ptr %arrayidx83.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h)
  %tobool.not.i271.i = icmp ne i32 %h, 0
  %or.cond.i274.i = and i1 %tobool.not.i271.i, %switch.i.i
  %div.i276.i51.lhs.trunc = add nuw nsw i32 %h, 3
  %div.i276.i515275 = lshr i32 %div.i276.i51.lhs.trunc, 2
  %sub.i277.i = add nuw nsw i32 %div.i276.i515275, 15
  %and.i278.i = and i32 %sub.i277.i, 32752
  %retval.0.i279.i = select i1 %or.cond.i274.i, i32 %and.i278.i, i32 0
  %mul87.i = mul nuw nsw i32 %retval.0.i270.i, %retval.0.i279.i
  %sub89.i = add nuw nsw i32 %mul87.i, 4095
  %and90.i = and i32 %sub89.i, 536866816
  %arrayidx92.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6, i32 2
  %68 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and90.i, ptr %arrayidx92.i, align 4
  br label %done.i

done.i:                                           ; preds = %if.end78.i, %VENUS_RGB_SCANLINES.exit.i.done.i_crit_edge, %VENUS_UV_META_SCANLINES.exit.i, %VENUS_UV_SCANLINES.exit.i.done.i_crit_edge
  %total_size.i = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 4
  %arrayidx101.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6, i32 0
  %69 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx101.i, align 4
  %71 = ptrtoint ptr %total_size.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %total_size.i, align 4
  %add102.i = add i32 %72, %70
  %arrayidx101.1.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6, i32 1
  %73 = ptrtoint ptr %arrayidx101.1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx101.1.i, align 4
  %add102.1.i = add i32 %add102.i, %74
  %arrayidx101.2.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6, i32 2
  %75 = ptrtoint ptr %arrayidx101.2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx101.2.i, align 4
  %add102.2.i = add i32 %add102.1.i, %76
  %arrayidx101.3.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6, i32 3
  %77 = ptrtoint ptr %arrayidx101.3.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx101.3.i, align 4
  %add102.3.i = add i32 %add102.2.i, %78
  store i32 %add102.3.i, ptr %total_size.i, align 4
  br label %return

if.end18:                                         ; preds = %land.lhs.true11.if.end18_crit_edge, %if.end5.if.end18_crit_edge
  %79 = getelementptr inbounds i8, ptr %layout, i32 4
  %80 = call ptr @memset(ptr %79, i32 0, i32 64)
  %81 = ptrtoint ptr %layout to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %fmt, ptr %layout, align 4
  %width1.i35 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 2
  %82 = ptrtoint ptr %width1.i35 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %w, ptr %width1.i35, align 4
  %height2.i36 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 3
  %83 = ptrtoint ptr %height2.i36 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %h, ptr %height2.i36, align 4
  %num_planes.i37 = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 10
  %84 = ptrtoint ptr %num_planes.i37 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %num_planes.i37, align 1
  %conv.i38 = zext i8 %85 to i32
  %86 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv.i38, ptr %79, align 4
  %fetch_planes.i = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 1
  %87 = ptrtoint ptr %fetch_planes.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %fetch_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i40 = icmp eq i32 %88, 0
  br i1 %cmp.i40, label %if.end66.i, label %if.else.i41

if.else.i41:                                      ; preds = %if.end18
  %chroma_sample.i = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 4
  %89 = ptrtoint ptr %chroma_sample.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %chroma_sample.i, align 4
  %switch.tableidx83 = add i32 %90, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx83)
  %91 = icmp ult i32 %switch.tableidx83, 3
  br i1 %91, label %switch.lookup82, label %if.else.i41._dpu_get_v_h_subsample_rate.exit.i_crit_edge

if.else.i41._dpu_get_v_h_subsample_rate.exit.i_crit_edge: ; preds = %if.else.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %_dpu_get_v_h_subsample_rate.exit.i

switch.lookup82:                                  ; preds = %if.else.i41
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep84 = getelementptr inbounds [3 x i16], ptr @switch.table.dpu_format_get_plane_sizes.21, i32 0, i32 %switch.tableidx83
  %92 = ptrtoint ptr %switch.gep84 to i32
  call void @__asan_load2_noabort(i32 %92)
  %switch.load85 = load i16, ptr %switch.gep84, align 2
  %switch.gep86 = getelementptr inbounds [3 x i16], ptr @switch.table.dpu_format_get_plane_sizes.22, i32 0, i32 %switch.tableidx83
  %93 = ptrtoint ptr %switch.gep86 to i32
  call void @__asan_load2_noabort(i32 %93)
  %switch.load87 = load i16, ptr %switch.gep86, align 2
  br label %_dpu_get_v_h_subsample_rate.exit.i

_dpu_get_v_h_subsample_rate.exit.i:               ; preds = %switch.lookup82, %if.else.i41._dpu_get_v_h_subsample_rate.exit.i_crit_edge
  %.sink12.i.i = phi i16 [ %switch.load85, %switch.lookup82 ], [ 1, %if.else.i41._dpu_get_v_h_subsample_rate.exit.i_crit_edge ]
  %.sink.i.i = phi i16 [ %switch.load87, %switch.lookup82 ], [ 1, %if.else.i41._dpu_get_v_h_subsample_rate.exit.i_crit_edge ]
  %rem.i.lhs.trunc = trunc i32 %w to i16
  %rem.i69 = urem i16 %rem.i.lhs.trunc, %.sink.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem.i69)
  %tobool.not.i = icmp eq i16 %rem.i69, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %_dpu_get_v_h_subsample_rate.exit.i.if.then17.i_crit_edge

_dpu_get_v_h_subsample_rate.exit.i.if.then17.i_crit_edge: ; preds = %_dpu_get_v_h_subsample_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17.i

lor.lhs.false.i:                                  ; preds = %_dpu_get_v_h_subsample_rate.exit.i
  %rem15.i.lhs.trunc = trunc i32 %h to i16
  %.sink12.i.i.frozen = freeze i16 %.sink12.i.i
  %div37.i72 = udiv i16 %rem15.i.lhs.trunc, %.sink12.i.i.frozen
  %94 = mul i16 %div37.i72, %.sink12.i.i.frozen
  %rem15.i70.decomposed = sub i16 %rem15.i.lhs.trunc, %94
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem15.i70.decomposed)
  %tobool16.not.i = icmp eq i16 %rem15.i70.decomposed, 0
  br i1 %tobool16.not.i, label %if.end.i43, label %lor.lhs.false.i.if.then17.i_crit_edge

lor.lhs.false.i.if.then17.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17.i

if.then17.i:                                      ; preds = %lor.lhs.false.i.if.then17.i_crit_edge, %_dpu_get_v_h_subsample_rate.exit.i.if.then17.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #6
  br label %return

if.end.i43:                                       ; preds = %lor.lhs.false.i
  %95 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %96)
  %cmp18.i = icmp eq i32 %96, 842094158
  br i1 %cmp18.i, label %land.lhs.true.i, label %if.end.i43.if.end22.i_crit_edge

if.end.i43.if.end22.i_crit_edge:                  ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  %flag.i44 = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 12
  %97 = ptrtoint ptr %flag.i44 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %flag.i44, align 4
  %99 = and i32 %98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool20.not.i = icmp eq i32 %99, 0
  %spec.select.i = select i1 %tobool20.not.i, i32 1, i32 2
  br label %if.end22.i

if.end22.i:                                       ; preds = %land.lhs.true.i, %if.end.i43.if.end22.i_crit_edge
  %bpp14.0.i = phi i32 [ 1, %if.end.i43.if.end22.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %mul23.i = mul nuw nsw i32 %bpp14.0.i, %w
  %plane_pitch24.i = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 7
  %100 = ptrtoint ptr %plane_pitch24.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %mul23.i, ptr %plane_pitch24.i, align 4
  %div.i.lhs.trunc = trunc i32 %mul23.i to i16
  %div.i71 = udiv i16 %div.i.lhs.trunc, %.sink.i.i
  %div.i.zext = zext i16 %div.i71 to i32
  %arrayidx29.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 7, i32 1
  %101 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %div.i.zext, ptr %arrayidx29.i, align 4
  %mul32.i = mul nuw nsw i32 %mul23.i, %h
  %plane_size33.i = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6
  %102 = ptrtoint ptr %plane_size33.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %mul32.i, ptr %plane_size33.i, align 4
  %div37.i.zext = zext i16 %div37.i72 to i32
  %mul38.i = mul nuw nsw i32 %div37.i.zext, %div.i.zext
  %arrayidx40.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6, i32 1
  %103 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %mul38.i, ptr %arrayidx40.i, align 4
  %104 = ptrtoint ptr %fetch_planes.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %fetch_planes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %105)
  %cmp42.i = icmp eq i32 %105, 2
  br i1 %cmp42.i, label %if.then44.i, label %if.else52.i

if.then44.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 2, ptr %79, align 4
  %mul48.i = shl nuw nsw i32 %mul38.i, 1
  %107 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %mul48.i, ptr %arrayidx40.i, align 4
  %mul51.i = shl nuw nsw i32 %div.i.zext, 1
  %108 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %mul51.i, ptr %arrayidx29.i, align 4
  br label %for.body.lr.ph.i

if.else52.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 3, ptr %79, align 4
  %arrayidx57.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6, i32 2
  %110 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %mul38.i, ptr %arrayidx57.i, align 4
  %arrayidx61.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 7, i32 2
  %111 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %div.i.zext, ptr %arrayidx61.i, align 4
  br label %for.body.lr.ph.i

if.end66.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %79, align 4
  %mul.i45 = mul nuw nsw i32 %h, %w
  %bpp.i = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 8
  %113 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %bpp.i, align 1
  %conv7.i = zext i8 %114 to i32
  %mul8.i = mul i32 %mul.i45, %conv7.i
  %plane_size.i46 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6
  %115 = ptrtoint ptr %plane_size.i46 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %mul8.i, ptr %plane_size.i46, align 4
  %116 = load i8, ptr %bpp.i, align 1
  %conv11.i = zext i8 %116 to i32
  %mul12.i = mul nuw nsw i32 %conv11.i, %w
  %plane_pitch.i47 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 7
  %117 = ptrtoint ptr %plane_pitch.i47 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %mul12.i, ptr %plane_pitch.i47, align 4
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end66.i, %if.else52.i, %if.then44.i
  %tobool72.not.i = icmp eq ptr %pitches, null
  br i1 %tobool72.not.i, label %for.body.lr.ph.i.for.inc.i_crit_edge, label %land.lhs.true73.i

for.body.lr.ph.i.for.inc.i_crit_edge:             ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.cond84.preheader.i:                           ; preds = %if.then79.i.3, %land.lhs.true73.i.3.for.cond84.preheader.i_crit_edge, %for.inc.i.2.for.cond84.preheader.i_crit_edge, %for.inc.i.1.for.cond84.preheader.i_crit_edge, %for.inc.i.for.cond84.preheader.i_crit_edge
  %total_size.i48 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 4
  %arrayidx89.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6, i32 0
  %118 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx89.i, align 4
  %120 = ptrtoint ptr %total_size.i48 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %total_size.i48, align 4
  %add.i = add i32 %121, %119
  %arrayidx89.1.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6, i32 1
  %122 = ptrtoint ptr %arrayidx89.1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx89.1.i, align 4
  %add.1.i = add i32 %add.i, %123
  %arrayidx89.2.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6, i32 2
  %124 = ptrtoint ptr %arrayidx89.2.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx89.2.i, align 4
  %add.2.i = add i32 %add.1.i, %125
  %arrayidx89.3.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 6, i32 3
  %126 = ptrtoint ptr %arrayidx89.3.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx89.3.i, align 4
  %add.3.i = add i32 %add.2.i, %127
  store i32 %add.3.i, ptr %total_size.i48, align 4
  br label %return

land.lhs.true73.i:                                ; preds = %for.body.lr.ph.i
  %arrayidx75.i = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 7, i32 0
  %128 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx75.i, align 4
  %130 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pitches, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %131)
  %cmp77.i = icmp ult i32 %129, %131
  br i1 %cmp77.i, label %if.then79.i, label %land.lhs.true73.i.for.inc.i_crit_edge

land.lhs.true73.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then79.i:                                      ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #8
  %132 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %arrayidx75.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then79.i, %land.lhs.true73.i.for.inc.i_crit_edge, %for.body.lr.ph.i.for.inc.i_crit_edge
  %133 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp68.i = icmp ugt i32 %134, 1
  br i1 %cmp68.i, label %for.body.i.1, label %for.inc.i.for.cond84.preheader.i_crit_edge

for.inc.i.for.cond84.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond84.preheader.i

for.body.i.1:                                     ; preds = %for.inc.i
  br i1 %tobool72.not.i, label %for.body.i.1.for.inc.i.1_crit_edge, label %land.lhs.true73.i.1

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.1

land.lhs.true73.i.1:                              ; preds = %for.body.i.1
  %arrayidx75.i.1 = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 7, i32 1
  %135 = ptrtoint ptr %arrayidx75.i.1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx75.i.1, align 4
  %arrayidx76.i.1 = getelementptr i32, ptr %pitches, i32 1
  %137 = ptrtoint ptr %arrayidx76.i.1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx76.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %138)
  %cmp77.i.1 = icmp ult i32 %136, %138
  br i1 %cmp77.i.1, label %if.then79.i.1, label %land.lhs.true73.i.1.for.inc.i.1_crit_edge

land.lhs.true73.i.1.for.inc.i.1_crit_edge:        ; preds = %land.lhs.true73.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.1

if.then79.i.1:                                    ; preds = %land.lhs.true73.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %139 = ptrtoint ptr %arrayidx75.i.1 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %arrayidx75.i.1, align 4
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then79.i.1, %land.lhs.true73.i.1.for.inc.i.1_crit_edge, %for.body.i.1.for.inc.i.1_crit_edge
  %140 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %141)
  %cmp68.i.1 = icmp ugt i32 %141, 2
  br i1 %cmp68.i.1, label %for.body.i.2, label %for.inc.i.1.for.cond84.preheader.i_crit_edge

for.inc.i.1.for.cond84.preheader.i_crit_edge:     ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond84.preheader.i

for.body.i.2:                                     ; preds = %for.inc.i.1
  br i1 %tobool72.not.i, label %for.body.i.2.for.inc.i.2_crit_edge, label %land.lhs.true73.i.2

for.body.i.2.for.inc.i.2_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.2

land.lhs.true73.i.2:                              ; preds = %for.body.i.2
  %arrayidx75.i.2 = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 7, i32 2
  %142 = ptrtoint ptr %arrayidx75.i.2 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx75.i.2, align 4
  %arrayidx76.i.2 = getelementptr i32, ptr %pitches, i32 2
  %144 = ptrtoint ptr %arrayidx76.i.2 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx76.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %145)
  %cmp77.i.2 = icmp ult i32 %143, %145
  br i1 %cmp77.i.2, label %if.then79.i.2, label %land.lhs.true73.i.2.for.inc.i.2_crit_edge

land.lhs.true73.i.2.for.inc.i.2_crit_edge:        ; preds = %land.lhs.true73.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.2

if.then79.i.2:                                    ; preds = %land.lhs.true73.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %146 = ptrtoint ptr %arrayidx75.i.2 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %arrayidx75.i.2, align 4
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then79.i.2, %land.lhs.true73.i.2.for.inc.i.2_crit_edge, %for.body.i.2.for.inc.i.2_crit_edge
  %147 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %148)
  %cmp68.i.2 = icmp ugt i32 %148, 3
  %cmp68.i.2.not = xor i1 %cmp68.i.2, true
  %brmerge = or i1 %cmp68.i.2.not, %tobool72.not.i
  br i1 %brmerge, label %for.inc.i.2.for.cond84.preheader.i_crit_edge, label %land.lhs.true73.i.3

for.inc.i.2.for.cond84.preheader.i_crit_edge:     ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond84.preheader.i

land.lhs.true73.i.3:                              ; preds = %for.inc.i.2
  %arrayidx75.i.3 = getelementptr %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 7, i32 3
  %149 = ptrtoint ptr %arrayidx75.i.3 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx75.i.3, align 4
  %arrayidx76.i.3 = getelementptr i32, ptr %pitches, i32 3
  %151 = ptrtoint ptr %arrayidx76.i.3 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx76.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %152)
  %cmp77.i.3 = icmp ult i32 %150, %152
  br i1 %cmp77.i.3, label %if.then79.i.3, label %land.lhs.true73.i.3.for.cond84.preheader.i_crit_edge

land.lhs.true73.i.3.for.cond84.preheader.i_crit_edge: ; preds = %land.lhs.true73.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond84.preheader.i

if.then79.i.3:                                    ; preds = %land.lhs.true73.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %153 = ptrtoint ptr %arrayidx75.i.3 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %arrayidx75.i.3, align 4
  br label %for.cond84.preheader.i

return:                                           ; preds = %for.cond84.preheader.i, %if.then17.i, %done.i, %if.then.i, %if.then4, %if.then
  %retval.0 = phi i32 [ -34, %if.then4 ], [ -22, %if.then ], [ -22, %if.then.i ], [ 0, %done.i ], [ -22, %if.then17.i ], [ 0, %for.cond84.preheader.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_format_check_modified_format(ptr nocapture noundef readnone %kms, ptr noundef %msm_fmt, ptr noundef %cmd, ptr noundef readonly %bos) local_unnamed_addr #0 align 64 {
entry:
  %layout = alloca %struct.dpu_hw_fmt_layout, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %layout) #6
  %0 = call ptr @memset(ptr %layout, i32 255, i32 68)
  %tobool.not = icmp eq ptr %msm_fmt, null
  %tobool1.not = icmp eq ptr %cmd, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %bos, null
  %or.cond55 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond55, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %msm_fmt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msm_fmt, align 4
  %call = tail call ptr @drm_format_info(i32 noundef %2) #6
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %width = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 8
  %pitches = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %cmd, i32 0, i32 6
  %call7 = call fastcc i32 @dpu_format_get_plane_sizes(ptr noundef nonnull %msm_fmt, i32 noundef %4, i32 noundef %6, ptr noundef nonnull %layout, ptr noundef %pitches)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.cond.preheader, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end6
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp58.not = icmp eq i8 %8, 0
  br i1 %cmp58.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.061 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %bos_total_size.059 = phi i32 [ %bos_total_size.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %bos, i32 %i.061
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %i.061) #6
  br label %cleanup

if.end14:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.061)
  %cmp15 = icmp eq i32 %i.061, 0
  br i1 %cmp15, label %if.end14.if.then22_crit_edge, label %lor.lhs.false17

if.end14.if.then22_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

lor.lhs.false17:                                  ; preds = %if.end14
  %11 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bos, align 4
  %cmp20.not = icmp eq ptr %10, %12
  br i1 %cmp20.not, label %lor.lhs.false17.for.inc_crit_edge, label %lor.lhs.false17.if.then22_crit_edge

lor.lhs.false17.if.then22_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

lor.lhs.false17.for.inc_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then22:                                        ; preds = %lor.lhs.false17.if.then22_crit_edge, %if.end14.if.then22_crit_edge
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 8
  %add = add i32 %14, %bos_total_size.059
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %lor.lhs.false17.for.inc_crit_edge
  %bos_total_size.1 = phi i32 [ %add, %if.then22 ], [ %bos_total_size.059, %lor.lhs.false17.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %bos_total_size.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %bos_total_size.1, %for.inc.for.end_crit_edge ]
  %total_size = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %layout, i32 0, i32 4
  %15 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %total_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bos_total_size.0.lcssa, i32 %16)
  %cmp25 = icmp ult i32 %bos_total_size.0.lcssa, %16
  br i1 %cmp25, label %if.then27, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %bos_total_size.0.lcssa, i32 noundef %16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %for.end.cleanup_crit_edge, %if.then13, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -22, %if.then27 ], [ -22, %if.then ], [ -22, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %layout) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dpu_get_dpu_format_ext(i32 noundef %format, i64 noundef %modifier) local_unnamed_addr #0 align 64 {
entry:
  %format.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %format.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %format, ptr %format.addr, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.4, i64 noundef %modifier) #6
  call void @__sanitizer_cov_trace_switch(i64 %modifier, ptr @__sancov_gen_cov_switch_values.31)
  switch i64 %modifier, label %do.end [
    i64 0, label %entry.sw.epilog_crit_edge
    i64 360287970189639681, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.5, ptr noundef nonnull %format.addr) #6
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 1009, i64 noundef %modifier) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %map.0 = phi ptr [ @dpu_format_map_ubwc, %sw.bb1 ], [ @dpu_format_map, %entry.sw.epilog_crit_edge ]
  %map_size.0 = phi i32 [ 8, %sw.bb1 ], [ 46, %entry.sw.epilog_crit_edge ]
  %1 = ptrtoint ptr %format.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %format.addr, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog
  %i.038 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_format, ptr %map.0, i32 %i.038
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp2 = icmp eq i32 %2, %4
  br i1 %cmp2, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, %map_size.0
  br i1 %exitcond.not, label %for.inc.do.end8_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end8_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

for.end:                                          ; preds = %for.body
  %cmp4 = icmp eq ptr %arrayidx, null
  br i1 %cmp4, label %for.end.do.end8_crit_edge, label %if.else

for.end.do.end8_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

do.end8:                                          ; preds = %for.end.do.end8_crit_edge, %for.inc.do.end8_crit_edge
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, i32 noundef 1022, ptr noundef nonnull %format.addr, i64 noundef %modifier) #10
  br label %cleanup

if.else:                                          ; preds = %for.end
  %fetch_mode = getelementptr %struct.dpu_format, ptr %map.0, i32 %i.038, i32 11
  %5 = ptrtoint ptr %fetch_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fetch_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp11 = icmp eq i32 %6, 2
  br i1 %cmp11, label %land.rhs, label %if.else.land.end_crit_edge

if.else.land.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %flag = getelementptr %struct.dpu_format, ptr %map.0, i32 %i.038, i32 12
  %7 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flag, align 4
  %9 = lshr i32 %8, 2
  %.lobit = and i32 %9, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else.land.end_crit_edge
  %10 = phi i32 [ 0, %if.else.land.end_crit_edge ], [ %.lobit, %land.rhs ]
  %flag13 = getelementptr %struct.dpu_format, ptr %map.0, i32 %i.038, i32 12
  %11 = ptrtoint ptr %flag13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flag13, align 4
  %and1.i32 = and i32 %12, 1
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.12, ptr noundef nonnull %format.addr, i64 noundef %modifier, i32 noundef %10, i32 noundef %and1.i32) #6
  br label %cleanup

cleanup:                                          ; preds = %land.end, %do.end8, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %arrayidx, %land.end ], [ null, %do.end8 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dpu_get_msm_format(ptr nocapture noundef readnone %kms, i32 noundef %format, i64 noundef %modifiers) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dpu_get_dpu_format_ext(i32 noundef %format, i64 noundef %modifiers)
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_framebuffer_iova(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 902, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 908, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 966, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 974, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 995, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 1005, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 1009, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @dpu_get_dpu_format_ext._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @dpu_get_dpu_format_ext._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 1021, i32 3}
!20 = !{ptr @dpu_get_dpu_format_ext._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @dpu_get_dpu_format_ext._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 1024, i32 3}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 757, i32 3}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 616, i32 3}
!28 = !{ptr @_dpu_format_get_media_color_ubwc.dpu_media_ubwc_map, !29, !"dpu_media_ubwc_map", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 567, i32 42}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 707, i32 4}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 781, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 788, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 873, i32 4}
!38 = !{ptr @dpu_format_map, !39, !"dpu_format_map", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 195, i32 32}
!40 = !{ptr @dpu_format_map_ubwc, !41, !"dpu_format_map_ubwc", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_formats.c", i32 479, i32 32}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i32 0, i32 3}
