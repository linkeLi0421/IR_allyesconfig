; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sti/delta/delta-mjpeg-dec.c_pt.bc'
source_filename = "../drivers/media/platform/sti/delta/delta-mjpeg-dec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.delta_dec = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.delta_ctx = type { i32, %struct.v4l2_fh, ptr, ptr, %struct.delta_ipc_ctx, i32, i32, i32, i32, %struct.delta_streaminfo, %struct.delta_frameinfo, i32, [21 x ptr], i32, i32, i32, i32, i32, i32, %struct.list_head, [100 x i8], %struct.work_struct, %struct.mutex, i8, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delta_ipc_ctx = type { i32, i32, %struct.completion, %struct.delta_buf, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delta_buf = type { i32, ptr, i32, ptr, i32 }
%struct.delta_streaminfo = type { i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.delta_frameinfo = type { i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delta_mjpeg_ctx = type { %struct.mjpeg_header, ptr, ptr, ptr, ptr, [3000 x i8] }
%struct.mjpeg_header = type { i32, i32, i32, i32, i32, [5 x %struct.mjpeg_component] }
%struct.mjpeg_component = type { i32, i32, i32, i32 }
%struct.delta_ipc_param = type { i32, ptr }
%struct.jpeg_video_decode_init_params_t = type { i32, i32, i32 }
%struct.delta_dev = type { %struct.v4l2_device, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, [10 x ptr], i32, [10 x i32], i32, [10 x i32], i32, i8, ptr, %struct.rpmsg_driver, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_decode_params_t = type { i32, i32, %struct.jpeg_decoded_buffer_address_t, %struct.jpeg_display_buffer_address_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.jpeg_decoded_buffer_address_t = type { i32, i32 }
%struct.jpeg_display_buffer_address_t = type { i32, i32, i32, i32, i32 }
%struct.delta_frame = type { %struct.vb2_v4l2_buffer, %struct.list_head, %struct.delta_frameinfo, i8, i32, ptr, i32, i32, i32, i64, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.91, i32 }
%union.anon.91 = type { i32 }
%struct.jpeg_decode_return_params_t = type { i32, i32, i32, i32, i32, i32, i32, [32 x i32] }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MJPEG\00", [26 x i8] zeroinitializer }, align 32
@mjpegdec = dso_local constant { %struct.delta_dec, [60 x i8] } { %struct.delta_dec { ptr @.str, i32 1196444237, i32 842094158, i32 0, i32 0, i8 0, ptr @delta_mjpeg_open, ptr @delta_mjpeg_close, ptr null, ptr @delta_mjpeg_get_streaminfo, ptr @delta_get_frameinfo_default, ptr null, ptr @delta_mjpeg_decode, ptr @delta_mjpeg_get_frame, ptr @delta_recycle_default, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@delta_mjpeg_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 394, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s  stream resolution too large: %dx%d > %d pixels budget\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"delta_mjpeg_decode\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/media/platform/sti/delta/delta-mjpeg-dec.c\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@delta_mjpeg_decode._entry_ptr = internal global ptr @delta_mjpeg_decode._entry, section ".printk_index", align 4
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"JPEG_DECODER_HW0\00", [47 x i8] zeroinitializer }, align 32
@delta_mjpeg_ipc_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 232, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s  dumping command %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"delta_mjpeg_ipc_open\00", [43 x i8] zeroinitializer }, align 32
@delta_mjpeg_ipc_open._entry_ptr = internal global ptr @delta_mjpeg_ipc_open._entry, section ".printk_index", align 4
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"jpeg_video_decode_init_params_t\0Acircular_buffer_begin_addr_p 0x%x\0Acircular_buffer_end_addr_p   0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@delta_mjpeg_ipc_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.11, ptr @.str.3, i32 300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"delta_mjpeg_ipc_decode\00", [41 x i8] zeroinitializer }, align 32
@delta_mjpeg_ipc_decode._entry_ptr = internal global ptr @delta_mjpeg_ipc_decode._entry, section ".printk_index", align 4
@delta_mjpeg_ipc_decode._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.11, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@delta_mjpeg_ipc_decode._entry_ptr.13 = internal global ptr @delta_mjpeg_ipc_decode._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [415 x i8], [97 x i8] } { [415 x i8] c"jpeg_decode_params_t\0Apicture_start_addr_p                  0x%x\0Apicture_end_addr_p                    0x%x\0Adecoding_mode                        %d\0Adisplay_buffer_addr.display_decimated_luma_p   0x%x\0Adisplay_buffer_addr.display_decimated_chroma_p 0x%x\0Amain_aux_enable                       %d\0Aadditional_flags                     0x%x\0Afield_flag                           %x\0Ais_jpeg_image                        %x\0A\00", [97 x i8] zeroinitializer }, align 32
@delta_mjpeg_check_status._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.delta_mjpeg_check_status = private unnamed_addr constant [25 x i8] c"delta_mjpeg_check_status\00", align 1
@delta_mjpeg_check_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.delta_mjpeg_check_status, ptr @.str.3, i32 184, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s  firmware: stream error @ frame %d (%s)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@delta_mjpeg_check_status._entry_ptr = internal global ptr @delta_mjpeg_check_status._entry, section ".printk_index", align 4
@delta_mjpeg_check_status._rs.18 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@delta_mjpeg_check_status._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.delta_mjpeg_check_status, ptr @.str.3, i32 190, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s  firmware: decode error @ frame %d (%s)\0A\00", [52 x i8] zeroinitializer }, align 32
@delta_mjpeg_check_status._entry_ptr.21 = internal global ptr @delta_mjpeg_check_status._entry.19, section ".printk_index", align 4
@delta_mjpeg_check_status.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @__func__.delta_mjpeg_check_status, ptr @.str.3, ptr @.str.23, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"st_delta\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s  firmware: decoding time(us)=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"JPEG_DECODER_NO_ERROR\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"JPEG_DECODER_UNDEFINED_HUFF_TABLE\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"JPEG_DECODER_UNSUPPORTED_MARKER\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"JPEG_DECODER_UNABLE_ALLOCATE_MEMORY\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"JPEG_DECODER_NON_SUPPORTED_SAMP_FACTORS\00", [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"JPEG_DECODER_BAD_PARAMETER\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"JPEG_DECODER_DECODE_ERROR\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"JPEG_DECODER_BAD_RESTART_MARKER\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"JPEG_DECODER_UNSUPPORTED_COLORSPACE\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"JPEG_DECODER_BAD_SOS_SPECTRAL\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"JPEG_DECODER_BAD_SOS_SUCCESSIVE\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"JPEG_DECODER_BAD_HEADER_LENGTH\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"JPEG_DECODER_BAD_COUNT_VALUE\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"JPEG_DECODER_BAD_DHT_MARKER\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"JPEG_DECODER_BAD_INDEX_VALUE\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"JPEG_DECODER_BAD_NUMBER_HUFFMAN_TABLES\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"JPEG_DECODER_BAD_QUANT_TABLE_LENGTH\00", [60 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"JPEG_DECODER_BAD_NUMBER_QUANT_TABLES\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"JPEG_DECODER_BAD_COMPONENT_COUNT\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"JPEG_DECODER_DIVIDE_BY_ZERO_ERROR\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"JPEG_DECODER_NOT_JPG_IMAGE\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"JPEG_DECODER_UNSUPPORTED_ROTATION_ANGLE\00", [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"JPEG_DECODER_UNSUPPORTED_SCALING\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"JPEG_DECODER_INSUFFICIENT_OUTPUTBUFFER_SIZE\00", [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"JPEG_DECODER_BAD_HWCFG_GP_VERSION_VALUE\00", [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"JPEG_DECODER_BAD_VALUE_FROM_RED\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"JPEG_DECODER_BAD_SUBREGION_PARAMETERS\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"JPEG_DECODER_PROGRESSIVE_DECODE_NOT_SUPPORTED\00", [50 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"JPEG_DECODER_ERROR_TASK_TIMEOUT\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"JPEG_DECODER_ERROR_FEATURE_NOT_SUPPORTED\00", [55 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"!unknown MJPEG error!\00", [42 x i8] zeroinitializer }, align 32
@switch.table.delta_mjpeg_check_status = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [40 x i8] zeroinitializer }, align 32
@switch.table.delta_mjpeg_check_status.55 = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 7, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 445, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant [9 x i8] c"mjpegdec\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 444, i32 24 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 390, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 227, i32 29 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 230, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 39, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 42, i32 9 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 297, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 308, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 60, i32 9 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 181, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 187, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 196, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 107, i32 10 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 109, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 111, i32 10 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 113, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 115, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 117, i32 10 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 119, i32 10 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 121, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 123, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 125, i32 10 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 127, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 129, i32 10 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 131, i32 10 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 133, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 135, i32 10 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 137, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 139, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 141, i32 10 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 143, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 145, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 147, i32 10 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 149, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 151, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 153, i32 10 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 155, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 157, i32 10 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 159, i32 10 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 161, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 163, i32 10 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 165, i32 10 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private constant [54 x i8] c"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 167, i32 10 }
@___asan_gen_.233 = private unnamed_addr constant [38 x i8] c"switch.table.delta_mjpeg_check_status\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [41 x i8] c"switch.table.delta_mjpeg_check_status.55\00", align 1
@llvm.compiler.used = appending global [67 x ptr] [ptr @delta_mjpeg_check_status._entry, ptr @delta_mjpeg_check_status._entry.19, ptr @delta_mjpeg_check_status._entry_ptr, ptr @delta_mjpeg_check_status._entry_ptr.21, ptr @delta_mjpeg_decode._entry, ptr @delta_mjpeg_decode._entry_ptr, ptr @delta_mjpeg_ipc_decode._entry, ptr @delta_mjpeg_ipc_decode._entry.12, ptr @delta_mjpeg_ipc_decode._entry_ptr, ptr @delta_mjpeg_ipc_decode._entry_ptr.13, ptr @delta_mjpeg_ipc_open._entry, ptr @delta_mjpeg_ipc_open._entry_ptr, ptr @.str, ptr @mjpegdec, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @delta_mjpeg_check_status._rs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @delta_mjpeg_check_status._rs.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @switch.table.delta_mjpeg_check_status, ptr @switch.table.delta_mjpeg_check_status.55], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mjpegdec to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_mjpeg_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_mjpeg_ipc_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_mjpeg_ipc_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_mjpeg_ipc_decode._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 415, i32 512, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_mjpeg_check_status._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_mjpeg_check_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_mjpeg_check_status._rs.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_mjpeg_check_status._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.delta_mjpeg_check_status to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.delta_mjpeg_check_status.55 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_mjpeg_open(ptr nocapture noundef writeonly %pctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3116) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 24
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_mjpeg_close(ptr nocapture noundef readonly %pctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ipc_hdl = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ipc_hdl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipc_hdl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @delta_ipc_close(ptr noundef nonnull %3) #7
  %4 = ptrtoint ptr %ipc_hdl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ipc_hdl, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @delta_mjpeg_get_streaminfo(ptr nocapture noundef readonly %pctx, ptr nocapture noundef writeonly %streaminfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %header = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %streamformat = getelementptr inbounds %struct.delta_streaminfo, ptr %streaminfo, i32 0, i32 1
  %4 = ptrtoint ptr %streamformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1196444237, ptr %streamformat, align 4
  %5 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %header, align 4
  %frame_width = getelementptr inbounds %struct.mjpeg_header, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %frame_width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frame_width, align 4
  %width = getelementptr inbounds %struct.delta_streaminfo, ptr %streaminfo, i32 0, i32 2
  %9 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %width, align 4
  %10 = load ptr, ptr %header, align 4
  %frame_height = getelementptr inbounds %struct.mjpeg_header, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %frame_height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frame_height, align 4
  %height = getelementptr inbounds %struct.delta_streaminfo, ptr %streaminfo, i32 0, i32 3
  %13 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height, align 4
  %field = getelementptr inbounds %struct.delta_streaminfo, ptr %streaminfo, i32 0, i32 7
  %14 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %field, align 4
  %dpb = getelementptr inbounds %struct.delta_streaminfo, ptr %streaminfo, i32 0, i32 4
  %15 = ptrtoint ptr %dpb to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %dpb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @delta_get_frameinfo_default(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_mjpeg_decode(ptr noundef %pctx, ptr nocapture noundef readonly %pau) #0 align 64 {
entry:
  %frame.i = alloca ptr, align 4
  %ipc_param.i58 = alloca %struct.delta_ipc_param, align 4
  %ipc_status.i = alloca %struct.delta_ipc_param, align 4
  %params_struct.i = alloca %struct.jpeg_video_decode_init_params_t, align 4
  %ipc_buf.i = alloca ptr, align 4
  %ipc_param.i = alloca %struct.delta_ipc_param, align 4
  %hdl.i = alloca ptr, align 4
  %data_offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %priv = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 24
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %au.sroa.4.0.pau.sroa_idx = getelementptr inbounds i8, ptr %pau, i32 748
  %4 = ptrtoint ptr %au.sroa.4.0.pau.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %au.sroa.4.0.copyload = load i32, ptr %au.sroa.4.0.pau.sroa_idx, align 4
  %au.sroa.7.0.pau.sroa_idx = getelementptr inbounds i8, ptr %pau, i32 752
  %5 = ptrtoint ptr %au.sroa.7.0.pau.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %au.sroa.7.0.copyload = load ptr, ptr %au.sroa.7.0.pau.sroa_idx, align 8
  %au.sroa.11.0.pau.sroa_idx = getelementptr inbounds i8, ptr %pau, i32 756
  %6 = ptrtoint ptr %au.sroa.11.0.pau.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %au.sroa.11.0.copyload = load i32, ptr %au.sroa.11.0.pau.sroa_idx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_offset) #7
  %7 = ptrtoint ptr %data_offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %data_offset, align 4
  %header1 = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %header1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %header1, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %call = call i32 @delta_mjpeg_read_header(ptr noundef %pctx, ptr noundef %au.sroa.7.0.copyload, i32 noundef %au.sroa.4.0.copyload, ptr noundef %3, ptr noundef nonnull %data_offset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %stream_errors = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 16
  %10 = ptrtoint ptr %stream_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream_errors, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %stream_errors, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %frame_width = getelementptr inbounds %struct.mjpeg_header, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %frame_width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_width, align 4
  %frame_height = getelementptr inbounds %struct.mjpeg_header, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %frame_height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_height, align 4
  %mul = mul i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 9830400, i32 %mul)
  %cmp = icmp ugt i32 %mul, 9830400
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev5, align 4
  %name = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %13, i32 noundef %15, i32 noundef 9830400) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %header1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %3, ptr %header1, align 4
  br label %cleanup

if.end10:                                         ; preds = %entry
  %ipc_hdl = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %ipc_hdl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipc_hdl, align 4
  %tobool11.not = icmp eq ptr %20, null
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params_struct.i) #7
  %21 = getelementptr inbounds %struct.jpeg_video_decode_init_params_t, ptr %params_struct.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ipc_buf.i) #7
  %22 = ptrtoint ptr %ipc_buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %ipc_buf.i, align 4, !annotation !120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipc_param.i) #7
  %23 = getelementptr inbounds %struct.delta_ipc_param, ptr %ipc_param.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdl.i) #7
  %24 = ptrtoint ptr %hdl.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %hdl.i, align 4, !annotation !120
  %25 = call ptr @memset(ptr %params_struct.i, i32 0, i32 12)
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %21, align 4
  %27 = ptrtoint ptr %ipc_param.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 12, ptr %ipc_param.i, align 4
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %params_struct.i, ptr %23, align 4
  %call.i = call i32 @delta_ipc_open(ptr noundef %pctx, ptr noundef nonnull @.str.6, ptr noundef nonnull %ipc_param.i, i32 noundef 240, ptr noundef nonnull %ipc_buf.i, ptr noundef nonnull %hdl.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %delta_mjpeg_ipc_open.exit.thread, label %delta_mjpeg_ipc_open.exit

delta_mjpeg_ipc_open.exit.thread:                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %ipc_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ipc_buf.i, align 4
  %ipc_buf4.i = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %ipc_buf4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %ipc_buf4.i, align 4
  %32 = ptrtoint ptr %hdl.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hdl.i, align 4
  %34 = ptrtoint ptr %ipc_hdl to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %ipc_hdl, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdl.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipc_param.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ipc_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params_struct.i) #7
  br label %if.end17

