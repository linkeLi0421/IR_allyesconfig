; ModuleID = '/llk/IR_all_yes/drivers/media/platform/coda/coda-jpeg.c_pt.bc'
source_filename = "../drivers/media/platform/coda/coda-jpeg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.coda_memcpy_desc = type { i32, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.coda_context_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.coda_ctx = type { ptr, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.completion, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.coda_q_data], i32, ptr, i32, i32, i32, i32, %struct.coda_params, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.v4l2_fh, i32, i32, i32, [3 x [64 x i8]], [3 x i32], %struct.kfifo, %struct.mutex, %struct.coda_aux_buf, i8, %struct.coda_aux_buf, %struct.coda_aux_buf, %struct.coda_aux_buf, [19 x %struct.coda_internal_frame], %struct.list_head, %struct.spinlock, i32, i32, %struct.coda_aux_buf, i32, i32, i32, %struct.coda_iram_info, i32, i32, i32, i32, i32, i32, ptr, i8, i8, ptr, %struct.mutex }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.coda_q_data = type { i32, i32, i32, i32, i32, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.coda_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, [3 x ptr], [3 x i32], [3 x i32], [3 x i32], ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kfifo = type { %union.anon.95, [0 x i8] }
%union.anon.95 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.coda_internal_frame = type { %struct.coda_aux_buf, %struct.coda_buffer_meta, i32, i32 }
%struct.coda_buffer_meta = type { %struct.list_head, i32, %struct.v4l2_timecode, i64, i32, i32, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.coda_aux_buf = type { ptr, i32, i32, %struct.debugfs_blob_wrapper, ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.coda_iram_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.v4l2_jpeg_scan_header = type { i8, [4 x %struct.v4l2_jpeg_scan_component_spec] }
%struct.v4l2_jpeg_scan_component_spec = type { i8, i8, i8 }
%struct.v4l2_jpeg_reference = type { ptr, i32 }
%struct.v4l2_jpeg_header = type { %struct.v4l2_jpeg_reference, %struct.v4l2_jpeg_reference, i32, [4 x %struct.v4l2_jpeg_reference], i32, [4 x %struct.v4l2_jpeg_reference], %struct.v4l2_jpeg_frame_header, ptr, ptr, ptr, i16, i32, i32 }
%struct.v4l2_jpeg_frame_header = type { i16, i16, i8, i8, [4 x %struct.v4l2_jpeg_frame_component_spec], i32 }
%struct.v4l2_jpeg_frame_component_spec = type { i8, i8, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.coda_codec = type { i32, i32, i32, i32, i32 }
%struct.coda_huff_tab = type { [28 x i8], [28 x i8], [178 x i8], [178 x i8], [64 x i16], [64 x i16], [64 x i8] }
%struct.anon.102 = type { [4 x [256 x i32]], [4 x [256 x i32]] }
%struct.anon.103 = type { [256 x i32], [256 x i32] }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.coda_dev = type { %struct.v4l2_device, [6 x %struct.video_device], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.coda_aux_buf, %struct.coda_aux_buf, %struct.coda_aux_buf, ptr, %struct.coda_aux_buf, %struct.mutex, %struct.mutex, ptr, ptr, %struct.ida, ptr, %struct.ratelimit_state }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@coda_jpeg_write_tables.huff = internal constant { [8 x %struct.coda_memcpy_desc], [32 x i8] } { [8 x %struct.coda_memcpy_desc] [%struct.coda_memcpy_desc { i32 0, ptr @luma_dc, i32 28 }, %struct.coda_memcpy_desc { i32 32, ptr @luma_ac, i32 180 }, %struct.coda_memcpy_desc { i32 216, ptr @chroma_dc, i32 28 }, %struct.coda_memcpy_desc { i32 248, ptr @chroma_ac, i32 180 }, %struct.coda_memcpy_desc zeroinitializer, %struct.coda_memcpy_desc zeroinitializer, %struct.coda_memcpy_desc zeroinitializer, %struct.coda_memcpy_desc zeroinitializer], [32 x i8] zeroinitializer }, align 32
@luma_dc = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B", [36 x i8] zeroinitializer }, align 32
@luma_ac = internal constant { [180 x i8], [44 x i8] } { [180 x i8] c"\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\00\00", [44 x i8] zeroinitializer }, align 32
@chroma_dc = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B", [36 x i8] zeroinitializer }, align 32
@chroma_ac = internal constant { [180 x i8], [44 x i8] } { [180 x i8] c"\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA\00\00", [44 x i8] zeroinitializer }, align 32
@coda_jpeg_decode_header._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: failed to parse header\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"coda_jpeg_decode_header\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/platform/coda/coda-jpeg.c\00", [56 x i8] zeroinitializer }, align 32
@coda_jpeg_decode_header._entry_ptr = internal global ptr @coda_jpeg_decode_header._entry, section ".printk_index", align 4
@coda_jpeg_decode_header._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: invalid dimensions: %dx%d\0A\00", [63 x i8] zeroinitializer }, align 32
@coda_jpeg_decode_header._entry_ptr.5 = internal global ptr @coda_jpeg_decode_header._entry.3, section ".printk_index", align 4
@coda_jpeg_decode_header._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: dimensions don't match format: %dx%d\0A\00", [52 x i8] zeroinitializer }, align 32
@coda_jpeg_decode_header._entry_ptr.8 = internal global ptr @coda_jpeg_decode_header._entry.6, section ".printk_index", align 4
@coda_jpeg_decode_header._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: unsupported number of components: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@coda_jpeg_decode_header._entry_ptr.11 = internal global ptr @coda_jpeg_decode_header._entry.9, section ".printk_index", align 4
@coda_jpeg_decode_header._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: only 3 quantization tables supported\0A\00", [52 x i8] zeroinitializer }, align 32
@coda_jpeg_decode_header._entry_ptr.14 = internal global ptr @coda_jpeg_decode_header._entry.12, section ".printk_index", align 4
@coda_jpeg_decode_header._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: only 8-bit quantization tables supported\0A\00", [48 x i8] zeroinitializer }, align 32
@coda_jpeg_decode_header._entry_ptr.17 = internal global ptr @coda_jpeg_decode_header._entry.15, section ".printk_index", align 4
@coda_jpeg_decode_header._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: missing Huffman table\0A\00", [35 x i8] zeroinitializer }, align 32
@coda_jpeg_decode_header._entry_ptr.20 = internal global ptr @coda_jpeg_decode_header._entry.18, section ".printk_index", align 4
@coda_jpeg_decode_header._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: invalid Huffman table %d length: %zu\0A\00", [52 x i8] zeroinitializer }, align 32
@coda_jpeg_decode_header._entry_ptr.23 = internal global ptr @coda_jpeg_decode_header._entry.21, section ".printk_index", align 4
@coda_jpeg_decode_header._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: chroma subsampling not supported: %d\00", [53 x i8] zeroinitializer }, align 32
@coda_jpeg_decode_header._entry_ptr.26 = internal global ptr @coda_jpeg_decode_header._entry.24, section ".printk_index", align 4
@luma_q = internal global { [64 x i8], [32 x i8] } { [64 x i8] c"\06\04\04\04\05\04\06\05\05\06\09\06\05\06\09\0B\08\06\06\08\0B\0C\0A\0A\0B\0A\0A\0C\10\0C\0C\0C\0C\0C\0C\10\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C", [32 x i8] zeroinitializer }, align 32
@chroma_q = internal global { [64 x i8], [32 x i8] } { [64 x i8] c"\07\07\07\0D\0C\0D\18\10\10\18\14\0E\0E\0E\14\14\0E\0E\0E\0E\14\11\0C\0C\0C\0C\0C\11\11\0C\0C\0C\0C\0C\0C\11\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C", [32 x i8] zeroinitializer }, align 32
@coda9_jpeg_encode_ops = dso_local constant { %struct.coda_context_ops, [60 x i8] } { %struct.coda_context_ops { ptr @coda_encoder_queue_init, ptr null, ptr @coda9_jpeg_start_encoding, ptr @coda9_jpeg_prepare_encode, ptr @coda9_jpeg_finish_encode, ptr @coda9_jpeg_encode_timeout, ptr null, ptr null, ptr @coda9_jpeg_release }, [60 x i8] zeroinitializer }, align 32
@coda9_jpeg_decode_ops = dso_local constant { %struct.coda_context_ops, [60 x i8] } { %struct.coda_context_ops { ptr @coda_encoder_queue_init, ptr null, ptr @coda9_jpeg_start_decoding, ptr @coda9_jpeg_prepare_decode, ptr @coda9_jpeg_finish_decode, ptr null, ptr null, ptr null, ptr @coda9_jpeg_release }, [60 x i8] zeroinitializer }, align 32
@coda9_jpeg_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: JPEG overflow\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"coda9_jpeg_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@coda9_jpeg_irq_handler._entry_ptr = internal global ptr @coda9_jpeg_irq_handler._entry, section ".printk_index", align 4
@coda9_jpeg_irq_handler._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 1521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: JPEG BBC interrupt\0A\00", [38 x i8] zeroinitializer }, align 32
@coda9_jpeg_irq_handler._entry_ptr.31 = internal global ptr @coda9_jpeg_irq_handler._entry.29, section ".printk_index", align 4
@coda9_jpeg_irq_handler._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 1524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s: JPEG error\0A\00", [46 x i8] zeroinitializer }, align 32
@coda9_jpeg_irq_handler._entry_ptr.34 = internal global ptr @coda9_jpeg_irq_handler._entry.32, section ".printk_index", align 4
@coda9_jpeg_irq_handler._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.2, i32 1531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: ERRMB: 0x%x: rst idx %d, mcu pos (%d,%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@coda9_jpeg_irq_handler._entry_ptr.37 = internal global ptr @coda9_jpeg_irq_handler._entry.35, section ".printk_index", align 4
@coda9_jpeg_irq_handler._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.2, i32 1538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Instance released before the end of transaction\0A\00", [41 x i8] zeroinitializer }, align 32
@coda9_jpeg_irq_handler._entry_ptr.40 = internal global ptr @coda9_jpeg_irq_handler._entry.38, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@coda9_jpeg_start_encoding._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: error loading Huffman tables\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"coda9_jpeg_start_encoding\00", [38 x i8] zeroinitializer }, align 32
@coda9_jpeg_start_encoding._entry_ptr = internal global ptr @coda9_jpeg_start_encoding._entry, section ".printk_index", align 4
@coda9_jpeg_gen_enc_huff_tab.huff_tabs = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @luma_dc, ptr @luma_ac, ptr @chroma_dc, ptr @chroma_ac], [16 x i8] zeroinitializer }, align 32
@width_align = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\10\10\08\08\08", [27 x i8] zeroinitializer }, align 32
@height_align = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\10\08\10\08\08", [27 x i8] zeroinitializer }, align 32
@coda9_jpeg_prepare_encode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: wrong stride: %d instead of %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"coda9_jpeg_prepare_encode\00", [38 x i8] zeroinitializer }, align 32
@coda9_jpeg_prepare_encode._entry_ptr = internal global ptr @coda9_jpeg_prepare_encode._entry, section ".printk_index", align 4
@bus_req_num = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 3, i32 3, i32 4, i32 4], [44 x i8] zeroinitializer }, align 32
@mcu_info = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 408149, i32 276821, i32 276053, i32 210261, i32 70912], [44 x i8] zeroinitializer }, align 32
@coda9_jpeg_prepare_encode._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 1174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: timeout waiting for GDI\0A\00", [33 x i8] zeroinitializer }, align 32
@coda9_jpeg_prepare_encode._entry_ptr.48 = internal global ptr @coda9_jpeg_prepare_encode._entry.46, section ".printk_index", align 4
@coda9_jpeg_encode_header.subsampling = internal constant { [5 x [3 x i8]], [17 x i8] } { [5 x [3 x i8]] [[3 x i8] c"\22\11\11", [3 x i8] c"!\11\11", [3 x i8] c"\12\11\11", [3 x i8] c"\11\11\11", [3 x i8] c"\11\00\00"], [17 x i8] zeroinitializer }, align 32
@__tracepoint_coda_jpeg_run = external dso_local global %struct.tracepoint, align 4
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/platform/coda/trace.h\00", [60 x i8] zeroinitializer }, align 32
@trace_coda_jpeg_run.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@coda_debug = external dso_local local_unnamed_addr global i32, align 4
@coda9_jpeg_finish_encode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 1234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: %u: ERRMB: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"coda9_jpeg_finish_encode\00", [39 x i8] zeroinitializer }, align 32
@coda9_jpeg_finish_encode._entry_ptr = internal global ptr @coda9_jpeg_finish_encode._entry, section ".printk_index", align 4
@coda9_jpeg_finish_encode._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 1251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: %u: job finished: encoded frame (%u)%s\0A\00", [50 x i8] zeroinitializer }, align 32
@coda9_jpeg_finish_encode._entry_ptr.56 = internal global ptr @coda9_jpeg_finish_encode._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" (last)\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__tracepoint_coda_jpeg_done = external dso_local global %struct.tracepoint, align 4
@trace_coda_jpeg_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@coda9_jpeg_encode_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: JPEG too large for capture buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"coda9_jpeg_encode_timeout\00", [38 x i8] zeroinitializer }, align 32
@coda9_jpeg_encode_timeout._entry_ptr = internal global ptr @coda9_jpeg_encode_timeout._entry, section ".printk_index", align 4
@coda9_jpeg_prepare_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: failed to decode JPEG header: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"coda9_jpeg_prepare_decode\00", [38 x i8] zeroinitializer }, align 32
@coda9_jpeg_prepare_decode._entry_ptr = internal global ptr @coda9_jpeg_prepare_decode._entry, section ".printk_index", align 4
@coda9_jpeg_prepare_decode._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 1367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: stride mismatch: %d != %d\0A\00", [63 x i8] zeroinitializer }, align 32
@coda9_jpeg_prepare_decode._entry_ptr.65 = internal global ptr @coda9_jpeg_prepare_decode._entry.63, section ".printk_index", align 4
@coda9_jpeg_prepare_decode._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.2, i32 1398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: failed to set up Huffman tables: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@coda9_jpeg_prepare_decode._entry_ptr.68 = internal global ptr @coda9_jpeg_prepare_decode._entry.66, section ".printk_index", align 4
@coda9_jpeg_finish_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 1454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013%s: ERRMB: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"coda9_jpeg_finish_decode\00", [39 x i8] zeroinitializer }, align 32
@coda9_jpeg_finish_decode._entry_ptr = internal global ptr @coda9_jpeg_finish_decode._entry, section ".printk_index", align 4
@coda9_jpeg_finish_decode._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 1487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: %u: job finished: decoded frame (%u)%s\0A\00", [50 x i8] zeroinitializer }, align 32
@coda9_jpeg_finish_decode._entry_ptr.73 = internal global ptr @coda9_jpeg_finish_decode._entry.71, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 875836505, i64 1345466932, i64 1497715271]
@__sancov_gen_cov_switch_values.75 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 875836505, i64 1345466932, i64 1497715271]
@__sancov_gen_cov_switch_values.76 = internal global [7 x i64] [i64 5, i64 32, i64 842093913, i64 842094158, i64 875836505, i64 1345466932, i64 1497715271]
@___asan_gen_.77 = private unnamed_addr constant [5 x i8] c"huff\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 218, i32 39 }
@___asan_gen_.80 = private unnamed_addr constant [8 x i8] c"luma_dc\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 62, i32 28 }
@___asan_gen_.83 = private unnamed_addr constant [8 x i8] c"luma_ac\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 80, i32 28 }
@___asan_gen_.86 = private unnamed_addr constant [10 x i8] c"chroma_dc\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 71, i32 28 }
@___asan_gen_.89 = private unnamed_addr constant [10 x i8] c"chroma_ac\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 108, i32 28 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 286, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 295, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 303, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 310, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 318, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 326, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 342, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 349, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 401, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"luma_q\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 141, i32 22 }
@___asan_gen_.155 = private unnamed_addr constant [9 x i8] c"chroma_q\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 152, i32 22 }
@___asan_gen_.158 = private unnamed_addr constant [22 x i8] c"coda9_jpeg_encode_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1292, i32 31 }
@___asan_gen_.161 = private unnamed_addr constant [22 x i8] c"coda9_jpeg_decode_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1497, i32 31 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1518, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1521, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1524, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1528, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1537, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1163, i32 7 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1052, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [10 x i8] c"huff_tabs\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 591, i32 30 }
@___asan_gen_.212 = private unnamed_addr constant [12 x i8] c"width_align\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 163, i32 28 }
@___asan_gen_.215 = private unnamed_addr constant [13 x i8] c"height_align\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 171, i32 28 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1106, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [12 x i8] c"bus_req_num\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 553, i32 18 }
@___asan_gen_.230 = private unnamed_addr constant [9 x i8] c"mcu_info\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 568, i32 18 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1174, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant [12 x i8] c"subsampling\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 955, i32 24 }
@___asan_gen_.246 = private unnamed_addr constant [39 x i8] c"../drivers/media/platform/coda/trace.h\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 157, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 108, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1234, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1249, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1270, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1350, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1366, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1397, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1454, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.315 = private constant [43 x i8] c"../drivers/media/platform/coda/coda-jpeg.c\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1485, i32 2 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @coda9_jpeg_encode_timeout._entry, ptr @coda9_jpeg_encode_timeout._entry_ptr, ptr @coda9_jpeg_finish_decode._entry, ptr @coda9_jpeg_finish_decode._entry.71, ptr @coda9_jpeg_finish_decode._entry_ptr, ptr @coda9_jpeg_finish_decode._entry_ptr.73, ptr @coda9_jpeg_finish_encode._entry, ptr @coda9_jpeg_finish_encode._entry.54, ptr @coda9_jpeg_finish_encode._entry_ptr, ptr @coda9_jpeg_finish_encode._entry_ptr.56, ptr @coda9_jpeg_irq_handler._entry, ptr @coda9_jpeg_irq_handler._entry.29, ptr @coda9_jpeg_irq_handler._entry.32, ptr @coda9_jpeg_irq_handler._entry.35, ptr @coda9_jpeg_irq_handler._entry.38, ptr @coda9_jpeg_irq_handler._entry_ptr, ptr @coda9_jpeg_irq_handler._entry_ptr.31, ptr @coda9_jpeg_irq_handler._entry_ptr.34, ptr @coda9_jpeg_irq_handler._entry_ptr.37, ptr @coda9_jpeg_irq_handler._entry_ptr.40, ptr @coda9_jpeg_prepare_decode._entry, ptr @coda9_jpeg_prepare_decode._entry.63, ptr @coda9_jpeg_prepare_decode._entry.66, ptr @coda9_jpeg_prepare_decode._entry_ptr, ptr @coda9_jpeg_prepare_decode._entry_ptr.65, ptr @coda9_jpeg_prepare_decode._entry_ptr.68, ptr @coda9_jpeg_prepare_encode._entry, ptr @coda9_jpeg_prepare_encode._entry.46, ptr @coda9_jpeg_prepare_encode._entry_ptr, ptr @coda9_jpeg_prepare_encode._entry_ptr.48, ptr @coda9_jpeg_start_encoding._entry, ptr @coda9_jpeg_start_encoding._entry_ptr, ptr @coda_jpeg_decode_header._entry, ptr @coda_jpeg_decode_header._entry.12, ptr @coda_jpeg_decode_header._entry.15, ptr @coda_jpeg_decode_header._entry.18, ptr @coda_jpeg_decode_header._entry.21, ptr @coda_jpeg_decode_header._entry.24, ptr @coda_jpeg_decode_header._entry.3, ptr @coda_jpeg_decode_header._entry.6, ptr @coda_jpeg_decode_header._entry.9, ptr @coda_jpeg_decode_header._entry_ptr, ptr @coda_jpeg_decode_header._entry_ptr.11, ptr @coda_jpeg_decode_header._entry_ptr.14, ptr @coda_jpeg_decode_header._entry_ptr.17, ptr @coda_jpeg_decode_header._entry_ptr.20, ptr @coda_jpeg_decode_header._entry_ptr.23, ptr @coda_jpeg_decode_header._entry_ptr.26, ptr @coda_jpeg_decode_header._entry_ptr.5, ptr @coda_jpeg_decode_header._entry_ptr.8, ptr @coda_jpeg_write_tables.huff, ptr @luma_dc, ptr @luma_ac, ptr @chroma_dc, ptr @chroma_ac, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @luma_q, ptr @chroma_q, ptr @coda9_jpeg_encode_ops, ptr @coda9_jpeg_decode_ops, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @coda9_jpeg_gen_enc_huff_tab.huff_tabs, ptr @width_align, ptr @height_align, ptr @.str.44, ptr @.str.45, ptr @bus_req_num, ptr @mcu_info, ptr @.str.47, ptr @coda9_jpeg_encode_header.subsampling, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_jpeg_write_tables.huff to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luma_dc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luma_ac to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chroma_dc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chroma_ac to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_jpeg_decode_header._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_jpeg_decode_header._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_jpeg_decode_header._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_jpeg_decode_header._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_jpeg_decode_header._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_jpeg_decode_header._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_jpeg_decode_header._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_jpeg_decode_header._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda_jpeg_decode_header._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @luma_q to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chroma_q to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_encode_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_decode_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_irq_handler._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_irq_handler._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_irq_handler._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_irq_handler._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_start_encoding._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_gen_enc_huff_tab.huff_tabs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @width_align to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @height_align to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_prepare_encode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_req_num to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcu_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_prepare_encode._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_encode_header.subsampling to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_finish_encode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_finish_encode._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_encode_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_prepare_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_prepare_decode._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_prepare_decode._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_finish_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coda9_jpeg_finish_decode._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_jpeg_write_tables(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg_qmat_tab = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21
  %0 = ptrtoint ptr %jpeg_qmat_tab to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jpeg_qmat_tab, align 8
  %arrayidx5 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21, i32 1
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx5, align 4
  %parabuf = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 41
  br label %for.body

for.body:                                         ; preds = %coda_memcpy_parabuf.exit.for.body_crit_edge, %entry
  %i.047 = phi i32 [ 0, %entry ], [ %inc, %coda_memcpy_parabuf.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %parabuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parabuf, align 4
  %add.ptr = getelementptr %struct.coda_memcpy_desc, ptr @coda_jpeg_write_tables.huff, i32 %i.047
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %7
  %src1.i = getelementptr %struct.coda_memcpy_desc, ptr @coda_jpeg_write_tables.huff, i32 %i.047, i32 1
  %8 = ptrtoint ptr %src1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src1.i, align 4
  %len2.i = getelementptr %struct.coda_memcpy_desc, ptr @coda_jpeg_write_tables.huff, i32 %i.047, i32 2
  %10 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len2.i, align 4
  %div17.i = lshr i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp18.not.i = icmp ult i32 %11, 4
  br i1 %cmp18.not.i, label %for.body.coda_memcpy_parabuf.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.coda_memcpy_parabuf.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %coda_memcpy_parabuf.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.019.i = phi i32 [ %add7.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %9, i32 %i.019.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  %add.i = or i32 %i.019.i, 1
  %arrayidx3.i = getelementptr i32, ptr %add.ptr.i, i32 %add.i
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx3.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %9, i32 %add.i
  %16 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx5.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  %arrayidx6.i = getelementptr i32, ptr %add.ptr.i, i32 %i.019.i
  %19 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx6.i, align 4
  %add7.i = add nuw nsw i32 %i.019.i, 2
  %cmp.i = icmp ult i32 %add7.i, %div17.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.coda_memcpy_parabuf.exit_crit_edge

for.body.i.coda_memcpy_parabuf.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %coda_memcpy_parabuf.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

coda_memcpy_parabuf.exit:                         ; preds = %for.body.i.coda_memcpy_parabuf.exit_crit_edge, %for.body.coda_memcpy_parabuf.exit_crit_edge
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.body.i45, label %coda_memcpy_parabuf.exit.for.body_crit_edge

coda_memcpy_parabuf.exit.for.body_crit_edge:      ; preds = %coda_memcpy_parabuf.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.i45:                                     ; preds = %coda_memcpy_parabuf.exit
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %parabuf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parabuf, align 4
  %add.ptr.i32 = getelementptr i8, ptr %21, i32 512
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  %arrayidx3.i40 = getelementptr i8, ptr %21, i32 516
  %25 = ptrtoint ptr %arrayidx3.i40 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx3.i40, align 4
  %arrayidx5.i41 = getelementptr i32, ptr %1, i32 1
  %26 = ptrtoint ptr %arrayidx5.i41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx5.i41, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  %29 = ptrtoint ptr %add.ptr.i32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %add.ptr.i32, align 4
  %arrayidx.i38.151 = getelementptr i32, ptr %1, i32 2
  %30 = ptrtoint ptr %arrayidx.i38.151 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i38.151, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #10
  %arrayidx3.i40.153 = getelementptr i8, ptr %21, i32 524
  %33 = ptrtoint ptr %arrayidx3.i40.153 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx3.i40.153, align 4
  %arrayidx5.i41.154 = getelementptr i32, ptr %1, i32 3
  %34 = ptrtoint ptr %arrayidx5.i41.154 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx5.i41.154, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #10
  %arrayidx6.i42.155 = getelementptr i8, ptr %21, i32 520
  %37 = ptrtoint ptr %arrayidx6.i42.155 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx6.i42.155, align 4
  %arrayidx.i38.260 = getelementptr i32, ptr %1, i32 4
  %38 = ptrtoint ptr %arrayidx.i38.260 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i38.260, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #10
  %arrayidx3.i40.262 = getelementptr i8, ptr %21, i32 532
  %41 = ptrtoint ptr %arrayidx3.i40.262 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx3.i40.262, align 4
  %arrayidx5.i41.263 = getelementptr i32, ptr %1, i32 5
  %42 = ptrtoint ptr %arrayidx5.i41.263 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx5.i41.263, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #10
  %arrayidx6.i42.264 = getelementptr i8, ptr %21, i32 528
  %45 = ptrtoint ptr %arrayidx6.i42.264 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx6.i42.264, align 4
  %arrayidx.i38.3 = getelementptr i32, ptr %1, i32 6
  %46 = ptrtoint ptr %arrayidx.i38.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i38.3, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #10
  %arrayidx3.i40.3 = getelementptr i8, ptr %21, i32 540
  %49 = ptrtoint ptr %arrayidx3.i40.3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx3.i40.3, align 4
  %arrayidx5.i41.3 = getelementptr i32, ptr %1, i32 7
  %50 = ptrtoint ptr %arrayidx5.i41.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx5.i41.3, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #10
  %arrayidx6.i42.3 = getelementptr i8, ptr %21, i32 536
  %53 = ptrtoint ptr %arrayidx6.i42.3 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx6.i42.3, align 4
  %arrayidx.i38.4 = getelementptr i32, ptr %1, i32 8
  %54 = ptrtoint ptr %arrayidx.i38.4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i38.4, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #10
  %arrayidx3.i40.4 = getelementptr i8, ptr %21, i32 548
  %57 = ptrtoint ptr %arrayidx3.i40.4 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx3.i40.4, align 4
  %arrayidx5.i41.4 = getelementptr i32, ptr %1, i32 9
  %58 = ptrtoint ptr %arrayidx5.i41.4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx5.i41.4, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #10
  %arrayidx6.i42.4 = getelementptr i8, ptr %21, i32 544
  %61 = ptrtoint ptr %arrayidx6.i42.4 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx6.i42.4, align 4
  %arrayidx.i38.5 = getelementptr i32, ptr %1, i32 10
  %62 = ptrtoint ptr %arrayidx.i38.5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i38.5, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #10
  %arrayidx3.i40.5 = getelementptr i8, ptr %21, i32 556
  %65 = ptrtoint ptr %arrayidx3.i40.5 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx3.i40.5, align 4
  %arrayidx5.i41.5 = getelementptr i32, ptr %1, i32 11
  %66 = ptrtoint ptr %arrayidx5.i41.5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx5.i41.5, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #10
  %arrayidx6.i42.5 = getelementptr i8, ptr %21, i32 552
  %69 = ptrtoint ptr %arrayidx6.i42.5 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %arrayidx6.i42.5, align 4
  %arrayidx.i38.6 = getelementptr i32, ptr %1, i32 12
  %70 = ptrtoint ptr %arrayidx.i38.6 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i38.6, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #10
  %arrayidx3.i40.6 = getelementptr i8, ptr %21, i32 564
  %73 = ptrtoint ptr %arrayidx3.i40.6 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx3.i40.6, align 4
  %arrayidx5.i41.6 = getelementptr i32, ptr %1, i32 13
  %74 = ptrtoint ptr %arrayidx5.i41.6 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx5.i41.6, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #10
  %arrayidx6.i42.6 = getelementptr i8, ptr %21, i32 560
  %77 = ptrtoint ptr %arrayidx6.i42.6 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx6.i42.6, align 4
  %arrayidx.i38.7 = getelementptr i32, ptr %1, i32 14
  %78 = ptrtoint ptr %arrayidx.i38.7 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i38.7, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #10
  %arrayidx3.i40.7 = getelementptr i8, ptr %21, i32 572
  %81 = ptrtoint ptr %arrayidx3.i40.7 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx3.i40.7, align 4
  %arrayidx5.i41.7 = getelementptr i32, ptr %1, i32 15
  %82 = ptrtoint ptr %arrayidx5.i41.7 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx5.i41.7, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #10
  %arrayidx6.i42.7 = getelementptr i8, ptr %21, i32 568
  %85 = ptrtoint ptr %arrayidx6.i42.7 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx6.i42.7, align 4
  %86 = ptrtoint ptr %parabuf to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %parabuf, align 4
  %add.ptr.i32.1 = getelementptr i8, ptr %87, i32 576
  %88 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %3, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #10
  %arrayidx3.i40.1 = getelementptr i8, ptr %87, i32 580
  %91 = ptrtoint ptr %arrayidx3.i40.1 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %arrayidx3.i40.1, align 4
  %arrayidx5.i41.1 = getelementptr i32, ptr %3, i32 1
  %92 = ptrtoint ptr %arrayidx5.i41.1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx5.i41.1, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #10
  %95 = ptrtoint ptr %add.ptr.i32.1 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %add.ptr.i32.1, align 4
  %arrayidx.i38.1.1 = getelementptr i32, ptr %3, i32 2
  %96 = ptrtoint ptr %arrayidx.i38.1.1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i38.1.1, align 4
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #10
  %arrayidx3.i40.1.1 = getelementptr i8, ptr %87, i32 588
  %99 = ptrtoint ptr %arrayidx3.i40.1.1 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %arrayidx3.i40.1.1, align 4
  %arrayidx5.i41.1.1 = getelementptr i32, ptr %3, i32 3
  %100 = ptrtoint ptr %arrayidx5.i41.1.1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx5.i41.1.1, align 4
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #10
  %arrayidx6.i42.1.1 = getelementptr i8, ptr %87, i32 584
  %103 = ptrtoint ptr %arrayidx6.i42.1.1 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %arrayidx6.i42.1.1, align 4
  %arrayidx.i38.1.2 = getelementptr i32, ptr %3, i32 4
  %104 = ptrtoint ptr %arrayidx.i38.1.2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i38.1.2, align 4
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #10
  %arrayidx3.i40.1.2 = getelementptr i8, ptr %87, i32 596
  %107 = ptrtoint ptr %arrayidx3.i40.1.2 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %arrayidx3.i40.1.2, align 4
  %arrayidx5.i41.1.2 = getelementptr i32, ptr %3, i32 5
  %108 = ptrtoint ptr %arrayidx5.i41.1.2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx5.i41.1.2, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #10
  %arrayidx6.i42.1.2 = getelementptr i8, ptr %87, i32 592
  %111 = ptrtoint ptr %arrayidx6.i42.1.2 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %arrayidx6.i42.1.2, align 4
  %arrayidx.i38.1.3 = getelementptr i32, ptr %3, i32 6
  %112 = ptrtoint ptr %arrayidx.i38.1.3 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx.i38.1.3, align 4
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #10
  %arrayidx3.i40.1.3 = getelementptr i8, ptr %87, i32 604
  %115 = ptrtoint ptr %arrayidx3.i40.1.3 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %arrayidx3.i40.1.3, align 4
  %arrayidx5.i41.1.3 = getelementptr i32, ptr %3, i32 7
  %116 = ptrtoint ptr %arrayidx5.i41.1.3 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx5.i41.1.3, align 4
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #10
  %arrayidx6.i42.1.3 = getelementptr i8, ptr %87, i32 600
  %119 = ptrtoint ptr %arrayidx6.i42.1.3 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %arrayidx6.i42.1.3, align 4
  %arrayidx.i38.1.4 = getelementptr i32, ptr %3, i32 8
  %120 = ptrtoint ptr %arrayidx.i38.1.4 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx.i38.1.4, align 4
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #10
  %arrayidx3.i40.1.4 = getelementptr i8, ptr %87, i32 612
  %123 = ptrtoint ptr %arrayidx3.i40.1.4 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %arrayidx3.i40.1.4, align 4
  %arrayidx5.i41.1.4 = getelementptr i32, ptr %3, i32 9
  %124 = ptrtoint ptr %arrayidx5.i41.1.4 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx5.i41.1.4, align 4
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #10
  %arrayidx6.i42.1.4 = getelementptr i8, ptr %87, i32 608
  %127 = ptrtoint ptr %arrayidx6.i42.1.4 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %arrayidx6.i42.1.4, align 4
  %arrayidx.i38.1.5 = getelementptr i32, ptr %3, i32 10
  %128 = ptrtoint ptr %arrayidx.i38.1.5 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.i38.1.5, align 4
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #10
  %arrayidx3.i40.1.5 = getelementptr i8, ptr %87, i32 620
  %131 = ptrtoint ptr %arrayidx3.i40.1.5 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %arrayidx3.i40.1.5, align 4
  %arrayidx5.i41.1.5 = getelementptr i32, ptr %3, i32 11
  %132 = ptrtoint ptr %arrayidx5.i41.1.5 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx5.i41.1.5, align 4
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #10
  %arrayidx6.i42.1.5 = getelementptr i8, ptr %87, i32 616
  %135 = ptrtoint ptr %arrayidx6.i42.1.5 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %arrayidx6.i42.1.5, align 4
  %arrayidx.i38.1.6 = getelementptr i32, ptr %3, i32 12
  %136 = ptrtoint ptr %arrayidx.i38.1.6 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx.i38.1.6, align 4
  %138 = tail call i32 @llvm.bswap.i32(i32 %137) #10
  %arrayidx3.i40.1.6 = getelementptr i8, ptr %87, i32 628
  %139 = ptrtoint ptr %arrayidx3.i40.1.6 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %arrayidx3.i40.1.6, align 4
  %arrayidx5.i41.1.6 = getelementptr i32, ptr %3, i32 13
  %140 = ptrtoint ptr %arrayidx5.i41.1.6 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx5.i41.1.6, align 4
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #10
  %arrayidx6.i42.1.6 = getelementptr i8, ptr %87, i32 624
  %143 = ptrtoint ptr %arrayidx6.i42.1.6 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %arrayidx6.i42.1.6, align 4
  %arrayidx.i38.1.7 = getelementptr i32, ptr %3, i32 14
  %144 = ptrtoint ptr %arrayidx.i38.1.7 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.i38.1.7, align 4
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #10
  %arrayidx3.i40.1.7 = getelementptr i8, ptr %87, i32 636
  %147 = ptrtoint ptr %arrayidx3.i40.1.7 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %arrayidx3.i40.1.7, align 4
  %arrayidx5.i41.1.7 = getelementptr i32, ptr %3, i32 15
  %148 = ptrtoint ptr %arrayidx5.i41.1.7 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx5.i41.1.7, align 4
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #10
  %arrayidx6.i42.1.7 = getelementptr i8, ptr %87, i32 632
  %151 = ptrtoint ptr %arrayidx6.i42.1.7 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %arrayidx6.i42.1.7, align 4
  %152 = ptrtoint ptr %parabuf to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %parabuf, align 4
  %add.ptr.i32.2 = getelementptr i8, ptr %153, i32 640
  %154 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %3, align 4
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #10
  %arrayidx3.i40.2 = getelementptr i8, ptr %153, i32 644
  %157 = ptrtoint ptr %arrayidx3.i40.2 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %arrayidx3.i40.2, align 4
  %arrayidx5.i41.2 = getelementptr i32, ptr %3, i32 1
  %158 = ptrtoint ptr %arrayidx5.i41.2 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx5.i41.2, align 4
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #10
  %161 = ptrtoint ptr %add.ptr.i32.2 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %add.ptr.i32.2, align 4
  %arrayidx.i38.2.1 = getelementptr i32, ptr %3, i32 2
  %162 = ptrtoint ptr %arrayidx.i38.2.1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx.i38.2.1, align 4
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #10
  %arrayidx3.i40.2.1 = getelementptr i8, ptr %153, i32 652
  %165 = ptrtoint ptr %arrayidx3.i40.2.1 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %arrayidx3.i40.2.1, align 4
  %arrayidx5.i41.2.1 = getelementptr i32, ptr %3, i32 3
  %166 = ptrtoint ptr %arrayidx5.i41.2.1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx5.i41.2.1, align 4
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #10
  %arrayidx6.i42.2.1 = getelementptr i8, ptr %153, i32 648
  %169 = ptrtoint ptr %arrayidx6.i42.2.1 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %arrayidx6.i42.2.1, align 4
  %arrayidx.i38.2.2 = getelementptr i32, ptr %3, i32 4
  %170 = ptrtoint ptr %arrayidx.i38.2.2 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx.i38.2.2, align 4
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #10
  %arrayidx3.i40.2.2 = getelementptr i8, ptr %153, i32 660
  %173 = ptrtoint ptr %arrayidx3.i40.2.2 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %arrayidx3.i40.2.2, align 4
  %arrayidx5.i41.2.2 = getelementptr i32, ptr %3, i32 5
  %174 = ptrtoint ptr %arrayidx5.i41.2.2 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx5.i41.2.2, align 4
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #10
  %arrayidx6.i42.2.2 = getelementptr i8, ptr %153, i32 656
  %177 = ptrtoint ptr %arrayidx6.i42.2.2 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %arrayidx6.i42.2.2, align 4
  %arrayidx.i38.2.3 = getelementptr i32, ptr %3, i32 6
  %178 = ptrtoint ptr %arrayidx.i38.2.3 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx.i38.2.3, align 4
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #10
  %arrayidx3.i40.2.3 = getelementptr i8, ptr %153, i32 668
  %181 = ptrtoint ptr %arrayidx3.i40.2.3 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %arrayidx3.i40.2.3, align 4
  %arrayidx5.i41.2.3 = getelementptr i32, ptr %3, i32 7
  %182 = ptrtoint ptr %arrayidx5.i41.2.3 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx5.i41.2.3, align 4
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #10
  %arrayidx6.i42.2.3 = getelementptr i8, ptr %153, i32 664
  %185 = ptrtoint ptr %arrayidx6.i42.2.3 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %arrayidx6.i42.2.3, align 4
  %arrayidx.i38.2.4 = getelementptr i32, ptr %3, i32 8
  %186 = ptrtoint ptr %arrayidx.i38.2.4 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx.i38.2.4, align 4
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #10
  %arrayidx3.i40.2.4 = getelementptr i8, ptr %153, i32 676
  %189 = ptrtoint ptr %arrayidx3.i40.2.4 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %arrayidx3.i40.2.4, align 4
  %arrayidx5.i41.2.4 = getelementptr i32, ptr %3, i32 9
  %190 = ptrtoint ptr %arrayidx5.i41.2.4 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx5.i41.2.4, align 4
  %192 = tail call i32 @llvm.bswap.i32(i32 %191) #10
  %arrayidx6.i42.2.4 = getelementptr i8, ptr %153, i32 672
  %193 = ptrtoint ptr %arrayidx6.i42.2.4 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %arrayidx6.i42.2.4, align 4
  %arrayidx.i38.2.5 = getelementptr i32, ptr %3, i32 10
  %194 = ptrtoint ptr %arrayidx.i38.2.5 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx.i38.2.5, align 4
  %196 = tail call i32 @llvm.bswap.i32(i32 %195) #10
  %arrayidx3.i40.2.5 = getelementptr i8, ptr %153, i32 684
  %197 = ptrtoint ptr %arrayidx3.i40.2.5 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %arrayidx3.i40.2.5, align 4
  %arrayidx5.i41.2.5 = getelementptr i32, ptr %3, i32 11
  %198 = ptrtoint ptr %arrayidx5.i41.2.5 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx5.i41.2.5, align 4
  %200 = tail call i32 @llvm.bswap.i32(i32 %199) #10
  %arrayidx6.i42.2.5 = getelementptr i8, ptr %153, i32 680
  %201 = ptrtoint ptr %arrayidx6.i42.2.5 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %arrayidx6.i42.2.5, align 4
  %arrayidx.i38.2.6 = getelementptr i32, ptr %3, i32 12
  %202 = ptrtoint ptr %arrayidx.i38.2.6 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx.i38.2.6, align 4
  %204 = tail call i32 @llvm.bswap.i32(i32 %203) #10
  %arrayidx3.i40.2.6 = getelementptr i8, ptr %153, i32 692
  %205 = ptrtoint ptr %arrayidx3.i40.2.6 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %204, ptr %arrayidx3.i40.2.6, align 4
  %arrayidx5.i41.2.6 = getelementptr i32, ptr %3, i32 13
  %206 = ptrtoint ptr %arrayidx5.i41.2.6 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx5.i41.2.6, align 4
  %208 = tail call i32 @llvm.bswap.i32(i32 %207) #10
  %arrayidx6.i42.2.6 = getelementptr i8, ptr %153, i32 688
  %209 = ptrtoint ptr %arrayidx6.i42.2.6 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %arrayidx6.i42.2.6, align 4
  %arrayidx.i38.2.7 = getelementptr i32, ptr %3, i32 14
  %210 = ptrtoint ptr %arrayidx.i38.2.7 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx.i38.2.7, align 4
  %212 = tail call i32 @llvm.bswap.i32(i32 %211) #10
  %arrayidx3.i40.2.7 = getelementptr i8, ptr %153, i32 700
  %213 = ptrtoint ptr %arrayidx3.i40.2.7 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %arrayidx3.i40.2.7, align 4
  %arrayidx5.i41.2.7 = getelementptr i32, ptr %3, i32 15
  %214 = ptrtoint ptr %arrayidx5.i41.2.7 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx5.i41.2.7, align 4
  %216 = tail call i32 @llvm.bswap.i32(i32 %215) #10
  %arrayidx6.i42.2.7 = getelementptr i8, ptr %153, i32 696
  %217 = ptrtoint ptr %arrayidx6.i42.2.7 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %arrayidx6.i42.2.7, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @coda_jpeg_check_buffer(ptr nocapture noundef readnone %ctx, ptr noundef %vb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #10
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %call, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -40, i16 %1)
  %cmp.not = icmp eq i16 %1, -40
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %2 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

if.end.vb2_get_plane_payload.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %4 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %if.end.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i = phi i32 [ %5, %if.then.i ], [ 0, %if.end.vb2_get_plane_payload.exit_crit_edge ]
  %sub = add i32 %retval.0.i, -2
  %add.ptr = getelementptr i8, ptr %call, i32 %sub
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %vb2_get_plane_payload.exit
  %i.036 = phi i32 [ 0, %vb2_get_plane_payload.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %idx.neg = sub nsw i32 0, %i.036
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %6 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -39, i16 %7)
  %cmp9 = icmp eq i16 %7, -39
  br i1 %cmp9, label %if.then11, label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.036)
  %cmp12.not = icmp eq i32 %i.036, 0
  %brmerge = select i1 %cmp12.not, i1 true, i1 %cmp.not.i
  br i1 %brmerge, label %if.then11.cleanup_crit_edge, label %if.then.i33

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i33:                                      ; preds = %if.then11
  %sub15 = sub i32 %retval.0.i, %i.036
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %sub15)
  %cmp1.i = icmp ult i32 %9, %sub15
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i33.if.end42.i_crit_edge

if.then.i33.if.end42.i_crit_edge:                 ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i33
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !165

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 1163, i32 noundef 9, ptr noundef null) #10
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i33.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %11, %if.then38.i ], [ %sub15, %if.then.i33.if.end42.i_crit_edge ]
  %bytesused.i34 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %12 = ptrtoint ptr %bytesused.i34 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %size.addr.0.i, ptr %bytesused.i34, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end42.i, %if.then11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.then11.cleanup_crit_edge ], [ true, %if.end42.i ], [ false, %for.inc.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda_jpeg_decode_header(ptr nocapture noundef %ctx, ptr noundef %vb) local_unnamed_addr #2 align 64 {
entry:
  %scan_header = alloca %struct.v4l2_jpeg_scan_header, align 1
  %quantization_tables = alloca [4 x %struct.v4l2_jpeg_reference], align 4
  %huffman_tables = alloca [4 x %struct.v4l2_jpeg_reference], align 4
  %header = alloca %struct.v4l2_jpeg_header, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %call = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #10
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %2 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %entry.vb2_get_plane_payload.exit_crit_edge, label %if.then.i

entry.vb2_get_plane_payload.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_get_plane_payload.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %4 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytesused.i, align 4
  br label %vb2_get_plane_payload.exit

vb2_get_plane_payload.exit:                       ; preds = %if.then.i, %entry.vb2_get_plane_payload.exit_crit_edge
  %retval.0.i = phi i32 [ %5, %if.then.i ], [ 0, %entry.vb2_get_plane_payload.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %scan_header) #10
  %6 = call ptr @memset(ptr %scan_header, i32 255, i32 13)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %quantization_tables) #10
  %7 = call ptr @memset(ptr %quantization_tables, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %huffman_tables) #10
  %8 = call ptr @memset(ptr %huffman_tables, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %header) #10
  %9 = call ptr @memset(ptr %header, i32 0, i32 140)
  %scan = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 7
  %10 = ptrtoint ptr %scan to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %scan_header, ptr %scan, align 4
  %quantization_tables3 = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 8
  %11 = ptrtoint ptr %quantization_tables3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %quantization_tables, ptr %quantization_tables3, align 4
  %huffman_tables4 = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 9
  %12 = ptrtoint ptr %huffman_tables4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %huffman_tables, ptr %huffman_tables4, align 4
  %call6 = call i32 @v4l2_jpeg_parse_header(ptr noundef %call, i32 noundef %retval.0.i, ptr noundef nonnull %header) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #13
  br label %cleanup272

