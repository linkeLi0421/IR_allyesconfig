; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sti/hva/hva-h264.c_pt.bc'
source_filename = "../drivers/media/platform/sti/hva/hva-h264.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hva_enc = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.h264_profile = type { i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.hva_dev = type { %struct.v4l2_device, ptr, ptr, ptr, %struct.mutex, ptr, [16 x ptr], i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, %struct.mutex, %struct.completion, i32, [10 x ptr], i32, [10 x i32], i32, [10 x i32], i32, i32, i32, i32, i32, i32, %struct.hva_dev_dbg }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hva_dev_dbg = type { ptr, %struct.hva_ctx }
%struct.hva_ctx = type { ptr, %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.hva_controls, i8, i8, [100 x i8], %struct.work_struct, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hva_streaminfo, %struct.hva_frameinfo, ptr, ptr, i8, i32, i32, i32, i32, %struct.hva_ctx_dbg }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.hva_controls = type { %struct.v4l2_fract, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i8, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hva_streaminfo = type { i32, i32, i32, [32 x i8], [32 x i8] }
%struct.hva_frameinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.hva_ctx_dbg = type { ptr, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hva_h264_ctx = type { ptr, ptr, ptr, ptr }
%struct.hva_buffer = type { ptr, i32, ptr, i32 }
%struct.hva_h264_task = type { %struct.hva_h264_td, %struct.hva_h264_po }
%struct.hva_h264_td = type { i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i32 }
%struct.hva_h264_po = type { i32, i32, i32, i32, i32, i32, i32, i32, [16 x %struct.hva_h264_slice_po] }
%struct.hva_h264_slice_po = type { i32, i32, i32, i32 }
%struct.hva_stream = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, ptr, i8, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%struct.hva_frame = type { %struct.vb2_v4l2_buffer, %struct.list_head, %struct.hva_frameinfo, i32, ptr, i8 }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"H264(NV12)\00", [21 x i8] zeroinitializer }, align 32
@nv12h264enc = dso_local constant { %struct.hva_enc, [32 x i8] } { %struct.hva_enc { ptr @.str, i32 875967048, i32 842094158, i32 1920, i32 1920, ptr @hva_h264_open, ptr @hva_h264_close, ptr @hva_h264_encode }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"H264(NV21)\00", [21 x i8] zeroinitializer }, align 32
@nv21h264enc = dso_local constant { %struct.hva_enc, [32 x i8] } { %struct.hva_enc { ptr @.str.1, i32 875967048, i32 825382478, i32 1920, i32 1920, ptr @hva_h264_open, ptr @hva_h264_close, ptr @hva_h264_encode }, [32 x i8] zeroinitializer }, align 32
@hva_h264_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 907, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s   not enough esram (max:%d request:%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hva_h264_open\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/platform/sti/hva/hva-h264.c\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hva_h264_open._entry_ptr = internal global ptr @hva_h264_open._entry, section ".printk_index", align 4
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hva sequence info\00", [46 x i8] zeroinitializer }, align 32
@hva_h264_open._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 929, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s   failed to allocate sequence info buffer\0A\00", [50 x i8] zeroinitializer }, align 32
@hva_h264_open._entry_ptr.10 = internal global ptr @hva_h264_open._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hva reference frame\00", [44 x i8] zeroinitializer }, align 32
@hva_h264_open._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 940, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s   failed to allocate reference frame buffer\0A\00", [48 x i8] zeroinitializer }, align 32
@hva_h264_open._entry_ptr.14 = internal global ptr @hva_h264_open._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hva reconstructed frame\00", [40 x i8] zeroinitializer }, align 32
@hva_h264_open._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 952, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s   failed to allocate reconstructed frame buffer\0A\00", [44 x i8] zeroinitializer }, align 32
@hva_h264_open._entry_ptr.18 = internal global ptr @hva_h264_open._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hva task descriptor\00", [44 x i8] zeroinitializer }, align 32
@hva_h264_open._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 964, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s   failed to allocate task descriptor\0A\00", [55 x i8] zeroinitializer }, align 32
@hva_h264_open._entry_ptr.22 = internal global ptr @hva_h264_open._entry.20, section ".printk_index", align 4
@hva_h264_prepare_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 619, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s   width(%d) or height(%d) exceeds limits (%dx%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hva_h264_prepare_task\00", [42 x i8] zeroinitializer }, align 32
@hva_h264_prepare_task._entry_ptr = internal global ptr @hva_h264_prepare_task._entry, section ".printk_index", align 4
@h264_infos_list = internal constant { [16 x %struct.h264_profile], [96 x i8] } { [16 x %struct.h264_profile] [%struct.h264_profile { i32 0, i32 1485, i32 99, i32 64, i32 175, i32 2 }, %struct.h264_profile { i32 1, i32 1485, i32 99, i32 128, i32 350, i32 2 }, %struct.h264_profile { i32 2, i32 3000, i32 396, i32 192, i32 500, i32 2 }, %struct.h264_profile { i32 3, i32 6000, i32 396, i32 384, i32 1000, i32 2 }, %struct.h264_profile { i32 4, i32 11880, i32 396, i32 768, i32 2000, i32 2 }, %struct.h264_profile { i32 5, i32 11880, i32 396, i32 2000, i32 2000, i32 2 }, %struct.h264_profile { i32 6, i32 19800, i32 792, i32 4000, i32 4000, i32 2 }, %struct.h264_profile { i32 7, i32 20250, i32 1620, i32 4000, i32 4000, i32 2 }, %struct.h264_profile { i32 8, i32 40500, i32 1620, i32 10000, i32 10000, i32 2 }, %struct.h264_profile { i32 9, i32 108000, i32 3600, i32 14000, i32 14000, i32 4 }, %struct.h264_profile { i32 10, i32 216000, i32 5120, i32 20000, i32 20000, i32 4 }, %struct.h264_profile { i32 11, i32 245760, i32 8192, i32 20000, i32 25000, i32 4 }, %struct.h264_profile { i32 12, i32 245760, i32 8192, i32 50000, i32 62500, i32 2 }, %struct.h264_profile { i32 13, i32 522240, i32 8704, i32 50000, i32 62500, i32 2 }, %struct.h264_profile { i32 14, i32 589824, i32 22080, i32 135000, i32 135000, i32 2 }, %struct.h264_profile { i32 15, i32 983040, i32 36864, i32 240000, i32 240000, i32 2 }], [96 x i8] zeroinitializer }, align 32
@hva_h264_prepare_task.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.24, ptr @.str.4, ptr @.str.26, i8 0, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st_hva\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s   bitrate (%d) larger than level and profile allow, clip to %d\0A\00", [61 x i8] zeroinitializer }, align 32
@hva_h264_prepare_task.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.24, ptr @.str.4, ptr @.str.27, i8 0, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s   cpb size larger than level %d allows, clip to %d\0A\00", [41 x i8] zeroinitializer }, align 32
@hva_h264_prepare_task._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.4, i32 730, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s   invalid source pixel format\0A\00", [62 x i8] zeroinitializer }, align 32
@hva_h264_prepare_task._entry_ptr.30 = internal global ptr @hva_h264_prepare_task._entry.28, section ".printk_index", align 4
@hva_h264_prepare_task._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.4, i32 755, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s   invalid framerate\0A\00", [40 x i8] zeroinitializer }, align 32
@hva_h264_prepare_task._entry_ptr.33 = internal global ptr @hva_h264_prepare_task._entry.31, section ".printk_index", align 4
@hva_h264_prepare_task._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.24, ptr @.str.4, i32 846, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s   invalid sps/pps size %d\0A\00", [34 x i8] zeroinitializer }, align 32
@hva_h264_prepare_task._entry_ptr.36 = internal global ptr @hva_h264_prepare_task._entry.34, section ".printk_index", align 4
@hva_h264_prepare_task._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.24, ptr @.str.4, i32 858, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s   fail to get SEI nal\0A\00", [38 x i8] zeroinitializer }, align 32
@hva_h264_prepare_task._entry_ptr.39 = internal global ptr @hva_h264_prepare_task._entry.37, section ".printk_index", align 4
@hva_h264_fill_slice_header.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.40, ptr @.str.4, ptr @.str.41, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hva_h264_fill_slice_header\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s   %s slice header order %d idrPicId %d header size %d\0A\00", [38 x i8] zeroinitializer }, align 32
@hva_h264_fill_sei_nal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 582, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s   sei nal type not supported %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hva_h264_fill_sei_nal\00", [42 x i8] zeroinitializer }, align 32
@hva_h264_fill_sei_nal._entry_ptr = internal global ptr @hva_h264_fill_sei_nal._entry, section ".printk_index", align 4
@hva_h264_fill_data_nal.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.44, ptr @.str.4, ptr @.str.45, i8 0, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hva_h264_fill_data_nal\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s   %s stuffing bytes %d\0A\00", [37 x i8] zeroinitializer }, align 32
@hva_h264_fill_data_nal.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.44, ptr @.str.4, ptr @.str.46, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s   %s too many stuffing bytes %d\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 825382478, i64 842094158]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1044, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"nv12h264enc\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1043, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1055, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"nv21h264enc\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 1054, i32 22 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 906, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 924, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 927, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 936, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 939, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 947, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 950, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 959, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 962, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 616, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [16 x i8] c"h264_infos_list\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 59, i32 34 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 686, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 705, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 729, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 755, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 845, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 858, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 482, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 581, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 495, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [45 x i8] c"../drivers/media/platform/sti/hva/hva-h264.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 499, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @hva_h264_fill_sei_nal._entry, ptr @hva_h264_fill_sei_nal._entry_ptr, ptr @hva_h264_open._entry, ptr @hva_h264_open._entry.12, ptr @hva_h264_open._entry.16, ptr @hva_h264_open._entry.20, ptr @hva_h264_open._entry.8, ptr @hva_h264_open._entry_ptr, ptr @hva_h264_open._entry_ptr.10, ptr @hva_h264_open._entry_ptr.14, ptr @hva_h264_open._entry_ptr.18, ptr @hva_h264_open._entry_ptr.22, ptr @hva_h264_prepare_task._entry, ptr @hva_h264_prepare_task._entry.28, ptr @hva_h264_prepare_task._entry.31, ptr @hva_h264_prepare_task._entry.34, ptr @hva_h264_prepare_task._entry.37, ptr @hva_h264_prepare_task._entry_ptr, ptr @hva_h264_prepare_task._entry_ptr.30, ptr @hva_h264_prepare_task._entry_ptr.33, ptr @hva_h264_prepare_task._entry_ptr.36, ptr @hva_h264_prepare_task._entry_ptr.39, ptr @.str, ptr @nv12h264enc, ptr @.str.1, ptr @nv21h264enc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @h264_infos_list, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv12h264enc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv21h264enc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_h264_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_h264_open._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_h264_open._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_h264_open._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_h264_open._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_h264_prepare_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h264_infos_list to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_h264_prepare_task._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_h264_prepare_task._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_h264_prepare_task._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_h264_prepare_task._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_h264_fill_sei_nal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_h264_open(ptr noundef %pctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pctx, align 8
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %aligned_width = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 18, i32 3
  %4 = ptrtoint ptr %aligned_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %aligned_width, align 4
  %aligned_height = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 18, i32 4
  %6 = ptrtoint ptr %aligned_height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aligned_height, align 4
  %add = add i32 %5, 15
  %div137 = lshr i32 %add, 4
  %8 = mul i32 %div137, 3072
  %mul6 = add i32 %8, 32256
  %div7138 = lshr exact i32 %mul6, 1
  %mul11 = shl i32 %div137, 7
  %9 = tail call i32 @llvm.umax.i32(i32 %5, i32 %7)
  %add13 = shl i32 %9, 3
  %div14139 = add i32 %add13, 120
  %mul16 = and i32 %div14139, -128
  %mul20 = and i32 %add, -16
  %add12 = add i32 %mul11, %mul20
  %add17 = add i32 %add12, %div7138
  %add21 = add i32 %add17, %mul16
  %esram_size = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %esram_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %esram_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add21)
  %cmp22 = icmp ult i32 %11, %add21
  br i1 %cmp22, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %11, i32 noundef %add21) #7
  br label %err

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 16, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.err_crit_edge, label %if.end25

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end25:                                         ; preds = %if.end
  %add28 = add i32 %7, 15
  %div29140 = lshr i32 %add28, 4
  %mul30 = shl i32 %div137, 5
  %mul32 = mul i32 %mul30, %div29140
  %add34 = add i32 %mul32, 144
  %call35 = tail call i32 @hva_mem_alloc(ptr noundef %pctx, i32 noundef %add34, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %name41 = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef %name41) #7
  br label %err_ctx

if.end43:                                         ; preds = %if.end25
  %mul44 = mul i32 %5, 3
  %mul45 = mul i32 %mul44, %7
  %div46141 = lshr i32 %mul45, 1
  %ref_frame = getelementptr inbounds %struct.hva_h264_ctx, ptr %call.i, i32 0, i32 1
  %call47 = tail call i32 @hva_mem_alloc(ptr noundef %pctx, i32 noundef %div46141, ptr noundef nonnull @.str.11, ptr noundef %ref_frame) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end55, label %do.end52

do.end52:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  %name53 = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef %name53) #7
  br label %err_seq_info