delta_mjpeg_ipc_open.exit:                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %dev1.i = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1.i, align 4
  %name.i = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  %str.i = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %3, i32 0, i32 5
  %37 = ptrtoint ptr %params_struct.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %params_struct.i, align 4
  %39 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %21, align 4
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str.i, i32 noundef 3000, ptr noundef nonnull @.str.10, i32 noundef %38, i32 noundef %40) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.7, ptr noundef %name.i, ptr noundef %str.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdl.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipc_param.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ipc_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params_struct.i) #7
  br label %cleanup

if.end17:                                         ; preds = %delta_mjpeg_ipc_open.exit.thread, %if.end10.if.end17_crit_edge
  %41 = ptrtoint ptr %header1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %header1, align 4
  %call21 = call i32 @delta_mjpeg_read_header(ptr noundef %pctx, ptr noundef %au.sroa.7.0.copyload, i32 noundef %au.sroa.4.0.copyload, ptr noundef %42, ptr noundef nonnull %data_offset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end26, label %if.then23

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %stream_errors24 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 16
  %43 = ptrtoint ptr %stream_errors24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stream_errors24, align 4
  %inc25 = add i32 %44, 1
  store i32 %inc25, ptr %stream_errors24, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %45 = ptrtoint ptr %data_offset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_offset, align 4
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 4
  %ipc_buf.i61 = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %ipc_buf.i61 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ipc_buf.i61, align 4
  %vaddr.i = getelementptr inbounds %struct.delta_buf, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame.i) #7
  %55 = ptrtoint ptr %frame.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 -1 to ptr), ptr %frame.i, align 4, !annotation !120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipc_param.i58) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ipc_status.i) #7
  %call.i62 = call i32 @delta_get_free_frame(ptr noundef %pctx, ptr noundef nonnull %frame.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %if.end.i65, label %if.end26.delta_mjpeg_ipc_decode.exit.thread_crit_edge

if.end26.delta_mjpeg_ipc_decode.exit.thread_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %delta_mjpeg_ipc_decode.exit.thread

if.end.i65:                                       ; preds = %if.end26
  %add = add i32 %46, %au.sroa.11.0.copyload
  %56 = getelementptr inbounds %struct.delta_ipc_param, ptr %ipc_status.i, i32 0, i32 1
  %57 = getelementptr inbounds %struct.delta_ipc_param, ptr %ipc_param.i58, i32 0, i32 1
  %58 = getelementptr inbounds i8, ptr %54, i32 8
  %59 = call ptr @memset(ptr %58, i32 0, i32 76)
  %60 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add, ptr %54, align 4
  %add.i = add i32 %au.sroa.4.0.copyload, -1
  %sub.i = add i32 %add.i, %add
  %picture_end_addr_p.i = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %54, i32 0, i32 1
  %61 = ptrtoint ptr %picture_end_addr_p.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub.i, ptr %picture_end_addr_p.i, align 4
  %main_aux_enable.i = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %54, i32 0, i32 4
  %62 = ptrtoint ptr %main_aux_enable.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 16, ptr %main_aux_enable.i, align 4
  %additional_flags.i = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %54, i32 0, i32 12
  %63 = ptrtoint ptr %additional_flags.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 128, ptr %additional_flags.i, align 4
  %vertical_decimation_factor.i = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %54, i32 0, i32 6
  %64 = ptrtoint ptr %vertical_decimation_factor.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %vertical_decimation_factor.i, align 4
  %decoding_mode.i = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %54, i32 0, i32 11
  %display_buffer_addr.i = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %54, i32 0, i32 3
  %65 = ptrtoint ptr %display_buffer_addr.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 20, ptr %display_buffer_addr.i, align 4
  %66 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %frame.i, align 4
  %paddr4.i = getelementptr inbounds %struct.delta_frame, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %paddr4.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %paddr4.i, align 4
  %display_decimated_luma_p.i = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %54, i32 0, i32 3, i32 3
  %70 = ptrtoint ptr %display_decimated_luma_p.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %display_decimated_luma_p.i, align 4
  %71 = load i32, ptr %paddr4.i, align 4
  %aligned_width.i = getelementptr inbounds %struct.delta_frame, ptr %67, i32 0, i32 2, i32 4
  %72 = ptrtoint ptr %aligned_width.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %aligned_width.i, align 8
  %aligned_height.i = getelementptr inbounds %struct.delta_frame, ptr %67, i32 0, i32 2, i32 5
  %74 = ptrtoint ptr %aligned_height.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %aligned_height.i, align 4
  %mul.i = mul i32 %75, %73
  %add8.i = add i32 %mul.i, %71
  %display_decimated_chroma_p.i = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %54, i32 0, i32 3, i32 4
  %76 = ptrtoint ptr %display_decimated_chroma_p.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add8.i, ptr %display_decimated_chroma_p.i, align 4
  %77 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 156)
  %78 = ptrtoint ptr %ipc_param.i58 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 84, ptr %ipc_param.i58, align 4
  %79 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %54, ptr %57, align 4
  %80 = ptrtoint ptr %ipc_status.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 156, ptr %ipc_status.i, align 4
  %81 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr.i, ptr %56, align 4
  %ipc_hdl.i64 = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %50, i32 0, i32 2
  %82 = ptrtoint ptr %ipc_hdl.i64 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ipc_hdl.i64, align 4
  %call13.i = call i32 @delta_ipc_decode(ptr noundef %83, ptr noundef nonnull %ipc_param.i58, ptr noundef nonnull %ipc_status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end19.i, label %do.end.i67

do.end.i67:                                       ; preds = %if.end.i65
  %dev16.i = getelementptr inbounds %struct.delta_dev, ptr %48, i32 0, i32 3
  %84 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev16.i, align 4
  %name.i66 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  %tobool.not.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i, label %do.end.i67.ipc_decode_param_str.exit.i_crit_edge, label %if.end.i.i

do.end.i67.ipc_decode_param_str.exit.i_crit_edge: ; preds = %do.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipc_decode_param_str.exit.i

if.end.i.i:                                       ; preds = %do.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  %str.i68 = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %50, i32 0, i32 5
  %86 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %54, align 4
  %88 = ptrtoint ptr %picture_end_addr_p.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %picture_end_addr_p.i, align 4
  %90 = ptrtoint ptr %decoding_mode.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %decoding_mode.i, align 4
  %92 = ptrtoint ptr %display_decimated_luma_p.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %display_decimated_luma_p.i, align 4
  %94 = ptrtoint ptr %display_decimated_chroma_p.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %display_decimated_chroma_p.i, align 4
  %96 = ptrtoint ptr %main_aux_enable.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %main_aux_enable.i, align 4
  %98 = ptrtoint ptr %additional_flags.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %additional_flags.i, align 4
  %field_flag.i.i = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %54, i32 0, i32 13
  %100 = ptrtoint ptr %field_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %field_flag.i.i, align 4
  %is_jpeg_image.i.i = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %54, i32 0, i32 15
  %102 = ptrtoint ptr %is_jpeg_image.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %is_jpeg_image.i.i, align 4
  %call.i.i69 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str.i68, i32 noundef 3000, ptr noundef nonnull @.str.14, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef %99, i32 noundef %101, i32 noundef %103) #7
  br label %ipc_decode_param_str.exit.i