if.end:                                           ; preds = %vb2_get_plane_payload.exit
  %restart_interval = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 10
  %13 = ptrtoint ptr %restart_interval to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %restart_interval, align 4
  %conv = trunc i16 %14 to i8
  %jpeg_restart_interval = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 20
  %15 = ptrtoint ptr %jpeg_restart_interval to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %jpeg_restart_interval, align 1
  %frame = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 6
  %16 = ptrtoint ptr %frame to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %frame, align 4
  %conv9 = zext i16 %17 to i32
  %codec = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 17
  %18 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %codec, align 4
  %max_h = getelementptr inbounds %struct.coda_codec, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %max_h to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv9)
  %cmp10 = icmp ult i32 %21, %conv9
  br i1 %cmp10, label %if.end.do.end20_crit_edge, label %lor.lhs.false

if.end.do.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20

lor.lhs.false:                                    ; preds = %if.end
  %width = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %width, align 2
  %conv13 = zext i16 %23 to i32
  %max_w = getelementptr inbounds %struct.coda_codec, ptr %19, i32 0, i32 3
  %24 = ptrtoint ptr %max_w to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv13)
  %cmp15 = icmp ult i32 %25, %conv13
  br i1 %cmp15, label %lor.lhs.false.do.end20_crit_edge, label %if.end32

lor.lhs.false.do.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end20

do.end20:                                         ; preds = %lor.lhs.false.do.end20_crit_edge, %if.end.do.end20_crit_edge
  %name23 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %width26 = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %width26 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %width26, align 2
  %conv27 = zext i16 %27 to i32
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name23, i32 noundef %conv27, i32 noundef %conv9) #13
  br label %cleanup272

if.end32:                                         ; preds = %lor.lhs.false
  %height37 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 1
  %28 = ptrtoint ptr %height37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %height37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv9)
  %cmp38.not = icmp eq i32 %29, %conv9
  br i1 %cmp38.not, label %lor.lhs.false40, label %if.end32.do.end50_crit_edge

if.end32.do.end50_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

lor.lhs.false40:                                  ; preds = %if.end32
  %q_data.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15
  %30 = ptrtoint ptr %q_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %q_data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv13)
  %cmp45.not = icmp eq i32 %31, %conv13
  br i1 %cmp45.not, label %if.end62, label %lor.lhs.false40.do.end50_crit_edge

lor.lhs.false40.do.end50_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

do.end50:                                         ; preds = %lor.lhs.false40.do.end50_crit_edge, %if.end32.do.end50_crit_edge
  %name53 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name53, i32 noundef %conv13, i32 noundef %conv9) #13
  br label %cleanup272

if.end62:                                         ; preds = %lor.lhs.false40
  %num_components = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 6, i32 3
  %32 = ptrtoint ptr %num_components to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %num_components, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp65.not = icmp eq i8 %33, 3
  br i1 %cmp65.not, label %if.end79, label %do.end70

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %conv64 = zext i8 %33 to i32
  %name73 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name73, i32 noundef %conv64) #13
  br label %cleanup272

if.end79:                                         ; preds = %if.end62
  %arrayidx = getelementptr inbounds [4 x %struct.v4l2_jpeg_reference], ptr %quantization_tables, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %35, null
  %name106 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  br i1 %tobool.not, label %for.cond.preheader, label %do.end83

for.cond.preheader:                               ; preds = %if.end79
  %36 = ptrtoint ptr %quantization_tables to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %quantization_tables, align 4
  %tobool94.not = icmp eq ptr %37, null
  br i1 %tobool94.not, label %for.cond.preheader.for.inc_crit_edge, label %if.end96

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end83:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name106) #13
  br label %cleanup272

if.end96:                                         ; preds = %for.cond.preheader
  %length = getelementptr inbounds [4 x %struct.v4l2_jpeg_reference], ptr %quantization_tables, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %39)
  %cmp98.not = icmp eq i32 %39, 64
  br i1 %cmp98.not, label %if.end109, label %do.end103

do.end103:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name106) #13
  br label %for.inc

if.end109:                                        ; preds = %if.end96
  %arrayidx111 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21, i32 0
  %40 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx111, align 4
  %tobool112.not = icmp eq ptr %41, null
  br i1 %tobool112.not, label %if.then113, label %if.end109.if.end124_crit_edge

if.end109.if.end124_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then113:                                       ; preds = %if.end109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3264, i32 noundef 64) #14
  %43 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i, ptr %arrayidx111, align 4
  %tobool121.not = icmp eq ptr %call7.i, null
  br i1 %tobool121.not, label %if.then113.cleanup272_crit_edge, label %if.then113.if.end124_crit_edge

if.then113.if.end124_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then113.cleanup272_crit_edge:                  ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup272

if.end124:                                        ; preds = %if.then113.if.end124_crit_edge, %if.end109.if.end124_crit_edge
  %44 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx111, align 4
  %46 = ptrtoint ptr %quantization_tables to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %quantization_tables, align 4
  %48 = call ptr @memcpy(ptr %45, ptr %47, i32 64)
  br label %for.inc

for.inc:                                          ; preds = %if.end124, %do.end103, %for.cond.preheader.for.inc_crit_edge
  %arrayidx92.1 = getelementptr inbounds [4 x %struct.v4l2_jpeg_reference], ptr %quantization_tables, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx92.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx92.1, align 4
  %tobool94.not.1 = icmp eq ptr %50, null
  br i1 %tobool94.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end96.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end96.1:                                       ; preds = %for.inc
  %length.1 = getelementptr inbounds [4 x %struct.v4l2_jpeg_reference], ptr %quantization_tables, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %length.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %length.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %52)
  %cmp98.not.1 = icmp eq i32 %52, 64
  br i1 %cmp98.not.1, label %if.end109.1, label %do.end103.1

do.end103.1:                                      ; preds = %if.end96.1
  call void @__sanitizer_cov_trace_pc() #12
  %call108.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name106) #13
  br label %for.inc.1

if.end109.1:                                      ; preds = %if.end96.1
  %arrayidx111.1 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21, i32 1
  %53 = ptrtoint ptr %arrayidx111.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx111.1, align 4
  %tobool112.not.1 = icmp eq ptr %54, null
  br i1 %tobool112.not.1, label %if.then113.1, label %if.end109.1.if.end124.1_crit_edge

if.end109.1.if.end124.1_crit_edge:                ; preds = %if.end109.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124.1

if.then113.1:                                     ; preds = %if.end109.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.1 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3264, i32 noundef 64) #14
  %56 = ptrtoint ptr %arrayidx111.1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i.1, ptr %arrayidx111.1, align 4
  %tobool121.not.1 = icmp eq ptr %call7.i.1, null
  br i1 %tobool121.not.1, label %if.then113.1.cleanup272_crit_edge, label %if.then113.1.if.end124.1_crit_edge

if.then113.1.if.end124.1_crit_edge:               ; preds = %if.then113.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124.1

if.then113.1.cleanup272_crit_edge:                ; preds = %if.then113.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup272

if.end124.1:                                      ; preds = %if.then113.1.if.end124.1_crit_edge, %if.end109.1.if.end124.1_crit_edge
  %57 = ptrtoint ptr %arrayidx111.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx111.1, align 4
  %59 = ptrtoint ptr %arrayidx92.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx92.1, align 4
  %61 = call ptr @memcpy(ptr %58, ptr %60, i32 64)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end124.1, %do.end103.1, %for.inc.for.inc.1_crit_edge
  %arrayidx92.2 = getelementptr inbounds [4 x %struct.v4l2_jpeg_reference], ptr %quantization_tables, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx92.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx92.2, align 4
  %tobool94.not.2 = icmp eq ptr %63, null
  br i1 %tobool94.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end96.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end96.2:                                       ; preds = %for.inc.1
  %length.2 = getelementptr inbounds [4 x %struct.v4l2_jpeg_reference], ptr %quantization_tables, i32 0, i32 2, i32 1
  %64 = ptrtoint ptr %length.2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %length.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %65)
  %cmp98.not.2 = icmp eq i32 %65, 64
  br i1 %cmp98.not.2, label %if.end109.2, label %do.end103.2

do.end103.2:                                      ; preds = %if.end96.2
  call void @__sanitizer_cov_trace_pc() #12
  %call108.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name106) #13
  br label %for.inc.2

if.end109.2:                                      ; preds = %if.end96.2
  %arrayidx111.2 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21, i32 2
  %66 = ptrtoint ptr %arrayidx111.2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx111.2, align 4
  %tobool112.not.2 = icmp eq ptr %67, null
  br i1 %tobool112.not.2, label %if.then113.2, label %if.end109.2.if.end124.2_crit_edge

if.end109.2.if.end124.2_crit_edge:                ; preds = %if.end109.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124.2

if.then113.2:                                     ; preds = %if.end109.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %68 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.2 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3264, i32 noundef 64) #14
  %69 = ptrtoint ptr %arrayidx111.2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.2, ptr %arrayidx111.2, align 4
  %tobool121.not.2 = icmp eq ptr %call7.i.2, null
  br i1 %tobool121.not.2, label %if.then113.2.cleanup272_crit_edge, label %if.then113.2.if.end124.2_crit_edge

if.then113.2.if.end124.2_crit_edge:               ; preds = %if.then113.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124.2

if.then113.2.cleanup272_crit_edge:                ; preds = %if.then113.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup272

if.end124.2:                                      ; preds = %if.then113.2.if.end124.2_crit_edge, %if.end109.2.if.end124.2_crit_edge
  %70 = ptrtoint ptr %arrayidx111.2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx111.2, align 4
  %72 = ptrtoint ptr %arrayidx92.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx92.2, align 4
  %74 = call ptr @memcpy(ptr %71, ptr %73, i32 64)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end124.2, %do.end103.2, %for.inc.1.for.inc.2_crit_edge
  %75 = ptrtoint ptr %huffman_tables to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %huffman_tables, align 4
  %tobool136.not = icmp eq ptr %76, null
  br i1 %tobool136.not, label %for.inc.2.do.end140_crit_edge, label %if.end146

for.inc.2.do.end140_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end140

do.end140:                                        ; preds = %for.inc175.2.do.end140_crit_edge, %for.inc175.1.do.end140_crit_edge, %for.inc175.do.end140_crit_edge, %for.inc.2.do.end140_crit_edge
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name106) #13
  br label %cleanup272

if.end146:                                        ; preds = %for.inc.2
  %length148 = getelementptr inbounds [4 x %struct.v4l2_jpeg_reference], ptr %huffman_tables, i32 0, i32 0, i32 1
  %77 = ptrtoint ptr %length148 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %length148, align 4
  %79 = add i32 %78, -29
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %79)
  %80 = icmp ult i32 %79, -12
  br i1 %80, label %if.end146.do.end166_crit_edge, label %for.inc175

if.end146.do.end166_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end166

do.end166:                                        ; preds = %if.end146.3.do.end166_crit_edge, %if.end146.2.do.end166_crit_edge, %if.end146.1.do.end166_crit_edge, %if.end146.do.end166_crit_edge
  %.lcssa = phi i32 [ %78, %if.end146.do.end166_crit_edge ], [ %84, %if.end146.1.do.end166_crit_edge ], [ %90, %if.end146.2.do.end166_crit_edge ], [ %96, %if.end146.3.do.end166_crit_edge ]
  %i.1354.lcssa366 = phi i32 [ 0, %if.end146.do.end166_crit_edge ], [ 1, %if.end146.1.do.end166_crit_edge ], [ 2, %if.end146.2.do.end166_crit_edge ], [ 3, %if.end146.3.do.end166_crit_edge ]
  %call173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name106, i32 noundef %i.1354.lcssa366, i32 noundef %.lcssa) #13
  br label %cleanup272

for.inc175:                                       ; preds = %if.end146
  %arrayidx134.1 = getelementptr inbounds [4 x %struct.v4l2_jpeg_reference], ptr %huffman_tables, i32 0, i32 1
  %81 = ptrtoint ptr %arrayidx134.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx134.1, align 4
  %tobool136.not.1 = icmp eq ptr %82, null
  br i1 %tobool136.not.1, label %for.inc175.do.end140_crit_edge, label %if.end146.1