if.end55:                                         ; preds = %if.end43
  %rec_frame = getelementptr inbounds %struct.hva_h264_ctx, ptr %call.i, i32 0, i32 2
  %call59 = tail call i32 @hva_mem_alloc(ptr noundef %pctx, i32 noundef %div46141, ptr noundef nonnull @.str.15, ptr noundef %rec_frame) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end67, label %do.end64

do.end64:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  %name65 = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17, ptr noundef %name65) #7
  br label %err_ref_frame

if.end67:                                         ; preds = %if.end55
  %task = getelementptr inbounds %struct.hva_h264_ctx, ptr %call.i, i32 0, i32 3
  %call68 = tail call i32 @hva_mem_alloc(ptr noundef %pctx, i32 noundef 496, ptr noundef nonnull @.str.19, ptr noundef %task) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end76, label %do.end73

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  %name74 = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21, ptr noundef %name74) #7
  %12 = ptrtoint ptr %rec_frame to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rec_frame, align 4
  tail call void @hva_mem_free(ptr noundef %pctx, ptr noundef %13) #4
  br label %err_ref_frame

if.end76:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  %priv = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 20
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %priv, align 8
  br label %cleanup

err_ref_frame:                                    ; preds = %do.end73, %do.end64
  %ret.0 = phi i32 [ %call59, %do.end64 ], [ %call68, %do.end73 ]
  %15 = ptrtoint ptr %ref_frame to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ref_frame, align 4
  tail call void @hva_mem_free(ptr noundef %pctx, ptr noundef %16) #4
  br label %err_seq_info