ipc_decode_param_str.exit.i:                      ; preds = %if.end.i.i, %do.end.i67.ipc_decode_param_str.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %str.i68, %if.end.i.i ], [ @.str.9, %do.end.i67.ipc_decode_param_str.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.7, ptr noundef %name.i66, ptr noundef %retval.0.i.i) #11
  br label %delta_mjpeg_ipc_decode.exit.thread

if.end19.i:                                       ; preds = %if.end.i65
  %decoded_frames.i = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 13
  %104 = ptrtoint ptr %decoded_frames.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %decoded_frames.i, align 4
  %inc.i = add i32 %105, 1
  store i32 %inc.i, ptr %decoded_frames.i, align 4
  %call20.i = call fastcc zeroext i1 @delta_mjpeg_check_status(ptr noundef %pctx, ptr noundef %add.ptr.i) #7
  br i1 %call20.i, label %do.end24.i, label %if.end19.i.delta_mjpeg_ipc_decode.exit_crit_edge

if.end19.i.delta_mjpeg_ipc_decode.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %delta_mjpeg_ipc_decode.exit

do.end24.i:                                       ; preds = %if.end19.i
  %dev25.i = getelementptr inbounds %struct.delta_dev, ptr %48, i32 0, i32 3
  %106 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev25.i, align 4
  %name26.i = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  %tobool.not.i72.i = icmp eq ptr %54, null
  br i1 %tobool.not.i72.i, label %do.end24.i.ipc_decode_param_str.exit84.i_crit_edge, label %if.end.i82.i