for.inc175.do.end140_crit_edge:                   ; preds = %for.inc175
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end140

if.end146.1:                                      ; preds = %for.inc175
  %length148.1 = getelementptr inbounds [4 x %struct.v4l2_jpeg_reference], ptr %huffman_tables, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %length148.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %length148.1, align 4
  %85 = add i32 %84, -29
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %85)
  %86 = icmp ult i32 %85, -12
  br i1 %86, label %if.end146.1.do.end166_crit_edge, label %for.inc175.1

if.end146.1.do.end166_crit_edge:                  ; preds = %if.end146.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end166

for.inc175.1:                                     ; preds = %if.end146.1
  %arrayidx134.2 = getelementptr inbounds [4 x %struct.v4l2_jpeg_reference], ptr %huffman_tables, i32 0, i32 2
  %87 = ptrtoint ptr %arrayidx134.2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx134.2, align 4
  %tobool136.not.2 = icmp eq ptr %88, null
  br i1 %tobool136.not.2, label %for.inc175.1.do.end140_crit_edge, label %if.end146.2

for.inc175.1.do.end140_crit_edge:                 ; preds = %for.inc175.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end140

if.end146.2:                                      ; preds = %for.inc175.1
  %length148.2 = getelementptr inbounds [4 x %struct.v4l2_jpeg_reference], ptr %huffman_tables, i32 0, i32 2, i32 1
  %89 = ptrtoint ptr %length148.2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %length148.2, align 4
  %91 = add i32 %90, -179
  call void @__sanitizer_cov_trace_const_cmp4(i32 -162, i32 %91)
  %92 = icmp ult i32 %91, -162
  br i1 %92, label %if.end146.2.do.end166_crit_edge, label %for.inc175.2

if.end146.2.do.end166_crit_edge:                  ; preds = %if.end146.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end166

for.inc175.2:                                     ; preds = %if.end146.2
  %arrayidx134.3 = getelementptr inbounds [4 x %struct.v4l2_jpeg_reference], ptr %huffman_tables, i32 0, i32 3
  %93 = ptrtoint ptr %arrayidx134.3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx134.3, align 4
  %tobool136.not.3 = icmp eq ptr %94, null
  br i1 %tobool136.not.3, label %for.inc175.2.do.end140_crit_edge, label %if.end146.3

for.inc175.2.do.end140_crit_edge:                 ; preds = %for.inc175.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end140

if.end146.3:                                      ; preds = %for.inc175.2
  %length148.3 = getelementptr inbounds [4 x %struct.v4l2_jpeg_reference], ptr %huffman_tables, i32 0, i32 3, i32 1
  %95 = ptrtoint ptr %length148.3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %length148.3, align 4
  %97 = add i32 %96, -179
  call void @__sanitizer_cov_trace_const_cmp4(i32 -162, i32 %97)
  %98 = icmp ult i32 %97, -162
  br i1 %98, label %if.end146.3.do.end166_crit_edge, label %for.inc175.3

if.end146.3.do.end166_crit_edge:                  ; preds = %if.end146.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end166

for.inc175.3:                                     ; preds = %if.end146.3
  %jpeg_huff_tab = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 26
  %99 = ptrtoint ptr %jpeg_huff_tab to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %jpeg_huff_tab, align 4
  %tobool179.not = icmp eq ptr %100, null
  br i1 %tobool179.not, label %if.then180, label %for.inc175.3.if.end187_crit_edge

for.inc175.3.if.end187_crit_edge:                 ; preds = %for.inc175.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end187

if.then180:                                       ; preds = %for.inc175.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %101 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %101, i32 noundef 3520, i32 noundef 732) #14
  %tobool182.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool182.not, label %if.then180.cleanup272_crit_edge, label %if.end184

if.then180.cleanup272_crit_edge:                  ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup272

if.end184:                                        ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %jpeg_huff_tab to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call7.i.i, ptr %jpeg_huff_tab, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.end184, %for.inc175.3.if.end187_crit_edge
  %huff_tab.0 = phi ptr [ %100, %for.inc175.3.if.end187_crit_edge ], [ %call7.i.i, %if.end184 ]
  %103 = call ptr @memset(ptr %huff_tab.0, i32 0, i32 732)
  %104 = ptrtoint ptr %huffman_tables to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %huffman_tables, align 4
  %106 = ptrtoint ptr %length148 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %length148, align 4
  %108 = call ptr @memcpy(ptr %huff_tab.0, ptr %105, i32 %107)
  %chroma_dc = getelementptr inbounds %struct.coda_huff_tab, ptr %huff_tab.0, i32 0, i32 1
  %109 = ptrtoint ptr %arrayidx134.1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx134.1, align 4
  %111 = ptrtoint ptr %length148.1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %length148.1, align 4
  %113 = call ptr @memcpy(ptr %chroma_dc, ptr %110, i32 %112)
  %luma_ac = getelementptr inbounds %struct.coda_huff_tab, ptr %huff_tab.0, i32 0, i32 2
  %114 = ptrtoint ptr %arrayidx134.2 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx134.2, align 4
  %116 = ptrtoint ptr %length148.2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %length148.2, align 4
  %118 = call ptr @memcpy(ptr %luma_ac, ptr %115, i32 %117)
  %chroma_ac = getelementptr inbounds %struct.coda_huff_tab, ptr %huff_tab.0, i32 0, i32 3
  %119 = ptrtoint ptr %arrayidx134.3 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx134.3, align 4
  %121 = ptrtoint ptr %length148.3 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %length148.3, align 4
  %123 = call ptr @memcpy(ptr %chroma_ac, ptr %120, i32 %122)
  %124 = ptrtoint ptr %scan_header to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %scan_header, align 1
  %conv210 = zext i8 %125 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp211361.not = icmp eq i8 %125, 0
  br i1 %cmp211361.not, label %if.end187.for.body253.preheader_crit_edge, label %for.body213.lr.ph

if.end187.for.body253.preheader_crit_edge:        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body253.preheader

for.body213.lr.ph:                                ; preds = %if.end187
  %126 = ptrtoint ptr %num_components to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %num_components, align 1
  %conv218 = zext i8 %127 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %cmp219356.not = icmp eq i8 %127, 0
  br label %for.body213

for.body213:                                      ; preds = %cleanup.for.body213_crit_edge, %for.body213.lr.ph
  %i.2362 = phi i32 [ 0, %for.body213.lr.ph ], [ %inc248, %cleanup.for.body213_crit_edge ]
  br i1 %cmp219356.not, label %for.body213.for.end233_crit_edge, label %for.body221.lr.ph

for.body213.for.end233_crit_edge:                 ; preds = %for.body213
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end233

for.body221.lr.ph:                                ; preds = %for.body213
  %arrayidx214 = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 %i.2362
  %128 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx214, align 1
  br label %for.body221

for.body221:                                      ; preds = %for.inc231.for.body221_crit_edge, %for.body221.lr.ph
  %j.0357 = phi i32 [ 0, %for.body221.lr.ph ], [ %inc232, %for.inc231.for.body221_crit_edge ]
  %arrayidx224 = getelementptr %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 6, i32 4, i32 %j.0357
  %130 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx224, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %131, i8 %129)
  %cmp227 = icmp eq i8 %131, %129
  br i1 %cmp227, label %for.body221.for.end233_crit_edge, label %for.inc231

for.body221.for.end233_crit_edge:                 ; preds = %for.body221
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end233

for.inc231:                                       ; preds = %for.body221
  %inc232 = add nuw nsw i32 %j.0357, 1
  %exitcond.not = icmp eq i32 %inc232, %conv218
  br i1 %exitcond.not, label %for.inc231.cleanup_crit_edge, label %for.inc231.for.body221_crit_edge

for.inc231.for.body221_crit_edge:                 ; preds = %for.inc231
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body221

for.inc231.cleanup_crit_edge:                     ; preds = %for.inc231
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end233:                                       ; preds = %for.body221.for.end233_crit_edge, %for.body213.for.end233_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.body213.for.end233_crit_edge ], [ %j.0357, %for.body221.for.end233_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa, i32 %conv218)
  %cmp237 = icmp eq i32 %j.0.lcssa, %conv218
  br i1 %cmp237, label %for.end233.cleanup_crit_edge, label %if.end240

for.end233.cleanup_crit_edge:                     ; preds = %for.end233
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end240:                                        ; preds = %for.end233
  call void @__sanitizer_cov_trace_pc() #12
  %dc_entropy_coding_table_selector = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 %i.2362, i32 1
  %132 = ptrtoint ptr %dc_entropy_coding_table_selector to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %dc_entropy_coding_table_selector, align 1
  %conv241 = zext i8 %133 to i32
  %arrayidx243 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 23, i32 %j.0.lcssa
  %134 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv241, ptr %arrayidx243, align 4
  %ac_entropy_coding_table_selector = getelementptr %struct.v4l2_jpeg_scan_header, ptr %scan_header, i32 0, i32 1, i32 %i.2362, i32 2
  %135 = ptrtoint ptr %ac_entropy_coding_table_selector to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %ac_entropy_coding_table_selector, align 1
  %conv244 = zext i8 %136 to i32
  %arrayidx246 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 24, i32 %j.0.lcssa
  %137 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %conv244, ptr %arrayidx246, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end240, %for.end233.cleanup_crit_edge, %for.inc231.cleanup_crit_edge
  %inc248 = add nuw nsw i32 %i.2362, 1
  %exitcond369.not = icmp eq i32 %inc248, %conv210
  br i1 %exitcond369.not, label %cleanup.for.body253.preheader_crit_edge, label %cleanup.for.body213_crit_edge

cleanup.for.body213_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body213

cleanup.for.body253.preheader_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body253.preheader

for.body253.preheader:                            ; preds = %cleanup.for.body253.preheader_crit_edge, %if.end187.for.body253.preheader_crit_edge
  br label %for.body253

for.body253:                                      ; preds = %coda9_jpeg_gen_dec_huff_tab.exit.for.body253_crit_edge, %for.body253.preheader
  %i.3364 = phi i32 [ %inc256, %coda9_jpeg_gen_dec_huff_tab.exit.for.body253_crit_edge ], [ 0, %for.body253.preheader ]
  %138 = ptrtoint ptr %jpeg_huff_tab to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %jpeg_huff_tab, align 4
  %tobool.not.i.i = icmp eq ptr %139, null
  br i1 %tobool.not.i.i, label %for.body253.coda9_jpeg_gen_dec_huff_tab.exit_crit_edge, label %if.end.i.i

for.body253.coda9_jpeg_gen_dec_huff_tab.exit_crit_edge: ; preds = %for.body253
  call void @__sanitizer_cov_trace_pc() #12
  br label %coda9_jpeg_gen_dec_huff_tab.exit

if.end.i.i:                                       ; preds = %for.body253
  %140 = zext i32 %i.3364 to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.3364, label %if.end.i.i.coda9_jpeg_gen_dec_huff_tab.exit_crit_edge [
    i32 0, label %if.end.i.i.if.end.i_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb3.i.i
    i32 3, label %sw.bb5.i.i
  ]

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i.i.coda9_jpeg_gen_dec_huff_tab.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %coda9_jpeg_gen_dec_huff_tab.exit

sw.bb1.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %luma_ac.i.i = getelementptr inbounds %struct.coda_huff_tab, ptr %139, i32 0, i32 2
  br label %coda9_jpeg_get_huff_bits.exit.i

sw.bb3.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %chroma_dc.i.i = getelementptr inbounds %struct.coda_huff_tab, ptr %139, i32 0, i32 1
  br label %coda9_jpeg_get_huff_bits.exit.i

sw.bb5.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %chroma_ac.i.i = getelementptr inbounds %struct.coda_huff_tab, ptr %139, i32 0, i32 3
  br label %coda9_jpeg_get_huff_bits.exit.i

coda9_jpeg_get_huff_bits.exit.i:                  ; preds = %sw.bb5.i.i, %sw.bb3.i.i, %sw.bb1.i.i
  %retval.0.i.i = phi ptr [ %chroma_ac.i.i, %sw.bb5.i.i ], [ %chroma_dc.i.i, %sw.bb3.i.i ], [ %luma_ac.i.i, %sw.bb1.i.i ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %coda9_jpeg_get_huff_bits.exit.i.coda9_jpeg_gen_dec_huff_tab.exit_crit_edge, label %coda9_jpeg_get_huff_bits.exit.i.if.end.i_crit_edge

coda9_jpeg_get_huff_bits.exit.i.if.end.i_crit_edge: ; preds = %coda9_jpeg_get_huff_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

coda9_jpeg_get_huff_bits.exit.i.coda9_jpeg_gen_dec_huff_tab.exit_crit_edge: ; preds = %coda9_jpeg_get_huff_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %coda9_jpeg_gen_dec_huff_tab.exit

if.end.i:                                         ; preds = %coda9_jpeg_get_huff_bits.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %retval.0.i7.i = phi ptr [ %retval.0.i.i, %coda9_jpeg_get_huff_bits.exit.i.if.end.i_crit_edge ], [ %139, %if.end.i.i.if.end.i_crit_edge ]
  %trunc.i = trunc i32 %i.3364 to i2
  %rev.i = call i2 @llvm.bitreverse.i2(i2 %trunc.i) #10
  %or.i = zext i2 %rev.i to i32
  %mul.i = shl nuw nsw i32 %or.i, 4
  %ptr.i = getelementptr inbounds %struct.coda_huff_tab, ptr %139, i32 0, i32 6
  %add.ptr.i = getelementptr i8, ptr %ptr.i, i32 %mul.i
  %max.i = getelementptr inbounds %struct.coda_huff_tab, ptr %139, i32 0, i32 5
  %add.ptr5.i = getelementptr i16, ptr %max.i, i32 %mul.i
  %min.i = getelementptr inbounds %struct.coda_huff_tab, ptr %139, i32 0, i32 4
  %add.ptr9.i = getelementptr i16, ptr %min.i, i32 %mul.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %i.023.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %data_flag.022.i = phi i32 [ 0, %if.end.i ], [ %data_flag.113.i, %for.inc.i.for.body.i_crit_edge ]
  %huff_code.021.i = phi i32 [ 0, %if.end.i ], [ %huff_code.1.i, %for.inc.i.for.body.i_crit_edge ]
  %ptr_cnt.020.i = phi i32 [ 0, %if.end.i ], [ %ptr_cnt.111.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %retval.0.i7.i, i32 %i.023.i
  %141 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool10.not.i = icmp eq i8 %142, 0
  br i1 %tobool10.not.i, label %if.end25.i, label %if.else33.i

if.end25.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx22.i = getelementptr i8, ptr %add.ptr.i, i32 %i.023.i
  %143 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -1, ptr %arrayidx22.i, align 1
  %arrayidx23.i = getelementptr i16, ptr %add.ptr9.i, i32 %i.023.i
  %144 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 -1, ptr %arrayidx23.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_flag.022.i)
  %cmp26.i = icmp eq i32 %data_flag.022.i, 1
  %shl32.i = zext i1 %cmp26.i to i32
  %spec.select19.i = shl i32 %huff_code.021.i, %shl32.i
  br label %for.inc.i

if.else33.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i32 %ptr_cnt.020.i to i8
  %arrayidx12.i = getelementptr i8, ptr %add.ptr.i, i32 %i.023.i
  %145 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv.i, ptr %arrayidx12.i, align 1
  %146 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.i, align 1
  %conv14.i = zext i8 %147 to i32
  %add.i = add i32 %ptr_cnt.020.i, %conv14.i
  %conv15.i = trunc i32 %huff_code.021.i to i16
  %arrayidx16.i = getelementptr i16, ptr %add.ptr9.i, i32 %i.023.i
  %148 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %conv15.i, ptr %arrayidx16.i, align 2
  %149 = load i8, ptr %arrayidx.i, align 1
  %conv18.i = zext i8 %149 to i32
  %sub.i = add i32 %huff_code.021.i, 65535
  %add19.i = add i32 %sub.i, %conv18.i
  %conv20.i = trunc i32 %add19.i to i16
  %sext.i = shl i32 %add19.i, 16
  %add36.i = ashr exact i32 %sext.i, 15
  %shl37.i = add nsw i32 %add36.i, 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else33.i, %if.end25.i
  %conv20.sink.i = phi i16 [ -1, %if.end25.i ], [ %conv20.i, %if.else33.i ]
  %data_flag.113.i = phi i32 [ %data_flag.022.i, %if.end25.i ], [ 1, %if.else33.i ]
  %ptr_cnt.111.i = phi i32 [ %ptr_cnt.020.i, %if.end25.i ], [ %add.i, %if.else33.i ]
  %huff_code.1.i = phi i32 [ %spec.select19.i, %if.end25.i ], [ %shl37.i, %if.else33.i ]
  %150 = getelementptr i16, ptr %add.ptr5.i, i32 %i.023.i
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %conv20.sink.i, ptr %150, align 2
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.coda9_jpeg_gen_dec_huff_tab.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.coda9_jpeg_gen_dec_huff_tab.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %coda9_jpeg_gen_dec_huff_tab.exit

coda9_jpeg_gen_dec_huff_tab.exit:                 ; preds = %for.inc.i.coda9_jpeg_gen_dec_huff_tab.exit_crit_edge, %coda9_jpeg_get_huff_bits.exit.i.coda9_jpeg_gen_dec_huff_tab.exit_crit_edge, %if.end.i.i.coda9_jpeg_gen_dec_huff_tab.exit_crit_edge, %for.body253.coda9_jpeg_gen_dec_huff_tab.exit_crit_edge
  %inc256 = add nuw nsw i32 %i.3364, 1
  %exitcond370.not = icmp eq i32 %inc256, 4
  br i1 %exitcond370.not, label %for.end257, label %coda9_jpeg_gen_dec_huff_tab.exit.for.body253_crit_edge

coda9_jpeg_gen_dec_huff_tab.exit.for.body253_crit_edge: ; preds = %coda9_jpeg_gen_dec_huff_tab.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body253

for.end257:                                       ; preds = %coda9_jpeg_gen_dec_huff_tab.exit
  %ecs_offset = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 11
  %152 = ptrtoint ptr %ecs_offset to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %ecs_offset, align 4
  %jpeg_ecs_offset = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 34
  %154 = ptrtoint ptr %jpeg_ecs_offset to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %jpeg_ecs_offset, align 8
  %subsampling = getelementptr inbounds %struct.v4l2_jpeg_header, ptr %header, i32 0, i32 6, i32 5
  %155 = ptrtoint ptr %subsampling to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %subsampling, align 4
  %.off = add i32 %156, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %do.end264

sw.bb:                                            ; preds = %for.end257
  call void @__sanitizer_cov_trace_pc() #12
  %jpeg_chroma_subsampling = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 18
  %157 = ptrtoint ptr %jpeg_chroma_subsampling to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %jpeg_chroma_subsampling, align 8
  br label %cleanup272

do.end264:                                        ; preds = %for.end257
  call void @__sanitizer_cov_trace_pc() #12
  %call271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name106, i32 noundef %156) #13
  br label %cleanup272

cleanup272:                                       ; preds = %do.end264, %sw.bb, %if.then180.cleanup272_crit_edge, %do.end166, %do.end140, %if.then113.2.cleanup272_crit_edge, %if.then113.1.cleanup272_crit_edge, %if.then113.cleanup272_crit_edge, %do.end83, %do.end70, %do.end50, %do.end20, %do.end
  %retval.0 = phi i32 [ %call6, %do.end ], [ -22, %do.end20 ], [ -22, %do.end50 ], [ -22, %do.end70 ], [ -22, %do.end83 ], [ -22, %do.end166 ], [ -22, %do.end140 ], [ -22, %do.end264 ], [ 0, %sw.bb ], [ -12, %if.then180.cleanup272_crit_edge ], [ -12, %if.then113.2.cleanup272_crit_edge ], [ -12, %if.then113.1.cleanup272_crit_edge ], [ -12, %if.then113.cleanup272_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %header) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %huffman_tables) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %quantization_tables) #10
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %scan_header) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_jpeg_parse_header(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @coda_set_jpeg_compression_quality(ptr nocapture noundef %ctx, i32 noundef %quality) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %quality to i8
  %jpeg_quality = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 19
  %0 = ptrtoint ptr %jpeg_quality to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %jpeg_quality, align 4
  %1 = tail call i32 @llvm.smin.i32(i32 %quality, i32 100)
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %2)
  %cmp6 = icmp ult i32 %2, 50
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %div.rhs.trunc = trunc i32 %2 to i16
  %div56 = udiv i16 5000, %div.rhs.trunc
  %div.zext = zext i16 %div56 to i32
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mul.neg = mul nsw i32 %2, -2
  %sub = add nsw i32 %mul.neg, 200
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  %scale.0 = phi i32 [ %div.zext, %if.then8 ], [ %sub, %if.else ]
  %jpeg_qmat_tab = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21
  %3 = ptrtoint ptr %jpeg_qmat_tab to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %jpeg_qmat_tab, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end9.if.end18_crit_edge, label %if.then11

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then11:                                        ; preds = %if.end9
  %5 = call ptr @memcpy(ptr %4, ptr @luma_q, i32 64)
  %6 = ptrtoint ptr %jpeg_qmat_tab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jpeg_qmat_tab, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then11
  %i.018.i = phi i32 [ 0, %if.then11 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %7, i32 %i.018.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %mul.i = mul nsw i32 %scale.0, %conv.i
  %add.i = add nsw i32 %mul.i, 50
  %div1.i = udiv i32 %add.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %add.i)
  %10 = icmp ult i32 %add.i, 100
  %11 = tail call i32 @llvm.umin.i32(i32 %div1.i, i32 255) #10
  %12 = trunc i32 %11 to i8
  %conv8.i = select i1 %10, i8 1, i8 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv8.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.body.i.if.end18_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.if.end18_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end18:                                         ; preds = %for.body.i.if.end18_crit_edge, %if.end9.if.end18_crit_edge
  %arrayidx21 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21, i32 1
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %if.end18.if.end30_crit_edge, label %if.then23

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then23:                                        ; preds = %if.end18
  %16 = call ptr @memcpy(ptr %15, ptr @chroma_q, i32 64)
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx21, align 4
  br label %for.body.i54

for.body.i54:                                     ; preds = %for.body.i54.for.body.i54_crit_edge, %if.then23
  %i.018.i45 = phi i32 [ 0, %if.then23 ], [ %inc.i52, %for.body.i54.for.body.i54_crit_edge ]
  %arrayidx.i46 = getelementptr i8, ptr %18, i32 %i.018.i45
  %19 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i46, align 1
  %conv.i47 = zext i8 %20 to i32
  %mul.i48 = mul nsw i32 %scale.0, %conv.i47
  %add.i49 = add nsw i32 %mul.i48, 50
  %div1.i50 = udiv i32 %add.i49, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %add.i49)
  %21 = icmp ult i32 %add.i49, 100
  %22 = tail call i32 @llvm.umin.i32(i32 %div1.i50, i32 255) #10
  %23 = trunc i32 %22 to i8
  %conv8.i51 = select i1 %21, i8 1, i8 %23
  %24 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv8.i51, ptr %arrayidx.i46, align 1
  %inc.i52 = add nuw nsw i32 %i.018.i45, 1
  %exitcond.not.i53 = icmp eq i32 %inc.i52, 64
  br i1 %exitcond.not.i53, label %for.body.i54.if.end30_crit_edge, label %for.body.i54.for.body.i54_crit_edge

for.body.i54.for.body.i54_crit_edge:              ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i54

for.body.i54.if.end30_crit_edge:                  ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end30:                                         ; preds = %for.body.i54.if.end30_crit_edge, %if.end18.if.end30_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_encoder_queue_init(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda9_jpeg_start_encoding(ptr nocapture noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8192) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.0107.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x [256 x i32]], ptr %call7.i.i.i, i32 0, i32 %i.0107.i
  %arrayidx1.i = getelementptr %struct.anon.102, ptr %call7.i.i.i, i32 0, i32 1, i32 %i.0107.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 2048) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.coda9_jpeg_load_huff_tab.exit.thread43_crit_edge, label %if.end.i.i

for.body.i.coda9_jpeg_load_huff_tab.exit.thread43_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %coda9_jpeg_load_huff_tab.exit.thread43

if.end.i.i:                                       ; preds = %for.body.i
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @coda9_jpeg_gen_enc_huff_tab.huff_tabs, i32 0, i32 %i.0107.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 16
  %and.i.i = and i32 %i.0107.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool2.not.i.i, i32 16, i32 256
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i
  %k.09.i.i = phi i32 [ 0, %if.end.i.i ], [ %k.1.lcssa.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.07.i.i = phi i32 [ 1, %if.end.i.i ], [ %inc10.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %sub.i.i = add nsw i32 %i.07.i.i, -1
  %arrayidx3.i.i = getelementptr i8, ptr %5, i32 %sub.i.i
  %6 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.i.i, align 1
  %conv.i.i = zext i8 %7 to i32
  %add.i.i = add i32 %k.09.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %cond.i.i)
  %cmp4.i.i = icmp sgt i32 %add.i.i, %cond.i.i
  br i1 %cmp4.i.i, label %for.body.i.i.coda9_jpeg_gen_enc_huff_tab.exit.thread97.i_crit_edge, label %while.cond.preheader.i.i

for.body.i.i.coda9_jpeg_gen_enc_huff_tab.exit.thread97.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %coda9_jpeg_gen_enc_huff_tab.exit.thread97.i

while.cond.preheader.i.i:                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool8.not4.i.i = icmp eq i8 %7, 0
  br i1 %tobool8.not4.i.i, label %while.cond.preheader.i.i.for.inc.i.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.for.inc.i.i_crit_edge:   ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %k.16.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %k.09.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %j.05.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %conv.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %j.05.i.i, -1
  %inc.i.i = add i32 %k.16.i.i, 1
  %arrayidx9.i.i = getelementptr [256 x i32], ptr %call7.i.i.i.i, i32 0, i32 %k.16.i.i
  %8 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.07.i.i, ptr %arrayidx9.i.i, align 4
  %tobool8.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool8.not.i.i, label %while.body.i.i.for.inc.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.for.inc.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %while.body.i.i.for.inc.i.i_crit_edge, %while.cond.preheader.i.i.for.inc.i.i_crit_edge
  %k.1.lcssa.i.i = phi i32 [ %k.09.i.i, %while.cond.preheader.i.i.for.inc.i.i_crit_edge ], [ %inc.i.i, %while.body.i.i.for.inc.i.i_crit_edge ]
  %inc10.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc10.i.i, 17
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.1.lcssa.i.i)
  %cmp1416.i.i = icmp sgt i32 %k.1.lcssa.i.i, 0
  br i1 %cmp1416.i.i, label %while.cond17.preheader.preheader.i.i, label %for.end.i.i.for.inc.i_crit_edge

for.end.i.i.for.inc.i_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

while.cond17.preheader.preheader.i.i:             ; preds = %for.end.i.i
  %9 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call7.i.i.i.i, align 8
  br label %while.cond17.preheader.i.i

while.cond17.preheader.i.i:                       ; preds = %if.end31.i.i.while.cond17.preheader.i.i_crit_edge, %while.cond17.preheader.preheader.i.i
  %code.019.i.i = phi i32 [ %shl32.i.i, %if.end31.i.i.while.cond17.preheader.i.i_crit_edge ], [ 0, %while.cond17.preheader.preheader.i.i ]
  %si.018.i.i = phi i32 [ %inc33.i.i, %if.end31.i.i.while.cond17.preheader.i.i_crit_edge ], [ %10, %while.cond17.preheader.preheader.i.i ]
  %k.217.i.i = phi i32 [ %k.3.lcssa.i.i, %if.end31.i.i.while.cond17.preheader.i.i_crit_edge ], [ 0, %while.cond17.preheader.preheader.i.i ]
  %arrayidx1910.i.i = getelementptr [256 x i32], ptr %call7.i.i.i.i, i32 0, i32 %k.217.i.i
  %11 = ptrtoint ptr %arrayidx1910.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1910.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %si.018.i.i)
  %cmp2011.i.i = icmp eq i32 %12, %si.018.i.i
  br i1 %cmp2011.i.i, label %while.cond17.preheader.i.i.while.body22.i.i_crit_edge, label %while.cond17.preheader.i.i.while.end27.i.i_crit_edge

while.cond17.preheader.i.i.while.end27.i.i_crit_edge: ; preds = %while.cond17.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end27.i.i

while.cond17.preheader.i.i.while.body22.i.i_crit_edge: ; preds = %while.cond17.preheader.i.i
  br label %while.body22.i.i

while.body22.i.i:                                 ; preds = %while.body22.i.i.while.body22.i.i_crit_edge, %while.cond17.preheader.i.i.while.body22.i.i_crit_edge
  %code.113.i.i = phi i32 [ %inc26.i.i, %while.body22.i.i.while.body22.i.i_crit_edge ], [ %code.019.i.i, %while.cond17.preheader.i.i.while.body22.i.i_crit_edge ]
  %k.312.i.i = phi i32 [ %inc24.i.i, %while.body22.i.i.while.body22.i.i_crit_edge ], [ %k.217.i.i, %while.cond17.preheader.i.i.while.body22.i.i_crit_edge ]
  %inc24.i.i = add i32 %k.312.i.i, 1
  %arrayidx25.i.i = getelementptr %struct.anon.103, ptr %call7.i.i.i.i, i32 0, i32 1, i32 %k.312.i.i
  %13 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %code.113.i.i, ptr %arrayidx25.i.i, align 4
  %inc26.i.i = add i32 %code.113.i.i, 1
  %arrayidx19.i.i = getelementptr [256 x i32], ptr %call7.i.i.i.i, i32 0, i32 %inc24.i.i
  %14 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx19.i.i, align 4
  %cmp20.i.i = icmp eq i32 %15, %si.018.i.i
  br i1 %cmp20.i.i, label %while.body22.i.i.while.body22.i.i_crit_edge, label %while.body22.i.i.while.end27.i.i_crit_edge