err_seq_info:                                     ; preds = %err_ref_frame, %do.end52
  %ret.1 = phi i32 [ %call47, %do.end52 ], [ %ret.0, %err_ref_frame ]
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  tail call void @hva_mem_free(ptr noundef %pctx, ptr noundef %18) #4
  br label %err_ctx

err_ctx:                                          ; preds = %err_seq_info, %do.end40
  %ret.2 = phi i32 [ %call35, %do.end40 ], [ %ret.1, %err_seq_info ]
  tail call void @devm_kfree(ptr noundef %3, ptr noundef nonnull %call.i) #4
  br label %err

err:                                              ; preds = %err_ctx, %if.end.err_crit_edge, %do.end
  %ret.3 = phi i32 [ -22, %do.end ], [ %ret.2, %err_ctx ], [ -12, %if.end.err_crit_edge ]
  %sys_errors = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 23
  %19 = ptrtoint ptr %sys_errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sys_errors, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %sys_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end76
  %retval.0 = phi i32 [ %ret.3, %err ], [ 0, %if.end76 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_h264_close(ptr noundef %pctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 20
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %pctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctx, align 8
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hva_mem_free(ptr noundef %pctx, ptr noundef nonnull %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ref_frame = getelementptr inbounds %struct.hva_h264_ctx, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ref_frame to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ref_frame, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hva_mem_free(ptr noundef %pctx, ptr noundef nonnull %9) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %rec_frame = getelementptr inbounds %struct.hva_h264_ctx, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %rec_frame to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rec_frame, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hva_mem_free(ptr noundef %pctx, ptr noundef nonnull %11) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %task = getelementptr inbounds %struct.hva_h264_ctx, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hva_mem_free(ptr noundef %pctx, ptr noundef nonnull %13) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  tail call void @devm_kfree(ptr noundef %5, ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_h264_encode(ptr noundef %pctx, ptr nocapture noundef readonly %frame, ptr nocapture noundef %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 20
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %task1 = getelementptr inbounds %struct.hva_h264_ctx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task1, align 4
  %vaddr = getelementptr inbounds %struct.hva_buffer, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vaddr, align 4
  %call = tail call fastcc i32 @hva_h264_prepare_task(ptr noundef %pctx, ptr noundef %5, ptr noundef %frame, ptr noundef %stream)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task1, align 4
  %call3 = tail call i32 @hva_hw_execute_task(ptr noundef %pctx, i32 noundef 2, ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end6:                                          ; preds = %if.end
  %stream_num = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 11
  %8 = ptrtoint ptr %stream_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream_num, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %stream_num, align 8
  %po1.i = getelementptr inbounds %struct.hva_h264_task, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %po1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %po1.i, align 4
  %bytesused = getelementptr inbounds %struct.hva_stream, ptr %stream, i32 0, i32 6
  %12 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bytesused, align 8
  %add = add i32 %13, %11
  store i32 %add, ptr %bytesused, align 8
  %stuffing_bits.i = getelementptr inbounds %struct.hva_h264_task, ptr %5, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %stuffing_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stuffing_bits.i, align 4
  %shr.i = lshr i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %tobool9.not = icmp ult i32 %15, 8
  br i1 %tobool9.not, label %if.end6.do.body_crit_edge, label %if.then10

if.end6.do.body_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then10:                                        ; preds = %if.end6
  %vaddr11 = getelementptr inbounds %struct.hva_stream, ptr %stream, i32 0, i32 3
  %16 = ptrtoint ptr %vaddr11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vaddr11, align 4
  %size = getelementptr inbounds %struct.hva_stream, ptr %stream, i32 0, i32 5
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  %20 = ptrtoint ptr %pctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pctx, align 8
  %dev1.i = getelementptr inbounds %struct.hva_dev, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_h264_fill_data_nal.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_h264_encode, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !101

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_h264_fill_data_nal.__UNIQUE_ID_ddebug299, ptr noundef %23, ptr noundef nonnull @.str.45, ptr noundef %name.i, ptr noundef nonnull @.str.44, i32 noundef %shr.i) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then10
  %24 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bytesused, align 4
  %add.i = add nuw nsw i32 %shr.i, 6
  %add4.i = add i32 %add.i, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %19)
  %cmp.i = icmp ugt i32 %add4.i, %19
  br i1 %cmp.i, label %do.body6.i, label %if.end24.i

do.body6.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_h264_fill_data_nal.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_h264_encode, %if.then18.i)) #4
          to label %do.body [label %if.then18.i], !srcloc !101

if.then18.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #6
  %name19.i = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_h264_fill_data_nal.__UNIQUE_ID_ddebug300, ptr noundef %23, ptr noundef nonnull @.str.46, ptr noundef %name19.i, ptr noundef nonnull @.str.44, i32 noundef %shr.i) #4
  br label %do.body

if.end24.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %17, i32 %25
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 1, ptr %add.ptr.i, align 1
  %27 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bytesused, align 4
  %add25.i = add i32 %28, 4
  store i32 %add25.i, ptr %bytesused, align 4
  %arrayidx.i = getelementptr i8, ptr %17, i32 %add25.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 12, ptr %arrayidx.i, align 1
  %30 = load i32, ptr %bytesused, align 4
  %add26.i = add i32 %30, 1
  store i32 %add26.i, ptr %bytesused, align 4
  %add.ptr27.i = getelementptr i8, ptr %17, i32 %add26.i
  %31 = call ptr @memset(ptr %add.ptr27.i, i32 255, i32 %shr.i)
  %32 = load i32, ptr %bytesused, align 4
  %add28.i = add i32 %32, %shr.i
  store i32 %add28.i, ptr %bytesused, align 4
  %arrayidx29.i = getelementptr i8, ptr %17, i32 %add28.i
  %33 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -128, ptr %arrayidx29.i, align 1
  %34 = load i32, ptr %bytesused, align 4
  %add30.i = add i32 %34, 1
  store i32 %add30.i, ptr %bytesused, align 4
  br label %do.body

do.body:                                          ; preds = %if.end24.i, %if.then18.i, %do.body6.i, %if.end6.do.body_crit_edge
  %ref_frame = getelementptr inbounds %struct.hva_h264_ctx, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %ref_frame to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ref_frame, align 4
  %rec_frame = getelementptr inbounds %struct.hva_h264_ctx, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %rec_frame to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rec_frame, align 4
  store ptr %38, ptr %ref_frame, align 4
  store ptr %36, ptr %rec_frame, align 4
  br label %cleanup

err:                                              ; preds = %if.end.err_crit_edge, %entry.err_crit_edge
  %ret.0 = phi i32 [ %call, %entry.err_crit_edge ], [ %call3, %if.end.err_crit_edge ]
  %bytesused17 = getelementptr inbounds %struct.hva_stream, ptr %stream, i32 0, i32 6
  %39 = ptrtoint ptr %bytesused17 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %bytesused17, align 8
  br label %cleanup

cleanup:                                          ; preds = %err, %do.body
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hva_mem_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hva_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hva_h264_prepare_task(ptr noundef %pctx, ptr noundef %task, ptr nocapture noundef readonly %frame, ptr nocapture noundef %stream) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pctx, align 8
  %dev2 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %priv = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 20
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %ref_frame = getelementptr inbounds %struct.hva_h264_ctx, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %ref_frame to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ref_frame, align 4
  %rec_frame = getelementptr inbounds %struct.hva_h264_ctx, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %rec_frame to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rec_frame, align 4
  %ctrls5 = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 3
  %stream_num = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 11
  %12 = ptrtoint ptr %stream_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream_num, align 8
  %esram_addr = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %esram_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %esram_addr, align 8
  %info = getelementptr inbounds %struct.hva_frame, ptr %frame, i32 0, i32 2
  %aligned_width = getelementptr inbounds %struct.hva_frame, ptr %frame, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %aligned_width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aligned_width, align 4
  %aligned_height = getelementptr inbounds %struct.hva_frame, ptr %frame, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %aligned_height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %aligned_height, align 8
  %bytesused = getelementptr inbounds %struct.hva_stream, ptr %stream, i32 0, i32 6
  %20 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytesused, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %17)
  %cmp = icmp ugt i32 %17, 1920
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %19)
  %cmp9 = icmp ugt i32 %19, 1920
  %or.cond = select i1 %cmp, i1 true, i1 %cmp9
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef %name, i32 noundef %17, i32 noundef %19, i32 noundef 1920, i32 noundef 1920) #7
  %frame_errors = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 25
  %22 = ptrtoint ptr %frame_errors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frame_errors, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %frame_errors, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %level10 = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 3, i32 6
  %24 = ptrtoint ptr %level10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %level10, align 4
  %26 = getelementptr inbounds i8, ptr %task, i32 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 204)
  %conv = trunc i32 %17 to i16
  %28 = ptrtoint ptr %task to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv, ptr %task, align 4
  %conv12 = trunc i32 %19 to i16
  %frame_height13 = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 1
  %29 = ptrtoint ptr %frame_height13 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv12, ptr %frame_height13, align 2
  %window_width = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 50
  %30 = ptrtoint ptr %window_width to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv, ptr %window_width, align 4
  %window_height = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 51
  %31 = ptrtoint ptr %window_height to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv12, ptr %window_height, align 2
  %window_vertical_offset = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 53
  %32 = ptrtoint ptr %window_vertical_offset to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %window_vertical_offset, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  %conv16 = zext i1 %tobool.not to i16
  %first_picture_in_sequence = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 6
  %33 = ptrtoint ptr %first_picture_in_sequence to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv16, ptr %first_picture_in_sequence, align 2
  %pic_order_cnt_type = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 5
  %34 = ptrtoint ptr %pic_order_cnt_type to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2, ptr %pic_order_cnt_type, align 4
  %bitrate_mode = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %bitrate_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bitrate_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp17 = icmp eq i32 %36, 1
  %conv20 = select i1 %cmp17, i16 1, i16 2
  %brc_type = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 20
  %37 = ptrtoint ptr %brc_type to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv20, ptr %brc_type, align 4
  %entropy_mode = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 3, i32 7
  %38 = ptrtoint ptr %entropy_mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %entropy_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp21 = icmp ne i32 %39, 0
  %conv24 = zext i1 %cmp21 to i16
  %entropy_coding_mode = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 19
  %40 = ptrtoint ptr %entropy_coding_mode to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv24, ptr %entropy_coding_mode, align 2
  %bitrate = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 3, i32 3
  %41 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bitrate, align 4
  %bit_rate = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 24
  %43 = ptrtoint ptr %bit_rate to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %bit_rate, align 4
  %44 = ptrtoint ptr %ctrls5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ctrls5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 535, i32 %45)
  %cmp25 = icmp ugt i32 %45, 535
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %framerate_den = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 28
  %46 = ptrtoint ptr %framerate_den to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %framerate_den, align 2
  %denominator = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 3, i32 0, i32 1
  %47 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %denominator, align 4
  %49 = ptrtoint ptr %ctrls5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ctrls5, align 4
  %shr = lshr i32 %50, 1
  %add = add i32 %48, -1
  %sub = add i32 %add, %shr
  %div = udiv i32 %sub, %50
  %conv30 = trunc i32 %div to i16
  %framerate_num = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 27
  %51 = ptrtoint ptr %framerate_num to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv30, ptr %framerate_num, align 4
  %52 = load i32, ptr %ctrls5, align 4
  %div33 = udiv i32 %42, %52
  %53 = ptrtoint ptr %bit_rate to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div33, ptr %bit_rate, align 4
  %54 = load i32, ptr %denominator, align 4
  %mul = mul i32 %54, %div33
  %conv37 = and i32 %div, 65535
  %div39 = udiv i32 %mul, %conv37
  store i32 %div39, ptr %bit_rate, align 4
  br label %if.end46

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv41 = trunc i32 %45 to i16
  %framerate_den42 = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 28
  %55 = ptrtoint ptr %framerate_den42 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv41, ptr %framerate_den42, align 2
  %denominator43 = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 3, i32 0, i32 1
  %56 = ptrtoint ptr %denominator43 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %denominator43, align 4
  %conv44 = trunc i32 %57 to i16
  %framerate_num45 = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 27
  %58 = ptrtoint ptr %framerate_num45 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv44, ptr %framerate_num45, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then27
  %profile = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 3, i32 5
  %59 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %profile, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp47 = icmp ugt i32 %60, 3
  %max_bitrate50 = getelementptr [16 x %struct.h264_profile], ptr @h264_infos_list, i32 0, i32 %25, i32 3
  %61 = ptrtoint ptr %max_bitrate50 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_bitrate50, align 4
  %. = select i1 %cmp47, i32 1200, i32 1000
  %mul55 = mul i32 %62, %.
  %63 = ptrtoint ptr %bit_rate to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bit_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %mul55)
  %cmp58 = icmp ugt i32 %64, %mul55
  br i1 %cmp58, label %do.body61, label %if.end46.if.end74_crit_edge