do.end24.i.ipc_decode_param_str.exit84.i_crit_edge: ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipc_decode_param_str.exit84.i

if.end.i82.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %str28.i = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %50, i32 0, i32 5
  %108 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %54, align 4
  %110 = ptrtoint ptr %picture_end_addr_p.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %picture_end_addr_p.i, align 4
  %112 = ptrtoint ptr %decoding_mode.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %decoding_mode.i, align 4
  %114 = ptrtoint ptr %display_decimated_luma_p.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %display_decimated_luma_p.i, align 4
  %116 = ptrtoint ptr %display_decimated_chroma_p.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %display_decimated_chroma_p.i, align 4
  %118 = ptrtoint ptr %main_aux_enable.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %main_aux_enable.i, align 4
  %120 = ptrtoint ptr %additional_flags.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %additional_flags.i, align 4
  %field_flag.i79.i = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %54, i32 0, i32 13
  %122 = ptrtoint ptr %field_flag.i79.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %field_flag.i79.i, align 4
  %is_jpeg_image.i80.i = getelementptr inbounds %struct.jpeg_decode_params_t, ptr %54, i32 0, i32 15
  %124 = ptrtoint ptr %is_jpeg_image.i80.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %is_jpeg_image.i80.i, align 4
  %call.i81.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str28.i, i32 noundef 3000, ptr noundef nonnull @.str.14, i32 noundef %109, i32 noundef %111, i32 noundef %113, i32 noundef %115, i32 noundef %117, i32 noundef %119, i32 noundef %121, i32 noundef %123, i32 noundef %125) #7
  br label %ipc_decode_param_str.exit84.i