while.body22.i.i.while.end27.i.i_crit_edge:       ; preds = %while.body22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end27.i.i

while.body22.i.i.while.body22.i.i_crit_edge:      ; preds = %while.body22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body22.i.i

while.end27.i.i:                                  ; preds = %while.body22.i.i.while.end27.i.i_crit_edge, %while.cond17.preheader.i.i.while.end27.i.i_crit_edge
  %k.3.lcssa.i.i = phi i32 [ %k.217.i.i, %while.cond17.preheader.i.i.while.end27.i.i_crit_edge ], [ %inc24.i.i, %while.body22.i.i.while.end27.i.i_crit_edge ]
  %code.1.lcssa.i.i = phi i32 [ %code.019.i.i, %while.cond17.preheader.i.i.while.end27.i.i_crit_edge ], [ %inc26.i.i, %while.body22.i.i.while.end27.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %si.018.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %code.1.lcssa.i.i, i32 %shl.i.i)
  %cmp28.not.i.i = icmp slt i32 %code.1.lcssa.i.i, %shl.i.i
  br i1 %cmp28.not.i.i, label %if.end31.i.i, label %while.end27.i.i.coda9_jpeg_gen_enc_huff_tab.exit.thread97.i_crit_edge

while.end27.i.i.coda9_jpeg_gen_enc_huff_tab.exit.thread97.i_crit_edge: ; preds = %while.end27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %coda9_jpeg_gen_enc_huff_tab.exit.thread97.i

if.end31.i.i:                                     ; preds = %while.end27.i.i
  %shl32.i.i = shl i32 %code.1.lcssa.i.i, 1
  %inc33.i.i = add i32 %si.018.i.i, 1
  %cmp14.i.i = icmp slt i32 %k.3.lcssa.i.i, %k.1.lcssa.i.i
  br i1 %cmp14.i.i, label %if.end31.i.i.while.cond17.preheader.i.i_crit_edge, label %if.end31.i.i.for.body38.i.i_crit_edge

if.end31.i.i.for.body38.i.i_crit_edge:            ; preds = %if.end31.i.i
  br label %for.body38.i.i

if.end31.i.i.while.cond17.preheader.i.i_crit_edge: ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond17.preheader.i.i

for.body38.i.i:                                   ; preds = %if.end46.i.i.for.body38.i.i_crit_edge, %if.end31.i.i.for.body38.i.i_crit_edge
  %k.421.i.i = phi i32 [ %inc54.i.i, %if.end46.i.i.for.body38.i.i_crit_edge ], [ 0, %if.end31.i.i.for.body38.i.i_crit_edge ]
  %arrayidx39.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %k.421.i.i
  %16 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx39.i.i, align 1
  %conv40.i.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %conv40.i.i)
  %cmp41.not.i.i = icmp ugt i32 %cond.i.i, %conv40.i.i
  br i1 %cmp41.not.i.i, label %lor.lhs.false.i.i, label %for.body38.i.i.coda9_jpeg_gen_enc_huff_tab.exit.thread97.i_crit_edge

for.body38.i.i.coda9_jpeg_gen_enc_huff_tab.exit.thread97.i_crit_edge: ; preds = %for.body38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %coda9_jpeg_gen_enc_huff_tab.exit.thread97.i

lor.lhs.false.i.i:                                ; preds = %for.body38.i.i
  %arrayidx43.i.i = getelementptr i32, ptr %arrayidx.i, i32 %conv40.i.i
  %18 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx43.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool44.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool44.not.i.i, label %if.end46.i.i, label %lor.lhs.false.i.i.coda9_jpeg_gen_enc_huff_tab.exit.thread97.i_crit_edge

lor.lhs.false.i.i.coda9_jpeg_gen_enc_huff_tab.exit.thread97.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %coda9_jpeg_gen_enc_huff_tab.exit.thread97.i

if.end46.i.i:                                     ; preds = %lor.lhs.false.i.i
  %arrayidx48.i.i = getelementptr %struct.anon.103, ptr %call7.i.i.i.i, i32 0, i32 1, i32 %k.421.i.i
  %20 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx48.i.i, align 4
  %arrayidx49.i.i = getelementptr i32, ptr %arrayidx1.i, i32 %conv40.i.i
  %22 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx49.i.i, align 4
  %arrayidx51.i.i = getelementptr [256 x i32], ptr %call7.i.i.i.i, i32 0, i32 %k.421.i.i
  %23 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx51.i.i, align 4
  %25 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx43.i.i, align 4
  %inc54.i.i = add nuw nsw i32 %k.421.i.i, 1
  %exitcond27.not.i.i = icmp eq i32 %inc54.i.i, %k.1.lcssa.i.i
  br i1 %exitcond27.not.i.i, label %if.end46.i.i.for.inc.i_crit_edge, label %if.end46.i.i.for.body38.i.i_crit_edge

if.end46.i.i.for.body38.i.i_crit_edge:            ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38.i.i

if.end46.i.i.for.inc.i_crit_edge:                 ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

coda9_jpeg_gen_enc_huff_tab.exit.thread97.i:      ; preds = %lor.lhs.false.i.i.coda9_jpeg_gen_enc_huff_tab.exit.thread97.i_crit_edge, %for.body38.i.i.coda9_jpeg_gen_enc_huff_tab.exit.thread97.i_crit_edge, %while.end27.i.i.coda9_jpeg_gen_enc_huff_tab.exit.thread97.i_crit_edge, %for.body.i.i.coda9_jpeg_gen_enc_huff_tab.exit.thread97.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %coda9_jpeg_load_huff_tab.exit.thread43

for.inc.i:                                        ; preds = %if.end46.i.i.for.inc.i_crit_edge, %for.end.i.i.for.inc.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  %inc.i = add nuw nsw i32 %i.0107.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %jpeg_huff_data.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 25
  %26 = ptrtoint ptr %jpeg_huff_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %jpeg_huff_data.i, align 8
  %tobool7.not.i = icmp eq ptr %27, null
  br i1 %tobool7.not.i, label %if.then8.i, label %for.end.i.cond.end29.i_crit_edge

for.end.i.cond.end29.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end29.i

if.then8.i:                                       ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i94.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 2176) #14
  %29 = ptrtoint ptr %jpeg_huff_data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i94.i, ptr %jpeg_huff_data.i, align 8
  %tobool14.not.i = icmp eq ptr %call7.i.i94.i, null
  br i1 %tobool14.not.i, label %if.then8.i.coda9_jpeg_load_huff_tab.exit.thread43_crit_edge, label %if.then8.i.cond.end29.i_crit_edge

if.then8.i.cond.end29.i_crit_edge:                ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end29.i

if.then8.i.coda9_jpeg_load_huff_tab.exit.thread43_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %coda9_jpeg_load_huff_tab.exit.thread43

cond.end29.i:                                     ; preds = %if.then8.i.cond.end29.i_crit_edge, %for.end.i.cond.end29.i_crit_edge
  %30 = ptrtoint ptr %jpeg_huff_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %jpeg_huff_data.i, align 8
  br label %for.body35.i

for.body35.i:                                     ; preds = %for.inc53.i.for.body35.i_crit_edge, %cond.end29.i
  %i.1109.i = phi i32 [ 0, %cond.end29.i ], [ %inc54.i, %for.inc53.i.for.body35.i_crit_edge ]
  %huff_data.1108.i = phi ptr [ %31, %cond.end29.i ], [ %huff_data.2.i, %for.inc53.i.for.body35.i_crit_edge ]
  %arrayidx38.i = getelementptr [4 x [256 x i32]], ptr %call7.i.i.i, i32 0, i32 1, i32 %i.1109.i
  %32 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp39.i = icmp eq i32 %33, 0
  br i1 %cmp39.i, label %land.lhs.true.i, label %for.body35.i.if.else.i_crit_edge

for.body35.i.if.else.i_crit_edge:                 ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body35.i
  %arrayidx42.i = getelementptr %struct.anon.102, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 %i.1109.i
  %34 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp43.i = icmp eq i32 %35, 0
  br i1 %cmp43.i, label %land.lhs.true.i.for.inc53.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i.for.inc53.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc53.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.body35.i.if.else.i_crit_edge
  %sub.i = shl i32 %33, 16
  %shl.i = add i32 %sub.i, -65536
  %arrayidx50.i = getelementptr %struct.anon.102, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 %i.1109.i
  %36 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx50.i, align 4
  %or.i = or i32 %37, %shl.i
  br label %for.inc53.i

for.inc53.i:                                      ; preds = %if.else.i, %land.lhs.true.i.for.inc53.i_crit_edge
  %storemerge.i = phi i32 [ %or.i, %if.else.i ], [ 0, %land.lhs.true.i.for.inc53.i_crit_edge ]
  %huff_data.2.i = getelementptr i32, ptr %huff_data.1108.i, i32 1
  %38 = ptrtoint ptr %huff_data.1108.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %storemerge.i, ptr %huff_data.1108.i, align 4
  %inc54.i = add nuw nsw i32 %i.1109.i, 1
  %exitcond123.not.i = icmp eq i32 %inc54.i, 256
  br i1 %exitcond123.not.i, label %for.inc53.i.for.body35.1.i_crit_edge, label %for.inc53.i.for.body35.i_crit_edge

for.inc53.i.for.body35.i_crit_edge:               ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35.i

for.inc53.i.for.body35.1.i_crit_edge:             ; preds = %for.inc53.i
  br label %for.body35.1.i

for.body35.1.i:                                   ; preds = %for.inc53.1.i.for.body35.1.i_crit_edge, %for.inc53.i.for.body35.1.i_crit_edge
  %i.1109.1.i = phi i32 [ %inc54.1.i, %for.inc53.1.i.for.body35.1.i_crit_edge ], [ 0, %for.inc53.i.for.body35.1.i_crit_edge ]
  %huff_data.1108.1.i = phi ptr [ %huff_data.2.1.i, %for.inc53.1.i.for.body35.1.i_crit_edge ], [ %huff_data.2.i, %for.inc53.i.for.body35.1.i_crit_edge ]
  %arrayidx38.1.i = getelementptr [4 x [256 x i32]], ptr %call7.i.i.i, i32 0, i32 3, i32 %i.1109.1.i
  %39 = ptrtoint ptr %arrayidx38.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx38.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp39.1.i = icmp eq i32 %40, 0
  br i1 %cmp39.1.i, label %land.lhs.true.1.i, label %for.body35.1.i.if.else.1.i_crit_edge

for.body35.1.i.if.else.1.i_crit_edge:             ; preds = %for.body35.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.1.i

land.lhs.true.1.i:                                ; preds = %for.body35.1.i
  %arrayidx42.1.i = getelementptr %struct.anon.102, ptr %call7.i.i.i, i32 0, i32 1, i32 3, i32 %i.1109.1.i
  %41 = ptrtoint ptr %arrayidx42.1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx42.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp43.1.i = icmp eq i32 %42, 0
  br i1 %cmp43.1.i, label %land.lhs.true.1.i.for.inc53.1.i_crit_edge, label %land.lhs.true.1.i.if.else.1.i_crit_edge

land.lhs.true.1.i.if.else.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.1.i

land.lhs.true.1.i.for.inc53.1.i_crit_edge:        ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc53.1.i

if.else.1.i:                                      ; preds = %land.lhs.true.1.i.if.else.1.i_crit_edge, %for.body35.1.i.if.else.1.i_crit_edge
  %sub.1.i = shl i32 %40, 16
  %shl.1.i = add i32 %sub.1.i, -65536
  %arrayidx50.1.i = getelementptr %struct.anon.102, ptr %call7.i.i.i, i32 0, i32 1, i32 3, i32 %i.1109.1.i
  %43 = ptrtoint ptr %arrayidx50.1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx50.1.i, align 4
  %or.1.i = or i32 %44, %shl.1.i
  br label %for.inc53.1.i

for.inc53.1.i:                                    ; preds = %if.else.1.i, %land.lhs.true.1.i.for.inc53.1.i_crit_edge
  %storemerge.1.i = phi i32 [ %or.1.i, %if.else.1.i ], [ 0, %land.lhs.true.1.i.for.inc53.1.i_crit_edge ]
  %huff_data.2.1.i = getelementptr i32, ptr %huff_data.1108.1.i, i32 1
  %45 = ptrtoint ptr %huff_data.1108.1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %storemerge.1.i, ptr %huff_data.1108.1.i, align 4
  %inc54.1.i = add nuw nsw i32 %i.1109.1.i, 1
  %exitcond123.1.not.i = icmp eq i32 %inc54.1.i, 256
  br i1 %exitcond123.1.not.i, label %for.inc53.1.i.for.body35.2.i_crit_edge, label %for.inc53.1.i.for.body35.1.i_crit_edge

for.inc53.1.i.for.body35.1.i_crit_edge:           ; preds = %for.inc53.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35.1.i

for.inc53.1.i.for.body35.2.i_crit_edge:           ; preds = %for.inc53.1.i
  br label %for.body35.2.i

for.body35.2.i:                                   ; preds = %for.inc53.2.i.for.body35.2.i_crit_edge, %for.inc53.1.i.for.body35.2.i_crit_edge
  %i.1109.2.i = phi i32 [ %inc54.2.i, %for.inc53.2.i.for.body35.2.i_crit_edge ], [ 0, %for.inc53.1.i.for.body35.2.i_crit_edge ]
  %huff_data.1108.2.i = phi ptr [ %huff_data.2.2.i, %for.inc53.2.i.for.body35.2.i_crit_edge ], [ %huff_data.2.1.i, %for.inc53.1.i.for.body35.2.i_crit_edge ]
  %arrayidx38.2.i = getelementptr [4 x [256 x i32]], ptr %call7.i.i.i, i32 0, i32 0, i32 %i.1109.2.i
  %46 = ptrtoint ptr %arrayidx38.2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx38.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp39.2.i = icmp eq i32 %47, 0
  br i1 %cmp39.2.i, label %land.lhs.true.2.i, label %for.body35.2.i.if.else.2.i_crit_edge

for.body35.2.i.if.else.2.i_crit_edge:             ; preds = %for.body35.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.2.i

land.lhs.true.2.i:                                ; preds = %for.body35.2.i
  %arrayidx42.2.i = getelementptr %struct.anon.102, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 %i.1109.2.i
  %48 = ptrtoint ptr %arrayidx42.2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx42.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp43.2.i = icmp eq i32 %49, 0
  br i1 %cmp43.2.i, label %land.lhs.true.2.i.for.inc53.2.i_crit_edge, label %land.lhs.true.2.i.if.else.2.i_crit_edge

land.lhs.true.2.i.if.else.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.2.i

land.lhs.true.2.i.for.inc53.2.i_crit_edge:        ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc53.2.i

if.else.2.i:                                      ; preds = %land.lhs.true.2.i.if.else.2.i_crit_edge, %for.body35.2.i.if.else.2.i_crit_edge
  %sub.2.i = shl i32 %47, 16
  %shl.2.i = add i32 %sub.2.i, -65536
  %arrayidx50.2.i = getelementptr %struct.anon.102, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 %i.1109.2.i
  %50 = ptrtoint ptr %arrayidx50.2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx50.2.i, align 4
  %or.2.i = or i32 %51, %shl.2.i
  br label %for.inc53.2.i

for.inc53.2.i:                                    ; preds = %if.else.2.i, %land.lhs.true.2.i.for.inc53.2.i_crit_edge
  %storemerge.2.i = phi i32 [ %or.2.i, %if.else.2.i ], [ 0, %land.lhs.true.2.i.for.inc53.2.i_crit_edge ]
  %huff_data.2.2.i = getelementptr i32, ptr %huff_data.1108.2.i, i32 1
  %52 = ptrtoint ptr %huff_data.1108.2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %storemerge.2.i, ptr %huff_data.1108.2.i, align 4
  %inc54.2.i = add nuw nsw i32 %i.1109.2.i, 1
  %exitcond123.2.not.i = icmp eq i32 %inc54.2.i, 16
  br i1 %exitcond123.2.not.i, label %for.inc53.2.i.for.body35.3.i_crit_edge, label %for.inc53.2.i.for.body35.2.i_crit_edge

for.inc53.2.i.for.body35.2.i_crit_edge:           ; preds = %for.inc53.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35.2.i

for.inc53.2.i.for.body35.3.i_crit_edge:           ; preds = %for.inc53.2.i
  br label %for.body35.3.i

for.body35.3.i:                                   ; preds = %for.inc53.3.i.for.body35.3.i_crit_edge, %for.inc53.2.i.for.body35.3.i_crit_edge
  %i.1109.3.i = phi i32 [ %inc54.3.i, %for.inc53.3.i.for.body35.3.i_crit_edge ], [ 0, %for.inc53.2.i.for.body35.3.i_crit_edge ]
  %huff_data.1108.3.i = phi ptr [ %huff_data.2.3.i, %for.inc53.3.i.for.body35.3.i_crit_edge ], [ %huff_data.2.2.i, %for.inc53.2.i.for.body35.3.i_crit_edge ]
  %arrayidx38.3.i = getelementptr [4 x [256 x i32]], ptr %call7.i.i.i, i32 0, i32 2, i32 %i.1109.3.i
  %53 = ptrtoint ptr %arrayidx38.3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx38.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp39.3.i = icmp eq i32 %54, 0
  br i1 %cmp39.3.i, label %land.lhs.true.3.i, label %for.body35.3.i.if.else.3.i_crit_edge

for.body35.3.i.if.else.3.i_crit_edge:             ; preds = %for.body35.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.3.i

land.lhs.true.3.i:                                ; preds = %for.body35.3.i
  %arrayidx42.3.i = getelementptr %struct.anon.102, ptr %call7.i.i.i, i32 0, i32 1, i32 2, i32 %i.1109.3.i
  %55 = ptrtoint ptr %arrayidx42.3.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx42.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp43.3.i = icmp eq i32 %56, 0
  br i1 %cmp43.3.i, label %land.lhs.true.3.i.for.inc53.3.i_crit_edge, label %land.lhs.true.3.i.if.else.3.i_crit_edge

land.lhs.true.3.i.if.else.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.3.i

land.lhs.true.3.i.for.inc53.3.i_crit_edge:        ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc53.3.i

if.else.3.i:                                      ; preds = %land.lhs.true.3.i.if.else.3.i_crit_edge, %for.body35.3.i.if.else.3.i_crit_edge
  %sub.3.i = shl i32 %54, 16
  %shl.3.i = add i32 %sub.3.i, -65536
  %arrayidx50.3.i = getelementptr %struct.anon.102, ptr %call7.i.i.i, i32 0, i32 1, i32 2, i32 %i.1109.3.i
  %57 = ptrtoint ptr %arrayidx50.3.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx50.3.i, align 4
  %or.3.i = or i32 %58, %shl.3.i
  br label %for.inc53.3.i

for.inc53.3.i:                                    ; preds = %if.else.3.i, %land.lhs.true.3.i.for.inc53.3.i_crit_edge
  %storemerge.3.i = phi i32 [ %or.3.i, %if.else.3.i ], [ 0, %land.lhs.true.3.i.for.inc53.3.i_crit_edge ]
  %huff_data.2.3.i = getelementptr i32, ptr %huff_data.1108.3.i, i32 1
  %59 = ptrtoint ptr %huff_data.1108.3.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %storemerge.3.i, ptr %huff_data.1108.3.i, align 4
  %inc54.3.i = add nuw nsw i32 %i.1109.3.i, 1
  %exitcond123.3.not.i = icmp eq i32 %inc54.3.i, 16
  br i1 %exitcond123.3.not.i, label %if.end, label %for.inc53.3.i.for.body35.3.i_crit_edge

for.inc53.3.i.for.body35.3.i_crit_edge:           ; preds = %for.inc53.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35.3.i

coda9_jpeg_load_huff_tab.exit.thread43:           ; preds = %if.then8.i.coda9_jpeg_load_huff_tab.exit.thread43_crit_edge, %coda9_jpeg_gen_enc_huff_tab.exit.thread97.i, %for.body.i.coda9_jpeg_load_huff_tab.exit.thread43_crit_edge
  %ret.0.i.ph = phi i32 [ -22, %coda9_jpeg_gen_enc_huff_tab.exit.thread97.i ], [ -12, %if.then8.i.coda9_jpeg_load_huff_tab.exit.thread43_crit_edge ], [ -12, %for.body.i.coda9_jpeg_load_huff_tab.exit.thread43_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %do.end

do.end:                                           ; preds = %coda9_jpeg_load_huff_tab.exit.thread43, %entry.do.end_crit_edge
  %retval.0.i42 = phi i32 [ %ret.0.i.ph, %coda9_jpeg_load_huff_tab.exit.thread43 ], [ -12, %entry.do.end_crit_edge ]
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name) #13
  br label %cleanup

if.end:                                           ; preds = %for.inc53.3.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %jpeg_qmat_tab = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21
  %60 = ptrtoint ptr %jpeg_qmat_tab to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %jpeg_qmat_tab, align 8
  %tobool.not = icmp eq ptr %61, null
  br i1 %tobool.not, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %62 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3264, i32 noundef 64) #14
  %63 = ptrtoint ptr %jpeg_qmat_tab to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i, ptr %jpeg_qmat_tab, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %arrayidx11 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21, i32 1
  %64 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %65, null
  br i1 %tobool12.not, label %if.then13, label %if.end8.if.end18_crit_edge

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %66 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 3264, i32 noundef 64) #14
  %67 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i29, ptr %arrayidx11, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end8.if.end18_crit_edge
  %jpeg_quality = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 19
  %68 = ptrtoint ptr %jpeg_quality to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %jpeg_quality, align 4
  %conv = zext i8 %69 to i32
  %70 = tail call i32 @llvm.smin.i32(i32 %conv, i32 100) #10
  %71 = tail call i32 @llvm.smax.i32(i32 %70, i32 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %71)
  %cmp6.i = icmp ult i32 %71, 50
  br i1 %cmp6.i, label %if.then8.i30, label %if.else.i32

if.then8.i30:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %div.rhs.trunc.i = trunc i32 %71 to i16
  %div56.i = udiv i16 5000, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div56.i to i32
  br label %if.end9.i

if.else.i32:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %mul.neg.i = mul nsw i32 %71, -2
  %sub.i31 = add nsw i32 %mul.neg.i, 200
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i32, %if.then8.i30
  %scale.0.i = phi i32 [ %div.zext.i, %if.then8.i30 ], [ %sub.i31, %if.else.i32 ]
  %72 = ptrtoint ptr %jpeg_qmat_tab to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %jpeg_qmat_tab, align 8
  %tobool.not.i33 = icmp eq ptr %73, null
  br i1 %tobool.not.i33, label %if.end9.i.if.end18.i_crit_edge, label %if.then11.i

if.end9.i.if.end18.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then11.i:                                      ; preds = %if.end9.i
  %74 = call ptr @memcpy(ptr %73, ptr @luma_q, i32 64)
  %75 = ptrtoint ptr %jpeg_qmat_tab to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %jpeg_qmat_tab, align 8
  br label %for.body.i.i39

for.body.i.i39:                                   ; preds = %for.body.i.i39.for.body.i.i39_crit_edge, %if.then11.i
  %i.018.i.i = phi i32 [ 0, %if.then11.i ], [ %inc.i.i37, %for.body.i.i39.for.body.i.i39_crit_edge ]
  %arrayidx.i.i34 = getelementptr i8, ptr %76, i32 %i.018.i.i
  %77 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i.i34, align 1
  %conv.i.i35 = zext i8 %78 to i32
  %mul.i.i = mul nsw i32 %scale.0.i, %conv.i.i35
  %add.i.i36 = add nsw i32 %mul.i.i, 50
  %div1.i.i = udiv i32 %add.i.i36, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %add.i.i36)
  %79 = icmp ult i32 %add.i.i36, 100
  %80 = tail call i32 @llvm.umin.i32(i32 %div1.i.i, i32 255) #10
  %81 = trunc i32 %80 to i8
  %conv8.i.i = select i1 %79, i8 1, i8 %81
  %82 = ptrtoint ptr %arrayidx.i.i34 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv8.i.i, ptr %arrayidx.i.i34, align 1
  %inc.i.i37 = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i38 = icmp eq i32 %inc.i.i37, 64
  br i1 %exitcond.not.i.i38, label %for.body.i.i39.if.end18.i_crit_edge, label %for.body.i.i39.for.body.i.i39_crit_edge

for.body.i.i39.for.body.i.i39_crit_edge:          ; preds = %for.body.i.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i39

for.body.i.i39.if.end18.i_crit_edge:              ; preds = %for.body.i.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.end18.i:                                       ; preds = %for.body.i.i39.if.end18.i_crit_edge, %if.end9.i.if.end18.i_crit_edge
  %83 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx11, align 4
  %tobool22.not.i = icmp eq ptr %84, null
  br i1 %tobool22.not.i, label %if.end18.i.cleanup_crit_edge, label %if.then23.i

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23.i:                                      ; preds = %if.end18.i
  %85 = call ptr @memcpy(ptr %84, ptr @chroma_q, i32 64)
  %86 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx11, align 4
  br label %for.body.i54.i

for.body.i54.i:                                   ; preds = %for.body.i54.i.for.body.i54.i_crit_edge, %if.then23.i
  %i.018.i45.i = phi i32 [ 0, %if.then23.i ], [ %inc.i52.i, %for.body.i54.i.for.body.i54.i_crit_edge ]
  %arrayidx.i46.i = getelementptr i8, ptr %87, i32 %i.018.i45.i
  %88 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i46.i, align 1
  %conv.i47.i = zext i8 %89 to i32
  %mul.i48.i = mul nsw i32 %scale.0.i, %conv.i47.i
  %add.i49.i = add nsw i32 %mul.i48.i, 50
  %div1.i50.i = udiv i32 %add.i49.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %add.i49.i)
  %90 = icmp ult i32 %add.i49.i, 100
  %91 = tail call i32 @llvm.umin.i32(i32 %div1.i50.i, i32 255) #10
  %92 = trunc i32 %91 to i8
  %conv8.i51.i = select i1 %90, i8 1, i8 %92
  %93 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv8.i51.i, ptr %arrayidx.i46.i, align 1
  %inc.i52.i = add nuw nsw i32 %i.018.i45.i, 1
  %exitcond.not.i53.i = icmp eq i32 %inc.i52.i, 64
  br i1 %exitcond.not.i53.i, label %for.body.i54.i.cleanup_crit_edge, label %for.body.i54.i.for.body.i54.i_crit_edge

for.body.i54.i.for.body.i54.i_crit_edge:          ; preds = %for.body.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i54.i