if.end46.if.end74_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74

do.body61:                                        ; preds = %if.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_h264_prepare_task.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_h264_prepare_task, %if.then66)) #4
          to label %do.end72 [label %if.then66], !srcloc !101

if.then66:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #6
  %name67 = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 6
  %65 = ptrtoint ptr %bit_rate to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bit_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_h264_prepare_task.__UNIQUE_ID_ddebug305, ptr noundef %3, ptr noundef nonnull @.str.26, ptr noundef %name67, i32 noundef %66, i32 noundef %mul55) #4
  br label %do.end72

do.end72:                                         ; preds = %if.then66, %do.body61
  %67 = ptrtoint ptr %bit_rate to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %mul55, ptr %bit_rate, align 4
  br label %if.end74

if.end74:                                         ; preds = %do.end72, %if.end46.if.end74_crit_edge
  %cpb_size = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 3, i32 8
  %68 = ptrtoint ptr %cpb_size to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpb_size, align 4
  %mul75 = mul i32 %69, 8000
  %cpb_buffer_size = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 23
  %70 = ptrtoint ptr %cpb_buffer_size to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %mul75, ptr %cpb_buffer_size, align 4
  %71 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %profile, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %72)
  %cmp77 = icmp ugt i32 %72, 3
  %max_cpb_size = getelementptr [16 x %struct.h264_profile], ptr @h264_infos_list, i32 0, i32 %25, i32 4
  %73 = ptrtoint ptr %max_cpb_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_cpb_size, align 4
  %.586 = select i1 %cmp77, i32 1200, i32 1000
  %mul85 = mul i32 %74, %.586
  call void @__sanitizer_cov_trace_cmp4(i32 %mul75, i32 %mul85)
  %cmp88 = icmp ugt i32 %mul75, %mul85
  br i1 %cmp88, label %do.body91, label %if.end74.if.end111_crit_edge