ipc_decode_param_str.exit84.i:                    ; preds = %if.end.i82.i, %do.end24.i.ipc_decode_param_str.exit84.i_crit_edge
  %retval.0.i83.i = phi ptr [ %str28.i, %if.end.i82.i ], [ @.str.9, %do.end24.i.ipc_decode_param_str.exit84.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.7, ptr noundef %name26.i, ptr noundef %retval.0.i83.i) #11
  br label %delta_mjpeg_ipc_decode.exit

delta_mjpeg_ipc_decode.exit.thread:               ; preds = %ipc_decode_param_str.exit.i, %if.end26.delta_mjpeg_ipc_decode.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i62, %if.end26.delta_mjpeg_ipc_decode.exit.thread_crit_edge ], [ %call13.i, %ipc_decode_param_str.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipc_status.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipc_param.i58) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame.i) #7
  br label %cleanup

delta_mjpeg_ipc_decode.exit:                      ; preds = %ipc_decode_param_str.exit84.i, %if.end19.i.delta_mjpeg_ipc_decode.exit_crit_edge
  %126 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %frame.i, align 4
  %field.i = getelementptr inbounds %struct.delta_frame, ptr %127, i32 0, i32 10
  %128 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %field.i, align 8
  %flags.i = getelementptr inbounds %struct.delta_frame, ptr %127, i32 0, i32 8
  %129 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 8, ptr %flags.i, align 4
  %state.i = getelementptr inbounds %struct.delta_frame, ptr %127, i32 0, i32 7
  %130 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %state.i, align 8
  %or.i = or i32 %131, 4
  store i32 %or.i, ptr %state.i, align 8
  %out_frame.i = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %50, i32 0, i32 4
  %132 = ptrtoint ptr %out_frame.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %127, ptr %out_frame.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipc_status.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ipc_param.i58) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame.i) #7
  br label %cleanup