for.body.i54.i.cleanup_crit_edge:                 ; preds = %for.body.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.i54.i.cleanup_crit_edge, %if.end18.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i42, %do.end ], [ 0, %if.end18.i.cleanup_crit_edge ], [ 0, %for.body.i54.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda9_jpeg_prepare_encode(ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %m2m_ctx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i232 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #10
  %q_data.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %vb2_get_plane_payload.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

vb2_get_plane_payload.exit:                       ; preds = %entry
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %8 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytesused.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.end42.i, label %vb2_get_plane_payload.exit.if.end_crit_edge

vb2_get_plane_payload.exit.if.end_crit_edge:      ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end42.i:                                       ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  %size.addr.0.i.in = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 4
  %10 = ptrtoint ptr %size.addr.0.i.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %size.addr.0.i = load i32, ptr %size.addr.0.i.in, align 8
  %11 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end42.i, %vb2_get_plane_payload.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %osequence = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 13
  %12 = ptrtoint ptr %osequence to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %osequence, align 8
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sequence, align 8
  %15 = load i32, ptr %osequence, align 8
  %sequence11 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i232, i32 0, i32 4
  %16 = ptrtoint ptr %sequence11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sequence11, align 8
  %17 = load i32, ptr %osequence, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %osequence, align 8
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 8
  %or = and i32 %19, -25
  %and = or i32 %or, 8
  store i32 %and, ptr %flags, align 8
  tail call void @coda_set_gdi_regs(ptr noundef %ctx) #10
  %call.i242 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i232, i32 noundef 0) #10
  %20 = ptrtoint ptr %call.i242 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call.i242, align 4
  %num_planes.i243 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i232, i32 0, i32 4
  %22 = ptrtoint ptr %num_planes.i243 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_planes.i243, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i244 = icmp eq i32 %23, 0
  br i1 %cmp.not.i244, label %if.end.vb2_plane_size.exit248_crit_edge, label %if.then.i246

if.end.vb2_plane_size.exit248_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_plane_size.exit248

if.then.i246:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %length.i245 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i232, i32 0, i32 10, i32 0, i32 4
  %24 = ptrtoint ptr %length.i245 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i245, align 8
  br label %vb2_plane_size.exit248

vb2_plane_size.exit248:                           ; preds = %if.then.i246, %if.end.vb2_plane_size.exit248_crit_edge
  %retval.0.i247 = phi i32 [ %25, %if.then.i246 ], [ 0, %if.end.vb2_plane_size.exit248_crit_edge ]
  %add = add i32 %retval.0.i247, %21
  %fourcc = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 4
  %26 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fourcc, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %27, label %vb2_plane_size.exit248.cleanup_crit_edge [
    i32 842093913, label %vb2_plane_size.exit248.if.end21_crit_edge
    i32 842094158, label %vb2_plane_size.exit248.if.end21_crit_edge335
    i32 1345466932, label %sw.bb1.i
    i32 875836505, label %sw.bb2.i
    i32 1497715271, label %sw.bb3.i
  ]

vb2_plane_size.exit248.if.end21_crit_edge335:     ; preds = %vb2_plane_size.exit248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

vb2_plane_size.exit248.if.end21_crit_edge:        ; preds = %vb2_plane_size.exit248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

vb2_plane_size.exit248.cleanup_crit_edge:         ; preds = %vb2_plane_size.exit248
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1.i:                                         ; preds = %vb2_plane_size.exit248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

sw.bb2.i:                                         ; preds = %vb2_plane_size.exit248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

sw.bb3.i:                                         ; preds = %vb2_plane_size.exit248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end21:                                         ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %vb2_plane_size.exit248.if.end21_crit_edge, %vb2_plane_size.exit248.if.end21_crit_edge335
  %cmp69 = phi i32 [ 4, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ 0, %vb2_plane_size.exit248.if.end21_crit_edge ], [ 0, %vb2_plane_size.exit248.if.end21_crit_edge335 ]
  %retval.0.i249.ph = phi i32 [ 4, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %vb2_plane_size.exit248.if.end21_crit_edge ], [ 0, %vb2_plane_size.exit248.if.end21_crit_edge335 ]
  %29 = ptrtoint ptr %q_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %q_data.i, align 4
  %sub = add i32 %30, 65535
  %arrayidx = getelementptr [5 x i8], ptr @width_align, i32 0, i32 %retval.0.i249.ph
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %32 to i32
  %sub22 = add nuw nsw i32 %conv, 65535
  %or23 = or i32 %sub22, %sub
  %conv25 = add i32 %or23, 1
  %height = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 1
  %33 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height, align 4
  %sub26 = add i32 %34, 65535
  %arrayidx27 = getelementptr [5 x i8], ptr @height_align, i32 0, i32 %retval.0.i249.ph
  %35 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %36 to i32
  %sub29 = add nuw nsw i32 %conv28, 65535
  %or30 = or i32 %sub29, %sub26
  %37 = trunc i32 %or30 to i16
  %conv32 = add i16 %37, 1
  %conv33 = and i32 %conv25, 65535
  %bytesperline = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 2
  %38 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bytesperline, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv33)
  %cmp34.not = icmp eq i32 %39, %conv33
  br i1 %cmp34.not, label %if.end21.if.end40_crit_edge, label %do.end

if.end21.if.end40_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name, i32 noundef %conv33, i32 noundef %39) #13
  br label %if.end40

if.end40:                                         ; preds = %do.end, %if.end21.if.end40_crit_edge
  %40 = ptrtoint ptr %num_planes.i243 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_planes.i243, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.not.i251 = icmp eq i32 %41, 0
  br i1 %cmp.not.i251, label %if.end40.vb2_plane_size.exit255_crit_edge, label %if.then.i253

if.end40.vb2_plane_size.exit255_crit_edge:        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_plane_size.exit255

if.then.i253:                                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %length.i252 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i232, i32 0, i32 10, i32 0, i32 4
  %42 = ptrtoint ptr %length.i252 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length.i252, align 8
  br label %vb2_plane_size.exit255

vb2_plane_size.exit255:                           ; preds = %if.then.i253, %if.end40.vb2_plane_size.exit255_crit_edge
  %retval.0.i254 = phi i32 [ %43, %if.then.i253 ], [ 0, %if.end40.vb2_plane_size.exit255_crit_edge ]
  %call44 = tail call ptr @vb2_plane_vaddr(ptr noundef %call.i232, i32 noundef 0) #10
  %buf570.i = ptrtoint ptr %call44 to i32
  %add.ptr.i = getelementptr i8, ptr %call44, i32 %retval.0.i254
  %44 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fourcc, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %45, label %vb2_plane_size.exit255.if.end49_crit_edge [
    i32 842093913, label %vb2_plane_size.exit255.if.end.i_crit_edge
    i32 842094158, label %vb2_plane_size.exit255.if.end.i_crit_edge336
    i32 1345466932, label %sw.bb1.i.i
    i32 875836505, label %sw.bb2.i.i
    i32 1497715271, label %sw.bb3.i.i
  ]

vb2_plane_size.exit255.if.end.i_crit_edge336:     ; preds = %vb2_plane_size.exit255
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

vb2_plane_size.exit255.if.end.i_crit_edge:        ; preds = %vb2_plane_size.exit255
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

vb2_plane_size.exit255.if.end49_crit_edge:        ; preds = %vb2_plane_size.exit255
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

sw.bb1.i.i:                                       ; preds = %vb2_plane_size.exit255
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

sw.bb2.i.i:                                       ; preds = %vb2_plane_size.exit255
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

sw.bb3.i.i:                                       ; preds = %vb2_plane_size.exit255
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %vb2_plane_size.exit255.if.end.i_crit_edge, %vb2_plane_size.exit255.if.end.i_crit_edge336
  %cmp28.not.i = phi i1 [ true, %sw.bb3.i.i ], [ false, %sw.bb2.i.i ], [ false, %sw.bb1.i.i ], [ false, %vb2_plane_size.exit255.if.end.i_crit_edge ], [ false, %vb2_plane_size.exit255.if.end.i_crit_edge336 ]
  %retval.0.i.ph.i = phi i32 [ 4, %sw.bb3.i.i ], [ 3, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ 0, %vb2_plane_size.exit255.if.end.i_crit_edge ], [ 0, %vb2_plane_size.exit255.if.end.i_crit_edge336 ]
  %add.ptr.i.i = getelementptr i8, ptr %call44, i32 2
  %cmp.i.i = icmp ugt ptr %add.ptr.i.i, %add.ptr.i
  br i1 %cmp.i.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %47 = ptrtoint ptr %call44 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 -40, ptr %call44, align 1
  %jpeg_restart_interval.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 20
  %48 = ptrtoint ptr %jpeg_restart_interval.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %jpeg_restart_interval.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i, label %if.end5.i.if.end22.i_crit_edge, label %if.then6.i

if.end5.i.if.end22.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22.i

if.then6.i:                                       ; preds = %if.end5.i
  %add.ptr.i202.i = getelementptr i8, ptr %call44, i32 4
  %cmp.i204.i = icmp ugt ptr %add.ptr.i202.i, %add.ptr.i
  br i1 %cmp.i204.i, label %if.then6.i.cleanup_crit_edge, label %if.end10.i

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.i:                                       ; preds = %if.then6.i
  %50 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 -35, ptr %add.ptr.i.i, align 1
  %add.ptr.i209.i = getelementptr i8, ptr %call44, i32 6
  %cmp.i211.i = icmp ugt ptr %add.ptr.i209.i, %add.ptr.i
  br i1 %cmp.i211.i, label %if.end10.i.cleanup_crit_edge, label %if.end14.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14.i:                                       ; preds = %if.end10.i
  %51 = ptrtoint ptr %add.ptr.i202.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 4, ptr %add.ptr.i202.i, align 1
  %add.ptr.i216.i = getelementptr i8, ptr %call44, i32 8
  %cmp.i218.i = icmp ugt ptr %add.ptr.i216.i, %add.ptr.i
  br i1 %cmp.i218.i, label %if.end14.i.cleanup_crit_edge, label %coda_jpeg_put_word.exit222.i

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_word.exit222.i:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %jpeg_restart_interval.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %jpeg_restart_interval.i, align 1
  %conv.i = zext i8 %53 to i16
  %54 = ptrtoint ptr %add.ptr.i209.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %conv.i, ptr %add.ptr.i209.i, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %coda_jpeg_put_word.exit222.i, %if.end5.i.if.end22.i_crit_edge
  %stream.sroa.0.4.i = phi ptr [ %add.ptr.i.i, %if.end5.i.if.end22.i_crit_edge ], [ %add.ptr.i216.i, %coda_jpeg_put_word.exit222.i ]
  %stream.sroa.0.4571.i = ptrtoint ptr %stream.sroa.0.4.i to i32
  %arrayidx.i.i = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21, i32 0
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %stream.sroa.0.4.i, i32 2
  %cmp.i.i.i.i = icmp ugt ptr %add.ptr.i.i.i.i, %add.ptr.i
  br i1 %cmp.i.i.i.i, label %if.end22.i.cleanup_crit_edge, label %if.end.i.i.i

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end22.i
  %57 = ptrtoint ptr %stream.sroa.0.4.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 -37, ptr %stream.sroa.0.4.i, align 1
  %add.ptr.i24.i.i.i = getelementptr i8, ptr %stream.sroa.0.4.i, i32 4
  %cmp.i26.i.i.i = icmp ugt ptr %add.ptr.i24.i.i.i, %add.ptr.i
  br i1 %cmp.i26.i.i.i, label %if.end.i.i.i.cleanup_crit_edge, label %if.end5.i.i.i

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  %58 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 2)
  store i16 67, ptr %add.ptr.i.i.i.i, align 1
  %cmp.not.i.i.i.i = icmp ult ptr %add.ptr.i24.i.i.i, %add.ptr.i
  br i1 %cmp.not.i.i.i.i, label %coda_jpeg_put_byte.exit.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_byte.exit.i.i.i:                    ; preds = %if.end5.i.i.i
  %incdec.ptr.i.i.i.i = getelementptr i8, ptr %stream.sroa.0.4.i, i32 5
  %59 = ptrtoint ptr %add.ptr.i24.i.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %add.ptr.i24.i.i.i, align 1
  %60 = add i32 %retval.0.i254, %buf570.i
  %61 = add i32 %60, -5
  %62 = sub i32 %61, %stream.sroa.0.4571.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %coda_jpeg_put_byte.exit39.i.i.i.for.body.i.i.i_crit_edge, %coda_jpeg_put_byte.exit.i.i.i
  %stream.sroa.0.5.i = phi ptr [ %incdec.ptr.i.i.i.i, %coda_jpeg_put_byte.exit.i.i.i ], [ %incdec.ptr.i36.i.i.i, %coda_jpeg_put_byte.exit39.i.i.i.for.body.i.i.i_crit_edge ]
  %i.047.i.i.i = phi i32 [ 0, %coda_jpeg_put_byte.exit.i.i.i ], [ %inc.i.i.i, %coda_jpeg_put_byte.exit39.i.i.i.for.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.047.i.i.i, i32 %62)
  %exitcond.not.i = icmp eq i32 %i.047.i.i.i, %62
  br i1 %exitcond.not.i, label %for.body.i.i.i.cleanup_crit_edge, label %coda_jpeg_put_byte.exit39.i.i.i

for.body.i.i.i.cleanup_crit_edge:                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_byte.exit39.i.i.i:                  ; preds = %for.body.i.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %56, i32 %i.047.i.i.i
  %63 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i.i.i, align 1
  %incdec.ptr.i36.i.i.i = getelementptr i8, ptr %stream.sroa.0.5.i, i32 1
  %65 = ptrtoint ptr %stream.sroa.0.5.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %stream.sroa.0.5.i, align 1
  %inc.i.i.i = add nuw nsw i32 %i.047.i.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i.i, 64
  br i1 %exitcond.not.i.i, label %if.end27.i, label %coda_jpeg_put_byte.exit39.i.i.i.for.body.i.i.i_crit_edge

coda_jpeg_put_byte.exit39.i.i.i.for.body.i.i.i_crit_edge: ; preds = %coda_jpeg_put_byte.exit39.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

if.end27.i:                                       ; preds = %coda_jpeg_put_byte.exit39.i.i.i
  %stream.sroa.0.5.lcssa569572.i = ptrtoint ptr %stream.sroa.0.5.i to i32
  br i1 %cmp28.not.i, label %if.end27.i.if.end36.i_crit_edge, label %if.then30.i

if.end27.i.if.end36.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then30.i:                                      ; preds = %if.end27.i
  %arrayidx.i223.i = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21, i32 1
  %66 = ptrtoint ptr %arrayidx.i223.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i223.i, align 4
  %add.ptr.i.i.i224.i = getelementptr i8, ptr %stream.sroa.0.5.i, i32 3
  %cmp.i.i.i226.i = icmp ugt ptr %add.ptr.i.i.i224.i, %add.ptr.i
  br i1 %cmp.i.i.i226.i, label %if.then30.i.cleanup_crit_edge, label %if.end.i.i230.i

if.then30.i.cleanup_crit_edge:                    ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i230.i:                                  ; preds = %if.then30.i
  %68 = ptrtoint ptr %incdec.ptr.i36.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 -37, ptr %incdec.ptr.i36.i.i.i, align 1
  %add.ptr.i24.i.i228.i = getelementptr i8, ptr %stream.sroa.0.5.i, i32 5
  %cmp.i26.i.i229.i = icmp ugt ptr %add.ptr.i24.i.i228.i, %add.ptr.i
  br i1 %cmp.i26.i.i229.i, label %if.end.i.i230.i.cleanup_crit_edge, label %if.end5.i.i233.i

if.end.i.i230.i.cleanup_crit_edge:                ; preds = %if.end.i.i230.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i.i233.i:                                 ; preds = %if.end.i.i230.i
  %69 = ptrtoint ptr %add.ptr.i.i.i224.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 67, ptr %add.ptr.i.i.i224.i, align 1
  %cmp.not.i.i.i232.i = icmp ult ptr %add.ptr.i24.i.i228.i, %add.ptr.i
  br i1 %cmp.not.i.i.i232.i, label %coda_jpeg_put_byte.exit.i.i235.i, label %if.end5.i.i233.i.cleanup_crit_edge

if.end5.i.i233.i.cleanup_crit_edge:               ; preds = %if.end5.i.i233.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_byte.exit.i.i235.i:                 ; preds = %if.end5.i.i233.i
  %incdec.ptr.i.i.i234.i = getelementptr i8, ptr %stream.sroa.0.5.i, i32 6
  %70 = ptrtoint ptr %add.ptr.i24.i.i228.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %add.ptr.i24.i.i228.i, align 1
  %71 = add i32 %60, -6
  %72 = sub i32 %71, %stream.sroa.0.5.lcssa569572.i
  br label %for.body.i.i238.i

for.body.i.i238.i:                                ; preds = %coda_jpeg_put_byte.exit39.i.i243.i.for.body.i.i238.i_crit_edge, %coda_jpeg_put_byte.exit.i.i235.i
  %stream.sroa.0.7.i = phi ptr [ %incdec.ptr.i.i.i234.i, %coda_jpeg_put_byte.exit.i.i235.i ], [ %incdec.ptr.i36.i.i240.i, %coda_jpeg_put_byte.exit39.i.i243.i.for.body.i.i238.i_crit_edge ]
  %i.047.i.i236.i = phi i32 [ 0, %coda_jpeg_put_byte.exit.i.i235.i ], [ %inc.i.i241.i, %coda_jpeg_put_byte.exit39.i.i243.i.for.body.i.i238.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.047.i.i236.i, i32 %72)
  %exitcond573.not.i = icmp eq i32 %i.047.i.i236.i, %72
  br i1 %exitcond573.not.i, label %for.body.i.i238.i.cleanup_crit_edge, label %coda_jpeg_put_byte.exit39.i.i243.i

for.body.i.i238.i.cleanup_crit_edge:              ; preds = %for.body.i.i238.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_byte.exit39.i.i243.i:               ; preds = %for.body.i.i238.i
  %arrayidx.i.i239.i = getelementptr i8, ptr %67, i32 %i.047.i.i236.i
  %73 = ptrtoint ptr %arrayidx.i.i239.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.i239.i, align 1
  %incdec.ptr.i36.i.i240.i = getelementptr i8, ptr %stream.sroa.0.7.i, i32 1
  %75 = ptrtoint ptr %stream.sroa.0.7.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %stream.sroa.0.7.i, align 1
  %inc.i.i241.i = add nuw nsw i32 %i.047.i.i236.i, 1
  %exitcond.not.i242.i = icmp eq i32 %inc.i.i241.i, 64
  br i1 %exitcond.not.i242.i, label %coda_jpeg_put_byte.exit39.i.i243.i.if.end36.i_crit_edge, label %coda_jpeg_put_byte.exit39.i.i243.i.for.body.i.i238.i_crit_edge

coda_jpeg_put_byte.exit39.i.i243.i.for.body.i.i238.i_crit_edge: ; preds = %coda_jpeg_put_byte.exit39.i.i243.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i238.i

coda_jpeg_put_byte.exit39.i.i243.i.if.end36.i_crit_edge: ; preds = %coda_jpeg_put_byte.exit39.i.i243.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.end36.i:                                       ; preds = %coda_jpeg_put_byte.exit39.i.i243.i.if.end36.i_crit_edge, %if.end27.i.if.end36.i_crit_edge
  %stream.sroa.0.9.i = phi ptr [ %incdec.ptr.i36.i.i.i, %if.end27.i.if.end36.i_crit_edge ], [ %incdec.ptr.i36.i.i240.i, %coda_jpeg_put_byte.exit39.i.i243.i.if.end36.i_crit_edge ]
  %stream.sroa.0.9574.i = ptrtoint ptr %stream.sroa.0.9.i to i32
  %add.ptr.i.i.i246.i = getelementptr i8, ptr %stream.sroa.0.9.i, i32 2
  %cmp.i.i.i248.i = icmp ugt ptr %add.ptr.i.i.i246.i, %add.ptr.i
  br i1 %cmp.i.i.i248.i, label %if.end36.i.cleanup_crit_edge, label %if.end.i.i252.i

if.end36.i.cleanup_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i252.i:                                  ; preds = %if.end36.i
  %76 = ptrtoint ptr %stream.sroa.0.9.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 -60, ptr %stream.sroa.0.9.i, align 1
  %add.ptr.i24.i.i250.i = getelementptr i8, ptr %stream.sroa.0.9.i, i32 4
  %cmp.i26.i.i251.i = icmp ugt ptr %add.ptr.i24.i.i250.i, %add.ptr.i
  br i1 %cmp.i26.i.i251.i, label %if.end.i.i252.i.cleanup_crit_edge, label %if.end5.i.i255.i

if.end.i.i252.i.cleanup_crit_edge:                ; preds = %if.end.i.i252.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i.i255.i:                                 ; preds = %if.end.i.i252.i
  %77 = ptrtoint ptr %add.ptr.i.i.i246.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 31, ptr %add.ptr.i.i.i246.i, align 1
  %cmp.not.i.i.i254.i = icmp ult ptr %add.ptr.i24.i.i250.i, %add.ptr.i
  br i1 %cmp.not.i.i.i254.i, label %coda_jpeg_put_byte.exit.i.i257.i, label %if.end5.i.i255.i.cleanup_crit_edge

if.end5.i.i255.i.cleanup_crit_edge:               ; preds = %if.end5.i.i255.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_byte.exit.i.i257.i:                 ; preds = %if.end5.i.i255.i
  %incdec.ptr.i.i.i256.i = getelementptr i8, ptr %stream.sroa.0.9.i, i32 5
  %78 = ptrtoint ptr %add.ptr.i24.i.i250.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %add.ptr.i24.i.i250.i, align 1
  %79 = sub i32 %61, %stream.sroa.0.9574.i
  br label %for.body.i.i260.i

for.body.i.i260.i:                                ; preds = %coda_jpeg_put_byte.exit39.i.i265.i.for.body.i.i260.i_crit_edge, %coda_jpeg_put_byte.exit.i.i257.i
  %stream.sroa.0.10.i = phi ptr [ %incdec.ptr.i.i.i256.i, %coda_jpeg_put_byte.exit.i.i257.i ], [ %incdec.ptr.i36.i.i262.i, %coda_jpeg_put_byte.exit39.i.i265.i.for.body.i.i260.i_crit_edge ]
  %i.047.i.i258.i = phi i32 [ 0, %coda_jpeg_put_byte.exit.i.i257.i ], [ %inc.i.i263.i, %coda_jpeg_put_byte.exit39.i.i265.i.for.body.i.i260.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.047.i.i258.i, i32 %79)
  %exitcond575.not.i = icmp eq i32 %i.047.i.i258.i, %79
  br i1 %exitcond575.not.i, label %for.body.i.i260.i.cleanup_crit_edge, label %coda_jpeg_put_byte.exit39.i.i265.i

for.body.i.i260.i.cleanup_crit_edge:              ; preds = %for.body.i.i260.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_byte.exit39.i.i265.i:               ; preds = %for.body.i.i260.i
  %arrayidx.i.i261.i = getelementptr i8, ptr @luma_dc, i32 %i.047.i.i258.i
  %80 = ptrtoint ptr %arrayidx.i.i261.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i.i261.i, align 1
  %incdec.ptr.i36.i.i262.i = getelementptr i8, ptr %stream.sroa.0.10.i, i32 1
  %82 = ptrtoint ptr %stream.sroa.0.10.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %stream.sroa.0.10.i, align 1
  %inc.i.i263.i = add nuw nsw i32 %i.047.i.i258.i, 1
  %exitcond.not.i264.i = icmp eq i32 %inc.i.i263.i, 28
  br i1 %exitcond.not.i264.i, label %if.end41.i, label %coda_jpeg_put_byte.exit39.i.i265.i.for.body.i.i260.i_crit_edge

coda_jpeg_put_byte.exit39.i.i265.i.for.body.i.i260.i_crit_edge: ; preds = %coda_jpeg_put_byte.exit39.i.i265.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i260.i

if.end41.i:                                       ; preds = %coda_jpeg_put_byte.exit39.i.i265.i
  %stream.sroa.0.10.lcssa568576.i = ptrtoint ptr %stream.sroa.0.10.i to i32
  %add.ptr.i.i.i267.i = getelementptr i8, ptr %stream.sroa.0.10.i, i32 3
  %cmp.i.i.i269.i = icmp ugt ptr %add.ptr.i.i.i267.i, %add.ptr.i
  br i1 %cmp.i.i.i269.i, label %if.end41.i.cleanup_crit_edge, label %if.end.i.i273.i

if.end41.i.cleanup_crit_edge:                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i273.i:                                  ; preds = %if.end41.i
  %83 = ptrtoint ptr %incdec.ptr.i36.i.i262.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 -60, ptr %incdec.ptr.i36.i.i262.i, align 1
  %add.ptr.i24.i.i271.i = getelementptr i8, ptr %stream.sroa.0.10.i, i32 5
  %cmp.i26.i.i272.i = icmp ugt ptr %add.ptr.i24.i.i271.i, %add.ptr.i
  br i1 %cmp.i26.i.i272.i, label %if.end.i.i273.i.cleanup_crit_edge, label %if.end5.i.i276.i

if.end.i.i273.i.cleanup_crit_edge:                ; preds = %if.end.i.i273.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i.i276.i:                                 ; preds = %if.end.i.i273.i
  %84 = ptrtoint ptr %add.ptr.i.i.i267.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 181, ptr %add.ptr.i.i.i267.i, align 1
  %cmp.not.i.i.i275.i = icmp ult ptr %add.ptr.i24.i.i271.i, %add.ptr.i
  br i1 %cmp.not.i.i.i275.i, label %coda_jpeg_put_byte.exit.i.i278.i, label %if.end5.i.i276.i.cleanup_crit_edge

if.end5.i.i276.i.cleanup_crit_edge:               ; preds = %if.end5.i.i276.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_byte.exit.i.i278.i:                 ; preds = %if.end5.i.i276.i
  %incdec.ptr.i.i.i277.i = getelementptr i8, ptr %stream.sroa.0.10.i, i32 6
  %85 = ptrtoint ptr %add.ptr.i24.i.i271.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 16, ptr %add.ptr.i24.i.i271.i, align 1
  %86 = add i32 %60, -6
  %87 = sub i32 %86, %stream.sroa.0.10.lcssa568576.i
  br label %for.body.i.i281.i

for.body.i.i281.i:                                ; preds = %coda_jpeg_put_byte.exit39.i.i286.i.for.body.i.i281.i_crit_edge, %coda_jpeg_put_byte.exit.i.i278.i
  %stream.sroa.0.12.i = phi ptr [ %incdec.ptr.i.i.i277.i, %coda_jpeg_put_byte.exit.i.i278.i ], [ %incdec.ptr.i36.i.i283.i, %coda_jpeg_put_byte.exit39.i.i286.i.for.body.i.i281.i_crit_edge ]
  %i.047.i.i279.i = phi i32 [ 0, %coda_jpeg_put_byte.exit.i.i278.i ], [ %inc.i.i284.i, %coda_jpeg_put_byte.exit39.i.i286.i.for.body.i.i281.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.047.i.i279.i, i32 %87)
  %exitcond577.not.i = icmp eq i32 %i.047.i.i279.i, %87
  br i1 %exitcond577.not.i, label %for.body.i.i281.i.cleanup_crit_edge, label %coda_jpeg_put_byte.exit39.i.i286.i

for.body.i.i281.i.cleanup_crit_edge:              ; preds = %for.body.i.i281.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_byte.exit39.i.i286.i:               ; preds = %for.body.i.i281.i
  %arrayidx.i.i282.i = getelementptr i8, ptr @luma_ac, i32 %i.047.i.i279.i
  %88 = ptrtoint ptr %arrayidx.i.i282.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i.i282.i, align 1
  %incdec.ptr.i36.i.i283.i = getelementptr i8, ptr %stream.sroa.0.12.i, i32 1
  %90 = ptrtoint ptr %stream.sroa.0.12.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %stream.sroa.0.12.i, align 1
  %inc.i.i284.i = add nuw nsw i32 %i.047.i.i279.i, 1
  %exitcond.not.i285.i = icmp eq i32 %inc.i.i284.i, 178
  br i1 %exitcond.not.i285.i, label %if.end46.i, label %coda_jpeg_put_byte.exit39.i.i286.i.for.body.i.i281.i_crit_edge

coda_jpeg_put_byte.exit39.i.i286.i.for.body.i.i281.i_crit_edge: ; preds = %coda_jpeg_put_byte.exit39.i.i286.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i281.i

if.end46.i:                                       ; preds = %coda_jpeg_put_byte.exit39.i.i286.i
  %stream.sroa.0.12.lcssa567578.i = ptrtoint ptr %stream.sroa.0.12.i to i32
  br i1 %cmp28.not.i, label %if.end46.i.if.end60.i_crit_edge, label %if.then49.i

if.end46.i.if.end60.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

if.then49.i:                                      ; preds = %if.end46.i
  %add.ptr.i.i.i289.i = getelementptr i8, ptr %stream.sroa.0.12.i, i32 3
  %cmp.i.i.i291.i = icmp ugt ptr %add.ptr.i.i.i289.i, %add.ptr.i
  br i1 %cmp.i.i.i291.i, label %if.then49.i.cleanup_crit_edge, label %if.end.i.i295.i

if.then49.i.cleanup_crit_edge:                    ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i295.i:                                  ; preds = %if.then49.i
  %91 = ptrtoint ptr %incdec.ptr.i36.i.i283.i to i32
  call void @__asan_storeN_noabort(i32 %91, i32 2)
  store i16 -60, ptr %incdec.ptr.i36.i.i283.i, align 1
  %add.ptr.i24.i.i293.i = getelementptr i8, ptr %stream.sroa.0.12.i, i32 5
  %cmp.i26.i.i294.i = icmp ugt ptr %add.ptr.i24.i.i293.i, %add.ptr.i
  br i1 %cmp.i26.i.i294.i, label %if.end.i.i295.i.cleanup_crit_edge, label %if.end5.i.i298.i

if.end.i.i295.i.cleanup_crit_edge:                ; preds = %if.end.i.i295.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i.i298.i:                                 ; preds = %if.end.i.i295.i
  %92 = ptrtoint ptr %add.ptr.i.i.i289.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 31, ptr %add.ptr.i.i.i289.i, align 1
  %cmp.not.i.i.i297.i = icmp ult ptr %add.ptr.i24.i.i293.i, %add.ptr.i
  br i1 %cmp.not.i.i.i297.i, label %coda_jpeg_put_byte.exit.i.i300.i, label %if.end5.i.i298.i.cleanup_crit_edge

if.end5.i.i298.i.cleanup_crit_edge:               ; preds = %if.end5.i.i298.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_byte.exit.i.i300.i:                 ; preds = %if.end5.i.i298.i
  %incdec.ptr.i.i.i299.i = getelementptr i8, ptr %stream.sroa.0.12.i, i32 6
  %93 = ptrtoint ptr %add.ptr.i24.i.i293.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %add.ptr.i24.i.i293.i, align 1
  %94 = sub i32 %86, %stream.sroa.0.12.lcssa567578.i
  br label %for.body.i.i303.i