if.end74.if.end111_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

do.body91:                                        ; preds = %if.end74
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_h264_prepare_task.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_h264_prepare_task, %if.then103)) #4
          to label %do.end109 [label %if.then103], !srcloc !101

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #6
  %name104 = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 6
  %75 = ptrtoint ptr %cpb_buffer_size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cpb_buffer_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_h264_prepare_task.__UNIQUE_ID_ddebug306, ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef %name104, i32 noundef %76, i32 noundef %mul85) #4
  br label %do.end109

do.end109:                                        ; preds = %if.then103, %do.body91
  %77 = ptrtoint ptr %cpb_buffer_size to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %mul85, ptr %cpb_buffer_size, align 4
  br label %if.end111

if.end111:                                        ; preds = %do.end109, %if.end74.if.end111_crit_edge
  %brc_no_skip = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 71
  %78 = ptrtoint ptr %brc_no_skip to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %brc_no_skip, align 2
  %79 = ptrtoint ptr %bitrate_mode to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bitrate_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp113 = icmp eq i32 %80, 1
  br i1 %cmp113, label %land.lhs.true, label %if.end111.if.end125_crit_edge

if.end111.if.end125_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125

land.lhs.true:                                    ; preds = %if.end111
  %81 = ptrtoint ptr %bit_rate to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bit_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool116.not = icmp eq i32 %82, 0
  br i1 %tobool116.not, label %land.lhs.true.if.end125_crit_edge, label %if.then117

land.lhs.true.if.end125_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125

if.then117:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %83 = ptrtoint ptr %cpb_buffer_size to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cpb_buffer_size, align 4
  %div120 = udiv i32 %84, %82
  %85 = trunc i32 %div120 to i16
  %conv122 = mul i16 %85, 1000
  br label %if.end125

if.end125:                                        ; preds = %if.then117, %land.lhs.true.if.end125_crit_edge, %if.end111.if.end125_crit_edge
  %.sink584 = phi i16 [ %conv122, %if.then117 ], [ 0, %land.lhs.true.if.end125_crit_edge ], [ 0, %if.end111.if.end125_crit_edge ]
  %delay124 = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 29
  %86 = ptrtoint ptr %delay124 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %.sink584, ptr %delay124, align 4
  %87 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %info, align 8
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values)
  switch i32 %88, label %do.end131 [
    i32 842094158, label %if.end125.sw.epilog_crit_edge
    i32 825382478, label %sw.bb127
  ]

if.end125.sw.epilog_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb127:                                         ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end131:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  %name132 = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.29, ptr noundef %name132) #7
  %frame_errors134 = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 25
  %90 = ptrtoint ptr %frame_errors134 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %frame_errors134, align 4
  %inc135 = add i32 %91, 1
  store i32 %inc135, ptr %frame_errors134, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb127, %if.end125.sw.epilog_crit_edge
  %.sink585 = phi i16 [ 8, %sw.bb127 ], [ 0, %if.end125.sw.epilog_crit_edge ]
  %sampling_mode128 = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 41
  %92 = ptrtoint ptr %sampling_mode128 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %.sink585, ptr %sampling_mode128, align 2
  %rgb2_yuv_y_coeff = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 66
  %93 = ptrtoint ptr %rgb2_yuv_y_coeff to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 302190600, ptr %rgb2_yuv_y_coeff, align 4
  %rgb2_yuv_u_coeff = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 67
  %94 = ptrtoint ptr %rgb2_yuv_u_coeff to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -2146502661, ptr %rgb2_yuv_u_coeff, align 4
  %rgb2_yuv_v_coeff = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 68
  %95 = ptrtoint ptr %rgb2_yuv_v_coeff to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -2130775026, ptr %rgb2_yuv_v_coeff, align 4
  %dct8x8 = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 3, i32 9
  %96 = ptrtoint ptr %dct8x8 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %dct8x8, align 4, !range !102
  %98 = zext i8 %97 to i16
  %transform_mode = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 13
  %99 = ptrtoint ptr %transform_mode to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %transform_mode, align 2
  %encoder_complexity = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 17
  %100 = ptrtoint ptr %encoder_complexity to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 2, ptr %encoder_complexity, align 2
  %quant = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 21
  %101 = ptrtoint ptr %quant to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 28, ptr %quant, align 2
  %framerate_den138 = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 28
  %102 = ptrtoint ptr %framerate_den138 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %framerate_den138, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %cmp140 = icmp eq i16 %103, 0
  br i1 %cmp140, label %do.end145, label %if.end150

do.end145:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %name146 = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef %name146) #7
  %frame_errors148 = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 25
  %104 = ptrtoint ptr %frame_errors148 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %frame_errors148, align 4
  %inc149 = add i32 %105, 1
  store i32 %inc149, ptr %frame_errors148, align 4
  br label %cleanup

if.end150:                                        ; preds = %sw.epilog
  %framerate_num151 = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 27
  %106 = ptrtoint ptr %framerate_num151 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %framerate_num151, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %cmp153 = icmp eq i16 %107, 0
  br i1 %cmp153, label %if.then155, label %if.end150.if.end157_crit_edge

if.end150.if.end157_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end157