cleanup:                                          ; preds = %delta_mjpeg_ipc_decode.exit, %delta_mjpeg_ipc_decode.exit.thread, %if.then23, %delta_mjpeg_ipc_open.exit, %if.end8, %do.end, %if.then3
  %retval.0 = phi i32 [ 0, %delta_mjpeg_ipc_decode.exit ], [ 0, %if.end8 ], [ %call21, %if.then23 ], [ %call.i, %delta_mjpeg_ipc_open.exit ], [ %call, %if.then3 ], [ -22, %do.end ], [ %retval.0.i.ph, %delta_mjpeg_ipc_decode.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_offset) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @delta_mjpeg_get_frame(ptr nocapture noundef readonly %pctx, ptr nocapture noundef writeonly %frame) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %out_frame = getelementptr inbounds %struct.delta_mjpeg_ctx, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %out_frame to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_frame, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %frame, align 4
  %5 = ptrtoint ptr %out_frame to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %out_frame, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @delta_recycle_default(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delta_ipc_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @delta_mjpeg_read_header(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @delta_ipc_open(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @delta_get_free_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @delta_ipc_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @delta_mjpeg_check_status(ptr noundef %pctx, ptr nocapture noundef readonly %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %error_code = getelementptr inbounds %struct.jpeg_decode_return_params_t, ptr %status, i32 0, i32 6
  %2 = ptrtoint ptr %error_code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error_code, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.body12 [
    i32 0, label %entry.do.body30_crit_edge
    i32 1, label %entry.do.body_crit_edge
    i32 7, label %entry.do.body_crit_edge97
    i32 9, label %entry.do.body_crit_edge98
    i32 10, label %entry.do.body_crit_edge99
    i32 11, label %entry.do.body_crit_edge100
    i32 12, label %entry.do.body_crit_edge101
    i32 13, label %entry.do.body_crit_edge102
    i32 14, label %entry.do.body_crit_edge103
    i32 15, label %entry.do.body_crit_edge104
    i32 16, label %entry.do.body_crit_edge105
    i32 17, label %entry.do.body_crit_edge106
    i32 18, label %entry.do.body_crit_edge107
  ]

entry.do.body_crit_edge107:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge106:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge105:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge104:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge103:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge102:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge101:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge100:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge99:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge98:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge97:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body30

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge97, %entry.do.body_crit_edge98, %entry.do.body_crit_edge99, %entry.do.body_crit_edge100, %entry.do.body_crit_edge101, %entry.do.body_crit_edge102, %entry.do.body_crit_edge103, %entry.do.body_crit_edge104, %entry.do.body_crit_edge105, %entry.do.body_crit_edge106, %entry.do.body_crit_edge107
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @delta_mjpeg_check_status._rs, ptr noundef nonnull @__func__.delta_mjpeg_check_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body.do.end11_crit_edge, label %do.end

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end:                                           ; preds = %do.body
  %dev6 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev6, align 4
  %name = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  %decoded_frames = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 13
  %7 = ptrtoint ptr %decoded_frames to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %decoded_frames, align 4
  %9 = ptrtoint ptr %error_code to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %10)
  %11 = icmp ult i32 %10, 30
  br i1 %11, label %switch.lookup, label %do.end.err_str.exit_crit_edge

do.end.err_str.exit_crit_edge:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_str.exit

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.delta_mjpeg_check_status, i32 0, i32 %10
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %err_str.exit

err_str.exit:                                     ; preds = %switch.lookup, %do.end.err_str.exit_crit_edge
  %retval.0.i58 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.54, %do.end.err_str.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %8, ptr noundef nonnull %retval.0.i58) #11
  br label %do.end11

do.end11:                                         ; preds = %err_str.exit, %do.body.do.end11_crit_edge
  %stream_errors = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 16
  br label %do.body30.sink.split

do.body12:                                        ; preds = %entry
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @delta_mjpeg_check_status._rs.18, ptr noundef nonnull @__func__.delta_mjpeg_check_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body12.do.end27_crit_edge, label %do.end18

do.body12.do.end27_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

do.end18:                                         ; preds = %do.body12
  %dev19 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev19, align 4
  %name20 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  %decoded_frames22 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 13
  %15 = ptrtoint ptr %decoded_frames22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %decoded_frames22, align 4
  %17 = ptrtoint ptr %error_code to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %18)
  %19 = icmp ult i32 %18, 30
  br i1 %19, label %switch.lookup94, label %do.end18.err_str.exit90_crit_edge

do.end18.err_str.exit90_crit_edge:                ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_str.exit90

switch.lookup94:                                  ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep95 = getelementptr inbounds [30 x ptr], ptr @switch.table.delta_mjpeg_check_status.55, i32 0, i32 %18
  %20 = ptrtoint ptr %switch.gep95 to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load96 = load ptr, ptr %switch.gep95, align 4
  br label %err_str.exit90

err_str.exit90:                                   ; preds = %switch.lookup94, %do.end18.err_str.exit90_crit_edge
  %retval.0.i89 = phi ptr [ %switch.load96, %switch.lookup94 ], [ @.str.54, %do.end18.err_str.exit90_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.20, ptr noundef %name20, i32 noundef %16, ptr noundef nonnull %retval.0.i89) #11
  br label %do.end27

do.end27:                                         ; preds = %err_str.exit90, %do.body12.do.end27_crit_edge
  %decode_errors = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 17
  br label %do.body30.sink.split

do.body30.sink.split:                             ; preds = %do.end27, %do.end11
  %decode_errors.sink93 = phi ptr [ %decode_errors, %do.end27 ], [ %stream_errors, %do.end11 ]
  %dump.0.off0.ph = phi i1 [ true, %do.end27 ], [ false, %do.end11 ]
  %21 = ptrtoint ptr %decode_errors.sink93 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %decode_errors.sink93, align 4
  %inc28 = add i32 %22, 1
  store i32 %inc28, ptr %decode_errors.sink93, align 4
  br label %do.body30

do.body30:                                        ; preds = %do.body30.sink.split, %entry.do.body30_crit_edge
  %dump.0.off0 = phi i1 [ false, %entry.do.body30_crit_edge ], [ %dump.0.off0.ph, %do.body30.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @delta_mjpeg_check_status.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@delta_mjpeg_check_status, %if.then35)) #7
          to label %do.end41 [label %if.then35], !srcloc !121