for.body.i.i303.i:                                ; preds = %coda_jpeg_put_byte.exit39.i.i308.i.for.body.i.i303.i_crit_edge, %coda_jpeg_put_byte.exit.i.i300.i
  %stream.sroa.0.14.i = phi ptr [ %incdec.ptr.i.i.i299.i, %coda_jpeg_put_byte.exit.i.i300.i ], [ %incdec.ptr.i36.i.i305.i, %coda_jpeg_put_byte.exit39.i.i308.i.for.body.i.i303.i_crit_edge ]
  %i.047.i.i301.i = phi i32 [ 0, %coda_jpeg_put_byte.exit.i.i300.i ], [ %inc.i.i306.i, %coda_jpeg_put_byte.exit39.i.i308.i.for.body.i.i303.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.047.i.i301.i, i32 %94)
  %exitcond579.not.i = icmp eq i32 %i.047.i.i301.i, %94
  br i1 %exitcond579.not.i, label %for.body.i.i303.i.cleanup_crit_edge, label %coda_jpeg_put_byte.exit39.i.i308.i

for.body.i.i303.i.cleanup_crit_edge:              ; preds = %for.body.i.i303.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_byte.exit39.i.i308.i:               ; preds = %for.body.i.i303.i
  %arrayidx.i.i304.i = getelementptr i8, ptr @chroma_dc, i32 %i.047.i.i301.i
  %95 = ptrtoint ptr %arrayidx.i.i304.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i.i304.i, align 1
  %incdec.ptr.i36.i.i305.i = getelementptr i8, ptr %stream.sroa.0.14.i, i32 1
  %97 = ptrtoint ptr %stream.sroa.0.14.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %stream.sroa.0.14.i, align 1
  %inc.i.i306.i = add nuw nsw i32 %i.047.i.i301.i, 1
  %exitcond.not.i307.i = icmp eq i32 %inc.i.i306.i, 28
  br i1 %exitcond.not.i307.i, label %if.end54.i, label %coda_jpeg_put_byte.exit39.i.i308.i.for.body.i.i303.i_crit_edge

coda_jpeg_put_byte.exit39.i.i308.i.for.body.i.i303.i_crit_edge: ; preds = %coda_jpeg_put_byte.exit39.i.i308.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i303.i

if.end54.i:                                       ; preds = %coda_jpeg_put_byte.exit39.i.i308.i
  %stream.sroa.0.14.lcssa566580.i = ptrtoint ptr %stream.sroa.0.14.i to i32
  %add.ptr.i.i.i311.i = getelementptr i8, ptr %stream.sroa.0.14.i, i32 3
  %cmp.i.i.i313.i = icmp ugt ptr %add.ptr.i.i.i311.i, %add.ptr.i
  br i1 %cmp.i.i.i313.i, label %if.end54.i.cleanup_crit_edge, label %if.end.i.i317.i

if.end54.i.cleanup_crit_edge:                     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i317.i:                                  ; preds = %if.end54.i
  %98 = ptrtoint ptr %incdec.ptr.i36.i.i305.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 2)
  store i16 -60, ptr %incdec.ptr.i36.i.i305.i, align 1
  %add.ptr.i24.i.i315.i = getelementptr i8, ptr %stream.sroa.0.14.i, i32 5
  %cmp.i26.i.i316.i = icmp ugt ptr %add.ptr.i24.i.i315.i, %add.ptr.i
  br i1 %cmp.i26.i.i316.i, label %if.end.i.i317.i.cleanup_crit_edge, label %if.end5.i.i320.i

if.end.i.i317.i.cleanup_crit_edge:                ; preds = %if.end.i.i317.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i.i320.i:                                 ; preds = %if.end.i.i317.i
  %99 = ptrtoint ptr %add.ptr.i.i.i311.i to i32
  call void @__asan_storeN_noabort(i32 %99, i32 2)
  store i16 181, ptr %add.ptr.i.i.i311.i, align 1
  %cmp.not.i.i.i319.i = icmp ult ptr %add.ptr.i24.i.i315.i, %add.ptr.i
  br i1 %cmp.not.i.i.i319.i, label %coda_jpeg_put_byte.exit.i.i322.i, label %if.end5.i.i320.i.cleanup_crit_edge

if.end5.i.i320.i.cleanup_crit_edge:               ; preds = %if.end5.i.i320.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_byte.exit.i.i322.i:                 ; preds = %if.end5.i.i320.i
  %incdec.ptr.i.i.i321.i = getelementptr i8, ptr %stream.sroa.0.14.i, i32 6
  %100 = ptrtoint ptr %add.ptr.i24.i.i315.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 17, ptr %add.ptr.i24.i.i315.i, align 1
  %101 = sub i32 %86, %stream.sroa.0.14.lcssa566580.i
  br label %for.body.i.i325.i

for.body.i.i325.i:                                ; preds = %coda_jpeg_put_byte.exit39.i.i330.i.for.body.i.i325.i_crit_edge, %coda_jpeg_put_byte.exit.i.i322.i
  %stream.sroa.0.16.i = phi ptr [ %incdec.ptr.i.i.i321.i, %coda_jpeg_put_byte.exit.i.i322.i ], [ %incdec.ptr.i36.i.i327.i, %coda_jpeg_put_byte.exit39.i.i330.i.for.body.i.i325.i_crit_edge ]
  %i.047.i.i323.i = phi i32 [ 0, %coda_jpeg_put_byte.exit.i.i322.i ], [ %inc.i.i328.i, %coda_jpeg_put_byte.exit39.i.i330.i.for.body.i.i325.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.047.i.i323.i, i32 %101)
  %exitcond581.not.i = icmp eq i32 %i.047.i.i323.i, %101
  br i1 %exitcond581.not.i, label %for.body.i.i325.i.cleanup_crit_edge, label %coda_jpeg_put_byte.exit39.i.i330.i

for.body.i.i325.i.cleanup_crit_edge:              ; preds = %for.body.i.i325.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_byte.exit39.i.i330.i:               ; preds = %for.body.i.i325.i
  %arrayidx.i.i326.i = getelementptr i8, ptr @chroma_ac, i32 %i.047.i.i323.i
  %102 = ptrtoint ptr %arrayidx.i.i326.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i.i326.i, align 1
  %incdec.ptr.i36.i.i327.i = getelementptr i8, ptr %stream.sroa.0.16.i, i32 1
  %104 = ptrtoint ptr %stream.sroa.0.16.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %stream.sroa.0.16.i, align 1
  %inc.i.i328.i = add nuw nsw i32 %i.047.i.i323.i, 1
  %exitcond.not.i329.i = icmp eq i32 %inc.i.i328.i, 178
  br i1 %exitcond.not.i329.i, label %coda_jpeg_put_byte.exit39.i.i330.i.if.end60.i_crit_edge, label %coda_jpeg_put_byte.exit39.i.i330.i.for.body.i.i325.i_crit_edge

coda_jpeg_put_byte.exit39.i.i330.i.for.body.i.i325.i_crit_edge: ; preds = %coda_jpeg_put_byte.exit39.i.i330.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i325.i

coda_jpeg_put_byte.exit39.i.i330.i.if.end60.i_crit_edge: ; preds = %coda_jpeg_put_byte.exit39.i.i330.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60.i

if.end60.i:                                       ; preds = %coda_jpeg_put_byte.exit39.i.i330.i.if.end60.i_crit_edge, %if.end46.i.if.end60.i_crit_edge
  %stream.sroa.0.18.i = phi ptr [ %incdec.ptr.i36.i.i283.i, %if.end46.i.if.end60.i_crit_edge ], [ %incdec.ptr.i36.i.i327.i, %coda_jpeg_put_byte.exit39.i.i330.i.if.end60.i_crit_edge ]
  %add.ptr.i333.i = getelementptr i8, ptr %stream.sroa.0.18.i, i32 2
  %cmp.i335.i = icmp ugt ptr %add.ptr.i333.i, %add.ptr.i
  br i1 %cmp.i335.i, label %if.end60.i.cleanup_crit_edge, label %if.end65.i

if.end60.i.cleanup_crit_edge:                     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end65.i:                                       ; preds = %if.end60.i
  %105 = ptrtoint ptr %stream.sroa.0.18.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 2)
  store i16 -64, ptr %stream.sroa.0.18.i, align 1
  %cond.i = select i1 %cmp28.not.i, i32 1, i32 3
  %add.ptr.i340.i = getelementptr i8, ptr %stream.sroa.0.18.i, i32 4
  %cmp.i342.i = icmp ugt ptr %add.ptr.i340.i, %add.ptr.i
  br i1 %cmp.i342.i, label %if.end65.i.cleanup_crit_edge, label %if.end73.i

if.end65.i.cleanup_crit_edge:                     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end73.i:                                       ; preds = %if.end65.i
  %106 = trunc i32 %cond.i to i16
  %107 = mul nuw nsw i16 %106, 3
  %conv68.i = add nuw nsw i16 %107, 8
  %108 = ptrtoint ptr %add.ptr.i333.i to i32
  call void @__asan_storeN_noabort(i32 %108, i32 2)
  store i16 %conv68.i, ptr %add.ptr.i333.i, align 1
  %cmp.not.i.i = icmp ult ptr %add.ptr.i340.i, %add.ptr.i
  br i1 %cmp.not.i.i, label %if.end78.i, label %if.end73.i.cleanup_crit_edge

if.end73.i.cleanup_crit_edge:                     ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end78.i:                                       ; preds = %if.end73.i
  %109 = ptrtoint ptr %add.ptr.i340.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 8, ptr %add.ptr.i340.i, align 1
  %add.ptr.i350.i = getelementptr i8, ptr %stream.sroa.0.18.i, i32 7
  %cmp.i352.i = icmp ugt ptr %add.ptr.i350.i, %add.ptr.i
  br i1 %cmp.i352.i, label %if.end78.i.cleanup_crit_edge, label %if.end84.i

if.end78.i.cleanup_crit_edge:                     ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end84.i:                                       ; preds = %if.end78.i
  %incdec.ptr.i.i = getelementptr i8, ptr %stream.sroa.0.18.i, i32 5
  %110 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %height, align 4
  %conv79.i = trunc i32 %111 to i16
  %112 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 2)
  store i16 %conv79.i, ptr %incdec.ptr.i.i, align 1
  %add.ptr.i357.i = getelementptr i8, ptr %stream.sroa.0.18.i, i32 9
  %cmp.i359.i = icmp ugt ptr %add.ptr.i357.i, %add.ptr.i
  br i1 %cmp.i359.i, label %if.end84.i.cleanup_crit_edge, label %if.end90.i

if.end84.i.cleanup_crit_edge:                     ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end90.i:                                       ; preds = %if.end84.i
  %113 = ptrtoint ptr %q_data.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %q_data.i, align 4
  %conv85.i = trunc i32 %114 to i16
  %115 = ptrtoint ptr %add.ptr.i350.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 2)
  store i16 %conv85.i, ptr %add.ptr.i350.i, align 1
  %cmp.not.i365.i = icmp ult ptr %add.ptr.i357.i, %add.ptr.i
  br i1 %cmp.not.i365.i, label %coda_jpeg_put_byte.exit369.i, label %if.end90.i.cleanup_crit_edge

if.end90.i.cleanup_crit_edge:                     ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_byte.exit369.i:                     ; preds = %if.end90.i
  %conv91.i = trunc i32 %cond.i to i8
  %incdec.ptr.i366.i = getelementptr i8, ptr %stream.sroa.0.18.i, i32 10
  %116 = ptrtoint ptr %add.ptr.i357.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv91.i, ptr %add.ptr.i357.i, align 1
  %cmp.not.i371.i = icmp ult ptr %incdec.ptr.i366.i, %add.ptr.i
  br i1 %cmp.not.i371.i, label %if.end105.i, label %coda_jpeg_put_byte.exit369.i.cleanup_crit_edge

coda_jpeg_put_byte.exit369.i.cleanup_crit_edge:   ; preds = %coda_jpeg_put_byte.exit369.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end105.i:                                      ; preds = %coda_jpeg_put_byte.exit369.i
  %incdec.ptr.i372.i = getelementptr i8, ptr %stream.sroa.0.18.i, i32 11
  %117 = ptrtoint ptr %incdec.ptr.i366.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %incdec.ptr.i366.i, align 1
  %cmp.not.i377.i = icmp ult ptr %incdec.ptr.i372.i, %add.ptr.i
  br i1 %cmp.not.i377.i, label %if.end111.i, label %if.end105.i.cleanup_crit_edge

if.end105.i.cleanup_crit_edge:                    ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end111.i:                                      ; preds = %if.end105.i
  %arrayidx106.i = getelementptr [5 x [3 x i8]], ptr @coda9_jpeg_encode_header.subsampling, i32 0, i32 %retval.0.i.ph.i, i32 0
  %118 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx106.i, align 1
  %incdec.ptr.i378.i = getelementptr i8, ptr %stream.sroa.0.18.i, i32 12
  %120 = ptrtoint ptr %incdec.ptr.i372.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %incdec.ptr.i372.i, align 1
  %cmp.not.i383.i = icmp ult ptr %incdec.ptr.i378.i, %add.ptr.i
  br i1 %cmp.not.i383.i, label %coda_jpeg_put_byte.exit387.i, label %if.end111.i.cleanup_crit_edge

if.end111.i.cleanup_crit_edge:                    ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_byte.exit387.i:                     ; preds = %if.end111.i
  %incdec.ptr.i384.i = getelementptr i8, ptr %stream.sroa.0.18.i, i32 13
  %121 = ptrtoint ptr %incdec.ptr.i378.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %incdec.ptr.i378.i, align 1
  br i1 %cmp28.not.i, label %coda_jpeg_put_byte.exit387.i.for.end.i_crit_edge, label %for.body.i.1

coda_jpeg_put_byte.exit387.i.for.end.i_crit_edge: ; preds = %coda_jpeg_put_byte.exit387.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.1:                                     ; preds = %coda_jpeg_put_byte.exit387.i
  %cmp.not.i371.i.1 = icmp ult ptr %incdec.ptr.i384.i, %add.ptr.i
  br i1 %cmp.not.i371.i.1, label %if.end105.i.1, label %for.body.i.1.cleanup_crit_edge

for.body.i.1.cleanup_crit_edge:                   ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end105.i.1:                                    ; preds = %for.body.i.1
  %incdec.ptr.i372.i.1 = getelementptr i8, ptr %stream.sroa.0.18.i, i32 14
  %122 = ptrtoint ptr %incdec.ptr.i384.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 2, ptr %incdec.ptr.i384.i, align 1
  %cmp.not.i377.i.1 = icmp ult ptr %incdec.ptr.i372.i.1, %add.ptr.i
  br i1 %cmp.not.i377.i.1, label %if.end111.i.1, label %if.end105.i.1.cleanup_crit_edge

if.end105.i.1.cleanup_crit_edge:                  ; preds = %if.end105.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end111.i.1:                                    ; preds = %if.end105.i.1
  %arrayidx106.i.1 = getelementptr [5 x [3 x i8]], ptr @coda9_jpeg_encode_header.subsampling, i32 0, i32 %retval.0.i.ph.i, i32 1
  %123 = ptrtoint ptr %arrayidx106.i.1 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx106.i.1, align 1
  %incdec.ptr.i378.i.1 = getelementptr i8, ptr %stream.sroa.0.18.i, i32 15
  %125 = ptrtoint ptr %incdec.ptr.i372.i.1 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %incdec.ptr.i372.i.1, align 1
  %cmp.not.i383.i.1 = icmp ult ptr %incdec.ptr.i378.i.1, %add.ptr.i
  br i1 %cmp.not.i383.i.1, label %coda_jpeg_put_byte.exit387.i.1, label %if.end111.i.1.cleanup_crit_edge

if.end111.i.1.cleanup_crit_edge:                  ; preds = %if.end111.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_byte.exit387.i.1:                   ; preds = %if.end111.i.1
  %incdec.ptr.i384.i.1 = getelementptr i8, ptr %stream.sroa.0.18.i, i32 16
  %126 = ptrtoint ptr %incdec.ptr.i378.i.1 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %incdec.ptr.i378.i.1, align 1
  %cmp.not.i371.i.2 = icmp ult ptr %incdec.ptr.i384.i.1, %add.ptr.i
  br i1 %cmp.not.i371.i.2, label %if.end105.i.2, label %coda_jpeg_put_byte.exit387.i.1.cleanup_crit_edge

coda_jpeg_put_byte.exit387.i.1.cleanup_crit_edge: ; preds = %coda_jpeg_put_byte.exit387.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end105.i.2:                                    ; preds = %coda_jpeg_put_byte.exit387.i.1
  %incdec.ptr.i372.i.2 = getelementptr i8, ptr %stream.sroa.0.18.i, i32 17
  %127 = ptrtoint ptr %incdec.ptr.i384.i.1 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 3, ptr %incdec.ptr.i384.i.1, align 1
  %cmp.not.i377.i.2 = icmp ult ptr %incdec.ptr.i372.i.2, %add.ptr.i
  br i1 %cmp.not.i377.i.2, label %if.end111.i.2, label %if.end105.i.2.cleanup_crit_edge

if.end105.i.2.cleanup_crit_edge:                  ; preds = %if.end105.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end111.i.2:                                    ; preds = %if.end105.i.2
  %arrayidx106.i.2 = getelementptr [5 x [3 x i8]], ptr @coda9_jpeg_encode_header.subsampling, i32 0, i32 %retval.0.i.ph.i, i32 2
  %128 = ptrtoint ptr %arrayidx106.i.2 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx106.i.2, align 1
  %incdec.ptr.i378.i.2 = getelementptr i8, ptr %stream.sroa.0.18.i, i32 18
  %130 = ptrtoint ptr %incdec.ptr.i372.i.2 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %incdec.ptr.i372.i.2, align 1
  %cmp.not.i383.i.2 = icmp ult ptr %incdec.ptr.i378.i.2, %add.ptr.i
  br i1 %cmp.not.i383.i.2, label %coda_jpeg_put_byte.exit387.i.2, label %if.end111.i.2.cleanup_crit_edge

if.end111.i.2.cleanup_crit_edge:                  ; preds = %if.end111.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_byte.exit387.i.2:                   ; preds = %if.end111.i.2
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i384.i.2 = getelementptr i8, ptr %stream.sroa.0.18.i, i32 19
  %131 = ptrtoint ptr %incdec.ptr.i378.i.2 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %incdec.ptr.i378.i.2, align 1
  br label %for.end.i

for.end.i:                                        ; preds = %coda_jpeg_put_byte.exit387.i.2, %coda_jpeg_put_byte.exit387.i.for.end.i_crit_edge
  %incdec.ptr.i384.i.lcssa = phi ptr [ %incdec.ptr.i384.i, %coda_jpeg_put_byte.exit387.i.for.end.i_crit_edge ], [ %incdec.ptr.i384.i.2, %coda_jpeg_put_byte.exit387.i.2 ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr.i384.i.lcssa to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %buf570.i
  %rem.i = srem i32 %sub.ptr.sub.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool122.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool122.not.i, label %for.end.i.coda9_jpeg_encode_header.exit_crit_edge, label %while.body.preheader.i

for.end.i.coda9_jpeg_encode_header.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %coda9_jpeg_encode_header.exit

while.body.preheader.i:                           ; preds = %for.end.i
  %sub.i = sub nsw i32 8, %rem.i
  br label %while.body.i

while.body.i:                                     ; preds = %coda_jpeg_put_byte.exit393.i.while.body.i_crit_edge, %while.body.preheader.i
  %pad.0558.i = phi i32 [ %dec.i, %coda_jpeg_put_byte.exit393.i.while.body.i_crit_edge ], [ %sub.i, %while.body.preheader.i ]
  %stream.sroa.0.29557.i = phi ptr [ %incdec.ptr.i390.i, %coda_jpeg_put_byte.exit393.i.while.body.i_crit_edge ], [ %incdec.ptr.i384.i.lcssa, %while.body.preheader.i ]
  %cmp.not.i389.i = icmp ult ptr %stream.sroa.0.29557.i, %add.ptr.i
  br i1 %cmp.not.i389.i, label %coda_jpeg_put_byte.exit393.i, label %while.body.i.cleanup_crit_edge

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

coda_jpeg_put_byte.exit393.i:                     ; preds = %while.body.i
  %dec.i = add nsw i32 %pad.0558.i, -1
  %incdec.ptr.i390.i = getelementptr i8, ptr %stream.sroa.0.29557.i, i32 1
  %132 = ptrtoint ptr %stream.sroa.0.29557.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %stream.sroa.0.29557.i, align 1
  %tobool124.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool124.not.i, label %if.end130.loopexit.i, label %coda_jpeg_put_byte.exit393.i.while.body.i_crit_edge

coda_jpeg_put_byte.exit393.i.while.body.i_crit_edge: ; preds = %coda_jpeg_put_byte.exit393.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end130.loopexit.i:                             ; preds = %coda_jpeg_put_byte.exit393.i
  call void @__sanitizer_cov_trace_pc() #12
  %.pre.i = ptrtoint ptr %incdec.ptr.i390.i to i32
  %.pre583.i = sub i32 %.pre.i, %buf570.i
  br label %coda9_jpeg_encode_header.exit

coda9_jpeg_encode_header.exit:                    ; preds = %if.end130.loopexit.i, %for.end.i.coda9_jpeg_encode_header.exit_crit_edge
  %retval.0.i256 = phi i32 [ %.pre583.i, %if.end130.loopexit.i ], [ %sub.ptr.sub.i, %for.end.i.coda9_jpeg_encode_header.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i256)
  %cmp46 = icmp slt i32 %retval.0.i256, 0
  br i1 %cmp46, label %coda9_jpeg_encode_header.exit.cleanup_crit_edge, label %coda9_jpeg_encode_header.exit.if.end49_crit_edge

coda9_jpeg_encode_header.exit.if.end49_crit_edge: ; preds = %coda9_jpeg_encode_header.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

coda9_jpeg_encode_header.exit.cleanup_crit_edge:  ; preds = %coda9_jpeg_encode_header.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end49:                                         ; preds = %coda9_jpeg_encode_header.exit.if.end49_crit_edge, %vb2_plane_size.exit255.if.end49_crit_edge
  %retval.0.i256275 = phi i32 [ %retval.0.i256, %coda9_jpeg_encode_header.exit.if.end49_crit_edge ], [ 0, %vb2_plane_size.exit255.if.end49_crit_edge ]
  %add50 = add i32 %retval.0.i256275, %21
  tail call void @coda_write(ptr noundef %1, i32 noundef %add50, i32 noundef 12848) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef %add, i32 noundef 12808) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef %add50, i32 noundef 12812) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef %add50, i32 noundef 12816) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12844) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 64, i32 noundef 12828) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef %21, i32 noundef 12820) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12824) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12560) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12564) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12608) #10
  %sub54 = sub i32 %retval.0.i247, %retval.0.i256275
  %div231 = lshr i32 %sub54, 8
  %or55 = or i32 %div231, -2147483648
  tail call void @coda_write(ptr noundef %1, i32 noundef %or55, i32 noundef 12852) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12544) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12640) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 127, i32 noundef 12612) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 64, i32 noundef 12616) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 64, i32 noundef 12620) #10
  %133 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %fourcc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %134)
  %cmp57 = icmp eq i32 %134, 842094158
  tail call void @coda_write(ptr noundef %1, i32 noundef 24, i32 noundef 12304) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12320) #10
  %conv59 = zext i1 %cmp57 to i32
  tail call void @coda_write(ptr noundef %1, i32 noundef %conv59, i32 noundef 12336) #10
  %jpeg_restart_interval = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 20
  %135 = ptrtoint ptr %jpeg_restart_interval to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %jpeg_restart_interval, align 1
  %conv60 = zext i8 %136 to i32
  tail call void @coda_write(ptr noundef %1, i32 noundef %conv60, i32 noundef 12464) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 1, i32 noundef 12840) #10
  %arrayidx61 = getelementptr [5 x i32], ptr @bus_req_num, i32 0, i32 %retval.0.i249.ph
  %137 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx61, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %138, i32 noundef 12332) #10
  %139 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ctx, align 8
  %jpeg_huff_data.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 25
  %141 = ptrtoint ptr %jpeg_huff_data.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %jpeg_huff_data.i, align 8
  tail call void @coda_write(ptr noundef %140, i32 noundef 3, i32 noundef 12416) #10
  br label %for.body.i258

for.body.i258:                                    ; preds = %for.body.i258.for.body.i258_crit_edge, %if.end49
  %i.07.i = phi i32 [ 0, %if.end49 ], [ %inc.i, %for.body.i258.for.body.i258_crit_edge ]
  %huff_data.06.i = phi ptr [ %142, %if.end49 ], [ %incdec.ptr.i, %for.body.i258.for.body.i258_crit_edge ]
  %incdec.ptr.i = getelementptr i32, ptr %huff_data.06.i, i32 1
  %143 = ptrtoint ptr %huff_data.06.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %huff_data.06.i, align 4
  tail call void @coda_write(ptr noundef %140, i32 noundef %144, i32 noundef 12424) #10
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i257 = icmp eq i32 %inc.i, 544
  br i1 %exitcond.not.i257, label %coda9_jpeg_write_huff_tab.exit, label %for.body.i258.for.body.i258_crit_edge

for.body.i258.for.body.i258_crit_edge:            ; preds = %for.body.i258
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i258

coda9_jpeg_write_huff_tab.exit:                   ; preds = %for.body.i258
  tail call void @coda_write(ptr noundef %140, i32 noundef 0, i32 noundef 12416) #10
  %145 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ctx, align 8
  %jpeg_qmat_tab.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21
  %147 = ptrtoint ptr %jpeg_qmat_tab.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %jpeg_qmat_tab.i, align 8
  %tobool.not.i260 = icmp eq ptr %148, null
  %spec.store.select.i = select i1 %tobool.not.i260, ptr @luma_q, ptr %148
  %arrayidx4.i = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21, i32 1
  %149 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx4.i, align 4
  tail call void @coda_write(ptr noundef %146, i32 noundef 3, i32 noundef 12432) #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %coda9_jpeg_write_huff_tab.exit
  %i.06.i.i = phi i32 [ 0, %coda9_jpeg_write_huff_tab.exit ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i261 = getelementptr i8, ptr %spec.store.select.i, i32 %i.06.i.i
  %151 = ptrtoint ptr %arrayidx.i.i261 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx.i.i261, align 1
  %conv.i.i = zext i8 %152 to i32
  %div.i.i = udiv i32 524288, %conv.i.i
  tail call void @coda_write(ptr noundef %146, i32 noundef %div.i.i, i32 noundef 12440) #10
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i262 = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i262, label %coda9_jpeg_write_qmat_quotients.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

coda9_jpeg_write_qmat_quotients.exit.i:           ; preds = %for.body.i.i
  %tobool5.not.i = icmp eq ptr %150, null
  %spec.store.select8.i = select i1 %tobool5.not.i, ptr @chroma_q, ptr %150
  tail call void @coda_write(ptr noundef %146, i32 noundef 0, i32 noundef 12432) #10
  tail call void @coda_write(ptr noundef %146, i32 noundef 67, i32 noundef 12432) #10
  br label %for.body.i22.i

for.body.i22.i:                                   ; preds = %for.body.i22.i.for.body.i22.i_crit_edge, %coda9_jpeg_write_qmat_quotients.exit.i
  %i.06.i16.i = phi i32 [ 0, %coda9_jpeg_write_qmat_quotients.exit.i ], [ %inc.i20.i, %for.body.i22.i.for.body.i22.i_crit_edge ]
  %arrayidx.i17.i = getelementptr i8, ptr %spec.store.select8.i, i32 %i.06.i16.i
  %153 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx.i17.i, align 1
  %conv.i18.i = zext i8 %154 to i32
  %div.i19.i = udiv i32 524288, %conv.i18.i
  tail call void @coda_write(ptr noundef %146, i32 noundef %div.i19.i, i32 noundef 12440) #10
  %inc.i20.i = add nuw nsw i32 %i.06.i16.i, 1
  %exitcond.not.i21.i = icmp eq i32 %inc.i20.i, 64
  br i1 %exitcond.not.i21.i, label %coda9_jpeg_write_qmat_quotients.exit23.i, label %for.body.i22.i.for.body.i22.i_crit_edge

for.body.i22.i.for.body.i22.i_crit_edge:          ; preds = %for.body.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i22.i

coda9_jpeg_write_qmat_quotients.exit23.i:         ; preds = %for.body.i22.i
  tail call void @coda_write(ptr noundef %146, i32 noundef 64, i32 noundef 12432) #10
  tail call void @coda_write(ptr noundef %146, i32 noundef 131, i32 noundef 12432) #10
  br label %for.body.i30.i

for.body.i30.i:                                   ; preds = %for.body.i30.i.for.body.i30.i_crit_edge, %coda9_jpeg_write_qmat_quotients.exit23.i
  %i.06.i24.i = phi i32 [ 0, %coda9_jpeg_write_qmat_quotients.exit23.i ], [ %inc.i28.i, %for.body.i30.i.for.body.i30.i_crit_edge ]
  %arrayidx.i25.i = getelementptr i8, ptr %spec.store.select8.i, i32 %i.06.i24.i
  %155 = ptrtoint ptr %arrayidx.i25.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx.i25.i, align 1
  %conv.i26.i = zext i8 %156 to i32
  %div.i27.i = udiv i32 524288, %conv.i26.i
  tail call void @coda_write(ptr noundef %146, i32 noundef %div.i27.i, i32 noundef 12440) #10
  %inc.i28.i = add nuw nsw i32 %i.06.i24.i, 1
  %exitcond.not.i29.i = icmp eq i32 %inc.i28.i, 64
  br i1 %exitcond.not.i29.i, label %coda9_jpeg_load_qmat_tab.exit, label %for.body.i30.i.for.body.i30.i_crit_edge

for.body.i30.i.for.body.i30.i_crit_edge:          ; preds = %for.body.i30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i30.i

coda9_jpeg_load_qmat_tab.exit:                    ; preds = %for.body.i30.i
  %params = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22
  tail call void @coda_write(ptr noundef %146, i32 noundef 128, i32 noundef 12432) #10
  %157 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %params, align 8
  %159 = and i8 %158, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool65.not = icmp eq i8 %159, 0
  br i1 %tobool65.not, label %coda9_jpeg_load_qmat_tab.exit.if.end77_crit_edge, label %if.then66

coda9_jpeg_load_qmat_tab.exit.if.end77_crit_edge: ; preds = %coda9_jpeg_load_qmat_tab.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then66:                                        ; preds = %coda9_jpeg_load_qmat_tab.exit
  call void @__sanitizer_cov_trace_pc() #12
  %160 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %bytesperline, align 4
  %conv68 = trunc i32 %161 to i16
  %.pre = zext i16 %conv32 to i32
  br label %if.end77

if.end77:                                         ; preds = %if.then66, %coda9_jpeg_load_qmat_tab.exit.if.end77_crit_edge
  %conv78.pre-phi = phi i32 [ %.pre, %if.then66 ], [ %conv33, %coda9_jpeg_load_qmat_tab.exit.if.end77_crit_edge ]
  %aligned_height.0 = phi i16 [ %conv68, %if.then66 ], [ %conv32, %coda9_jpeg_load_qmat_tab.exit.if.end77_crit_edge ]
  %chroma_format.0 = phi i32 [ %cmp69, %if.then66 ], [ %retval.0.i249.ph, %coda9_jpeg_load_qmat_tab.exit.if.end77_crit_edge ]
  %shl = shl nuw i32 %conv78.pre-phi, 16
  %conv79 = zext i16 %aligned_height.0 to i32
  %or80 = or i32 %shl, %conv79
  tail call void @coda_write(ptr noundef %1, i32 noundef %or80, i32 noundef 12308) #10
  %162 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %params, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool84.not = icmp eq i8 %163, 0
  %164 = or i8 %163, 16
  %narrow = select i1 %tobool84.not, i8 0, i8 %164
  %cond = zext i8 %narrow to i32
  tail call void @coda_write(ptr noundef %1, i32 noundef %cond, i32 noundef 12316) #10
  %arrayidx89 = getelementptr [5 x i32], ptr @mcu_info, i32 0, i32 %chroma_format.0
  %165 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx89, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %166, i32 noundef 12312) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 1, i32 noundef 4148) #10
  %call90 = tail call i64 @ktime_get() #10
  %add.i = add i64 %call90, 100000000
  br label %do.body92