if.then155:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #6
  %108 = ptrtoint ptr %brc_type to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %brc_type, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %if.end150.if.end157_crit_edge
  %strict_hrd_compliancy = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 30
  %109 = ptrtoint ptr %strict_hrd_compliancy to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 1, ptr %strict_hrd_compliancy, align 2
  %qpmin = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 3, i32 10
  %110 = ptrtoint ptr %qpmin to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %qpmin, align 4
  %112 = tail call i32 @llvm.umin.i32(i32 %111, i32 51)
  %conv169 = trunc i32 %112 to i16
  %qp_min = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 25
  %113 = ptrtoint ptr %qp_min to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv169, ptr %qp_min, align 4
  %qpmax = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 3, i32 11
  %114 = ptrtoint ptr %qpmax to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %qpmax, align 4
  %116 = tail call i32 @llvm.umin.i32(i32 %115, i32 51)
  %conv184 = trunc i32 %116 to i16
  %qp_max = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 26
  %117 = ptrtoint ptr %qp_max to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv184, ptr %qp_max, align 2
  %paddr185 = getelementptr inbounds %struct.hva_frame, ptr %frame, i32 0, i32 3
  %118 = ptrtoint ptr %paddr185 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %paddr185, align 8
  %addr_source_buffer = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 31
  %120 = ptrtoint ptr %addr_source_buffer to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %addr_source_buffer, align 4
  %paddr186 = getelementptr inbounds %struct.hva_buffer, ptr %9, i32 0, i32 1
  %121 = ptrtoint ptr %paddr186 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %paddr186, align 4
  %addr_fwd_ref_buffer = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 32
  %123 = ptrtoint ptr %addr_fwd_ref_buffer to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %addr_fwd_ref_buffer, align 4
  %paddr187 = getelementptr inbounds %struct.hva_buffer, ptr %11, i32 0, i32 1
  %124 = ptrtoint ptr %paddr187 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %paddr187, align 4
  %addr_rec_buffer = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 33
  %126 = ptrtoint ptr %addr_rec_buffer to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %addr_rec_buffer, align 4
  %paddr188 = getelementptr inbounds %struct.hva_stream, ptr %stream, i32 0, i32 2
  %127 = ptrtoint ptr %paddr188 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %paddr188, align 8
  %size = getelementptr inbounds %struct.hva_stream, ptr %stream, i32 0, i32 5
  %129 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %size, align 4
  %add189 = add i32 %130, %128
  %addr_output_bitstream_end = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 35
  %131 = ptrtoint ptr %addr_output_bitstream_end to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %add189, ptr %addr_output_bitstream_end, align 4
  %132 = load i32, ptr %paddr188, align 8
  %addr_output_bitstream_start = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 34
  %133 = ptrtoint ptr %addr_output_bitstream_start to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %addr_output_bitstream_start, align 4
  %134 = load i32, ptr %paddr188, align 8
  %.tr = trunc i32 %134 to i16
  %135 = shl i16 %.tr, 3
  %conv193 = and i16 %135, 120
  %bitstream_offset = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 40
  %136 = ptrtoint ptr %bitstream_offset to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv193, ptr %bitstream_offset, align 4
  %task194 = getelementptr inbounds %struct.hva_h264_ctx, ptr %5, i32 0, i32 3
  %137 = ptrtoint ptr %task194 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %task194, align 4
  %paddr195 = getelementptr inbounds %struct.hva_buffer, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %paddr195 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %paddr195, align 4
  %add196 = add i32 %140, 208
  %addr_param_out = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 42
  %141 = ptrtoint ptr %addr_param_out to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %add196, ptr %addr_param_out, align 4
  %rem = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool197.not = icmp eq i32 %rem, 0
  %paddr213 = getelementptr inbounds %struct.hva_buffer, ptr %7, i32 0, i32 1
  %142 = ptrtoint ptr %paddr213 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %paddr213, align 4
  %add214 = add i32 %143, 255
  %and215 = and i32 %add214, -256
  br i1 %tobool197.not, label %if.else212, label %if.then198

if.then198:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #6
  %addr_spatial_context = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 39
  %144 = ptrtoint ptr %addr_spatial_context to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %and215, ptr %addr_spatial_context, align 4
  %145 = ptrtoint ptr %paddr213 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %paddr213, align 4
  %add203 = add nuw nsw i32 %17, 15
  %div204565 = and i32 %add203, -16
  %add205 = add nuw nsw i32 %19, 15
  %div206566 = lshr i32 %add205, 4
  %mul208 = mul nuw nsw i32 %div204565, %div206566
  %add209 = add nuw nsw i32 %mul208, 255
  %add210 = add i32 %add209, %146
  %and211 = and i32 %add210, -256
  %addr_temporal_context = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 72
  %147 = ptrtoint ptr %addr_temporal_context to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %and211, ptr %addr_temporal_context, align 4
  br label %if.end228

if.else212:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #6
  %addr_temporal_context216 = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 72
  %148 = ptrtoint ptr %addr_temporal_context216 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %and215, ptr %addr_temporal_context216, align 4
  %149 = ptrtoint ptr %paddr213 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %paddr213, align 4
  %add218 = add nuw nsw i32 %17, 15
  %div219558 = and i32 %add218, -16
  %add220 = add nuw nsw i32 %19, 15
  %div221559 = lshr i32 %add220, 4
  %mul223 = mul nuw nsw i32 %div219558, %div221559
  %add224 = add nuw nsw i32 %mul223, 255
  %add225 = add i32 %add224, %150
  %and226 = and i32 %add225, -256
  %addr_spatial_context227 = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 39
  %151 = ptrtoint ptr %addr_spatial_context227 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %and226, ptr %addr_spatial_context227, align 4
  br label %if.end228

if.end228:                                        ; preds = %if.else212, %if.then198
  %div233561.pre-phi = phi i32 [ %div221559, %if.else212 ], [ %div206566, %if.then198 ]
  %add230.pre-phi = phi i32 [ %add218, %if.else212 ], [ %add203, %if.then198 ]
  %paddr229 = getelementptr inbounds %struct.hva_buffer, ptr %7, i32 0, i32 1
  %152 = ptrtoint ptr %paddr229 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %paddr229, align 4
  %div231560 = lshr i32 %add230.pre-phi, 4
  %mul234 = shl nuw nsw i32 %div231560, 5
  %mul236 = mul nuw nsw i32 %mul234, %div233561.pre-phi
  %add237 = add nuw nsw i32 %mul236, 255
  %add238 = add i32 %add237, %153
  %and239 = and i32 %add238, -256
  %addr_brc_in_out_parameter = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 73
  %154 = ptrtoint ptr %addr_brc_in_out_parameter to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %and239, ptr %addr_brc_in_out_parameter, align 4
  %add242 = add i32 %and239, 335
  %and243 = and i32 %add242, -256
  %addr_slice_header = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 55
  %155 = ptrtoint ptr %addr_slice_header to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %and243, ptr %addr_slice_header, align 4
  %add244 = add i32 %15, 255
  %and245 = and i32 %add244, -256
  %addr_external_sw = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 36
  %156 = ptrtoint ptr %addr_external_sw to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %and245, ptr %addr_external_sw, align 4
  %157 = mul nuw nsw i32 %div231560, 3072
  %mul251 = add nuw nsw i32 %157, 32256
  %div252562 = lshr exact i32 %mul251, 1
  %add253 = add i32 %div252562, %15
  %add254 = add i32 %add253, 255
  %and255 = and i32 %add254, -256
  %addr_local_rec_buffer = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 38
  %158 = ptrtoint ptr %addr_local_rec_buffer to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %and255, ptr %addr_local_rec_buffer, align 4
  %mul259 = shl nuw nsw i32 %div231560, 7
  %add260 = add i32 %add253, %mul259
  %add261 = add i32 %add260, 255
  %and262 = and i32 %add261, -256
  %addr_lctx = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 37
  %159 = ptrtoint ptr %addr_lctx to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %and262, ptr %addr_lctx, align 4
  %160 = tail call i32 @llvm.umax.i32(i32 %17, i32 %19)
  %add270 = shl nuw nsw i32 %160, 3
  %div271563 = add nuw nsw i32 %add270, 120
  %mul273 = and i32 %div271563, -128
  %add275 = add i32 %add261, %mul273
  %and276 = and i32 %add275, -256
  %addr_cabac_context_buffer = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 45
  %161 = ptrtoint ptr %addr_cabac_context_buffer to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %and276, ptr %addr_cabac_context_buffer, align 4
  %gop_size = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 3, i32 2
  %162 = ptrtoint ptr %gop_size to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %gop_size, align 4
  %rem277 = urem i32 %13, %163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem277)
  %tobool278.not = icmp eq i32 %rem277, 0
  %picture_coding_type = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 3
  br i1 %tobool278.not, label %if.then279, label %if.else280

if.then279:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #6
  %164 = ptrtoint ptr %picture_coding_type to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 0, ptr %picture_coding_type, align 4
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %stream, i32 0, i32 1
  %165 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %flags, align 8
  %or = or i32 %166, 8
  store i32 %or, ptr %flags, align 8
  br label %if.end285