if.then35:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  %dev36 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev36, align 4
  %name37 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @delta_mjpeg_check_status.__UNIQUE_ID_ddebug298, ptr noundef %24, ptr noundef nonnull @.str.23, ptr noundef %name37, i32 noundef %26) #7
  br label %do.end41

do.end41:                                         ; preds = %if.then35, %do.body30
  ret i1 %dump.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !19, !21, !23, !25, !26, !27, !29, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 445, i32 10}
!2 = !{ptr @mjpegdec, !3, !"mjpegdec", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 444, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 390, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @delta_mjpeg_decode._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @delta_mjpeg_decode._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 227, i32 29}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 230, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @delta_mjpeg_ipc_open._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @delta_mjpeg_ipc_open._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 39, i32 10}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 42, i32 9}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 297, i32 3}
!25 = !{ptr @delta_mjpeg_ipc_decode._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @delta_mjpeg_ipc_decode._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @delta_mjpeg_ipc_decode._entry.12, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 308, i32 3}
!29 = !{ptr @delta_mjpeg_ipc_decode._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 60, i32 9}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 181, i32 3}
!34 = !{ptr @delta_mjpeg_check_status._rs, !33, !"_rs", i1 false, i1 false}
!35 = !{ptr @__func__.delta_mjpeg_check_status, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @delta_mjpeg_check_status._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @delta_mjpeg_check_status._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @delta_mjpeg_check_status._rs.18, !41, !"_rs", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 187, i32 3}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @delta_mjpeg_check_status._entry.19, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @delta_mjpeg_check_status._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 196, i32 2}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @delta_mjpeg_check_status.__UNIQUE_ID_ddebug298, !46, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 107, i32 10}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 109, i32 10}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 111, i32 10}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 113, i32 10}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 115, i32 10}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 117, i32 10}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 119, i32 10}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 121, i32 10}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 123, i32 10}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 125, i32 10}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 127, i32 10}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 129, i32 10}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 131, i32 10}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 133, i32 10}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 135, i32 10}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 137, i32 10}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 139, i32 10}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 141, i32 10}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 143, i32 10}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 145, i32 10}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 147, i32 10}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 149, i32 10}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 151, i32 10}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 153, i32 10}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 155, i32 10}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 157, i32 10}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 159, i32 10}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 161, i32 10}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 163, i32 10}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 165, i32 10}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/sti/delta/delta-mjpeg-dec.c", i32 167, i32 10}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"auto-init"}
!121 = !{i64 2148211696, i64 2148211701, i64 2148211714, i64 2148211758, i64 2148211792, i64 2148211813}