do.body92:                                        ; preds = %do.cond108.do.body92_crit_edge, %if.end77
  %call93 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 4224) #10
  %call94 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call94, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call94, %add.i
  br i1 %cmp3.i, label %do.end101, label %do.cond108

do.end101:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  %name104 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name104) #13
  br label %cleanup

do.cond108:                                       ; preds = %do.body92
  %tobool109.not = icmp eq i32 %call93, 0
  br i1 %tobool109.not, label %do.cond108.do.body92_crit_edge, label %do.end110

do.cond108.do.body92_crit_edge:                   ; preds = %do.cond108
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body92

do.end110:                                        ; preds = %do.cond108
  call void @__sanitizer_cov_trace_pc() #12
  %shl111 = shl nsw i32 %chroma_format.0, 17
  %shl114 = select i1 %cmp57, i32 65536, i32 0
  %or115 = or i32 %shl111, %shl114
  %167 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %bytesperline, align 4
  %or117 = or i32 %168, %or115
  tail call void @coda_write(ptr noundef %1, i32 noundef %or117, i32 noundef 5120) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef %or80, i32 noundef 5124) #10
  tail call void @coda_write_base(ptr noundef %ctx, ptr noundef %q_data.i, ptr noundef %call.i, i32 noundef 5128) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12352) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 4148) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 1, i32 noundef 4152) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 1, i32 noundef 4256) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 4268) #10
  tail call fastcc void @trace_coda_jpeg_run(ptr noundef %ctx, ptr noundef %call.i)
  tail call void @coda_write(ptr noundef %1, i32 noundef 1, i32 noundef 12288) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end110, %do.end101, %coda9_jpeg_encode_header.exit.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.end111.i.2.cleanup_crit_edge, %if.end105.i.2.cleanup_crit_edge, %coda_jpeg_put_byte.exit387.i.1.cleanup_crit_edge, %if.end111.i.1.cleanup_crit_edge, %if.end105.i.1.cleanup_crit_edge, %for.body.i.1.cleanup_crit_edge, %if.end111.i.cleanup_crit_edge, %if.end105.i.cleanup_crit_edge, %coda_jpeg_put_byte.exit369.i.cleanup_crit_edge, %if.end90.i.cleanup_crit_edge, %if.end84.i.cleanup_crit_edge, %if.end78.i.cleanup_crit_edge, %if.end73.i.cleanup_crit_edge, %if.end65.i.cleanup_crit_edge, %if.end60.i.cleanup_crit_edge, %for.body.i.i325.i.cleanup_crit_edge, %if.end5.i.i320.i.cleanup_crit_edge, %if.end.i.i317.i.cleanup_crit_edge, %if.end54.i.cleanup_crit_edge, %for.body.i.i303.i.cleanup_crit_edge, %if.end5.i.i298.i.cleanup_crit_edge, %if.end.i.i295.i.cleanup_crit_edge, %if.then49.i.cleanup_crit_edge, %for.body.i.i281.i.cleanup_crit_edge, %if.end5.i.i276.i.cleanup_crit_edge, %if.end.i.i273.i.cleanup_crit_edge, %if.end41.i.cleanup_crit_edge, %for.body.i.i260.i.cleanup_crit_edge, %if.end5.i.i255.i.cleanup_crit_edge, %if.end.i.i252.i.cleanup_crit_edge, %if.end36.i.cleanup_crit_edge, %for.body.i.i238.i.cleanup_crit_edge, %if.end5.i.i233.i.cleanup_crit_edge, %if.end.i.i230.i.cleanup_crit_edge, %if.then30.i.cleanup_crit_edge, %for.body.i.i.i.cleanup_crit_edge, %if.end5.i.i.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.then6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %vb2_plane_size.exit248.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end101 ], [ 0, %do.end110 ], [ %retval.0.i256, %coda9_jpeg_encode_header.exit.cleanup_crit_edge ], [ -22, %vb2_plane_size.exit248.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.then6.i.cleanup_crit_edge ], [ -22, %if.end10.i.cleanup_crit_edge ], [ -22, %if.end14.i.cleanup_crit_edge ], [ -22, %if.end22.i.cleanup_crit_edge ], [ -22, %if.end.i.i.i.cleanup_crit_edge ], [ -22, %if.end5.i.i.i.cleanup_crit_edge ], [ -22, %if.then30.i.cleanup_crit_edge ], [ -22, %if.end.i.i230.i.cleanup_crit_edge ], [ -22, %if.end5.i.i233.i.cleanup_crit_edge ], [ -22, %if.end36.i.cleanup_crit_edge ], [ -22, %if.end.i.i252.i.cleanup_crit_edge ], [ -22, %if.end5.i.i255.i.cleanup_crit_edge ], [ -22, %if.end41.i.cleanup_crit_edge ], [ -22, %if.end.i.i273.i.cleanup_crit_edge ], [ -22, %if.end5.i.i276.i.cleanup_crit_edge ], [ -22, %if.then49.i.cleanup_crit_edge ], [ -22, %if.end.i.i295.i.cleanup_crit_edge ], [ -22, %if.end5.i.i298.i.cleanup_crit_edge ], [ -22, %if.end54.i.cleanup_crit_edge ], [ -22, %if.end.i.i317.i.cleanup_crit_edge ], [ -22, %if.end5.i.i320.i.cleanup_crit_edge ], [ -22, %if.end60.i.cleanup_crit_edge ], [ -22, %if.end65.i.cleanup_crit_edge ], [ -22, %if.end73.i.cleanup_crit_edge ], [ -22, %if.end78.i.cleanup_crit_edge ], [ -22, %if.end84.i.cleanup_crit_edge ], [ -22, %if.end90.i.cleanup_crit_edge ], [ -22, %while.body.i.cleanup_crit_edge ], [ -22, %if.end111.i.2.cleanup_crit_edge ], [ -22, %if.end105.i.2.cleanup_crit_edge ], [ -22, %coda_jpeg_put_byte.exit387.i.1.cleanup_crit_edge ], [ -22, %if.end111.i.1.cleanup_crit_edge ], [ -22, %if.end105.i.1.cleanup_crit_edge ], [ -22, %for.body.i.1.cleanup_crit_edge ], [ -22, %coda_jpeg_put_byte.exit369.i.cleanup_crit_edge ], [ -22, %if.end105.i.cleanup_crit_edge ], [ -22, %if.end111.i.cleanup_crit_edge ], [ -22, %for.body.i.i325.i.cleanup_crit_edge ], [ -22, %for.body.i.i303.i.cleanup_crit_edge ], [ -22, %for.body.i.i281.i.cleanup_crit_edge ], [ -22, %for.body.i.i260.i.cleanup_crit_edge ], [ -22, %for.body.i.i238.i.cleanup_crit_edge ], [ -22, %for.body.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda9_jpeg_finish_encode(ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %aborting = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 8
  %2 = ptrtoint ptr %aborting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aborting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12856) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %wakeup_mutex = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %wakeup_mutex, i32 noundef 0) #10
  %m2m_ctx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #10
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 7
  %call.i93 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #10
  tail call fastcc void @trace_coda_jpeg_done(ptr noundef %ctx, ptr noundef %call.i93)
  %call.i94 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i93, i32 noundef 0) #10
  %8 = ptrtoint ptr %call.i94 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i94, align 4
  %call7 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 12812) #10
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i93, i32 0, i32 4
  %10 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %if.end.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

if.end.vb2_set_plane_payload.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %if.end
  %sub = sub i32 %call7, %9
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i93, i32 0, i32 10, i32 0, i32 4
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %sub)
  %cmp1.i = icmp ult i32 %13, %sub
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !165

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 1163, i32 noundef 9, ptr noundef null) #10
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %15, %if.then38.i ], [ %sub, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i93, i32 0, i32 10, i32 0, i32 3
  %16 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %if.end.vb2_set_plane_payload.exit_crit_edge
  %call9 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 12296) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %vb2_set_plane_payload.exit.if.end25_crit_edge, label %do.body

vb2_set_plane_payload.exit.if.end25_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.body:                                          ; preds = %vb2_set_plane_payload.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %17 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp sgt i32 %17, 0
  br i1 %cmp, label %do.end, label %do.body.if.end25_crit_edge

do.body.if.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %19, i32 0, i32 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx, align 8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name, i32 noundef %21, i32 noundef %call9) #13
  br label %if.end25

if.end25:                                         ; preds = %do.end, %do.body.if.end25_crit_edge, %vb2_set_plane_payload.exit.if.end25_crit_edge
  %cond = phi i32 [ 6, %do.body.if.end25_crit_edge ], [ 6, %do.end ], [ 5, %vb2_set_plane_payload.exit.if.end25_crit_edge ]
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12856) #10
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i93, i32 0, i32 1
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 8
  %and = and i32 %23, -1048601
  %or = or i32 %and, 8
  store i32 %or, ptr %flags, align 8
  %flags27 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags27, align 8
  %and28 = and i32 %25, 1048576
  %or30 = or i32 %and28, %or
  store i32 %or30, ptr %flags, align 8
  tail call void @v4l2_m2m_buf_copy_metadata(ptr noundef %call.i, ptr noundef %call.i93, i1 noundef zeroext false) #10
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef 5) #10
  tail call void @coda_m2m_buf_done(ptr noundef %ctx, ptr noundef %call.i93, i32 noundef %cond) #10
  tail call void @mutex_unlock(ptr noundef %wakeup_mutex) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %26 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp34 = icmp sgt i32 %26, 0
  br i1 %cmp34, label %do.end41, label %if.end25.do.end58_crit_edge

if.end25.do.end58_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end58

do.end41:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 8
  %name45 = getelementptr inbounds %struct.v4l2_device, ptr %28, i32 0, i32 4
  %idx47 = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %29 = ptrtoint ptr %idx47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idx47, align 8
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i93, i32 0, i32 4
  %31 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sequence, align 8
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 8
  %and49 = and i32 %34, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %cond51 = select i1 %tobool50.not, ptr @.str.58, ptr @.str.57
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name45, i32 noundef %30, i32 noundef %32, ptr noundef nonnull %cond51) #13
  br label %do.end58

do.end58:                                         ; preds = %do.end41, %if.end25.do.end58_crit_edge
  %call59 = tail call i32 @coda_hw_reset(ptr noundef %ctx) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda9_jpeg_encode_timeout(ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %call = tail call i32 @coda_read(ptr noundef %1, i32 noundef 12808) #10
  %call2 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 12812) #10
  %sub = add i32 %call, -256
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %sub)
  %cmp.not = icmp ult i32 %call2, %sub
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name) #13
  tail call void @coda9_jpeg_finish_encode(ptr noundef %ctx)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @coda_hw_reset(ptr noundef %ctx) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda9_jpeg_release(ptr nocapture noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg_qmat_tab = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21
  %0 = ptrtoint ptr %jpeg_qmat_tab to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jpeg_qmat_tab, align 8
  %cmp = icmp eq ptr %1, @luma_q
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %jpeg_qmat_tab to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %jpeg_qmat_tab, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx6 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21, i32 1
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx6, align 4
  %cmp7 = icmp eq ptr %4, @chroma_q
  br i1 %cmp7, label %if.then8, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx6, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end.if.end12_crit_edge
  %6 = ptrtoint ptr %jpeg_qmat_tab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jpeg_qmat_tab, align 4
  tail call void @kfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6, align 4
  tail call void @kfree(ptr noundef %9) #10
  %arrayidx16.2 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21, i32 2
  %10 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx16.2, align 4
  tail call void @kfree(ptr noundef %11) #10
  %jpeg_huff_data = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 25
  %12 = ptrtoint ptr %jpeg_huff_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %jpeg_huff_data, align 8
  tail call void @kfree(ptr noundef %13) #10
  %jpeg_huff_tab = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 26
  %14 = ptrtoint ptr %jpeg_huff_tab to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %jpeg_huff_tab, align 4
  tail call void @kfree(ptr noundef %15) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @coda9_jpeg_start_decoding(ptr nocapture noundef writeonly %ctx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %jpeg_qmat_index = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 22
  %0 = ptrtoint ptr %jpeg_qmat_index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %jpeg_qmat_index, align 4
  %arrayidx3 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 22, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %arrayidx3, align 4
  %arrayidx6 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 22, i32 2
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %arrayidx6, align 4
  %jpeg_qmat_tab = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21
  %3 = ptrtoint ptr %jpeg_qmat_tab to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @luma_q, ptr %jpeg_qmat_tab, align 8
  %arrayidx11 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21, i32 1
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @chroma_q, ptr %arrayidx11, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coda9_jpeg_prepare_decode(ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %m2m_ctx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i231 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #10
  %q_data.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15
  %arrayidx3.i = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1
  %fourcc = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 4
  %6 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fourcc, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %vb2_get_plane_payload.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

vb2_get_plane_payload.exit:                       ; preds = %entry
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %10 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytesused.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.end42.i, label %vb2_get_plane_payload.exit.if.endthread-pre-split_crit_edge

vb2_get_plane_payload.exit.if.endthread-pre-split_crit_edge: ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.endthread-pre-split

if.end42.i:                                       ; preds = %vb2_get_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  %size.addr.0.i.in = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 4
  %12 = ptrtoint ptr %size.addr.0.i.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %size.addr.0.i = load i32, ptr %size.addr.0.i.in, align 8
  %13 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %if.endthread-pre-split

if.endthread-pre-split:                           ; preds = %if.end42.i, %vb2_get_plane_payload.exit.if.endthread-pre-split_crit_edge
  %14 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %fourcc, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %entry.if.end_crit_edge
  %15 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %7, %entry.if.end_crit_edge ]
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %15, label %if.then14 [
    i32 842093913, label %if.end.if.end18_crit_edge
    i32 842094158, label %if.end.if.end18_crit_edge254
    i32 1345466932, label %sw.bb1.i
    i32 875836505, label %sw.bb2.i
    i32 1497715271, label %sw.bb3.i
  ]

if.end.if.end18_crit_edge254:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 8
  %m2m_dev = getelementptr inbounds %struct.coda_dev, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m2m_dev, align 8
  %21 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %20, ptr noundef %22) #10
  br label %cleanup

if.end18:                                         ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end.if.end18_crit_edge, %if.end.if.end18_crit_edge254
  %retval.0.i241.ph = phi i32 [ 0, %if.end.if.end18_crit_edge ], [ 0, %if.end.if.end18_crit_edge254 ], [ 1, %sw.bb1.i ], [ 3, %sw.bb2.i ], [ 4, %sw.bb3.i ]
  %call20 = tail call i32 @coda_jpeg_decode_header(ptr noundef %ctx, ptr noundef %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end, label %if.end34

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name, i32 noundef %call20) #13
  %23 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i242 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %24, i32 0, i32 8
  %call.i243 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i242) #10
  %25 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i244 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %26, i32 0, i32 7
  %call.i245 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i244) #10
  tail call void @vb2_buffer_done(ptr noundef %call.i243, i32 noundef 5) #10
  tail call void @vb2_buffer_done(ptr noundef %call.i245, i32 noundef 5) #10
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 8
  %m2m_dev31 = getelementptr inbounds %struct.coda_dev, ptr %28, i32 0, i32 18
  %29 = ptrtoint ptr %m2m_dev31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %m2m_dev31, align 8
  %31 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %30, ptr noundef %32) #10
  br label %cleanup

if.end34:                                         ; preds = %if.end18
  %33 = ptrtoint ptr %q_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %q_data.i, align 4
  %sub = add i32 %34, -1
  %arrayidx = getelementptr [5 x i8], ptr @width_align, i32 0, i32 %retval.0.i241.ph
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %36 to i32
  %sub35 = add nsw i32 %conv, -1
  %or = or i32 %sub35, %sub
  %add = add i32 %or, 1
  %height = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 0, i32 1
  %37 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %height, align 4
  %sub36 = add i32 %38, -1
  %arrayidx37 = getelementptr [5 x i8], ptr @height_align, i32 0, i32 %retval.0.i241.ph
  %39 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %40 to i32
  %sub39 = add nsw i32 %conv38, -1
  %or40 = or i32 %sub39, %sub36
  %add41 = add i32 %or40, 1
  %bytesperline = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 2
  %41 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bytesperline, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %42)
  %cmp42.not = icmp eq i32 %add, %42
  br i1 %cmp42.not, label %if.end34.if.end54_crit_edge, label %do.end47

if.end34.if.end54_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.end47:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %name50 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name50, i32 noundef %add, i32 noundef %42) #13
  br label %if.end54

if.end54:                                         ; preds = %do.end47, %if.end34.if.end54_crit_edge
  tail call void @coda_set_gdi_regs(ptr noundef %ctx) #10
  %jpeg_huff_ac_index = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 24
  %43 = ptrtoint ptr %jpeg_huff_ac_index to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %jpeg_huff_ac_index, align 4
  %shl = shl i32 %44, 12
  %arrayidx58 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 24, i32 1
  %45 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx58, align 4
  %shl59 = shl i32 %46, 11
  %or60 = or i32 %shl59, %shl
  %arrayidx63 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 24, i32 2
  %47 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx63, align 4
  %shl64 = shl i32 %48, 10
  %or65 = or i32 %or60, %shl64
  %jpeg_huff_dc_index = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 23
  %49 = ptrtoint ptr %jpeg_huff_dc_index to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %jpeg_huff_dc_index, align 8
  %shl68 = shl i32 %50, 9
  %or69 = or i32 %or65, %shl68
  %arrayidx72 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 23, i32 1
  %51 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx72, align 4
  %shl73 = shl i32 %52, 8
  %or74 = or i32 %or69, %shl73
  %arrayidx77 = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 23, i32 2
  %53 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx77, align 8
  %shl78 = shl i32 %54, 7
  %or79 = or i32 %or74, %shl78
  %jpeg_huff_tab = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 26
  %55 = ptrtoint ptr %jpeg_huff_tab to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %jpeg_huff_tab, align 4
  %tobool.not = icmp eq ptr %56, null
  %or82 = or i32 %or79, 64
  %spec.select = select i1 %tobool.not, i32 %or79, i32 %or82
  tail call void @coda_write(ptr noundef %1, i32 noundef %spec.select, i32 noundef 12304) #10
  %shl84 = shl i32 %add, 16
  %or85 = or i32 %add41, %shl84
  tail call void @coda_write(ptr noundef %1, i32 noundef %or85, i32 noundef 12308) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %7)
  %cmp86 = icmp eq i32 %7, 842094158
  %conv87 = zext i1 %cmp86 to i32
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12316) #10
  %arrayidx88 = getelementptr [5 x i32], ptr @bus_req_num, i32 0, i32 %retval.0.i241.ph
  %57 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx88, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %58, i32 noundef 12332) #10
  %arrayidx89 = getelementptr [5 x i32], ptr @mcu_info, i32 0, i32 %retval.0.i241.ph
  %59 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx89, align 4
  tail call void @coda_write(ptr noundef %1, i32 noundef %60, i32 noundef 12312) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12320) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef %conv87, i32 noundef 12336) #10
  %jpeg_restart_interval = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 20
  %61 = ptrtoint ptr %jpeg_restart_interval to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %jpeg_restart_interval, align 1
  %conv91 = zext i8 %62 to i32
  tail call void @coda_write(ptr noundef %1, i32 noundef %conv91, i32 noundef 12464) #10
  %63 = ptrtoint ptr %jpeg_huff_tab to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %jpeg_huff_tab, align 4
  %tobool94.not = icmp eq ptr %64, null
  br i1 %tobool94.not, label %if.end54.if.end113_crit_edge, label %if.then95