if.else280:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #6
  %167 = ptrtoint ptr %picture_coding_type to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 1, ptr %picture_coding_type, align 4
  %flags283 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %stream, i32 0, i32 1
  %168 = ptrtoint ptr %flags283 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %flags283, align 8
  %and284 = and i32 %169, -9
  store i32 %and284, ptr %flags283, align 8
  br label %if.end285

if.end285:                                        ; preds = %if.else280, %if.then279
  %vaddr = getelementptr inbounds %struct.hva_buffer, ptr %7, i32 0, i32 2
  %170 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %vaddr, align 4
  %172 = ptrtoint ptr %addr_slice_header to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %addr_slice_header, align 4
  %174 = ptrtoint ptr %paddr229 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %paddr229, align 4
  %sub288 = sub i32 %173, %175
  %add.ptr = getelementptr i8, ptr %171, i32 %sub288
  %slice_header_size_in_bits = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 56
  %slice_header_offset0 = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 57
  %slice_header_offset1 = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 58
  %slice_header_offset2 = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 59
  tail call fastcc void @hva_h264_fill_slice_header(ptr noundef %pctx, ptr noundef %add.ptr, ptr noundef %ctrls5, i32 noundef %13, ptr noundef %slice_header_size_in_bits, ptr noundef %slice_header_offset0, ptr noundef %slice_header_offset1, ptr noundef %slice_header_offset2)
  %chroma_qp_index_offset = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 18
  %176 = ptrtoint ptr %chroma_qp_index_offset to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 2, ptr %chroma_qp_index_offset, align 4
  %slice_synchro_enable = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 64
  %177 = ptrtoint ptr %slice_synchro_enable to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 0, ptr %slice_synchro_enable, align 4
  %max_slice_number = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 65
  %178 = ptrtoint ptr %max_slice_number to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 1, ptr %max_slice_number, align 2
  %flags291 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %stream, i32 0, i32 1
  %179 = ptrtoint ptr %flags291 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %flags291, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %180)
  %cmp292 = icmp eq i32 %180, 8
  br i1 %cmp292, label %land.lhs.true294, label %if.end285.if.end311_crit_edge

if.end285.if.end311_crit_edge:                    ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end311

land.lhs.true294:                                 ; preds = %if.end285
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %21)
  %cmp295 = icmp ugt i32 %21, 128
  br i1 %cmp295, label %do.end300, label %land.lhs.true294.if.end311_crit_edge

land.lhs.true294.if.end311_crit_edge:             ; preds = %land.lhs.true294
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end311

do.end300:                                        ; preds = %land.lhs.true294
  call void @__sanitizer_cov_trace_pc() #6
  %name301 = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.35, ptr noundef %name301, i32 noundef %21) #7
  %frame_errors303 = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 25
  %181 = ptrtoint ptr %frame_errors303 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %frame_errors303, align 4
  %inc304 = add i32 %182, 1
  store i32 %inc304, ptr %frame_errors303, align 4
  br label %cleanup

if.end311:                                        ; preds = %land.lhs.true294.if.end311_crit_edge, %if.end285.if.end311_crit_edge
  %payload.0 = phi i32 [ 0, %if.end285.if.end311_crit_edge ], [ %21, %land.lhs.true294.if.end311_crit_edge ]
  %sei_fp = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 3, i32 14
  %183 = ptrtoint ptr %sei_fp to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %sei_fp, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool312.not = icmp eq i8 %184, 0
  br i1 %tobool312.not, label %if.end311.if.end326_crit_edge, label %land.lhs.true314

if.end311.if.end326_crit_edge:                    ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end326

land.lhs.true314:                                 ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #6
  %vaddr315 = getelementptr inbounds %struct.hva_stream, ptr %stream, i32 0, i32 3
  %185 = ptrtoint ptr %vaddr315 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %vaddr315, align 4
  %add.ptr.i = getelementptr i8, ptr %186, i32 %payload.0
  %187 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %187, i32 4)
  store i32 1, ptr %add.ptr.i, align 1
  %add.i = add nuw nsw i32 %payload.0, 4
  %arrayidx.i = getelementptr i8, ptr %186, i32 %add.i
  %188 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 6, ptr %arrayidx.i, align 1
  %add2.i = add nuw nsw i32 %payload.0, 5
  %arrayidx3.i = getelementptr i8, ptr %186, i32 %add2.i
  %189 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 21, ptr %arrayidx3.i, align 1
  %add4.i = add nuw nsw i32 %payload.0, 6
  %arrayidx5.i = getelementptr i8, ptr %186, i32 %add4.i
  %190 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 1, ptr %arrayidx5.i, align 1
  %add6.i = add nuw nsw i32 %payload.0, 7
  %arrayidx47.i = getelementptr i8, ptr %186, i32 %add6.i
  %191 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 -64, ptr %arrayidx47.i, align 1
  %add48.i = add nuw nsw i32 %payload.0, 8
  %arrayidx49.i = getelementptr i8, ptr %186, i32 %add48.i
  %192 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 -128, ptr %arrayidx49.i, align 1
  %add50.i = add nuw nsw i32 %payload.0, 9
  br label %if.end326

if.end326:                                        ; preds = %land.lhs.true314, %if.end311.if.end326_crit_edge
  %payload.1 = phi i32 [ %payload.0, %if.end311.if.end326_crit_edge ], [ %add50.i, %land.lhs.true314 ]
  %mul327 = shl nuw nsw i32 %payload.1, 3
  %non_vcl_nalu_size = getelementptr inbounds %struct.hva_h264_td, ptr %task, i32 0, i32 22
  %193 = ptrtoint ptr %non_vcl_nalu_size to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %mul327, ptr %non_vcl_nalu_size, align 4
  %shr328 = and i32 %payload.1, -16
  %194 = ptrtoint ptr %addr_output_bitstream_start to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %addr_output_bitstream_start, align 4
  %add331 = add i32 %195, %shr328
  store i32 %add331, ptr %addr_output_bitstream_start, align 4
  %196 = ptrtoint ptr %bitstream_offset to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %bitstream_offset, align 4
  %.tr564 = trunc i32 %payload.1 to i16
  %198 = shl nuw nsw i16 %.tr564, 3
  %199 = and i16 %198, 120
  %conv339 = add i16 %197, %199
  store i16 %conv339, ptr %bitstream_offset, align 4
  %200 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %payload.1, ptr %bytesused, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end326, %do.end300, %do.end145, %do.end131, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end131 ], [ -22, %do.end145 ], [ -22, %do.end300 ], [ 0, %if.end326 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hva_hw_execute_task(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hva_h264_fill_slice_header(ptr noundef %pctx, ptr nocapture noundef %slice_header_addr, ptr nocapture noundef readonly %ctrls, i32 noundef %frame_num, ptr nocapture noundef %header_size, ptr nocapture noundef writeonly %header_offset0, ptr nocapture noundef %header_offset1, ptr nocapture noundef writeonly %header_offset2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pctx, align 8
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %rem = srem i32 %frame_num, 2
  %gop_size = getelementptr inbounds %struct.hva_controls, ptr %ctrls, i32 0, i32 2
  %4 = ptrtoint ptr %gop_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gop_size, align 4
  %rem2 = urem i32 %frame_num, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem2)
  %tobool.not = icmp eq i32 %rem2, 0
  %6 = ptrtoint ptr %slice_header_addr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 5388896000, ptr %slice_header_addr, align 1
  %7 = ptrtoint ptr %header_size to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 56, ptr %header_size, align 2
  %8 = ptrtoint ptr %header_offset0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 40, ptr %header_offset0, align 2
  %9 = ptrtoint ptr %header_offset1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 13, ptr %header_offset1, align 2
  %10 = ptrtoint ptr %header_offset2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %header_offset2, align 2
  br i1 %tobool.not, label %if.then5, label %if.else27

if.then5:                                         ; preds = %entry
  %arrayidx = getelementptr i8, ptr %slice_header_addr, i32 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 101, ptr %arrayidx, align 1
  %arrayidx6 = getelementptr i8, ptr %slice_header_addr, i32 5
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 17, ptr %arrayidx6, align 1
  %13 = ptrtoint ptr %gop_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gop_size, align 4
  %div = udiv i32 %frame_num, %14
  %rem8 = and i32 %div, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem8)
  %tobool9.not = icmp eq i32 %rem8, 0
  %15 = ptrtoint ptr %header_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %header_size, align 2
  br i1 %tobool9.not, label %if.else17, label %if.then10

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i16 %16, 4
  %17 = ptrtoint ptr %header_size to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %add, ptr %header_size, align 2
  %18 = ptrtoint ptr %header_offset1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %header_offset1, align 2
  %add13 = add i16 %19, 4
  store i16 %add13, ptr %header_offset1, align 2
  %arrayidx15 = getelementptr i8, ptr %slice_header_addr, i32 6
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr i8, ptr %slice_header_addr, i32 7
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 112, ptr %arrayidx16, align 1
  br label %do.body

if.else17:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %add19 = add i16 %16, 2
  %22 = ptrtoint ptr %header_size to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %add19, ptr %header_size, align 2
  %23 = ptrtoint ptr %header_offset1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %header_offset1, align 2
  %add22 = add i16 %24, 2
  store i16 %add22, ptr %header_offset1, align 2
  %arrayidx24 = getelementptr i8, ptr %slice_header_addr, i32 6
  %25 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 9, ptr %arrayidx24, align 1
  %arrayidx25 = getelementptr i8, ptr %slice_header_addr, i32 7
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -64, ptr %arrayidx25, align 1
  br label %do.body

if.else27:                                        ; preds = %entry
  %entropy_mode = getelementptr inbounds %struct.hva_controls, ptr %ctrls, i32 0, i32 7
  %27 = ptrtoint ptr %entropy_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %entropy_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp28 = icmp eq i32 %28, 1
  br i1 %cmp28, label %if.then30, label %if.else27.if.end38_crit_edge

if.else27.if.end38_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then30:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %header_size to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %header_size, align 2
  %add32 = add i16 %30, 1
  store i16 %add32, ptr %header_size, align 2
  %31 = ptrtoint ptr %header_offset1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %header_offset1, align 2
  %add35 = add i16 %32, 1
  store i16 %add35, ptr %header_offset1, align 2
  %arrayidx37 = getelementptr i8, ptr %slice_header_addr, i32 7
  %33 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -128, ptr %arrayidx37, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %if.else27.if.end38_crit_edge
  %arrayidx39 = getelementptr i8, ptr %slice_header_addr, i32 5
  %34 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx39, align 1
  %36 = trunc i32 %rem2 to i8
  %37 = lshr i8 %36, 2
  %38 = and i8 %37, 3
  %conv42 = add i8 %35, %38
  store i8 %conv42, ptr %arrayidx39, align 1
  %arrayidx44 = getelementptr i8, ptr %slice_header_addr, i32 6
  %39 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx44, align 1
  %41 = shl i8 %36, 6
  %conv47 = add i8 %40, %41
  store i8 %conv47, ptr %arrayidx44, align 1
  br label %do.body

do.body:                                          ; preds = %if.end38, %if.else17, %if.then10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_h264_fill_slice_header.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_h264_fill_slice_header, %if.then52)) #4
          to label %do.end [label %if.then52], !srcloc !101

if.then52:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.hva_ctx, ptr %pctx, i32 0, i32 6
  %42 = ptrtoint ptr %header_size to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %header_size, align 2
  %conv53 = zext i16 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_h264_fill_slice_header.__UNIQUE_ID_ddebug298, ptr noundef %3, ptr noundef nonnull @.str.41, ptr noundef %name, ptr noundef nonnull @.str.40, i32 noundef %rem2, i32 noundef %rem, i32 noundef %conv53) #4
  br label %do.end

do.end:                                           ; preds = %if.then52, %do.body
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !74, !75, !76, !78, !80, !81, !82, !83, !85, !87, !88, !89, !91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 1044, i32 10}
!2 = !{ptr @nv12h264enc, !3, !"nv12h264enc", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 1043, i32 22}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 1055, i32 10}
!6 = !{ptr @nv21h264enc, !7, !"nv21h264enc", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 1054, i32 22}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 906, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hva_h264_open._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @hva_h264_open._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 924, i32 8}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 927, i32 3}
!20 = !{ptr @hva_h264_open._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @hva_h264_open._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 936, i32 8}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 939, i32 3}
!26 = !{ptr @hva_h264_open._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hva_h264_open._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 947, i32 8}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 950, i32 3}
!32 = !{ptr @hva_h264_open._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @hva_h264_open._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 959, i32 8}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 962, i32 3}
!38 = !{ptr @hva_h264_open._entry.20, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @hva_h264_open._entry_ptr.22, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 616, i32 3}
!42 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @hva_h264_prepare_task._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @hva_h264_prepare_task._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 686, i32 3}
!47 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @hva_h264_prepare_task.__UNIQUE_ID_ddebug305, !46, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 705, i32 3}
!51 = !{ptr @hva_h264_prepare_task.__UNIQUE_ID_ddebug306, !50, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 729, i32 3}
!54 = !{ptr @hva_h264_prepare_task._entry.28, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @hva_h264_prepare_task._entry_ptr.30, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 755, i32 3}
!58 = !{ptr @hva_h264_prepare_task._entry.31, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @hva_h264_prepare_task._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 845, i32 3}
!62 = !{ptr @hva_h264_prepare_task._entry.34, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @hva_h264_prepare_task._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 858, i32 3}
!66 = !{ptr @hva_h264_prepare_task._entry.37, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @hva_h264_prepare_task._entry_ptr.39, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @h264_infos_list, !69, !"h264_infos_list", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 59, i32 34}
!70 = distinct !{null, !71, !"slice_header", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 431, i32 29}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 482, i32 2}
!74 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @hva_h264_fill_slice_header.__UNIQUE_ID_ddebug298, !73, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!76 = distinct !{null, !77, !"start", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 526, i32 18}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 581, i32 3}
!80 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @hva_h264_fill_sei_nal._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @hva_h264_fill_sei_nal._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = distinct !{null, !84, !"start", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 493, i32 18}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 495, i32 2}
!87 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @hva_h264_fill_data_nal.__UNIQUE_ID_ddebug299, !86, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/sti/hva/hva-h264.c", i32 499, i32 3}
!91 = !{ptr @hva_h264_fill_data_nal.__UNIQUE_ID_ddebug300, !90, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 2148375341, i64 2148375346, i64 2148375359, i64 2148375403, i64 2148375437, i64 2148375458}
!102 = !{i8 0, i8 2}