if.end54.if.end113_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then95:                                        ; preds = %if.end54
  %65 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctx, align 8
  %min.i = getelementptr inbounds %struct.coda_huff_tab, ptr %64, i32 0, i32 4
  tail call void @coda_write(ptr noundef %66, i32 noundef 3, i32 noundef 12416) #10
  tail call void @coda_write(ptr noundef %66, i32 noundef 0, i32 noundef 12420) #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then95
  %i.01.i = phi i32 [ 0, %if.then95 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %min.i, i32 %i.01.i
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx.i, align 2
  %conv.i = sext i16 %68 to i32
  tail call void @coda_write(ptr noundef %66, i32 noundef %conv.i, i32 noundef 12424) #10
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %max.i = getelementptr inbounds %struct.coda_huff_tab, ptr %64, i32 0, i32 5
  tail call void @coda_write(ptr noundef %66, i32 noundef 1027, i32 noundef 12416) #10
  tail call void @coda_write(ptr noundef %66, i32 noundef 1088, i32 noundef 12420) #10
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.end.i
  %i.12.i = phi i32 [ 0, %for.end.i ], [ %inc11.i, %for.body7.i.for.body7.i_crit_edge ]
  %arrayidx8.i = getelementptr i16, ptr %max.i, i32 %i.12.i
  %69 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %arrayidx8.i, align 2
  %conv9.i = sext i16 %70 to i32
  tail call void @coda_write(ptr noundef %66, i32 noundef %conv9.i, i32 noundef 12424) #10
  %inc11.i = add nuw nsw i32 %i.12.i, 1
  %exitcond4.not.i = icmp eq i32 %inc11.i, 64
  br i1 %exitcond4.not.i, label %for.end12.i, label %for.body7.i.for.body7.i_crit_edge

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body7.i

for.end12.i:                                      ; preds = %for.body7.i
  %ptr.i = getelementptr inbounds %struct.coda_huff_tab, ptr %64, i32 0, i32 6
  tail call void @coda_write(ptr noundef %66, i32 noundef 2051, i32 noundef 12416) #10
  tail call void @coda_write(ptr noundef %66, i32 noundef 2176, i32 noundef 12420) #10
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.end12.i
  %i.23.i = phi i32 [ 0, %for.end12.i ], [ %inc20.i, %for.body16.i.for.body16.i_crit_edge ]
  %arrayidx17.i = getelementptr i8, ptr %ptr.i, i32 %i.23.i
  %71 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = sext i8 %72 to i32
  tail call void @coda_write(ptr noundef %66, i32 noundef %conv18.i, i32 noundef 12424) #10
  %inc20.i = add nuw nsw i32 %i.23.i, 1
  %exitcond5.not.i = icmp eq i32 %inc20.i, 64
  br i1 %exitcond5.not.i, label %coda9_jpeg_dec_huff_setup.exit, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body16.i

coda9_jpeg_dec_huff_setup.exit:                   ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @coda_write(ptr noundef %66, i32 noundef 3075, i32 noundef 12416) #10
  tail call fastcc void @coda9_jpeg_write_huff_values(ptr noundef %66, ptr noundef nonnull %64, i32 noundef 12) #10
  %chroma_dc.i = getelementptr inbounds %struct.coda_huff_tab, ptr %64, i32 0, i32 1
  tail call fastcc void @coda9_jpeg_write_huff_values(ptr noundef %66, ptr noundef %chroma_dc.i, i32 noundef 12) #10
  %luma_ac.i = getelementptr inbounds %struct.coda_huff_tab, ptr %64, i32 0, i32 2
  tail call fastcc void @coda9_jpeg_write_huff_values(ptr noundef %66, ptr noundef %luma_ac.i, i32 noundef 162) #10
  %chroma_ac.i = getelementptr inbounds %struct.coda_huff_tab, ptr %64, i32 0, i32 3
  tail call fastcc void @coda9_jpeg_write_huff_values(ptr noundef %66, ptr noundef %chroma_ac.i, i32 noundef 162) #10
  tail call void @coda_write(ptr noundef %66, i32 noundef 0, i32 noundef 12416) #10
  br label %if.end113

if.end113:                                        ; preds = %coda9_jpeg_dec_huff_setup.exit, %if.end54.if.end113_crit_edge
  %73 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctx, align 8
  %jpeg_qmat_index.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 22
  %jpeg_qmat_tab.i = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 21
  %75 = ptrtoint ptr %jpeg_qmat_index.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %jpeg_qmat_index.i, align 4
  %arrayidx4.i = getelementptr ptr, ptr %jpeg_qmat_tab.i, i32 %76
  %77 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx4.i, align 4
  tail call void @coda_write(ptr noundef %74, i32 noundef 3, i32 noundef 12432) #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end113
  %i.05.i.i = phi i32 [ 0, %if.end113 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %78, i32 %i.05.i.i
  %79 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %80 to i32
  tail call void @coda_write(ptr noundef %74, i32 noundef %conv.i.i, i32 noundef 12440) #10
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %coda9_jpeg_write_qmat_tab.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

coda9_jpeg_write_qmat_tab.exit.i:                 ; preds = %for.body.i.i
  tail call void @coda_write(ptr noundef %74, i32 noundef 0, i32 noundef 12432) #10
  %arrayidx5.i = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 22, i32 1
  %81 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr ptr, ptr %jpeg_qmat_tab.i, i32 %82
  %83 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx6.i, align 4
  tail call void @coda_write(ptr noundef %74, i32 noundef 67, i32 noundef 12432) #10
  br label %for.body.i22.i

for.body.i22.i:                                   ; preds = %for.body.i22.i.for.body.i22.i_crit_edge, %coda9_jpeg_write_qmat_tab.exit.i
  %i.05.i17.i = phi i32 [ 0, %coda9_jpeg_write_qmat_tab.exit.i ], [ %inc.i20.i, %for.body.i22.i.for.body.i22.i_crit_edge ]
  %arrayidx.i18.i = getelementptr i8, ptr %84, i32 %i.05.i17.i
  %85 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i18.i, align 1
  %conv.i19.i = zext i8 %86 to i32
  tail call void @coda_write(ptr noundef %74, i32 noundef %conv.i19.i, i32 noundef 12440) #10
  %inc.i20.i = add nuw nsw i32 %i.05.i17.i, 1
  %exitcond.not.i21.i = icmp eq i32 %inc.i20.i, 64
  br i1 %exitcond.not.i21.i, label %coda9_jpeg_write_qmat_tab.exit23.i, label %for.body.i22.i.for.body.i22.i_crit_edge

for.body.i22.i.for.body.i22.i_crit_edge:          ; preds = %for.body.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i22.i

coda9_jpeg_write_qmat_tab.exit23.i:               ; preds = %for.body.i22.i
  tail call void @coda_write(ptr noundef %74, i32 noundef 0, i32 noundef 12432) #10
  %arrayidx7.i = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 22, i32 22, i32 2
  %87 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx8.i246 = getelementptr ptr, ptr %jpeg_qmat_tab.i, i32 %88
  %89 = ptrtoint ptr %arrayidx8.i246 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx8.i246, align 4
  tail call void @coda_write(ptr noundef %74, i32 noundef 131, i32 noundef 12432) #10
  br label %for.body.i29.i

for.body.i29.i:                                   ; preds = %for.body.i29.i.for.body.i29.i_crit_edge, %coda9_jpeg_write_qmat_tab.exit23.i
  %i.05.i24.i = phi i32 [ 0, %coda9_jpeg_write_qmat_tab.exit23.i ], [ %inc.i27.i, %for.body.i29.i.for.body.i29.i_crit_edge ]
  %arrayidx.i25.i = getelementptr i8, ptr %90, i32 %i.05.i24.i
  %91 = ptrtoint ptr %arrayidx.i25.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i25.i, align 1
  %conv.i26.i = zext i8 %92 to i32
  tail call void @coda_write(ptr noundef %74, i32 noundef %conv.i26.i, i32 noundef 12440) #10
  %inc.i27.i = add nuw nsw i32 %i.05.i24.i, 1
  %exitcond.not.i28.i = icmp eq i32 %inc.i27.i, 64
  br i1 %exitcond.not.i28.i, label %coda9_jpeg_qmat_setup.exit, label %for.body.i29.i.for.body.i29.i_crit_edge

for.body.i29.i.for.body.i29.i_crit_edge:          ; preds = %for.body.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i29.i

coda9_jpeg_qmat_setup.exit:                       ; preds = %for.body.i29.i
  tail call void @coda_write(ptr noundef %74, i32 noundef 0, i32 noundef 12432) #10
  %jpeg_ecs_offset = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 34
  %93 = ptrtoint ptr %jpeg_ecs_offset to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %jpeg_ecs_offset, align 8
  %95 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ctx, align 8
  %call.i.i = tail call ptr @vb2_plane_cookie(ptr noundef %call.i, i32 noundef 0) #10
  %97 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %call.i.i, align 4
  %99 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.not.i.i = icmp eq i32 %100, 0
  br i1 %cmp.not.i.i, label %coda9_jpeg_qmat_setup.exit.vb2_get_plane_payload.exit.i_crit_edge, label %if.then.i.i

coda9_jpeg_qmat_setup.exit.vb2_get_plane_payload.exit.i_crit_edge: ; preds = %coda9_jpeg_qmat_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_get_plane_payload.exit.i

if.then.i.i:                                      ; preds = %coda9_jpeg_qmat_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %bytesused.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 3
  %101 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bytesused.i.i, align 4
  br label %vb2_get_plane_payload.exit.i

vb2_get_plane_payload.exit.i:                     ; preds = %if.then.i.i, %coda9_jpeg_qmat_setup.exit.vb2_get_plane_payload.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %102, %if.then.i.i ], [ 0, %coda9_jpeg_qmat_setup.exit.vb2_get_plane_payload.exit.i_crit_edge ]
  %add.i = add i32 %retval.0.i.i, %98
  %div87.i = lshr i32 %94, 8
  %and.i = shl nuw nsw i32 %div87.i, 6
  %103 = and i32 %and.i, 64
  tail call void @coda_write(ptr noundef %96, i32 noundef %add.i, i32 noundef 12812) #10
  tail call void @coda_write(ptr noundef %96, i32 noundef %98, i32 noundef 12848) #10
  %add13.i = add i32 %add.i, 1024
  tail call void @coda_write(ptr noundef %96, i32 noundef %add13.i, i32 noundef 12808) #10
  %104 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp.not.i91.i = icmp eq i32 %105, 0
  br i1 %cmp.not.i91.i, label %vb2_get_plane_payload.exit.i.vb2_plane_size.exit.i_crit_edge, label %if.then.i92.i

vb2_get_plane_payload.exit.i.vb2_plane_size.exit.i_crit_edge: ; preds = %vb2_get_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_plane_size.exit.i

if.then.i92.i:                                    ; preds = %vb2_get_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %length.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 10, i32 0, i32 4
  %106 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %length.i.i, align 8
  %phi.bo.i = add i32 %107, 255
  %phi.bo94.i = lshr i32 %phi.bo.i, 8
  %phi.bo96.i = add nuw nsw i32 %phi.bo94.i, -2147483645
  br label %vb2_plane_size.exit.i

vb2_plane_size.exit.i:                            ; preds = %if.then.i92.i, %vb2_get_plane_payload.exit.i.vb2_plane_size.exit.i_crit_edge
  %retval.0.i93.i = phi i32 [ %phi.bo96.i, %if.then.i92.i ], [ -2147483645, %vb2_get_plane_payload.exit.i.vb2_plane_size.exit.i_crit_edge ]
  tail call void @coda_write(ptr noundef %96, i32 noundef %retval.0.i93.i, i32 noundef 12852) #10
  tail call void @coda_write(ptr noundef %96, i32 noundef %div87.i, i32 noundef 12844) #10
  %shl.i = and i32 %94, -256
  %add18.i = add i32 %98, %shl.i
  tail call void @coda_write(ptr noundef %96, i32 noundef %add18.i, i32 noundef 12820) #10
  tail call void @coda_write(ptr noundef %96, i32 noundef %103, i32 noundef 12824) #10
  tail call void @coda_write(ptr noundef %96, i32 noundef 64, i32 noundef 12828) #10
  tail call void @coda_write(ptr noundef %96, i32 noundef 0, i32 noundef 12832) #10
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %vb2_plane_size.exit.i
  %call21.i = tail call i32 @coda_read(ptr noundef %96, i32 noundef 12836) #10
  %cmp.i = icmp eq i32 %call21.i, 1
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %inc.i247 = add nuw nsw i32 %div87.i, 1
  tail call void @coda_write(ptr noundef %96, i32 noundef %inc.i247, i32 noundef 12844) #10
  %shl22.i = shl i32 %inc.i247, 8
  %add23.i = add i32 %98, %shl22.i
  tail call void @coda_write(ptr noundef %96, i32 noundef %add23.i, i32 noundef 12820) #10
  %and24.i = shl nuw nsw i32 %inc.i247, 6
  %shl25.i = and i32 %and24.i, 64
  tail call void @coda_write(ptr noundef %96, i32 noundef %shl25.i, i32 noundef 12824) #10
  tail call void @coda_write(ptr noundef %96, i32 noundef 64, i32 noundef 12828) #10
  tail call void @coda_write(ptr noundef %96, i32 noundef 0, i32 noundef 12832) #10
  br label %do.body26.i

do.body26.i:                                      ; preds = %do.body26.i.do.body26.i_crit_edge, %do.end.i
  %call27.i = tail call i32 @coda_read(ptr noundef %96, i32 noundef 12836) #10
  %cmp29.i = icmp eq i32 %call27.i, 1
  br i1 %cmp29.i, label %do.body26.i.do.body26.i_crit_edge, label %coda9_jpeg_dec_bbc_gbu_setup.exit

do.body26.i.do.body26.i_crit_edge:                ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26.i

coda9_jpeg_dec_bbc_gbu_setup.exit:                ; preds = %do.body26.i
  %rem.i = lshr i32 %94, 2
  %div388.i = and i32 %rem.i, 62
  %108 = or i32 %103, %div388.i
  %inc31.i = add nuw nsw i32 %div87.i, 2
  tail call void @coda_write(ptr noundef %96, i32 noundef %inc31.i, i32 noundef 12844) #10
  tail call void @coda_write(ptr noundef %96, i32 noundef 1, i32 noundef 12840) #10
  tail call void @coda_write(ptr noundef %96, i32 noundef 0, i32 noundef 12568) #10
  tail call void @coda_write(ptr noundef %96, i32 noundef %108, i32 noundef 12564) #10
  tail call void @coda_write(ptr noundef %96, i32 noundef 0, i32 noundef 12608) #10
  tail call void @coda_write(ptr noundef %96, i32 noundef 127, i32 noundef 12612) #10
  %109 = xor i32 %103, 64
  tail call void @coda_write(ptr noundef %96, i32 noundef %109, i32 noundef 12616) #10
  tail call void @coda_write(ptr noundef %96, i32 noundef %109, i32 noundef 12620) #10
  %rem5.i = shl i32 %94, 3
  %110 = and i32 %rem5.i, 56
  tail call void @coda_write(ptr noundef %96, i32 noundef 4, i32 noundef 12544) #10
  tail call void @coda_write(ptr noundef %96, i32 noundef %110, i32 noundef 12640) #10
  tail call void @coda_write(ptr noundef %96, i32 noundef 3, i32 noundef 12544) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12468) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12472) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12528) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12532) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12536) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12316) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 1, i32 noundef 4148) #10
  br label %do.body115

do.body115:                                       ; preds = %do.body115.do.body115_crit_edge, %coda9_jpeg_dec_bbc_gbu_setup.exit
  %call116 = tail call i32 @coda_read(ptr noundef %1, i32 noundef 4224) #10
  %tobool118.not = icmp eq i32 %call116, 0
  br i1 %tobool118.not, label %do.body115.do.body115_crit_edge, label %do.end119

do.body115.do.body115_crit_edge:                  ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body115

do.end119:                                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #12
  %shl120 = shl nuw nsw i32 %retval.0.i241.ph, 17
  %shl121 = select i1 %cmp86, i32 65536, i32 0
  %or122 = or i32 %shl120, %shl121
  %111 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bytesperline, align 4
  %or124 = or i32 %112, %or122
  %tiled_map_type = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 54
  %113 = ptrtoint ptr %tiled_map_type to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tiled_map_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %114)
  %cmp125 = icmp eq i32 %114, 1
  %or128 = or i32 %or124, 3145728
  %spec.select230 = select i1 %cmp125, i32 %or128, i32 %or124
  tail call void @coda_write(ptr noundef %1, i32 noundef %spec.select230, i32 noundef 5120) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef %or85, i32 noundef 5124) #10
  tail call void @coda_write_base(ptr noundef %ctx, ptr noundef %arrayidx3.i, ptr noundef %call.i231, i32 noundef 5128) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12352) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 4148) #10
  tail call void @coda_write(ptr noundef %1, i32 noundef 1, i32 noundef 4152) #10
  tail call fastcc void @trace_coda_jpeg_run(ptr noundef %ctx, ptr noundef %call.i)
  tail call void @coda_write(ptr noundef %1, i32 noundef 1, i32 noundef 12288) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end119, %do.end, %if.then14
  %retval.0 = phi i32 [ -22, %if.then14 ], [ %call20, %do.end ], [ 0, %do.end119 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @coda9_jpeg_finish_decode(ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %call = tail call i32 @coda_read(ptr noundef %1, i32 noundef 12296) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %cond = phi i32 [ 6, %do.end ], [ 5, %entry.if.end_crit_edge ]
  tail call void @coda_write(ptr noundef %1, i32 noundef 0, i32 noundef 12856) #10
  %wakeup_mutex = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %wakeup_mutex, i32 noundef 0) #10
  %m2m_ctx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 31, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i67 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #10
  %osequence = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 13
  %6 = ptrtoint ptr %osequence to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %osequence, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %osequence, align 8
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i67, i32 0, i32 4
  %8 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %sequence, align 8
  tail call fastcc void @trace_coda_jpeg_done(ptr noundef %ctx, ptr noundef %call.i67)
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i67, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %and = and i32 %10, -1048601
  %or = or i32 %and, 8
  store i32 %or, ptr %flags, align 8
  %flags8 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags8, align 8
  %and9 = and i32 %12, 1048576
  %or11 = or i32 %and9, %or
  store i32 %or11, ptr %flags, align 8
  tail call void @v4l2_m2m_buf_copy_metadata(ptr noundef %call.i, ptr noundef %call.i67, i1 noundef zeroext false) #10
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i67, i32 0, i32 4
  %13 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i, label %if.end.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

if.end.vb2_set_plane_payload.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %if.end
  %sizeimage = getelementptr %struct.coda_ctx, ptr %ctx, i32 0, i32 15, i32 1, i32 3
  %15 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sizeimage, align 4
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i67, i32 0, i32 10, i32 0, i32 4
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp1.i = icmp ult i32 %18, %16
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !165

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 1163, i32 noundef 9, ptr noundef null) #10
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %20, %if.then38.i ], [ %16, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i67, i32 0, i32 10, i32 0, i32 3
  %21 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %if.end.vb2_set_plane_payload.exit_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef 5) #10
  tail call void @coda_m2m_buf_done(ptr noundef %ctx, ptr noundef %call.i67, i32 noundef %cond) #10
  tail call void @mutex_unlock(ptr noundef %wakeup_mutex) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @coda_debug to i32))
  %22 = load i32, ptr @coda_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp sgt i32 %22, 0
  br i1 %cmp, label %do.end22, label %vb2_set_plane_payload.exit.do.end39_crit_edge

vb2_set_plane_payload.exit.do.end39_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39

do.end22:                                         ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx, align 8
  %name26 = getelementptr inbounds %struct.v4l2_device, ptr %24, i32 0, i32 4
  %idx = getelementptr inbounds %struct.coda_ctx, ptr %ctx, i32 0, i32 51
  %25 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %idx, align 8
  %27 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sequence, align 8
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 8
  %and30 = and i32 %30, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %cond32 = select i1 %tobool31.not, ptr @.str.58, ptr @.str.57
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name26, i32 noundef %26, i32 noundef %28, ptr noundef nonnull %cond32) #13
  br label %do.end39

do.end39:                                         ; preds = %do.end22, %vb2_set_plane_payload.exit.do.end39_crit_edge
  %call40 = tail call i32 @coda_hw_reset(ptr noundef %ctx) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coda9_jpeg_irq_handler(i32 noundef %irq, ptr noundef %data) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @coda_read(ptr noundef %data, i32 noundef 12292) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @coda_write(ptr noundef %data, i32 noundef %call, i32 noundef 12292) #10
  %and = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %do.end

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.v4l2_device, ptr %data, i32 0, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name) #13
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.end.if.end3_crit_edge
  %and4 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.if.end15_crit_edge, label %do.end9

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %name12 = getelementptr inbounds %struct.v4l2_device, ptr %data, i32 0, i32 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name12) #13
  br label %if.end15

if.end15:                                         ; preds = %do.end9, %if.end3.if.end15_crit_edge
  %and16 = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end42_crit_edge, label %do.end21

if.end15.if.end42_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

do.end21:                                         ; preds = %if.end15
  %name24 = getelementptr inbounds %struct.v4l2_device, ptr %data, i32 0, i32 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name24) #13
  %call27 = tail call i32 @coda_read(ptr noundef %data, i32 noundef 12296) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.end21.if.end42_crit_edge, label %do.end32

do.end21.if.end42_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

do.end32:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  %shr = ashr i32 %call27, 24
  %0 = lshr i32 %call27, 12
  %and38 = and i32 %0, 4095
  %and39 = and i32 %call27, 4095
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name24, i32 noundef %call27, i32 noundef %shr, i32 noundef %and38, i32 noundef %and39) #13
  br label %if.end42

if.end42:                                         ; preds = %do.end32, %do.end21.if.end42_crit_edge, %if.end15.if.end42_crit_edge
  %m2m_dev = getelementptr inbounds %struct.coda_dev, ptr %data, i32 0, i32 18
  %1 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %m2m_dev, align 8
  %call43 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %2) #10
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %do.end48, label %if.end54

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %name51 = getelementptr inbounds %struct.v4l2_device, ptr %data, i32 0, i32 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name51) #13
  %coda_mutex = getelementptr inbounds %struct.coda_dev, ptr %data, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %coda_mutex) #10
  br label %cleanup

if.end54:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %completion = getelementptr inbounds %struct.coda_ctx, ptr %call43, i32 0, i32 5
  tail call void @complete(ptr noundef %completion) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end48, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_set_gdi_regs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_write_base(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_coda_jpeg_run(ptr noundef %ctx, ptr noundef %buf) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_coda_jpeg_run, i32 0, i32 1), ptr blockaddress(@trace_coda_jpeg_run, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !166

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !155) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !165

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !155) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !167
  %call42 = tail call i32 @__traceiter_coda_jpeg_run(ptr noundef null, ptr noundef %ctx, ptr noundef %buf) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !168
  %13 = tail call i32 @llvm.read_register.i32(metadata !155) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !155) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !165

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !155) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_coda_jpeg_run, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_coda_jpeg_run, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_coda_jpeg_run.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_coda_jpeg_run.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 160, ptr noundef nonnull @.str.50) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !170
  %31 = tail call i32 @llvm.read_register.i32(metadata !155) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_coda_jpeg_run(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_coda_jpeg_done(ptr noundef %ctx, ptr noundef %buf) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_coda_jpeg_done, i32 0, i32 1), ptr blockaddress(@trace_coda_jpeg_done, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !166

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !155) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !165

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !155) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  %call42 = tail call i32 @__traceiter_coda_jpeg_done(ptr noundef null, ptr noundef %ctx, ptr noundef %buf) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %13 = tail call i32 @llvm.read_register.i32(metadata !155) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !155) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !165

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !155) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_coda_jpeg_done, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_coda_jpeg_done, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_coda_jpeg_done.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_coda_jpeg_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 165, ptr noundef nonnull @.str.50) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !170
  %31 = tail call i32 @llvm.read_register.i32(metadata !155) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_copy_metadata(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @coda_m2m_buf_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @coda_hw_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_coda_jpeg_done(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @coda9_jpeg_write_huff_values(ptr noundef %dev, ptr nocapture noundef %bits, i32 noundef %num_values) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bits, align 1
  %conv = zext i8 %1 to i32
  %arrayidx.1 = getelementptr i8, ptr %bits, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %3 to i32
  %add.1 = add nuw nsw i32 %conv, %conv.1
  %arrayidx.2 = getelementptr i8, ptr %bits, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %5 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.2
  %arrayidx.3 = getelementptr i8, ptr %bits, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %7 to i32
  %add.3 = add nuw nsw i32 %add.2, %conv.3
  %arrayidx.4 = getelementptr i8, ptr %bits, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %9 to i32
  %add.4 = add nuw nsw i32 %add.3, %conv.4
  %arrayidx.5 = getelementptr i8, ptr %bits, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %11 to i32
  %add.5 = add nuw nsw i32 %add.4, %conv.5
  %arrayidx.6 = getelementptr i8, ptr %bits, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %13 to i32
  %add.6 = add nuw nsw i32 %add.5, %conv.6
  %arrayidx.7 = getelementptr i8, ptr %bits, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %15 to i32
  %add.7 = add nuw nsw i32 %add.6, %conv.7
  %arrayidx.8 = getelementptr i8, ptr %bits, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.8, align 1
  %conv.8 = zext i8 %17 to i32
  %add.8 = add nuw nsw i32 %add.7, %conv.8
  %arrayidx.9 = getelementptr i8, ptr %bits, i32 9
  %18 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.9, align 1
  %conv.9 = zext i8 %19 to i32
  %add.9 = add nuw nsw i32 %add.8, %conv.9
  %arrayidx.10 = getelementptr i8, ptr %bits, i32 10
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.10, align 1
  %conv.10 = zext i8 %21 to i32
  %add.10 = add nuw nsw i32 %add.9, %conv.10
  %arrayidx.11 = getelementptr i8, ptr %bits, i32 11
  %22 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.11, align 1
  %conv.11 = zext i8 %23 to i32
  %add.11 = add nuw nsw i32 %add.10, %conv.11
  %arrayidx.12 = getelementptr i8, ptr %bits, i32 12
  %24 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.12, align 1
  %conv.12 = zext i8 %25 to i32
  %add.12 = add nuw nsw i32 %add.11, %conv.12
  %arrayidx.13 = getelementptr i8, ptr %bits, i32 13
  %26 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.13, align 1
  %conv.13 = zext i8 %27 to i32
  %add.13 = add nuw nsw i32 %add.12, %conv.13
  %arrayidx.14 = getelementptr i8, ptr %bits, i32 14
  %28 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.14, align 1
  %conv.14 = zext i8 %29 to i32
  %add.14 = add nuw nsw i32 %add.13, %conv.14
  %arrayidx.15 = getelementptr i8, ptr %bits, i32 15
  %30 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.15, align 1
  %conv.15 = zext i8 %31 to i32
  %add.15 = add nuw nsw i32 %add.14, %conv.15
  %add.ptr = getelementptr i8, ptr %bits, i32 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.15, i32 %num_values)
  %cmp232 = icmp slt i32 %add.15, %num_values
  br i1 %cmp232, label %for.body4.preheader, label %entry.for.cond9.preheader_crit_edge

entry.for.cond9.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond9.preheader

for.body4.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %32 = add nuw nsw i32 %conv.15, %conv.14
  %33 = add nuw nsw i32 %32, %conv.13
  %34 = add nuw nsw i32 %33, %conv.12
  %35 = add nuw nsw i32 %34, %conv.11
  %36 = add nuw nsw i32 %35, %conv.10
  %37 = add nuw nsw i32 %36, %conv.9
  %38 = add nuw nsw i32 %37, %conv.8
  %39 = add nuw nsw i32 %38, %conv.7
  %40 = add nuw nsw i32 %39, %conv.6
  %41 = add nuw nsw i32 %40, %conv.5
  %42 = add nuw nsw i32 %41, %conv.4
  %43 = add nuw nsw i32 %42, %conv.3
  %44 = add nuw nsw i32 %43, %conv.2
  %45 = add nuw nsw i32 %44, %conv.1
  %46 = add nuw nsw i32 %45, %conv
  %47 = add nuw nsw i32 %46, 16
  %uglygep = getelementptr i8, ptr %bits, i32 %47
  %48 = add nuw nsw i32 %conv, %conv.1
  %49 = add nuw nsw i32 %48, %conv.2
  %50 = add nuw nsw i32 %49, %conv.3
  %51 = add nuw nsw i32 %50, %conv.4
  %52 = add nuw nsw i32 %51, %conv.5
  %53 = add nuw nsw i32 %52, %conv.6
  %54 = add nuw nsw i32 %53, %conv.7
  %55 = add nuw nsw i32 %54, %conv.8
  %56 = add nuw nsw i32 %55, %conv.9
  %57 = add nuw nsw i32 %56, %conv.10
  %58 = add nuw nsw i32 %57, %conv.11
  %59 = add nuw nsw i32 %58, %conv.12
  %60 = add nuw nsw i32 %59, %conv.13
  %61 = add nuw nsw i32 %60, %conv.14
  %62 = add nuw nsw i32 %61, %conv.15
  %63 = sub i32 %num_values, %62
  %64 = call ptr @memset(ptr %uglygep, i32 255, i32 %63)
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.body4.preheader, %entry.for.cond9.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_values)
  %cmp1034 = icmp sgt i32 %num_values, 0
  br i1 %cmp1034, label %for.cond9.preheader.for.body12_crit_edge, label %for.cond9.preheader.for.end17_crit_edge

for.cond9.preheader.for.end17_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end17

for.cond9.preheader.for.body12_crit_edge:         ; preds = %for.cond9.preheader
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.cond9.preheader.for.body12_crit_edge
  %i.235 = phi i32 [ %inc16, %for.body12.for.body12_crit_edge ], [ 0, %for.cond9.preheader.for.body12_crit_edge ]
  %arrayidx13 = getelementptr i8, ptr %add.ptr, i32 %i.235
  %65 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %66 to i32
  tail call void @coda_write(ptr noundef %dev, i32 noundef %conv14, i32 noundef 12424) #10
  %inc16 = add nuw nsw i32 %i.235, 1
  %exitcond.not = icmp eq i32 %inc16, %num_values
  br i1 %exitcond.not, label %for.body12.for.end17_crit_edge, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12

for.body12.for.end17_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end17

for.end17:                                        ; preds = %for.body12.for.end17_crit_edge, %for.cond9.preheader.for.end17_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !76, !78, !80, !82, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124, !125, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154}
!llvm.named.register.sp = !{!155}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @coda_jpeg_write_tables.huff, !1, !"huff", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 218, i32 39}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 286, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @coda_jpeg_decode_header._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @coda_jpeg_decode_header._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 295, i32 3}
!10 = !{ptr @coda_jpeg_decode_header._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @coda_jpeg_decode_header._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 303, i32 3}
!14 = !{ptr @coda_jpeg_decode_header._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @coda_jpeg_decode_header._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 310, i32 3}
!18 = !{ptr @coda_jpeg_decode_header._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @coda_jpeg_decode_header._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 318, i32 3}
!22 = !{ptr @coda_jpeg_decode_header._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @coda_jpeg_decode_header._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 326, i32 4}
!26 = !{ptr @coda_jpeg_decode_header._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @coda_jpeg_decode_header._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 342, i32 4}
!30 = !{ptr @coda_jpeg_decode_header._entry.18, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @coda_jpeg_decode_header._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 349, i32 4}
!34 = !{ptr @coda_jpeg_decode_header._entry.21, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @coda_jpeg_decode_header._entry_ptr.23, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.25, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 401, i32 3}
!38 = !{ptr @coda_jpeg_decode_header._entry.24, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @coda_jpeg_decode_header._entry_ptr.26, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @coda9_jpeg_encode_ops, !41, !"coda9_jpeg_encode_ops", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1292, i32 31}
!42 = !{ptr @coda9_jpeg_decode_ops, !43, !"coda9_jpeg_decode_ops", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1497, i32 31}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1518, i32 3}
!46 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @coda9_jpeg_irq_handler._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @coda9_jpeg_irq_handler._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1521, i32 3}
!51 = !{ptr @coda9_jpeg_irq_handler._entry.29, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @coda9_jpeg_irq_handler._entry_ptr.31, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1524, i32 3}
!55 = !{ptr @coda9_jpeg_irq_handler._entry.32, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @coda9_jpeg_irq_handler._entry_ptr.34, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1528, i32 4}
!59 = !{ptr @coda9_jpeg_irq_handler._entry.35, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @coda9_jpeg_irq_handler._entry_ptr.37, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.39, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1537, i32 3}
!63 = !{ptr @coda9_jpeg_irq_handler._entry.38, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @coda9_jpeg_irq_handler._entry_ptr.40, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @luma_dc, !66, !"luma_dc", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 62, i32 28}
!67 = !{ptr @luma_ac, !68, !"luma_ac", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 80, i32 28}
!69 = !{ptr @chroma_dc, !70, !"chroma_dc", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 71, i32 28}
!71 = !{ptr @chroma_ac, !72, !"chroma_ac", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 108, i32 28}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!75 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @luma_q, !77, !"luma_q", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 141, i32 22}
!78 = !{ptr @chroma_q, !79, !"chroma_q", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 152, i32 22}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1052, i32 3}
!82 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @coda9_jpeg_start_encoding._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @coda9_jpeg_start_encoding._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @coda9_jpeg_gen_enc_huff_tab.huff_tabs, !86, !"huff_tabs", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 591, i32 30}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1106, i32 3}
!89 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @coda9_jpeg_prepare_encode._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @coda9_jpeg_prepare_encode._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1174, i32 4}
!94 = !{ptr @coda9_jpeg_prepare_encode._entry.46, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @coda9_jpeg_prepare_encode._entry_ptr.48, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @width_align, !97, !"width_align", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 163, i32 28}
!98 = !{ptr @height_align, !99, !"height_align", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 171, i32 28}
!100 = !{ptr @coda9_jpeg_encode_header.subsampling, !101, !"subsampling", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 955, i32 24}
!102 = !{ptr @bus_req_num, !103, !"bus_req_num", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 553, i32 18}
!104 = !{ptr @mcu_info, !105, !"mcu_info", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 568, i32 18}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/coda/trace.h", i32 157, i32 1}
!108 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!109 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!110 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!111 = distinct !{null, !112, !"__already_done", i1 false, i1 false}
!112 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!113 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1234, i32 3}
!116 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @coda9_jpeg_finish_encode._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @coda9_jpeg_finish_encode._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1249, i32 2}
!121 = !{ptr @coda9_jpeg_finish_encode._entry.54, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @coda9_jpeg_finish_encode._entry_ptr.56, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/coda/trace.h", i32 162, i32 1}
!127 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1270, i32 3}
!130 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @coda9_jpeg_encode_timeout._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @coda9_jpeg_encode_timeout._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1350, i32 3}
!135 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @coda9_jpeg_prepare_decode._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @coda9_jpeg_prepare_decode._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1366, i32 3}
!140 = !{ptr @coda9_jpeg_prepare_decode._entry.63, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @coda9_jpeg_prepare_decode._entry_ptr.65, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1397, i32 4}
!144 = !{ptr @coda9_jpeg_prepare_decode._entry.66, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @coda9_jpeg_prepare_decode._entry_ptr.68, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1454, i32 3}
!148 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @coda9_jpeg_finish_decode._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @coda9_jpeg_finish_decode._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/coda/coda-jpeg.c", i32 1485, i32 2}
!153 = !{ptr @coda9_jpeg_finish_decode._entry.71, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @coda9_jpeg_finish_decode._entry_ptr.73, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{!"sp"}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{!"branch_weights", i32 2000, i32 1}
!166 = !{i64 2148746920, i64 2148746925, i64 2148746938, i64 2148746982, i64 2148747016, i64 2148747037}
!167 = !{i64 2156712624}
!168 = !{i64 2156712829}
!169 = !{i64 2150054792}
!170 = !{i64 2150055828}
!171 = !{i64 2156729051}
!172 = !{i64 2156729258}
