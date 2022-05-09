; ModuleID = '/llk/IR_all_yes/drivers/staging/media/rkvdec/rkvdec-h264.c_pt.bc'
source_filename = "../drivers/staging/media/rkvdec/rkvdec-h264.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rkvdec_coded_fmt_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.rkvdec_ctx = type { %struct.v4l2_fh, %struct.v4l2_format, %struct.v4l2_format, ptr, %struct.v4l2_ctrl_handler, ptr, ptr }
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
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rkvdec_dev = type { %struct.v4l2_device, %struct.media_device, %struct.video_device, ptr, ptr, ptr, ptr, %struct.mutex, %struct.delayed_work }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rkvdec_aux_buf = type { ptr, i32, i32 }
%struct.v4l2_h264_reflist_builder = type { [16 x %struct.anon.120], i32, [16 x i8], i8 }
%struct.anon.120 = type { i32, i32, i32, i8 }
%struct.rkvdec_h264_run = type { %struct.rkvdec_run, ptr, ptr, ptr, ptr }
%struct.rkvdec_run = type { %struct.anon.121 }
%struct.anon.121 = type { ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.87, %union.anon.88, i32, ptr, i32, %struct.anon.89, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.87 = type { i64 }
%union.anon.88 = type { ptr }
%struct.anon.89 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.rkvdec_h264_ctx = type { %struct.rkvdec_aux_buf, %struct.rkvdec_h264_reflists }
%struct.rkvdec_h264_reflists = type { [16 x i8], [16 x i8], [16 x i8], i8 }
%struct.v4l2_ctrl_h264_pps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.rkvdec_h264_priv_tbl = type { [4 x [464 x [2 x i8]]], %struct.rkvdec_h264_scaling_list, [64 x i32], [256 x %struct.rkvdec_sps_pps_packet], [147456 x i8] }
%struct.rkvdec_h264_scaling_list = type { [6 x [16 x i8]], [6 x [64 x i8]], [128 x i8] }
%struct.rkvdec_sps_pps_packet = type { [8 x i32] }
%struct.v4l2_ctrl_h264_scaling_matrix = type { [6 x [16 x i8]], [6 x [64 x i8]] }
%struct.v4l2_ctrl_h264_sps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [255 x i32], i32, i32, i16, i16, i32 }
%struct.v4l2_h264_dpb_entry = type { i64, i32, i16, i8, [5 x i8], i32, i32, i32 }
%struct.v4l2_ctrl_h264_decode_params = type { [16 x %struct.v4l2_h264_dpb_entry], i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }

@rkvdec_h264_fmt_ops = dso_local constant { %struct.rkvdec_coded_fmt_ops, [44 x i8] } { %struct.rkvdec_coded_fmt_ops { ptr @rkvdec_h264_adjust_fmt, ptr @rkvdec_h264_start, ptr @rkvdec_h264_stop, ptr @rkvdec_h264_run, ptr null }, [44 x i8] zeroinitializer }, align 32
@rkvdec_h264_cabac_table = internal constant { [4 x [464 x [2 x i8]]], [928 x i8] } { [4 x [464 x [2 x i8]]] [[464 x [2 x i8]] [[2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\E4\7F", [2 x i8] c"\E9h", [2 x i8] c"\FA5", [2 x i8] c"\FF6", [2 x i8] c"\073", [2 x i8] c"\17!", [2 x i8] c"\17\02", [2 x i8] c"\15\00", [2 x i8] c"\01\09", [2 x i8] c"\001", [2 x i8] c"\DBv", [2 x i8] c"\059", [2 x i8] c"\F3N", [2 x i8] c"\F5A", [2 x i8] c"\01>", [2 x i8] c"\0C1", [2 x i8] c"\FCI", [2 x i8] c"\112", [2 x i8] c"\12@", [2 x i8] c"\09+", [2 x i8] c"\1D\00", [2 x i8] c"\1AC", [2 x i8] c"\10Z", [2 x i8] c"\09h", [2 x i8] c"\D2\7F", [2 x i8] c"\ECh", [2 x i8] c"\01C", [2 x i8] c"\F3N", [2 x i8] c"\F5A", [2 x i8] c"\01>", [2 x i8] c"\FAV", [2 x i8] c"\EF_", [2 x i8] c"\FA=", [2 x i8] c"\09-", [2 x i8] c"\FDE", [2 x i8] c"\FAQ", [2 x i8] c"\F5`", [2 x i8] c"\067", [2 x i8] c"\07C", [2 x i8] c"\FBV", [2 x i8] c"\02X", [2 x i8] c"\00:", [2 x i8] c"\FDL", [2 x i8] c"\F6^", [2 x i8] c"\056", [2 x i8] c"\04E", [2 x i8] c"\FDQ", [2 x i8] c"\00X", [2 x i8] c"\F9C", [2 x i8] c"\FBJ", [2 x i8] c"\FCJ", [2 x i8] c"\FBP", [2 x i8] c"\F9H", [2 x i8] c"\01:", [2 x i8] c"\00)", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\F7S", [2 x i8] c"\04V", [2 x i8] c"\00a", [2 x i8] c"\F9H", [2 x i8] c"\0D)", [2 x i8] c"\03>", [2 x i8] c"\00-", [2 x i8] c"\FCN", [2 x i8] c"\FD`", [2 x i8] c"\E5~", [2 x i8] c"\E4b", [2 x i8] c"\E7e", [2 x i8] c"\E9C", [2 x i8] c"\E4R", [2 x i8] c"\EC^", [2 x i8] c"\F0S", [2 x i8] c"\EAn", [2 x i8] c"\EB[", [2 x i8] c"\EEf", [2 x i8] c"\F3]", [2 x i8] c"\E3\7F", [2 x i8] c"\F9\\", [2 x i8] c"\FBY", [2 x i8] c"\F9`", [2 x i8] c"\F3l", [2 x i8] c"\FD.", [2 x i8] c"\FFA", [2 x i8] c"\FF9", [2 x i8] c"\F7]", [2 x i8] c"\FDJ", [2 x i8] c"\F7\\", [2 x i8] c"\F8W", [2 x i8] c"\E9~", [2 x i8] c"\056", [2 x i8] c"\06<", [2 x i8] c"\06;", [2 x i8] c"\06E", [2 x i8] c"\FF0", [2 x i8] c"\00D", [2 x i8] c"\FCE", [2 x i8] c"\F8X", [2 x i8] c"\FEU", [2 x i8] c"\FAN", [2 x i8] c"\FFK", [2 x i8] c"\F9M", [2 x i8] c"\026", [2 x i8] c"\052", [2 x i8] c"\FDD", [2 x i8] c"\012", [2 x i8] c"\06*", [2 x i8] c"\FCQ", [2 x i8] c"\01?", [2 x i8] c"\FCF", [2 x i8] c"\00C", [2 x i8] c"\029", [2 x i8] c"\FEL", [2 x i8] c"\0B#", [2 x i8] c"\04@", [2 x i8] c"\01=", [2 x i8] c"\0B#", [2 x i8] c"\12\19", [2 x i8] c"\0C\18", [2 x i8] c"\0D\1D", [2 x i8] c"\0D$", [2 x i8] c"\F6]", [2 x i8] c"\F9I", [2 x i8] c"\FEI", [2 x i8] c"\0D.", [2 x i8] c"\091", [2 x i8] c"\F9d", [2 x i8] c"\095", [2 x i8] c"\025", [2 x i8] c"\055", [2 x i8] c"\FE=", [2 x i8] c"\008", [2 x i8] c"\008", [2 x i8] c"\F3?", [2 x i8] c"\FB<", [2 x i8] c"\FF>", [2 x i8] c"\049", [2 x i8] c"\FAE", [2 x i8] c"\049", [2 x i8] c"\0E'", [2 x i8] c"\043", [2 x i8] c"\0DD", [2 x i8] c"\03@", [2 x i8] c"\01=", [2 x i8] c"\09?", [2 x i8] c"\072", [2 x i8] c"\10'", [2 x i8] c"\05,", [2 x i8] c"\044", [2 x i8] c"\0B0", [2 x i8] c"\FB<", [2 x i8] c"\FF;", [2 x i8] c"\00;", [2 x i8] c"\16!", [2 x i8] c"\05,", [2 x i8] c"\0E+", [2 x i8] c"\FFN", [2 x i8] c"\00<", [2 x i8] c"\09E", [2 x i8] c"\0B\1C", [2 x i8] c"\02(", [2 x i8] c"\03,", [2 x i8] c"\001", [2 x i8] c"\00.", [2 x i8] c"\02,", [2 x i8] c"\023", [2 x i8] c"\00/", [2 x i8] c"\04'", [2 x i8] c"\02>", [2 x i8] c"\06.", [2 x i8] c"\006", [2 x i8] c"\036", [2 x i8] c"\02:", [2 x i8] c"\04?", [2 x i8] c"\063", [2 x i8] c"\069", [2 x i8] c"\075", [2 x i8] c"\064", [2 x i8] c"\067", [2 x i8] c"\0B-", [2 x i8] c"\0E$", [2 x i8] c"\085", [2 x i8] c"\FFR", [2 x i8] c"\077", [2 x i8] c"\FDN", [2 x i8] c"\0F.", [2 x i8] c"\16\1F", [2 x i8] c"\FFT", [2 x i8] c"\19\07", [2 x i8] c"\1E\F9", [2 x i8] c"\1C\03", [2 x i8] c"\1C\04", [2 x i8] c" \00", [2 x i8] c"\22\FF", [2 x i8] c"\1E\06", [2 x i8] c"\1E\06", [2 x i8] c" \09", [2 x i8] c"\1F\13", [2 x i8] c"\1A\1B", [2 x i8] c"\1A\1E", [2 x i8] c"%\14", [2 x i8] c"\1C\22", [2 x i8] c"\11F", [2 x i8] c"\01C", [2 x i8] c"\05;", [2 x i8] c"\09C", [2 x i8] c"\10\1E", [2 x i8] c"\12 ", [2 x i8] c"\12#", [2 x i8] c"\16\1D", [2 x i8] c"\18\1F", [2 x i8] c"\17&", [2 x i8] c"\12+", [2 x i8] c"\14)", [2 x i8] c"\0B?", [2 x i8] c"\09;", [2 x i8] c"\09@", [2 x i8] c"\FF^", [2 x i8] c"\FEY", [2 x i8] c"\F7l", [2 x i8] c"\FAL", [2 x i8] c"\FE,", [2 x i8] c"\00-", [2 x i8] c"\004", [2 x i8] c"\FD@", [2 x i8] c"\FE;", [2 x i8] c"\FCF", [2 x i8] c"\FCK", [2 x i8] c"\F8R", [2 x i8] c"\EFf", [2 x i8] c"\F7M", [2 x i8] c"\03\18", [2 x i8] c"\00*", [2 x i8] c"\000", [2 x i8] c"\007", [2 x i8] c"\FA;", [2 x i8] c"\F9G", [2 x i8] c"\F4S", [2 x i8] c"\F5W", [2 x i8] c"\E2w", [2 x i8] c"\01:", [2 x i8] c"\FD\1D", [2 x i8] c"\FF$", [2 x i8] c"\01&", [2 x i8] c"\02+", [2 x i8] c"\FA7", [2 x i8] c"\00:", [2 x i8] c"\00@", [2 x i8] c"\FDJ", [2 x i8] c"\F6Z", [2 x i8] c"\00F", [2 x i8] c"\FC\1D", [2 x i8] c"\05\1F", [2 x i8] c"\07*", [2 x i8] c"\01;", [2 x i8] c"\FE:", [2 x i8] c"\FDH", [2 x i8] c"\FDQ", [2 x i8] c"\F5a", [2 x i8] c"\00:", [2 x i8] c"\08\05", [2 x i8] c"\0A\0E", [2 x i8] c"\0E\12", [2 x i8] c"\0D\1B", [2 x i8] c"\02(", [2 x i8] c"\00:", [2 x i8] c"\FDF", [2 x i8] c"\FAO", [2 x i8] c"\F8U", [2 x i8] zeroinitializer, [2 x i8] c"\F3j", [2 x i8] c"\F0j", [2 x i8] c"\F6W", [2 x i8] c"\EBr", [2 x i8] c"\EEn", [2 x i8] c"\F2b", [2 x i8] c"\EAn", [2 x i8] c"\EBj", [2 x i8] c"\EEg", [2 x i8] c"\EBk", [2 x i8] c"\E9l", [2 x i8] c"\E6p", [2 x i8] c"\F6`", [2 x i8] c"\F4_", [2 x i8] c"\FB[", [2 x i8] c"\F7]", [2 x i8] c"\EA^", [2 x i8] c"\FBV", [2 x i8] c"\09C", [2 x i8] c"\FCP", [2 x i8] c"\F6U", [2 x i8] c"\FFF", [2 x i8] c"\07<", [2 x i8] c"\09:", [2 x i8] c"\05=", [2 x i8] c"\0C2", [2 x i8] c"\0F2", [2 x i8] c"\121", [2 x i8] c"\116", [2 x i8] c"\0A)", [2 x i8] c"\07.", [2 x i8] c"\FF3", [2 x i8] c"\071", [2 x i8] c"\084", [2 x i8] c"\09)", [2 x i8] c"\06/", [2 x i8] c"\027", [2 x i8] c"\0D)", [2 x i8] c"\0A,", [2 x i8] c"\062", [2 x i8] c"\055", [2 x i8] c"\0D1", [2 x i8] c"\04?", [2 x i8] c"\06@", [2 x i8] c"\FEE", [2 x i8] c"\FE;", [2 x i8] c"\06F", [2 x i8] c"\0A,", [2 x i8] c"\09\1F", [2 x i8] c"\0C+", [2 x i8] c"\035", [2 x i8] c"\0E\22", [2 x i8] c"\0A&", [2 x i8] c"\FD4", [2 x i8] c"\0D(", [2 x i8] c"\11 ", [2 x i8] c"\07,", [2 x i8] c"\07&", [2 x i8] c"\0D2", [2 x i8] c"\0A9", [2 x i8] c"\1A+", [2 x i8] c"\0E\0B", [2 x i8] c"\0B\0E", [2 x i8] c"\09\0B", [2 x i8] c"\12\0B", [2 x i8] c"\15\09", [2 x i8] c"\17\FE", [2 x i8] c" \F1", [2 x i8] c" \F1", [2 x i8] c"\22\EB", [2 x i8] c"'\E9", [2 x i8] c"*\DF", [2 x i8] c")\E1", [2 x i8] c".\E4", [2 x i8] c"&\F4", [2 x i8] c"\15\1D", [2 x i8] c"-\E8", [2 x i8] c"5\D3", [2 x i8] c"0\E6", [2 x i8] c"A\D5", [2 x i8] c"+\ED", [2 x i8] c"'\F6", [2 x i8] c"\1E\09", [2 x i8] c"\12\1A", [2 x i8] c"\14\1B", [2 x i8] c"\009", [2 x i8] c"\F2R", [2 x i8] c"\FBK", [2 x i8] c"\EDa", [2 x i8] c"\DD}", [2 x i8] c"\1B\00", [2 x i8] c"\1C\00", [2 x i8] c"\1F\FC", [2 x i8] c"\1B\06", [2 x i8] c"\22\08", [2 x i8] c"\1E\0A", [2 x i8] c"\18\16", [2 x i8] c"!\13", [2 x i8] c"\16 ", [2 x i8] c"\1A\1F", [2 x i8] c"\15)", [2 x i8] c"\1A,", [2 x i8] c"\17/", [2 x i8] c"\10A", [2 x i8] c"\0EG", [2 x i8] c"\08<", [2 x i8] c"\06?", [2 x i8] c"\11A", [2 x i8] c"\15\18", [2 x i8] c"\17\14", [2 x i8] c"\1A\17", [2 x i8] c"\1B ", [2 x i8] c"\1C\17", [2 x i8] c"\1C\18", [2 x i8] c"\17(", [2 x i8] c"\18 ", [2 x i8] c"\1C\1D", [2 x i8] c"\17*", [2 x i8] c"\139", [2 x i8] c"\165", [2 x i8] c"\16=", [2 x i8] c"\0BV", [2 x i8] c"\0C(", [2 x i8] c"\0B3", [2 x i8] c"\0E;", [2 x i8] c"\FCO", [2 x i8] c"\F9G", [2 x i8] c"\FBE", [2 x i8] c"\F7F", [2 x i8] c"\F8B", [2 x i8] c"\F6D", [2 x i8] c"\EDI", [2 x i8] c"\F4E", [2 x i8] c"\F0F", [2 x i8] c"\F1C", [2 x i8] c"\EC>", [2 x i8] c"\EDF", [2 x i8] c"\F0B", [2 x i8] c"\EAA", [2 x i8] c"\EC?", [2 x i8] c"\09\FE", [2 x i8] c"\1A\F7", [2 x i8] c"!\F7", [2 x i8] c"'\F9", [2 x i8] c")\FE", [2 x i8] c"-\03", [2 x i8] c"1\09", [2 x i8] c"-\1B", [2 x i8] c"$;", [2 x i8] c"\FAB", [2 x i8] c"\F9#", [2 x i8] c"\F9*", [2 x i8] c"\F8-", [2 x i8] c"\FB0", [2 x i8] c"\F48", [2 x i8] c"\FA<", [2 x i8] c"\FB>", [2 x i8] c"\F8B", [2 x i8] c"\F8L", [2 x i8] c"\FBU", [2 x i8] c"\FAQ", [2 x i8] c"\F6M", [2 x i8] c"\F9Q", [2 x i8] c"\EFP", [2 x i8] c"\EEI", [2 x i8] c"\FCJ", [2 x i8] c"\F6S", [2 x i8] c"\F7G", [2 x i8] c"\F7C", [2 x i8] c"\FF=", [2 x i8] c"\F8B", [2 x i8] c"\F2B", [2 x i8] c"\00;", [2 x i8] c"\02;", [2 x i8] c"\15\F3", [2 x i8] c"!\F2", [2 x i8] c"'\F9", [2 x i8] c".\FE", [2 x i8] c"3\02", [2 x i8] c"<\06", [2 x i8] c"=\11", [2 x i8] c"7\22", [2 x i8] c"*>", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [464 x [2 x i8]] [[2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\E4\7F", [2 x i8] c"\E9h", [2 x i8] c"\FA5", [2 x i8] c"\FF6", [2 x i8] c"\073", [2 x i8] c"\16\19", [2 x i8] c"\22\00", [2 x i8] c"\10\00", [2 x i8] c"\FE\09", [2 x i8] c"\04)", [2 x i8] c"\E3v", [2 x i8] c"\02A", [2 x i8] c"\FAG", [2 x i8] c"\F3O", [2 x i8] c"\054", [2 x i8] c"\092", [2 x i8] c"\FDF", [2 x i8] c"\0A6", [2 x i8] c"\1A\22", [2 x i8] c"\13\16", [2 x i8] c"(\00", [2 x i8] c"9\02", [2 x i8] c")$", [2 x i8] c"\1AE", [2 x i8] c"\D3\7F", [2 x i8] c"\F1e", [2 x i8] c"\FCL", [2 x i8] c"\FAG", [2 x i8] c"\F3O", [2 x i8] c"\054", [2 x i8] c"\06E", [2 x i8] c"\F3Z", [2 x i8] c"\004", [2 x i8] c"\08+", [2 x i8] c"\FEE", [2 x i8] c"\FBR", [2 x i8] c"\F6`", [2 x i8] c"\02;", [2 x i8] c"\02K", [2 x i8] c"\FDW", [2 x i8] c"\FDd", [2 x i8] c"\018", [2 x i8] c"\FDJ", [2 x i8] c"\FAU", [2 x i8] c"\00;", [2 x i8] c"\FDQ", [2 x i8] c"\F9V", [2 x i8] c"\FB_", [2 x i8] c"\FFB", [2 x i8] c"\FFM", [2 x i8] c"\01F", [2 x i8] c"\FEV", [2 x i8] c"\FBH", [2 x i8] c"\00=", [2 x i8] c"\00)", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\F7S", [2 x i8] c"\04V", [2 x i8] c"\00a", [2 x i8] c"\F9H", [2 x i8] c"\0D)", [2 x i8] c"\03>", [2 x i8] c"\0D\0F", [2 x i8] c"\073", [2 x i8] c"\02P", [2 x i8] c"\D9\7F", [2 x i8] c"\EE[", [2 x i8] c"\EF`", [2 x i8] c"\E6Q", [2 x i8] c"\DDb", [2 x i8] c"\E8f", [2 x i8] c"\E9a", [2 x i8] c"\E5w", [2 x i8] c"\E8c", [2 x i8] c"\EBn", [2 x i8] c"\EEf", [2 x i8] c"\DC\7F", [2 x i8] c"\00P", [2 x i8] c"\FBY", [2 x i8] c"\F9^", [2 x i8] c"\FC\\", [2 x i8] c"\00'", [2 x i8] c"\00A", [2 x i8] c"\F1T", [2 x i8] c"\DD\7F", [2 x i8] c"\FEI", [2 x i8] c"\F4h", [2 x i8] c"\F7[", [2 x i8] c"\E1\7F", [2 x i8] c"\037", [2 x i8] c"\078", [2 x i8] c"\077", [2 x i8] c"\08=", [2 x i8] c"\FD5", [2 x i8] c"\00D", [2 x i8] c"\F9J", [2 x i8] c"\F7X", [2 x i8] c"\F3g", [2 x i8] c"\F3[", [2 x i8] c"\F7Y", [2 x i8] c"\F2\\", [2 x i8] c"\F8L", [2 x i8] c"\F4W", [2 x i8] c"\E9n", [2 x i8] c"\E8i", [2 x i8] c"\F6N", [2 x i8] c"\ECp", [2 x i8] c"\EFc", [2 x i8] c"\B2\7F", [2 x i8] c"\BA\7F", [2 x i8] c"\CE\7F", [2 x i8] c"\D2\7F", [2 x i8] c"\FCB", [2 x i8] c"\FBN", [2 x i8] c"\FCG", [2 x i8] c"\F8H", [2 x i8] c"\02;", [2 x i8] c"\FF7", [2 x i8] c"\F9F", [2 x i8] c"\FAK", [2 x i8] c"\F8Y", [2 x i8] c"\DEw", [2 x i8] c"\FDK", [2 x i8] c" \14", [2 x i8] c"\1E\16", [2 x i8] c"\D4\7F", [2 x i8] c"\006", [2 x i8] c"\FB=", [2 x i8] c"\00:", [2 x i8] c"\FF<", [2 x i8] c"\FD=", [2 x i8] c"\F8C", [2 x i8] c"\E7T", [2 x i8] c"\F2J", [2 x i8] c"\FBA", [2 x i8] c"\054", [2 x i8] c"\029", [2 x i8] c"\00=", [2 x i8] c"\F7E", [2 x i8] c"\F5F", [2 x i8] c"\127", [2 x i8] c"\FCG", [2 x i8] c"\00:", [2 x i8] c"\07=", [2 x i8] c"\09)", [2 x i8] c"\12\19", [2 x i8] c"\09 ", [2 x i8] c"\05+", [2 x i8] c"\09/", [2 x i8] c"\00,", [2 x i8] c"\003", [2 x i8] c"\02.", [2 x i8] c"\13&", [2 x i8] c"\FCB", [2 x i8] c"\0F&", [2 x i8] c"\0C*", [2 x i8] c"\09\22", [2 x i8] c"\00Y", [2 x i8] c"\04-", [2 x i8] c"\0A\1C", [2 x i8] c"\0A\1F", [2 x i8] c"!\F5", [2 x i8] c"4\D5", [2 x i8] c"\12\0F", [2 x i8] c"\1C\00", [2 x i8] c"#\EA", [2 x i8] c"&\E7", [2 x i8] c"\22\00", [2 x i8] c"'\EE", [2 x i8] c" \F4", [2 x i8] c"f\A2", [2 x i8] zeroinitializer, [2 x i8] c"8\F1", [2 x i8] c"!\FC", [2 x i8] c"\1D\0A", [2 x i8] c"%\FB", [2 x i8] c"3\E3", [2 x i8] c"'\F7", [2 x i8] c"4\DE", [2 x i8] c"E\C6", [2 x i8] c"C\C1", [2 x i8] c",\FB", [2 x i8] c" \07", [2 x i8] c"7\E3", [2 x i8] c" \01", [2 x i8] zeroinitializer, [2 x i8] c"\1B$", [2 x i8] c"!\E7", [2 x i8] c"\22\E2", [2 x i8] c"$\E4", [2 x i8] c"&\E4", [2 x i8] c"&\E5", [2 x i8] c"\22\EE", [2 x i8] c"#\F0", [2 x i8] c"\22\F2", [2 x i8] c" \F8", [2 x i8] c"%\FA", [2 x i8] c"#\00", [2 x i8] c"\1E\0A", [2 x i8] c"\1C\12", [2 x i8] c"\1A\19", [2 x i8] c"\1D)", [2 x i8] c"\00K", [2 x i8] c"\02H", [2 x i8] c"\08M", [2 x i8] c"\0E#", [2 x i8] c"\12\1F", [2 x i8] c"\11#", [2 x i8] c"\15\1E", [2 x i8] c"\11-", [2 x i8] c"\14*", [2 x i8] c"\12-", [2 x i8] c"\1B\1A", [2 x i8] c"\106", [2 x i8] c"\07B", [2 x i8] c"\108", [2 x i8] c"\0BI", [2 x i8] c"\0AC", [2 x i8] c"\F6t", [2 x i8] c"\E9p", [2 x i8] c"\F1G", [2 x i8] c"\F9=", [2 x i8] c"\005", [2 x i8] c"\FBB", [2 x i8] c"\F5M", [2 x i8] c"\F7P", [2 x i8] c"\F7T", [2 x i8] c"\F6W", [2 x i8] c"\DE\7F", [2 x i8] c"\EBe", [2 x i8] c"\FD'", [2 x i8] c"\FB5", [2 x i8] c"\F9=", [2 x i8] c"\F5K", [2 x i8] c"\F1M", [2 x i8] c"\EF[", [2 x i8] c"\E7k", [2 x i8] c"\E7o", [2 x i8] c"\E4z", [2 x i8] c"\F5L", [2 x i8] c"\F6,", [2 x i8] c"\F64", [2 x i8] c"\F69", [2 x i8] c"\F7:", [2 x i8] c"\F0H", [2 x i8] c"\F9E", [2 x i8] c"\FCE", [2 x i8] c"\FBJ", [2 x i8] c"\F7V", [2 x i8] c"\02B", [2 x i8] c"\F7\22", [2 x i8] c"\01 ", [2 x i8] c"\0B\1F", [2 x i8] c"\054", [2 x i8] c"\FE7", [2 x i8] c"\FEC", [2 x i8] c"\00I", [2 x i8] c"\F8Y", [2 x i8] c"\034", [2 x i8] c"\07\04", [2 x i8] c"\0A\08", [2 x i8] c"\11\08", [2 x i8] c"\10\13", [2 x i8] c"\03%", [2 x i8] c"\FF=", [2 x i8] c"\FBI", [2 x i8] c"\FFF", [2 x i8] c"\FCN", [2 x i8] zeroinitializer, [2 x i8] c"\EB~", [2 x i8] c"\E9|", [2 x i8] c"\ECn", [2 x i8] c"\E6~", [2 x i8] c"\E7|", [2 x i8] c"\EFi", [2 x i8] c"\E5y", [2 x i8] c"\E5u", [2 x i8] c"\EFf", [2 x i8] c"\E6u", [2 x i8] c"\E5t", [2 x i8] c"\DFz", [2 x i8] c"\F6_", [2 x i8] c"\F2d", [2 x i8] c"\F8_", [2 x i8] c"\EFo", [2 x i8] c"\E4r", [2 x i8] c"\FAY", [2 x i8] c"\FEP", [2 x i8] c"\FCR", [2 x i8] c"\F7U", [2 x i8] c"\F8Q", [2 x i8] c"\FFH", [2 x i8] c"\05@", [2 x i8] c"\01C", [2 x i8] c"\098", [2 x i8] c"\00E", [2 x i8] c"\01E", [2 x i8] c"\07E", [2 x i8] c"\F9E", [2 x i8] c"\FAC", [2 x i8] c"\F0M", [2 x i8] c"\FE@", [2 x i8] c"\02=", [2 x i8] c"\FAC", [2 x i8] c"\FD@", [2 x i8] c"\029", [2 x i8] c"\FDA", [2 x i8] c"\FDB", [2 x i8] c"\00>", [2 x i8] c"\093", [2 x i8] c"\FFB", [2 x i8] c"\FEG", [2 x i8] c"\FEK", [2 x i8] c"\FFF", [2 x i8] c"\F7H", [2 x i8] c"\0E<", [2 x i8] c"\10%", [2 x i8] c"\00/", [2 x i8] c"\12#", [2 x i8] c"\0B%", [2 x i8] c"\0C)", [2 x i8] c"\0A)", [2 x i8] c"\020", [2 x i8] c"\0C)", [2 x i8] c"\0D)", [2 x i8] c"\00;", [2 x i8] c"\032", [2 x i8] c"\13(", [2 x i8] c"\03B", [2 x i8] c"\122", [2 x i8] c"\13\FA", [2 x i8] c"\12\FA", [2 x i8] c"\0E\00", [2 x i8] c"\1A\F4", [2 x i8] c"\1F\F0", [2 x i8] c"!\E7", [2 x i8] c"!\EA", [2 x i8] c"%\E4", [2 x i8] c"'\E2", [2 x i8] c"*\E2", [2 x i8] c"/\D6", [2 x i8] c"-\DC", [2 x i8] c"1\DE", [2 x i8] c")\EF", [2 x i8] c" \09", [2 x i8] c"E\B9", [2 x i8] c"?\C1", [2 x i8] c"B\C0", [2 x i8] c"M\B6", [2 x i8] c"6\D9", [2 x i8] c"4\DD", [2 x i8] c")\F6", [2 x i8] c"$\00", [2 x i8] c"(\FF", [2 x i8] c"\1E\0E", [2 x i8] c"\1C\1A", [2 x i8] c"\17%", [2 x i8] c"\0C7", [2 x i8] c"\0BA", [2 x i8] c"%\DF", [2 x i8] c"'\DC", [2 x i8] c"(\DB", [2 x i8] c"&\E2", [2 x i8] c".\DF", [2 x i8] c"*\E2", [2 x i8] c"(\E8", [2 x i8] c"1\E3", [2 x i8] c"&\F4", [2 x i8] c"(\F6", [2 x i8] c"&\FD", [2 x i8] c".\FB", [2 x i8] c"\1F\14", [2 x i8] c"\1D\1E", [2 x i8] c"\19,", [2 x i8] c"\0C0", [2 x i8] c"\0B1", [2 x i8] c"\1A-", [2 x i8] c"\16\16", [2 x i8] c"\17\16", [2 x i8] c"\1B\15", [2 x i8] c"!\14", [2 x i8] c"\1A\1C", [2 x i8] c"\1E\18", [2 x i8] c"\1B\22", [2 x i8] c"\12*", [2 x i8] c"\19'", [2 x i8] c"\122", [2 x i8] c"\0CF", [2 x i8] c"\156", [2 x i8] c"\0EG", [2 x i8] c"\0BS", [2 x i8] c"\19 ", [2 x i8] c"\151", [2 x i8] c"\156", [2 x i8] c"\FBU", [2 x i8] c"\FAQ", [2 x i8] c"\F6M", [2 x i8] c"\F9Q", [2 x i8] c"\EFP", [2 x i8] c"\EEI", [2 x i8] c"\FCJ", [2 x i8] c"\F6S", [2 x i8] c"\F7G", [2 x i8] c"\F7C", [2 x i8] c"\FF=", [2 x i8] c"\F8B", [2 x i8] c"\F2B", [2 x i8] c"\00;", [2 x i8] c"\02;", [2 x i8] c"\11\F6", [2 x i8] c" \F3", [2 x i8] c"*\F7", [2 x i8] c"1\FB", [2 x i8] c"5\00", [2 x i8] c"@\03", [2 x i8] c"D\0A", [2 x i8] c"B\1B", [2 x i8] c"/9", [2 x i8] c"\FBG", [2 x i8] c"\00\18", [2 x i8] c"\FF$", [2 x i8] c"\FE*", [2 x i8] c"\FE4", [2 x i8] c"\F79", [2 x i8] c"\FA?", [2 x i8] c"\FCA", [2 x i8] c"\FCC", [2 x i8] c"\F9R", [2 x i8] c"\FDQ", [2 x i8] c"\FDL", [2 x i8] c"\F9H", [2 x i8] c"\FAN", [2 x i8] c"\F4H", [2 x i8] c"\F2D", [2 x i8] c"\FDF", [2 x i8] c"\FAL", [2 x i8] c"\FBB", [2 x i8] c"\FB>", [2 x i8] c"\009", [2 x i8] c"\FC=", [2 x i8] c"\F7<", [2 x i8] c"\016", [2 x i8] c"\02:", [2 x i8] c"\11\F6", [2 x i8] c" \F3", [2 x i8] c"*\F7", [2 x i8] c"1\FB", [2 x i8] c"5\00", [2 x i8] c"@\03", [2 x i8] c"D\0A", [2 x i8] c"B\1B", [2 x i8] c"/9", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [464 x [2 x i8]] [[2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\E4\7F", [2 x i8] c"\E9h", [2 x i8] c"\FA5", [2 x i8] c"\FF6", [2 x i8] c"\073", [2 x i8] c"\1D\10", [2 x i8] c"\19\00", [2 x i8] c"\0E\00", [2 x i8] c"\F63", [2 x i8] c"\FD>", [2 x i8] c"\E5c", [2 x i8] c"\1A\10", [2 x i8] c"\FCU", [2 x i8] c"\E8f", [2 x i8] c"\059", [2 x i8] c"\069", [2 x i8] c"\EFI", [2 x i8] c"\0E9", [2 x i8] c"\14(", [2 x i8] c"\14\0A", [2 x i8] c"\1D\00", [2 x i8] c"6\00", [2 x i8] c"%*", [2 x i8] c"\0Ca", [2 x i8] c"\E0\7F", [2 x i8] c"\EAu", [2 x i8] c"\FEJ", [2 x i8] c"\FCU", [2 x i8] c"\E8f", [2 x i8] c"\059", [2 x i8] c"\FA]", [2 x i8] c"\F2X", [2 x i8] c"\FA,", [2 x i8] c"\047", [2 x i8] c"\F5Y", [2 x i8] c"\F1g", [2 x i8] c"\EBt", [2 x i8] c"\139", [2 x i8] c"\14:", [2 x i8] c"\04T", [2 x i8] c"\06`", [2 x i8] c"\01?", [2 x i8] c"\FBU", [2 x i8] c"\F3j", [2 x i8] c"\05?", [2 x i8] c"\06K", [2 x i8] c"\FDZ", [2 x i8] c"\FFe", [2 x i8] c"\037", [2 x i8] c"\FCO", [2 x i8] c"\FEK", [2 x i8] c"\F4a", [2 x i8] c"\F92", [2 x i8] c"\01<", [2 x i8] c"\00)", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\F7S", [2 x i8] c"\04V", [2 x i8] c"\00a", [2 x i8] c"\F9H", [2 x i8] c"\0D)", [2 x i8] c"\03>", [2 x i8] c"\07\22", [2 x i8] c"\F7X", [2 x i8] c"\EC\7F", [2 x i8] c"\DC\7F", [2 x i8] c"\EF[", [2 x i8] c"\F2_", [2 x i8] c"\E7T", [2 x i8] c"\E7V", [2 x i8] c"\F4Y", [2 x i8] c"\EF[", [2 x i8] c"\E1\7F", [2 x i8] c"\F2L", [2 x i8] c"\EEg", [2 x i8] c"\F3Z", [2 x i8] c"\DB\7F", [2 x i8] c"\0BP", [2 x i8] c"\05L", [2 x i8] c"\02T", [2 x i8] c"\05N", [2 x i8] c"\FA7", [2 x i8] c"\04=", [2 x i8] c"\F2S", [2 x i8] c"\DB\7F", [2 x i8] c"\FBO", [2 x i8] c"\F5h", [2 x i8] c"\F5[", [2 x i8] c"\E2\7F", [2 x i8] c"\00A", [2 x i8] c"\FEO", [2 x i8] c"\00H", [2 x i8] c"\FC\\", [2 x i8] c"\FA8", [2 x i8] c"\03D", [2 x i8] c"\F8G", [2 x i8] c"\F3b", [2 x i8] c"\FCV", [2 x i8] c"\F4X", [2 x i8] c"\FBR", [2 x i8] c"\FDH", [2 x i8] c"\FCC", [2 x i8] c"\F8H", [2 x i8] c"\F0Y", [2 x i8] c"\F7E", [2 x i8] c"\FF;", [2 x i8] c"\05B", [2 x i8] c"\049", [2 x i8] c"\FCG", [2 x i8] c"\FEG", [2 x i8] c"\02:", [2 x i8] c"\FFJ", [2 x i8] c"\FC,", [2 x i8] c"\FFE", [2 x i8] c"\00>", [2 x i8] c"\F93", [2 x i8] c"\FC/", [2 x i8] c"\FA*", [2 x i8] c"\FD)", [2 x i8] c"\FA5", [2 x i8] c"\08L", [2 x i8] c"\F7N", [2 x i8] c"\F5S", [2 x i8] c"\094", [2 x i8] c"\00C", [2 x i8] c"\FBZ", [2 x i8] c"\01C", [2 x i8] c"\F1H", [2 x i8] c"\FBK", [2 x i8] c"\F8P", [2 x i8] c"\EBS", [2 x i8] c"\EB@", [2 x i8] c"\F3\1F", [2 x i8] c"\E7@", [2 x i8] c"\E3^", [2 x i8] c"\09K", [2 x i8] c"\11?", [2 x i8] c"\F8J", [2 x i8] c"\FB#", [2 x i8] c"\FE\1B", [2 x i8] c"\0D[", [2 x i8] c"\03A", [2 x i8] c"\F9E", [2 x i8] c"\08M", [2 x i8] c"\F6B", [2 x i8] c"\03>", [2 x i8] c"\FDD", [2 x i8] c"\ECQ", [2 x i8] c"\00\1E", [2 x i8] c"\01\07", [2 x i8] c"\FD\17", [2 x i8] c"\EBJ", [2 x i8] c"\10B", [2 x i8] c"\E9|", [2 x i8] c"\11%", [2 x i8] c",\EE", [2 x i8] c"2\DE", [2 x i8] c"\EA\7F", [2 x i8] c"\04'", [2 x i8] c"\00*", [2 x i8] c"\07\22", [2 x i8] c"\0B\1D", [2 x i8] c"\08\1F", [2 x i8] c"\06%", [2 x i8] c"\07*", [2 x i8] c"\03(", [2 x i8] c"\08!", [2 x i8] c"\0D+", [2 x i8] c"\0D$", [2 x i8] c"\04/", [2 x i8] c"\037", [2 x i8] c"\02:", [2 x i8] c"\06<", [2 x i8] c"\08,", [2 x i8] c"\0B,", [2 x i8] c"\0E*", [2 x i8] c"\070", [2 x i8] c"\048", [2 x i8] c"\044", [2 x i8] c"\0D%", [2 x i8] c"\091", [2 x i8] c"\13:", [2 x i8] c"\0A0", [2 x i8] c"\0C-", [2 x i8] c"\00E", [2 x i8] c"\14!", [2 x i8] c"\08?", [2 x i8] c"#\EE", [2 x i8] c"!\E7", [2 x i8] c"\1C\FD", [2 x i8] c"\18\0A", [2 x i8] c"\1B\00", [2 x i8] c"\22\F2", [2 x i8] c"4\D4", [2 x i8] c"'\E8", [2 x i8] c"\13\11", [2 x i8] c"\1F\19", [2 x i8] c"$\1D", [2 x i8] c"\18!", [2 x i8] c"\22\0F", [2 x i8] c"\1E\14", [2 x i8] c"\16I", [2 x i8] c"\14\22", [2 x i8] c"\13\1F", [2 x i8] c"\1B,", [2 x i8] c"\13\10", [2 x i8] c"\0F$", [2 x i8] c"\0F$", [2 x i8] c"\15\1C", [2 x i8] c"\19\15", [2 x i8] c"\1E\14", [2 x i8] c"\1F\0C", [2 x i8] c"\1B\10", [2 x i8] c"\18*", [2 x i8] c"\00]", [2 x i8] c"\0E8", [2 x i8] c"\0F9", [2 x i8] c"\1A&", [2 x i8] c"\E8\7F", [2 x i8] c"\E8s", [2 x i8] c"\EAR", [2 x i8] c"\F7>", [2 x i8] c"\005", [2 x i8] c"\00;", [2 x i8] c"\F2U", [2 x i8] c"\F3Y", [2 x i8] c"\F3^", [2 x i8] c"\F5\\", [2 x i8] c"\E3\7F", [2 x i8] c"\EBd", [2 x i8] c"\F29", [2 x i8] c"\F4C", [2 x i8] c"\F5G", [2 x i8] c"\F6M", [2 x i8] c"\EBU", [2 x i8] c"\F0X", [2 x i8] c"\E9h", [2 x i8] c"\F1b", [2 x i8] c"\DB\7F", [2 x i8] c"\F6R", [2 x i8] c"\F80", [2 x i8] c"\F8=", [2 x i8] c"\F8B", [2 x i8] c"\F9F", [2 x i8] c"\F2K", [2 x i8] c"\F6O", [2 x i8] c"\F7S", [2 x i8] c"\F4\\", [2 x i8] c"\EEl", [2 x i8] c"\FCO", [2 x i8] c"\EAE", [2 x i8] c"\F0K", [2 x i8] c"\FE:", [2 x i8] c"\01:", [2 x i8] c"\F3N", [2 x i8] c"\F7S", [2 x i8] c"\FCQ", [2 x i8] c"\F3c", [2 x i8] c"\F3Q", [2 x i8] c"\FA&", [2 x i8] c"\F3>", [2 x i8] c"\FA:", [2 x i8] c"\FE;", [2 x i8] c"\F0I", [2 x i8] c"\F6L", [2 x i8] c"\F3V", [2 x i8] c"\F7S", [2 x i8] c"\F6W", [2 x i8] zeroinitializer, [2 x i8] c"\EA\7F", [2 x i8] c"\E7\7F", [2 x i8] c"\E7x", [2 x i8] c"\E5\7F", [2 x i8] c"\EDr", [2 x i8] c"\E9u", [2 x i8] c"\E7v", [2 x i8] c"\E6u", [2 x i8] c"\E8q", [2 x i8] c"\E4v", [2 x i8] c"\E1x", [2 x i8] c"\DB|", [2 x i8] c"\F6^", [2 x i8] c"\F1f", [2 x i8] c"\F6c", [2 x i8] c"\F3j", [2 x i8] c"\CE\7F", [2 x i8] c"\FB\\", [2 x i8] c"\119", [2 x i8] c"\FBV", [2 x i8] c"\F3^", [2 x i8] c"\F4[", [2 x i8] c"\FEM", [2 x i8] c"\00G", [2 x i8] c"\FFI", [2 x i8] c"\04@", [2 x i8] c"\F9Q", [2 x i8] c"\05@", [2 x i8] c"\0F9", [2 x i8] c"\01C", [2 x i8] c"\00D", [2 x i8] c"\F6C", [2 x i8] c"\01D", [2 x i8] c"\00M", [2 x i8] c"\02@", [2 x i8] c"\00D", [2 x i8] c"\FBN", [2 x i8] c"\077", [2 x i8] c"\05;", [2 x i8] c"\02A", [2 x i8] c"\0E6", [2 x i8] c"\0F,", [2 x i8] c"\05<", [2 x i8] c"\02F", [2 x i8] c"\FEL", [2 x i8] c"\EEV", [2 x i8] c"\0CF", [2 x i8] c"\05@", [2 x i8] c"\F4F", [2 x i8] c"\0B7", [2 x i8] c"\058", [2 x i8] c"\00E", [2 x i8] c"\02A", [2 x i8] c"\FAJ", [2 x i8] c"\056", [2 x i8] c"\076", [2 x i8] c"\FAL", [2 x i8] c"\F5R", [2 x i8] c"\FEM", [2 x i8] c"\FEM", [2 x i8] c"\19*", [2 x i8] c"\11\F3", [2 x i8] c"\10\F7", [2 x i8] c"\11\F4", [2 x i8] c"\1B\EB", [2 x i8] c"%\E2", [2 x i8] c")\D8", [2 x i8] c"*\D7", [2 x i8] c"0\D1", [2 x i8] c"'\E0", [2 x i8] c".\D8", [2 x i8] c"4\CD", [2 x i8] c".\D7", [2 x i8] c"4\D9", [2 x i8] c"+\ED", [2 x i8] c" \0B", [2 x i8] c"=\C9", [2 x i8] c"8\D2", [2 x i8] c">\CE", [2 x i8] c"Q\BD", [2 x i8] c"-\EC", [2 x i8] c"#\FE", [2 x i8] c"\1C\0F", [2 x i8] c"\22\01", [2 x i8] c"'\01", [2 x i8] c"\1E\11", [2 x i8] c"\14&", [2 x i8] c"\12-", [2 x i8] c"\0F6", [2 x i8] c"\00O", [2 x i8] c"$\F0", [2 x i8] c"%\F2", [2 x i8] c"%\EF", [2 x i8] c" \01", [2 x i8] c"\22\0F", [2 x i8] c"\1D\0F", [2 x i8] c"\18\19", [2 x i8] c"\22\16", [2 x i8] c"\1F\10", [2 x i8] c"#\12", [2 x i8] c"\1F\1C", [2 x i8] c"!)", [2 x i8] c"$\1C", [2 x i8] c"\1B/", [2 x i8] c"\15>", [2 x i8] c"\12\1F", [2 x i8] c"\13\1A", [2 x i8] c"$\18", [2 x i8] c"\18\17", [2 x i8] c"\1B\10", [2 x i8] c"\18\1E", [2 x i8] c"\1F\1D", [2 x i8] c"\16)", [2 x i8] c"\16*", [2 x i8] c"\10<", [2 x i8] c"\0F4", [2 x i8] c"\0E<", [2 x i8] c"\03N", [2 x i8] c"\F0{", [2 x i8] c"\155", [2 x i8] c"\168", [2 x i8] c"\19=", [2 x i8] c"\15!", [2 x i8] c"\132", [2 x i8] c"\11=", [2 x i8] c"\FDN", [2 x i8] c"\F8J", [2 x i8] c"\F7H", [2 x i8] c"\F6H", [2 x i8] c"\EEK", [2 x i8] c"\F4G", [2 x i8] c"\F5?", [2 x i8] c"\FBF", [2 x i8] c"\EFK", [2 x i8] c"\F2H", [2 x i8] c"\F0C", [2 x i8] c"\F85", [2 x i8] c"\F2;", [2 x i8] c"\F74", [2 x i8] c"\F5D", [2 x i8] c"\09\FE", [2 x i8] c"\1E\F6", [2 x i8] c"\1F\FC", [2 x i8] c"!\FF", [2 x i8] c"!\07", [2 x i8] c"\1F\0C", [2 x i8] c"%\17", [2 x i8] c"\1F&", [2 x i8] c"\14@", [2 x i8] c"\F7G", [2 x i8] c"\F9%", [2 x i8] c"\F8,", [2 x i8] c"\F51", [2 x i8] c"\F68", [2 x i8] c"\F4;", [2 x i8] c"\F8?", [2 x i8] c"\F7C", [2 x i8] c"\FAD", [2 x i8] c"\F6O", [2 x i8] c"\FDN", [2 x i8] c"\F8J", [2 x i8] c"\F7H", [2 x i8] c"\F6H", [2 x i8] c"\EEK", [2 x i8] c"\F4G", [2 x i8] c"\F5?", [2 x i8] c"\FBF", [2 x i8] c"\EFK", [2 x i8] c"\F2H", [2 x i8] c"\F0C", [2 x i8] c"\F85", [2 x i8] c"\F2;", [2 x i8] c"\F74", [2 x i8] c"\F5D", [2 x i8] c"\09\FE", [2 x i8] c"\1E\F6", [2 x i8] c"\1F\FC", [2 x i8] c"!\FF", [2 x i8] c"!\07", [2 x i8] c"\1F\0C", [2 x i8] c"%\17", [2 x i8] c"\1F&", [2 x i8] c"\14@", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer], [464 x [2 x i8]] [[2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\E4\7F", [2 x i8] c"\E9h", [2 x i8] c"\FA5", [2 x i8] c"\FF6", [2 x i8] c"\073", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\00)", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\F7S", [2 x i8] c"\04V", [2 x i8] c"\00a", [2 x i8] c"\F9H", [2 x i8] c"\0D)", [2 x i8] c"\03>", [2 x i8] c"\00\0B", [2 x i8] c"\017", [2 x i8] c"\00E", [2 x i8] c"\EF\7F", [2 x i8] c"\F3f", [2 x i8] c"\00R", [2 x i8] c"\F9J", [2 x i8] c"\EBk", [2 x i8] c"\E5\7F", [2 x i8] c"\E1\7F", [2 x i8] c"\E8\7F", [2 x i8] c"\EE_", [2 x i8] c"\E5\7F", [2 x i8] c"\EBr", [2 x i8] c"\E2\7F", [2 x i8] c"\EF{", [2 x i8] c"\F4s", [2 x i8] c"\F0z", [2 x i8] c"\F5s", [2 x i8] c"\F4?", [2 x i8] c"\FED", [2 x i8] c"\F1T", [2 x i8] c"\F3h", [2 x i8] c"\FDF", [2 x i8] c"\F8]", [2 x i8] c"\F6Z", [2 x i8] c"\E2\7F", [2 x i8] c"\FFJ", [2 x i8] c"\FAa", [2 x i8] c"\F9[", [2 x i8] c"\EC\7F", [2 x i8] c"\FC8", [2 x i8] c"\FBR", [2 x i8] c"\F9L", [2 x i8] c"\EA}", [2 x i8] c"\F9]", [2 x i8] c"\F5W", [2 x i8] c"\FDM", [2 x i8] c"\FBG", [2 x i8] c"\FC?", [2 x i8] c"\FCD", [2 x i8] c"\F4T", [2 x i8] c"\F9>", [2 x i8] c"\F9A", [2 x i8] c"\08=", [2 x i8] c"\058", [2 x i8] c"\FEB", [2 x i8] c"\01@", [2 x i8] c"\00=", [2 x i8] c"\FEN", [2 x i8] c"\012", [2 x i8] c"\074", [2 x i8] c"\0A#", [2 x i8] c"\00,", [2 x i8] c"\0B&", [2 x i8] c"\01-", [2 x i8] c"\00.", [2 x i8] c"\05,", [2 x i8] c"\1F\11", [2 x i8] c"\013", [2 x i8] c"\072", [2 x i8] c"\1C\13", [2 x i8] c"\10!", [2 x i8] c"\0E>", [2 x i8] c"\F3l", [2 x i8] c"\F1d", [2 x i8] c"\F3e", [2 x i8] c"\F3[", [2 x i8] c"\F4^", [2 x i8] c"\F6X", [2 x i8] c"\F0T", [2 x i8] c"\F6V", [2 x i8] c"\F9S", [2 x i8] c"\F3W", [2 x i8] c"\ED^", [2 x i8] c"\01F", [2 x i8] c"\00H", [2 x i8] c"\FBJ", [2 x i8] c"\12;", [2 x i8] c"\F8f", [2 x i8] c"\F1d", [2 x i8] c"\00_", [2 x i8] c"\FCK", [2 x i8] c"\02H", [2 x i8] c"\F5K", [2 x i8] c"\FDG", [2 x i8] c"\0F.", [2 x i8] c"\F3E", [2 x i8] c"\00>", [2 x i8] c"\00A", [2 x i8] c"\15%", [2 x i8] c"\F1H", [2 x i8] c"\099", [2 x i8] c"\106", [2 x i8] c"\00>", [2 x i8] c"\0CH", [2 x i8] c"\18\00", [2 x i8] c"\0F\09", [2 x i8] c"\08\19", [2 x i8] c"\0D\12", [2 x i8] c"\0F\09", [2 x i8] c"\0D\13", [2 x i8] c"\0A%", [2 x i8] c"\0C\12", [2 x i8] c"\06\1D", [2 x i8] c"\14!", [2 x i8] c"\0F\1E", [2 x i8] c"\04-", [2 x i8] c"\01:", [2 x i8] c"\00>", [2 x i8] c"\07=", [2 x i8] c"\0C&", [2 x i8] c"\0B-", [2 x i8] c"\0F'", [2 x i8] c"\0B*", [2 x i8] c"\0D,", [2 x i8] c"\10-", [2 x i8] c"\0C)", [2 x i8] c"\0A1", [2 x i8] c"\1E\22", [2 x i8] c"\12*", [2 x i8] c"\0A7", [2 x i8] c"\113", [2 x i8] c"\11.", [2 x i8] c"\00Y", [2 x i8] c"\1A\ED", [2 x i8] c"\16\EF", [2 x i8] c"\1A\EF", [2 x i8] c"\1E\E7", [2 x i8] c"\1C\EC", [2 x i8] c"!\E9", [2 x i8] c"%\E5", [2 x i8] c"!\E9", [2 x i8] c"(\E4", [2 x i8] c"&\EF", [2 x i8] c"!\F5", [2 x i8] c"(\F1", [2 x i8] c")\FA", [2 x i8] c"&\01", [2 x i8] c")\11", [2 x i8] c"\1E\FA", [2 x i8] c"\1B\03", [2 x i8] c"\1A\16", [2 x i8] c"%\F0", [2 x i8] c"#\FC", [2 x i8] c"&\F8", [2 x i8] c"&\FD", [2 x i8] c"%\03", [2 x i8] c"&\05", [2 x i8] c"*\00", [2 x i8] c"#\10", [2 x i8] c"'\16", [2 x i8] c"\0E0", [2 x i8] c"\1B%", [2 x i8] c"\15<", [2 x i8] c"\0CD", [2 x i8] c"\02a", [2 x i8] c"\FDG", [2 x i8] c"\FA*", [2 x i8] c"\FB2", [2 x i8] c"\FD6", [2 x i8] c"\FE>", [2 x i8] c"\00:", [2 x i8] c"\01?", [2 x i8] c"\FEH", [2 x i8] c"\FFJ", [2 x i8] c"\F7[", [2 x i8] c"\FBC", [2 x i8] c"\FB\1B", [2 x i8] c"\FD'", [2 x i8] c"\FE,", [2 x i8] c"\00.", [2 x i8] c"\F0@", [2 x i8] c"\F8D", [2 x i8] c"\F6N", [2 x i8] c"\FAM", [2 x i8] c"\F6V", [2 x i8] c"\F4\\", [2 x i8] c"\F17", [2 x i8] c"\F6<", [2 x i8] c"\FA>", [2 x i8] c"\FCA", [2 x i8] c"\F4I", [2 x i8] c"\F8L", [2 x i8] c"\F9P", [2 x i8] c"\F7X", [2 x i8] c"\EFn", [2 x i8] c"\F5a", [2 x i8] c"\ECT", [2 x i8] c"\F5O", [2 x i8] c"\FAI", [2 x i8] c"\FCJ", [2 x i8] c"\F3V", [2 x i8] c"\F3`", [2 x i8] c"\F5a", [2 x i8] c"\EDu", [2 x i8] c"\F8N", [2 x i8] c"\FB!", [2 x i8] c"\FC0", [2 x i8] c"\FE5", [2 x i8] c"\FD>", [2 x i8] c"\F3G", [2 x i8] c"\F6O", [2 x i8] c"\F4V", [2 x i8] c"\F3Z", [2 x i8] c"\F2a", [2 x i8] zeroinitializer, [2 x i8] c"\FA]", [2 x i8] c"\FAT", [2 x i8] c"\F8O", [2 x i8] c"\00B", [2 x i8] c"\FFG", [2 x i8] c"\00>", [2 x i8] c"\FE<", [2 x i8] c"\FE;", [2 x i8] c"\FBK", [2 x i8] c"\FD>", [2 x i8] c"\FC:", [2 x i8] c"\F7B", [2 x i8] c"\FFO", [2 x i8] c"\00G", [2 x i8] c"\03D", [2 x i8] c"\0A,", [2 x i8] c"\F9>", [2 x i8] c"\0F$", [2 x i8] c"\0E(", [2 x i8] c"\10\1B", [2 x i8] c"\0C\1D", [2 x i8] c"\01,", [2 x i8] c"\14$", [2 x i8] c"\12 ", [2 x i8] c"\05*", [2 x i8] c"\010", [2 x i8] c"\0A>", [2 x i8] c"\11.", [2 x i8] c"\09@", [2 x i8] c"\F4h", [2 x i8] c"\F5a", [2 x i8] c"\F0`", [2 x i8] c"\F9X", [2 x i8] c"\F8U", [2 x i8] c"\F9U", [2 x i8] c"\F7U", [2 x i8] c"\F3X", [2 x i8] c"\04B", [2 x i8] c"\FDM", [2 x i8] c"\FDL", [2 x i8] c"\FAL", [2 x i8] c"\0A:", [2 x i8] c"\FFL", [2 x i8] c"\FFS", [2 x i8] c"\F9c", [2 x i8] c"\F2_", [2 x i8] c"\02_", [2 x i8] c"\00L", [2 x i8] c"\FBJ", [2 x i8] c"\00F", [2 x i8] c"\F5K", [2 x i8] c"\01D", [2 x i8] c"\00A", [2 x i8] c"\F2I", [2 x i8] c"\03>", [2 x i8] c"\04>", [2 x i8] c"\FFD", [2 x i8] c"\F3K", [2 x i8] c"\0B7", [2 x i8] c"\05@", [2 x i8] c"\0CF", [2 x i8] c"\0F\06", [2 x i8] c"\06\13", [2 x i8] c"\07\10", [2 x i8] c"\0C\0E", [2 x i8] c"\12\0D", [2 x i8] c"\0D\0B", [2 x i8] c"\0D\0F", [2 x i8] c"\0F\10", [2 x i8] c"\0C\17", [2 x i8] c"\0D\17", [2 x i8] c"\0F\14", [2 x i8] c"\0E\1A", [2 x i8] c"\0E,", [2 x i8] c"\11(", [2 x i8] c"\11/", [2 x i8] c"\18\11", [2 x i8] c"\15\15", [2 x i8] c"\19\16", [2 x i8] c"\1F\1B", [2 x i8] c"\16\1D", [2 x i8] c"\13#", [2 x i8] c"\0E2", [2 x i8] c"\0A9", [2 x i8] c"\07?", [2 x i8] c"\FEM", [2 x i8] c"\FCR", [2 x i8] c"\FD^", [2 x i8] c"\09E", [2 x i8] c"\F4m", [2 x i8] c"$\DD", [2 x i8] c"$\DE", [2 x i8] c" \E6", [2 x i8] c"%\E2", [2 x i8] c",\E0", [2 x i8] c"\22\EE", [2 x i8] c"\22\F1", [2 x i8] c"(\F1", [2 x i8] c"!\F9", [2 x i8] c"#\FB", [2 x i8] c"!\00", [2 x i8] c"&\02", [2 x i8] c"!\0D", [2 x i8] c"\17#", [2 x i8] c"\0D:", [2 x i8] c"\1D\FD", [2 x i8] c"\1A\00", [2 x i8] c"\16\1E", [2 x i8] c"\1F\F9", [2 x i8] c"#\F1", [2 x i8] c"\22\FD", [2 x i8] c"\22\03", [2 x i8] c"$\FF", [2 x i8] c"\22\05", [2 x i8] c" \0B", [2 x i8] c"#\05", [2 x i8] c"\22\0C", [2 x i8] c"'\0B", [2 x i8] c"\1E\1D", [2 x i8] c"\22\1A", [2 x i8] c"\1D'", [2 x i8] c"\13B", [2 x i8] c"\1F\15", [2 x i8] c"\1F\1F", [2 x i8] c"\192", [2 x i8] c"\EFx", [2 x i8] c"\ECp", [2 x i8] c"\EEr", [2 x i8] c"\F5U", [2 x i8] c"\F1\\", [2 x i8] c"\F2Y", [2 x i8] c"\E6G", [2 x i8] c"\F1Q", [2 x i8] c"\F2P", [2 x i8] c"\00D", [2 x i8] c"\F2F", [2 x i8] c"\E88", [2 x i8] c"\E9D", [2 x i8] c"\E82", [2 x i8] c"\F5J", [2 x i8] c"\17\F3", [2 x i8] c"\1A\F3", [2 x i8] c"(\F1", [2 x i8] c"1\F2", [2 x i8] c",\03", [2 x i8] c"-\06", [2 x i8] c",\22", [2 x i8] c"!6", [2 x i8] c"\13R", [2 x i8] c"\FDK", [2 x i8] c"\FF\17", [2 x i8] c"\01\22", [2 x i8] c"\01+", [2 x i8] c"\006", [2 x i8] c"\FE7", [2 x i8] c"\00=", [2 x i8] c"\01@", [2 x i8] c"\00D", [2 x i8] c"\F7\\", [2 x i8] c"\F2j", [2 x i8] c"\F3a", [2 x i8] c"\F1Z", [2 x i8] c"\F4Z", [2 x i8] c"\EEX", [2 x i8] c"\F6I", [2 x i8] c"\F7O", [2 x i8] c"\F2V", [2 x i8] c"\F6I", [2 x i8] c"\F6F", [2 x i8] c"\F6E", [2 x i8] c"\FBB", [2 x i8] c"\F7@", [2 x i8] c"\FB:", [2 x i8] c"\02;", [2 x i8] c"\15\F6", [2 x i8] c"\18\F5", [2 x i8] c"\1C\F8", [2 x i8] c"\1C\FF", [2 x i8] c"\1D\03", [2 x i8] c"\1D\09", [2 x i8] c"#\14", [2 x i8] c"\1D$", [2 x i8] c"\0EC", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer]], [928 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@poc_reg_tbl_top_field = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 100, i32 108, i32 116, i32 124, i32 132, i32 140, i32 148, i32 156, i32 200, i32 208, i32 216, i32 224, i32 232, i32 240, i32 248, i32 288], [32 x i8] zeroinitializer }, align 32
@poc_reg_tbl_bottom_field = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 104, i32 112, i32 120, i32 128, i32 136, i32 144, i32 152, i32 196, i32 204, i32 212, i32 220, i32 228, i32 236, i32 244, i32 252, i32 292], [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"rkvdec_h264_fmt_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 1125, i32 35 }
@___asan_gen_.5 = private unnamed_addr constant [24 x i8] c"rkvdec_h264_cabac_table\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 134, i32 17 }
@___asan_gen_.8 = private unnamed_addr constant [22 x i8] c"poc_reg_tbl_top_field\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 819, i32 18 }
@___asan_gen_.11 = private unnamed_addr constant [25 x i8] c"poc_reg_tbl_bottom_field\00", align 1
@___asan_gen_.12 = private constant [46 x i8] c"../drivers/staging/media/rkvdec/rkvdec-h264.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 838, i32 18 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @rkvdec_h264_fmt_ops, ptr @rkvdec_h264_cabac_table, ptr @poc_reg_tbl_top_field, ptr @poc_reg_tbl_bottom_field], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_h264_fmt_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkvdec_h264_cabac_table to i32), i32 3712, i32 4640, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poc_reg_tbl_top_field to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poc_reg_tbl_bottom_field to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rkvdec_h264_adjust_fmt(ptr nocapture noundef readnone %ctx, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_planes = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 6
  %0 = ptrtoint ptr %num_planes to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %num_planes, align 1
  %plane_fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %1 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %plane_fmt, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %3 = ptrtoint ptr %fmt1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %fmt1, align 1
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %height, align 1
  %mul = shl i32 %4, 1
  %mul2 = mul i32 %mul, %6
  %7 = ptrtoint ptr %plane_fmt to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %mul2, ptr %plane_fmt, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_h264_start(ptr nocapture noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 64) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.rkvdec_dev, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  %dma = getelementptr inbounds %struct.rkvdec_aux_buf, ptr %call7.i.i, i32 0, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %4, i32 noundef 160224, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %size = getelementptr inbounds %struct.rkvdec_aux_buf, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 160224, ptr %size, align 8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %call7.i.i, align 8
  %7 = call ptr @memcpy(ptr %call.i, ptr @rkvdec_h264_cabac_table, i32 3712)
  %priv = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 6
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rkvdec_h264_stop(ptr nocapture noundef readonly %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.rkvdec_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %size = getelementptr inbounds %struct.rkvdec_aux_buf, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dma = getelementptr inbounds %struct.rkvdec_aux_buf, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef 0) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkvdec_h264_run(ptr noundef %ctx) #1 align 64 {
entry:
  %reflist_builder = alloca %struct.v4l2_h264_reflist_builder, align 4
  %run = alloca %struct.rkvdec_h264_run, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %reflist_builder) #6
  %0 = call ptr @memset(ptr %reflist_builder, i32 255, i32 280)
  %dev = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 5
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %priv = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 6
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %run) #6
  %5 = getelementptr inbounds %struct.anon.121, ptr %run, i32 0, i32 1
  %6 = getelementptr inbounds %struct.rkvdec_h264_run, ptr %run, i32 0, i32 1
  %7 = getelementptr inbounds %struct.rkvdec_h264_run, ptr %run, i32 0, i32 2
  %8 = getelementptr inbounds %struct.rkvdec_h264_run, ptr %run, i32 0, i32 3
  %9 = getelementptr inbounds %struct.rkvdec_h264_run, ptr %run, i32 0, i32 4
  %ctrl_hdl.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 4
  %10 = ptrtoint ptr %run to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %run, align 8
  %call.i = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_hdl.i, i32 noundef 10750215) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cond.end.i_crit_edge, label %cond.true.i

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %p_cur.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call.i, i32 0, i32 26
  %11 = ptrtoint ptr %p_cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_cur.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %entry.cond.end.i_crit_edge
  %cond.i = phi ptr [ %12, %cond.true.i ], [ null, %entry.cond.end.i_crit_edge ]
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i, ptr %6, align 8
  %call2.i = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_hdl.i, i32 noundef 10750210) #6
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %cond.end.i.cond.end7.i_crit_edge, label %cond.true4.i

cond.end.i.cond.end7.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end7.i

cond.true4.i:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %p_cur5.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call2.i, i32 0, i32 26
  %14 = ptrtoint ptr %p_cur5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p_cur5.i, align 4
  br label %cond.end7.i

cond.end7.i:                                      ; preds = %cond.true4.i, %cond.end.i.cond.end7.i_crit_edge
  %cond8.i = phi ptr [ %15, %cond.true4.i ], [ null, %cond.end.i.cond.end7.i_crit_edge ]
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cond8.i, ptr %7, align 4
  %call10.i = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_hdl.i, i32 noundef 10750211) #6
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %cond.end7.i.cond.end15.i_crit_edge, label %cond.true12.i

cond.end7.i.cond.end15.i_crit_edge:               ; preds = %cond.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end15.i

cond.true12.i:                                    ; preds = %cond.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %p_cur13.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call10.i, i32 0, i32 26
  %17 = ptrtoint ptr %p_cur13.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p_cur13.i, align 4
  br label %cond.end15.i

cond.end15.i:                                     ; preds = %cond.true12.i, %cond.end7.i.cond.end15.i_crit_edge
  %cond16.i = phi ptr [ %18, %cond.true12.i ], [ null, %cond.end7.i.cond.end15.i_crit_edge ]
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cond16.i, ptr %8, align 8
  %call18.i = tail call ptr @v4l2_ctrl_find(ptr noundef %ctrl_hdl.i, i32 noundef 10750212) #6
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %cond.end15.i.rkvdec_h264_run_preamble.exit_crit_edge, label %cond.true20.i

cond.end15.i.rkvdec_h264_run_preamble.exit_crit_edge: ; preds = %cond.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rkvdec_h264_run_preamble.exit

cond.true20.i:                                    ; preds = %cond.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %p_cur21.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call18.i, i32 0, i32 26
  %20 = ptrtoint ptr %p_cur21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p_cur21.i, align 4
  br label %rkvdec_h264_run_preamble.exit

rkvdec_h264_run_preamble.exit:                    ; preds = %cond.true20.i, %cond.end15.i.rkvdec_h264_run_preamble.exit_crit_edge
  %cond24.i = phi ptr [ %21, %cond.true20.i ], [ null, %cond.end15.i.rkvdec_h264_run_preamble.exit_crit_edge ]
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cond24.i, ptr %9, align 4
  call void @rkvdec_run_preamble(ptr noundef %ctx, ptr noundef nonnull %run) #6
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %6, align 8
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %7, align 4
  call void @v4l2_h264_init_reflist_builder(ptr noundef nonnull %reflist_builder, ptr noundef %24, ptr noundef %26, ptr noundef %24) #6
  %num_valid = getelementptr inbounds %struct.v4l2_h264_reflist_builder, ptr %reflist_builder, i32 0, i32 3
  %27 = ptrtoint ptr %num_valid to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_valid, align 4
  %reflists = getelementptr inbounds %struct.rkvdec_h264_ctx, ptr %4, i32 0, i32 1
  %num_valid2 = getelementptr inbounds %struct.rkvdec_h264_ctx, ptr %4, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %num_valid2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %num_valid2, align 4
  call void @v4l2_h264_build_p_ref_list(ptr noundef nonnull %reflist_builder, ptr noundef %reflists) #6
  %b0 = getelementptr inbounds %struct.rkvdec_h264_ctx, ptr %4, i32 0, i32 1, i32 1
  %b1 = getelementptr inbounds %struct.rkvdec_h264_ctx, ptr %4, i32 0, i32 1, i32 2
  call void @v4l2_h264_build_b_ref_lists(ptr noundef nonnull %reflist_builder, ptr noundef %b0, ptr noundef %b1) #6
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %8, align 8
  %flags.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags.i, align 2
  %34 = and i16 %33, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not.i45 = icmp eq i16 %34, 0
  br i1 %tobool.not.i45, label %rkvdec_h264_run_preamble.exit.assemble_hw_scaling_list.exit_crit_edge, label %do.end4.i

rkvdec_h264_run_preamble.exit.assemble_hw_scaling_list.exit_crit_edge: ; preds = %rkvdec_h264_run_preamble.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %assemble_hw_scaling_list.exit

do.end4.i:                                        ; preds = %rkvdec_h264_run_preamble.exit
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %39 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %9, align 4
  %scaling_list.i = getelementptr inbounds %struct.rkvdec_h264_priv_tbl, ptr %38, i32 0, i32 1
  %41 = call ptr @memcpy(ptr %scaling_list.i, ptr %40, i32 96)
  %scaling_list_8x8.i = getelementptr inbounds %struct.rkvdec_h264_priv_tbl, ptr %38, i32 0, i32 1, i32 1
  %scaling_list_8x89.i = getelementptr inbounds %struct.v4l2_ctrl_h264_scaling_matrix, ptr %40, i32 0, i32 1
  %42 = call ptr @memcpy(ptr %scaling_list_8x8.i, ptr %scaling_list_8x89.i, i32 384)
  br label %assemble_hw_scaling_list.exit

assemble_hw_scaling_list.exit:                    ; preds = %do.end4.i, %rkvdec_h264_run_preamble.exit.assemble_hw_scaling_list.exit_crit_edge
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 4
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %7, align 4
  %47 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %6, align 8
  %49 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %44, align 4
  %51 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %31, align 2
  %idxprom.i = zext i8 %52 to i32
  %arrayidx.i = getelementptr %struct.rkvdec_h264_priv_tbl, ptr %50, i32 0, i32 3, i32 %idxprom.i
  %53 = getelementptr i8, ptr %arrayidx.i, i32 4
  %54 = call ptr @memset(ptr %53, i32 0, i32 28)
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 8191, ptr %arrayidx.i, align 4
  %chroma_format_idc.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %46, i32 0, i32 4
  %56 = ptrtoint ptr %chroma_format_idc.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %chroma_format_idc.i, align 4
  %conv13.i.i = zext i8 %57 to i32
  %shl16.i.i = shl nuw nsw i32 %conv13.i.i, 13
  %and17.i.i = and i32 %shl16.i.i, 24576
  %conv24.i413.i = or i32 %and17.i.i, 8191
  store i32 %conv24.i413.i, ptr %arrayidx.i, align 4
  %bit_depth_luma_minus8.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %46, i32 0, i32 5
  %58 = ptrtoint ptr %bit_depth_luma_minus8.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bit_depth_luma_minus8.i, align 1
  %conv26.i = zext i8 %59 to i32
  %add.i = shl nuw nsw i32 %conv26.i, 15
  %60 = and i32 %add.i, 229376
  %conv24.i418.i = or i32 %60, %conv24.i413.i
  store i32 %conv24.i418.i, ptr %arrayidx.i, align 4
  %bit_depth_chroma_minus8.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %46, i32 0, i32 6
  %61 = ptrtoint ptr %bit_depth_chroma_minus8.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bit_depth_chroma_minus8.i, align 2
  %conv32.i = zext i8 %62 to i32
  %add33.i = shl nuw nsw i32 %conv32.i, 18
  %63 = and i32 %add33.i, 1835008
  %conv24.i423.i = or i32 %63, %conv24.i418.i
  store i32 %conv24.i423.i, ptr %arrayidx.i, align 4
  %log2_max_frame_num_minus4.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %46, i32 0, i32 7
  %64 = ptrtoint ptr %log2_max_frame_num_minus4.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %log2_max_frame_num_minus4.i, align 1
  %conv13.i425.i = zext i8 %65 to i32
  %shl16.i426.i = shl nuw nsw i32 %conv13.i425.i, 22
  %and17.i427.i = and i32 %shl16.i426.i, 62914560
  %conv24.i429.i = or i32 %and17.i427.i, %conv24.i423.i
  store i32 %conv24.i429.i, ptr %arrayidx.i, align 4
  %max_num_ref_frames.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %46, i32 0, i32 10
  %66 = ptrtoint ptr %max_num_ref_frames.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %max_num_ref_frames.i, align 2
  %conv13.i430.i = zext i8 %67 to i32
  %shl16.i431.i = shl i32 %conv13.i430.i, 26
  %and17.i432.i = and i32 %shl16.i431.i, 2080374784
  %conv24.i434.i = or i32 %and17.i432.i, %conv24.i429.i
  store i32 %conv24.i434.i, ptr %arrayidx.i, align 4
  %pic_order_cnt_type.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %46, i32 0, i32 8
  %68 = ptrtoint ptr %pic_order_cnt_type.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %pic_order_cnt_type.i, align 4
  %conv13.i435.i = zext i8 %69 to i32
  %shl16.i436.i = shl i32 %conv13.i435.i, 31
  %conv20.i438.i = and i32 %conv24.i434.i, 2145386495
  %conv24.i439.i = or i32 %conv20.i438.i, %shl16.i436.i
  store i32 %conv24.i439.i, ptr %arrayidx.i, align 4
  %70 = lshr i8 %69, 1
  %71 = and i8 %70, 1
  %72 = zext i8 %71 to i32
  %73 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %53, align 4
  %log2_max_pic_order_cnt_lsb_minus4.i = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %46, i32 0, i32 9
  %74 = ptrtoint ptr %log2_max_pic_order_cnt_lsb_minus4.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %log2_max_pic_order_cnt_lsb_minus4.i, align 1
  %conv13.i440.i = zext i8 %75 to i32
  %shl16.i441.i = shl nuw nsw i32 %conv13.i440.i, 1
  %and17.i442.i = and i32 %shl16.i441.i, 30
  %conv24.i444.i = or i32 %and17.i442.i, %72
  store i32 %conv24.i444.i, ptr %53, align 4
  %flags.i49 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %46, i32 0, i32 17
  %76 = ptrtoint ptr %flags.i49 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i49, align 4
  %78 = shl i32 %77, 3
  %79 = and i32 %78, 32
  %conv24.i450.i = or i32 %conv24.i444.i, %79
  store i32 %conv24.i450.i, ptr %53, align 4
  %fmt.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fmt.i, align 4
  %sub.i = shl i32 %81, 2
  %82 = add i32 %sub.i, 60
  %and17.i453.i = and i32 %82, 32704
  %conv24.i456.i = or i32 %and17.i453.i, %conv24.i450.i
  store i32 %conv24.i456.i, ptr %53, align 4
  %height.i = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 1, i32 1, i32 0, i32 1
  %83 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %height.i, align 4
  %sub83.i = shl i32 %84, 11
  %85 = add i32 %sub83.i, 30720
  %and17.i459.i = and i32 %85, 16744448
  %conv24.i462.i = or i32 %and17.i459.i, %conv24.i456.i
  store i32 %conv24.i462.i, ptr %53, align 4
  %86 = load i32, ptr %flags.i49, align 4
  %87 = shl i32 %86, 20
  %88 = and i32 %87, 16777216
  %conv24.i468.i = or i32 %conv24.i462.i, %88
  store i32 %conv24.i468.i, ptr %53, align 4
  %89 = load i32, ptr %flags.i49, align 4
  %90 = shl i32 %89, 20
  %91 = and i32 %90, 33554432
  %conv20.i473.i = and i32 %conv24.i468.i, -33554433
  %conv24.i474.i = or i32 %conv20.i473.i, %91
  store i32 %conv24.i474.i, ptr %53, align 4
  %92 = load i32, ptr %flags.i49, align 4
  %93 = shl i32 %92, 20
  %94 = and i32 %93, 67108864
  %conv20.i479.i = and i32 %conv24.i474.i, -67108865
  %conv24.i480.i = or i32 %conv20.i479.i, %94
  store i32 %conv24.i480.i, ptr %53, align 4
  %arrayidx.i481.i = getelementptr i32, ptr %arrayidx.i, i32 4
  %95 = ptrtoint ptr %arrayidx.i481.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 8191, ptr %arrayidx.i481.i, align 4
  %96 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %flags.i, align 2
  %98 = shl i16 %97, 13
  %99 = and i16 %98, 8192
  %100 = or i16 %99, 8191
  %conv24.i492.i = zext i16 %100 to i32
  store i32 %conv24.i492.i, ptr %arrayidx.i481.i, align 4
  %101 = load i16, ptr %flags.i, align 2
  %102 = shl i16 %101, 13
  %103 = and i16 %102, 16384
  %conv24.i498.i92 = or i16 %100, %103
  %conv24.i498.i = zext i16 %conv24.i498.i92 to i32
  store i32 %conv24.i498.i, ptr %arrayidx.i481.i, align 4
  %num_ref_idx_l0_default_active_minus1.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %31, i32 0, i32 3
  %104 = ptrtoint ptr %num_ref_idx_l0_default_active_minus1.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %num_ref_idx_l0_default_active_minus1.i, align 1
  %conv13.i499.i = zext i8 %105 to i32
  %shl16.i500.i = shl nuw nsw i32 %conv13.i499.i, 15
  %and17.i501.i = and i32 %shl16.i500.i, 1015808
  %conv24.i504.i = or i32 %and17.i501.i, %conv24.i498.i
  store i32 %conv24.i504.i, ptr %arrayidx.i481.i, align 4
  %num_ref_idx_l1_default_active_minus1.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %31, i32 0, i32 4
  %106 = ptrtoint ptr %num_ref_idx_l1_default_active_minus1.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %num_ref_idx_l1_default_active_minus1.i, align 2
  %conv13.i505.i = zext i8 %107 to i32
  %shl16.i506.i = shl nuw nsw i32 %conv13.i505.i, 20
  %and17.i507.i = and i32 %shl16.i506.i, 32505856
  %conv24.i510.i = or i32 %conv24.i504.i, %and17.i507.i
  store i32 %conv24.i510.i, ptr %arrayidx.i481.i, align 4
  %108 = load i16, ptr %flags.i, align 2
  %109 = lshr i16 %108, 2
  %conv13.i511.i = zext i16 %109 to i32
  %shl16.i512.i = shl i32 %conv13.i511.i, 25
  %and17.i513.i = and i32 %shl16.i512.i, 33554432
  %conv24.i516.i = or i32 %and17.i513.i, %conv24.i510.i
  store i32 %conv24.i516.i, ptr %arrayidx.i481.i, align 4
  %weighted_bipred_idc.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %31, i32 0, i32 5
  %110 = ptrtoint ptr %weighted_bipred_idc.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %weighted_bipred_idc.i, align 1
  %conv13.i517.i = zext i8 %111 to i32
  %shl16.i518.i = shl i32 %conv13.i517.i, 26
  %and17.i519.i = and i32 %shl16.i518.i, 201326592
  %conv24.i522.i = or i32 %conv24.i516.i, %and17.i519.i
  store i32 %conv24.i522.i, ptr %arrayidx.i481.i, align 4
  %pic_init_qp_minus26.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %31, i32 0, i32 6
  %112 = ptrtoint ptr %pic_init_qp_minus26.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %pic_init_qp_minus26.i, align 2
  %conv13.i523.i = zext i8 %113 to i32
  %shl16.i524.i = shl i32 %conv13.i523.i, 28
  %conv24.i528.i = or i32 %conv24.i522.i, %shl16.i524.i
  store i32 %conv24.i528.i, ptr %arrayidx.i481.i, align 4
  %arrayidx34.i529.i = getelementptr i32, ptr %arrayidx.i, i32 5
  %114 = ptrtoint ptr %arrayidx34.i529.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx34.i529.i, align 4
  %conv37.i530.i = and i32 %115, -8
  %116 = lshr i8 %113, 4
  %117 = and i8 %116, 7
  %118 = zext i8 %117 to i32
  %conv44.i532.i = or i32 %conv37.i530.i, %118
  store i32 %conv44.i532.i, ptr %arrayidx34.i529.i, align 4
  %pic_init_qs_minus26.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %31, i32 0, i32 7
  %119 = ptrtoint ptr %pic_init_qs_minus26.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %pic_init_qs_minus26.i, align 1
  %conv13.i533.i = zext i8 %120 to i32
  %shl16.i534.i = shl nuw nsw i32 %conv13.i533.i, 3
  %and17.i535.i = and i32 %shl16.i534.i, 504
  %conv20.i537.i = and i32 %conv44.i532.i, -505
  %conv24.i538.i = or i32 %and17.i535.i, %conv20.i537.i
  store i32 %conv24.i538.i, ptr %arrayidx34.i529.i, align 4
  %chroma_qp_index_offset.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %31, i32 0, i32 8
  %121 = ptrtoint ptr %chroma_qp_index_offset.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %chroma_qp_index_offset.i, align 2
  %conv13.i539.i = zext i8 %122 to i32
  %shl16.i540.i = shl nuw nsw i32 %conv13.i539.i, 9
  %and17.i541.i = and i32 %shl16.i540.i, 15872
  %conv20.i543.i = and i32 %conv24.i538.i, -15873
  %conv24.i544.i = or i32 %conv20.i543.i, %and17.i541.i
  store i32 %conv24.i544.i, ptr %arrayidx34.i529.i, align 4
  %123 = load i16, ptr %flags.i, align 2
  %124 = shl i16 %123, 11
  %125 = and i16 %124, 16384
  %conv20.i549.i = and i32 %conv24.i544.i, -16385
  %126 = zext i16 %125 to i32
  %conv24.i550.i = or i32 %conv20.i549.i, %126
  store i32 %conv24.i550.i, ptr %arrayidx34.i529.i, align 4
  %127 = load i16, ptr %flags.i, align 2
  %128 = shl i16 %127, 11
  %129 = and i16 %128, -32768
  %conv20.i555.i = and i32 %conv24.i550.i, -32769
  %130 = zext i16 %129 to i32
  %conv24.i556.i = or i32 %conv20.i555.i, %130
  store i32 %conv24.i556.i, ptr %arrayidx34.i529.i, align 4
  %131 = load i16, ptr %flags.i, align 2
  %132 = lshr i16 %131, 5
  %conv13.i557.i = zext i16 %132 to i32
  %shl16.i558.i = shl nuw nsw i32 %conv13.i557.i, 16
  %and17.i559.i = and i32 %shl16.i558.i, 65536
  %conv20.i561.i = and i32 %conv24.i556.i, -65537
  %conv24.i562.i = or i32 %and17.i559.i, %conv20.i561.i
  store i32 %conv24.i562.i, ptr %arrayidx34.i529.i, align 4
  %133 = load i16, ptr %flags.i, align 2
  %134 = lshr i16 %133, 6
  %conv13.i563.i = zext i16 %134 to i32
  %shl16.i564.i = shl nuw nsw i32 %conv13.i563.i, 17
  %and17.i565.i = and i32 %shl16.i564.i, 131072
  %conv20.i567.i = and i32 %conv24.i562.i, -131073
  %conv24.i568.i = or i32 %conv20.i567.i, %and17.i565.i
  store i32 %conv24.i568.i, ptr %arrayidx34.i529.i, align 4
  %second_chroma_qp_index_offset.i = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %31, i32 0, i32 9
  %135 = ptrtoint ptr %second_chroma_qp_index_offset.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %second_chroma_qp_index_offset.i, align 1
  %conv13.i569.i = zext i8 %136 to i32
  %shl16.i570.i = shl nuw nsw i32 %conv13.i569.i, 18
  %and17.i571.i = and i32 %shl16.i570.i, 8126464
  %conv20.i573.i = and i32 %conv24.i568.i, -8126465
  %conv24.i574.i = or i32 %conv20.i573.i, %and17.i571.i
  store i32 %conv24.i574.i, ptr %arrayidx34.i529.i, align 4
  %137 = load i16, ptr %flags.i, align 2
  %138 = lshr i16 %137, 7
  %conv13.i575.i = zext i16 %138 to i32
  %shl16.i576.i = shl nuw i32 %conv13.i575.i, 23
  %and17.i577.i = and i32 %shl16.i576.i, 8388608
  %conv20.i579.i = and i32 %conv24.i574.i, -8388609
  %conv24.i580.i = or i32 %conv20.i579.i, %and17.i577.i
  store i32 %conv24.i580.i, ptr %arrayidx34.i529.i, align 4
  %dma.i = getelementptr inbounds %struct.rkvdec_aux_buf, ptr %44, i32 0, i32 1
  %139 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dma.i, align 4
  %add278.i = add i32 %140, 3712
  %shl16.i582.i = shl i32 %add278.i, 24
  %conv20.i585.i = and i32 %conv24.i580.i, 16777215
  %conv24.i586.i = or i32 %conv20.i585.i, %shl16.i582.i
  store i32 %conv24.i586.i, ptr %arrayidx34.i529.i, align 4
  %arrayidx34.i587.i = getelementptr i32, ptr %arrayidx.i, i32 6
  %141 = ptrtoint ptr %arrayidx34.i587.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx34.i587.i, align 4
  %conv37.i588.i = and i32 %142, -16777216
  %shr38.i589.i = lshr i32 %add278.i, 8
  %conv44.i590.i = or i32 %conv37.i588.i, %shr38.i589.i
  store i32 %conv44.i590.i, ptr %arrayidx34.i587.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %assemble_hw_scaling_list.exit
  %i.0605.i = phi i32 [ 0, %assemble_hw_scaling_list.exit ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %flags286.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %48, i32 %i.0605.i, i32 7
  %143 = ptrtoint ptr %flags286.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %flags286.i, align 4
  %and287.i = lshr i32 %144, 2
  %and287.lobit.i = and i32 %and287.i, 1
  %conv294.i = shl nuw nsw i32 %i.0605.i, 16
  %.compoundliteral291.sroa.0.0.insert.shift.i = add nuw nsw i32 %conv294.i, 14155776
  %field.sroa.0.0.extract.shift.i.i = lshr exact i32 %.compoundliteral291.sroa.0.0.insert.shift.i, 16
  %conv1.i.i = and i32 %field.sroa.0.0.extract.shift.i.i, 31
  %div59.i.i = lshr i32 %.compoundliteral291.sroa.0.0.insert.shift.i, 21
  %sh_prom.i.i = zext i32 %conv1.i.i to i64
  %shl.neg.i.i = shl nsw i64 -1, %sh_prom.i.i
  %sub10.i.i = xor i32 %conv1.i.i, 63
  %sh_prom11.i.i = zext i32 %sub10.i.i to i64
  %shr.i.i = lshr i64 -1, %sh_prom11.i.i
  %and.i.i = and i64 %shr.i.i, %shl.neg.i.i
  %conv13.i591.i = zext i32 %and287.lobit.i to i64
  %shl16.i592.i = shl nuw nsw i64 %conv13.i591.i, %sh_prom.i.i
  %and17.i593.i = and i64 %and.i.i, %shl16.i592.i
  %idxprom.i.i = and i32 %div59.i.i, 255
  %arrayidx.i594.i = getelementptr i32, ptr %arrayidx.i, i32 %idxprom.i.i
  %145 = ptrtoint ptr %arrayidx.i594.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx.i594.i, align 4
  %147 = trunc i64 %and.i.i to i32
  %148 = xor i32 %147, -1
  %conv20.i595.i = and i32 %146, %148
  %149 = trunc i64 %and17.i593.i to i32
  %conv24.i596.i = or i32 %conv20.i595.i, %149
  store i32 %conv24.i596.i, ptr %arrayidx.i594.i, align 4
  %inc.i = add nuw nsw i32 %i.0605.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %assemble_hw_pps.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

assemble_hw_pps.exit:                             ; preds = %for.body.i
  %150 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %6, align 8
  %152 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %priv, align 4
  %154 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %7, align 4
  %156 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %153, align 4
  %log2_max_frame_num_minus4.i52 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %155, i32 0, i32 7
  %158 = ptrtoint ptr %log2_max_frame_num_minus4.i52 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %log2_max_frame_num_minus4.i52, align 1
  %conv.i = zext i8 %159 to i32
  %shl.neg.i = shl i32 -16, %conv.i
  %rps.i = getelementptr inbounds %struct.rkvdec_h264_priv_tbl, ptr %157, i32 0, i32 2
  %160 = call ptr @memset(ptr %rps.i, i32 0, i32 256)
  %frame_num12.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %151, i32 0, i32 2
  %161 = trunc i32 %shl.neg.i to i16
  br label %for.body.i55

for.cond26.preheader.i:                           ; preds = %for.inc.i
  %reflists.i = getelementptr inbounds %struct.rkvdec_h264_ctx, ptr %153, i32 0, i32 1
  %num_valid.i = getelementptr inbounds %struct.rkvdec_h264_ctx, ptr %153, i32 0, i32 1, i32 3
  br label %for.cond30.preheader.i

for.body.i55:                                     ; preds = %for.inc.i.for.body.i55_crit_edge, %assemble_hw_pps.exit
  %i.0106.i = phi i32 [ 0, %assemble_hw_pps.exit ], [ %inc.i56, %for.inc.i.for.body.i55_crit_edge ]
  %flags.i53 = getelementptr %struct.v4l2_h264_dpb_entry, ptr %151, i32 %i.0106.i, i32 7
  %162 = ptrtoint ptr %flags.i53 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %flags.i53, align 4
  %and.i = and i32 %163, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i54 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i54, label %for.body.i55.for.inc.i_crit_edge, label %if.end.i

for.body.i55.for.inc.i_crit_edge:                 ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i55
  %and8.i = and i32 %163, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i, label %if.end.i.if.then16.i_crit_edge

if.end.i.if.then16.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %frame_num.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %151, i32 %i.0106.i, i32 2
  %164 = ptrtoint ptr %frame_num.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %frame_num.i, align 4
  %166 = ptrtoint ptr %frame_num12.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %frame_num12.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %165, i16 %167)
  %cmp14.i = icmp ult i16 %165, %167
  br i1 %cmp14.i, label %lor.lhs.false.i.if.then16.i_crit_edge, label %if.end20.i

lor.lhs.false.i.if.then16.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16.i

if.then16.i:                                      ; preds = %lor.lhs.false.i.if.then16.i_crit_edge, %if.end.i.if.then16.i_crit_edge
  %frame_num18.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %151, i32 %i.0106.i, i32 2
  %168 = ptrtoint ptr %frame_num18.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %frame_num18.i, align 4
  br label %for.inc.sink.split.i

if.end20.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv24.i = add i16 %165, %161
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.end20.i, %if.then16.i
  %conv24.sink.i = phi i16 [ %conv24.i, %if.end20.i ], [ %169, %if.then16.i ]
  %arrayidx25.i = getelementptr i16, ptr %rps.i, i32 %i.0106.i
  %170 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv24.sink.i, ptr %arrayidx25.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %for.body.i55.for.inc.i_crit_edge
  %inc.i56 = add nuw nsw i32 %i.0106.i, 1
  %exitcond.not.i57 = icmp eq i32 %inc.i56, 16
  br i1 %exitcond.not.i57, label %for.cond26.preheader.i, label %for.inc.i.for.body.i55_crit_edge

for.inc.i.for.body.i55_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i55

for.cond30.preheader.i:                           ; preds = %for.inc67.i.for.cond30.preheader.i_crit_edge, %for.cond26.preheader.i
  %j.0114.i = phi i32 [ 0, %for.cond26.preheader.i ], [ %inc68.i, %for.inc67.i.for.cond30.preheader.i_crit_edge ]
  %171 = ptrtoint ptr %num_valid.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %num_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %cmp32109.not.i = icmp eq i8 %172, 0
  br i1 %cmp32109.not.i, label %for.cond30.preheader.i.for.inc67.i_crit_edge, label %for.body34.lr.ph.i

for.cond30.preheader.i.for.inc67.i_crit_edge:     ; preds = %for.cond30.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc67.i

for.body34.lr.ph.i:                               ; preds = %for.cond30.preheader.i
  %mul55.i = mul nuw nsw i32 %j.0114.i, 224
  %add56.i = add nuw nsw i32 %mul55.i, 288
  br label %for.body34.i

for.body34.i:                                     ; preds = %cleanup.i.for.body34.i_crit_edge, %for.body34.lr.ph.i
  %i.1110.i = phi i32 [ 0, %for.body34.lr.ph.i ], [ %inc65.i, %cleanup.i.for.body34.i_crit_edge ]
  %173 = zext i32 %j.0114.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values)
  switch i32 %j.0114.i, label %for.body34.i.if.end48.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb38.i
    i32 2, label %sw.bb41.i
  ]

for.body34.i.if.end48.i_crit_edge:                ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48.i

sw.bb.i:                                          ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx37.i = getelementptr [16 x i8], ptr %reflists.i, i32 0, i32 %i.1110.i
  br label %sw.epilog.i

sw.bb38.i:                                        ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx40.i = getelementptr %struct.rkvdec_h264_ctx, ptr %153, i32 0, i32 1, i32 1, i32 %i.1110.i
  br label %sw.epilog.i

sw.bb41.i:                                        ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx43.i = getelementptr %struct.rkvdec_h264_ctx, ptr %153, i32 0, i32 1, i32 2, i32 %i.1110.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb41.i, %sw.bb38.i, %sw.bb.i
  %idx.0.in.i = phi ptr [ %arrayidx43.i, %sw.bb41.i ], [ %arrayidx40.i, %sw.bb38.i ], [ %arrayidx37.i, %sw.bb.i ]
  %174 = ptrtoint ptr %idx.0.in.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %idx.0.i = load i8, ptr %idx.0.in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %idx.0.i)
  %cmp45.i = icmp ugt i8 %idx.0.i, 15
  br i1 %cmp45.i, label %sw.epilog.i.cleanup.i_crit_edge, label %sw.epilog.i.if.end48.i_crit_edge

sw.epilog.i.if.end48.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48.i

sw.epilog.i.cleanup.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end48.i:                                       ; preds = %sw.epilog.i.if.end48.i_crit_edge, %for.body34.i.if.end48.i_crit_edge
  %idx.0105.i = phi i8 [ %idx.0.i, %sw.epilog.i.if.end48.i_crit_edge ], [ 0, %for.body34.i.if.end48.i_crit_edge ]
  %conv44.i = zext i8 %idx.0105.i to i32
  %flags50.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %151, i32 %conv44.i, i32 7
  %175 = ptrtoint ptr %flags50.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %flags50.i, align 4
  %mul57.i = mul nuw nsw i32 %i.1110.i, 7
  %add58.i = add nuw nsw i32 %add56.i, %mul57.i
  %177 = shl i32 %176, 3
  %shl62.i = and i32 %177, 16
  %or.i = or i32 %shl62.i, %conv44.i
  %conv1.i.i58 = and i32 %add58.i, 31
  %178 = lshr i32 %add58.i, 5
  %sh_prom.i.i59 = zext i32 %conv1.i.i58 to i64
  %shl.neg.i.i60 = shl nsw i64 -1, %sh_prom.i.i59
  %sub10.i.i61 = sub nuw nsw i32 59, %conv1.i.i58
  %sh_prom11.i.i62 = zext i32 %sub10.i.i61 to i64
  %shr.i.i63 = lshr i64 -1, %sh_prom11.i.i62
  %and.i.i64 = and i64 %shr.i.i63, %shl.neg.i.i60
  %conv13.i.i65 = zext i32 %or.i to i64
  %shl16.i.i66 = shl nuw nsw i64 %conv13.i.i65, %sh_prom.i.i59
  %and17.i.i67 = and i64 %shl16.i.i66, %and.i.i64
  %idxprom.i.i68 = and i32 %178, 255
  %arrayidx.i.i = getelementptr i32, ptr %rps.i, i32 %idxprom.i.i68
  %179 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx.i.i, align 4
  %181 = trunc i64 %and.i.i64 to i32
  %182 = xor i32 %181, -1
  %conv20.i.i = and i32 %180, %182
  %183 = trunc i64 %and17.i.i67 to i32
  %conv24.i.i = or i32 %conv20.i.i, %183
  store i32 %conv24.i.i, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %conv1.i.i58)
  %cmp.i.i = icmp ugt i32 %conv1.i.i58, 27
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end48.i.cleanup.i_crit_edge

if.end48.i.cleanup.i_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.then.i.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr30.i.i = lshr i64 %shr.i.i63, 32
  %add33.i.i = add nuw nsw i32 %idxprom.i.i68, 1
  %arrayidx34.i.i69 = getelementptr i32, ptr %rps.i, i32 %add33.i.i
  %184 = ptrtoint ptr %arrayidx34.i.i69 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx34.i.i69, align 4
  %186 = trunc i64 %shr30.i.i to i32
  %187 = xor i32 %186, -1
  %conv37.i.i = and i32 %185, %187
  %shr38.i.i = lshr i64 %and17.i.i67, 32
  %188 = trunc i64 %shr38.i.i to i32
  %conv44.i.i = or i32 %conv37.i.i, %188
  store i32 %conv44.i.i, ptr %arrayidx34.i.i69, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i.i, %if.end48.i.cleanup.i_crit_edge, %sw.epilog.i.cleanup.i_crit_edge
  %inc65.i = add nuw nsw i32 %i.1110.i, 1
  %189 = ptrtoint ptr %num_valid.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %num_valid.i, align 4
  %conv31.i = zext i8 %190 to i32
  %cmp32.i = icmp ult i32 %inc65.i, %conv31.i
  br i1 %cmp32.i, label %cleanup.i.for.body34.i_crit_edge, label %cleanup.i.for.inc67.i_crit_edge

cleanup.i.for.inc67.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc67.i

cleanup.i.for.body34.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body34.i

for.inc67.i:                                      ; preds = %cleanup.i.for.inc67.i_crit_edge, %for.cond30.preheader.i.for.inc67.i_crit_edge
  %inc68.i = add nuw nsw i32 %j.0114.i, 1
  %exitcond116.not.i = icmp eq i32 %inc68.i, 3
  br i1 %exitcond116.not.i, label %assemble_hw_rps.exit, label %for.inc67.i.for.cond30.preheader.i_crit_edge

for.inc67.i.for.cond30.preheader.i_crit_edge:     ; preds = %for.inc67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond30.preheader.i

assemble_hw_rps.exit:                             ; preds = %for.inc67.i
  %191 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev, align 4
  %193 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %6, align 8
  %195 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %7, align 4
  %197 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %priv, align 4
  %dma.i73 = getelementptr inbounds %struct.rkvdec_aux_buf, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %dma.i73 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %dma.i73, align 4
  %201 = ptrtoint ptr %run to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %run, align 8
  %203 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %5, align 4
  %regs.i = getelementptr inbounds %struct.rkvdec_dev, ptr %192, i32 0, i32 6
  %205 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %206, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 4096) #6, !srcloc !17
  %fmt.i74 = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 2, i32 1
  %bit_depth_luma_minus8.i75 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %196, i32 0, i32 5
  %207 = ptrtoint ptr %bit_depth_luma_minus8.i75 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %bit_depth_luma_minus8.i75, align 1
  %conv.i76 = zext i8 %208 to i32
  %add.i77 = add nuw nsw i32 %conv.i76, 8
  %209 = ptrtoint ptr %fmt.i74 to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %210 = load i32, ptr %fmt.i74, align 1
  %mul.i = mul i32 %add.i77, %210
  %div207.i = lshr i32 %mul.i, 3
  %height.i78 = getelementptr inbounds %struct.rkvdec_ctx, ptr %ctx, i32 0, i32 2, i32 1, i32 0, i32 1
  %211 = ptrtoint ptr %height.i78 to i32
  call void @__asan_loadN_noabort(i32 %211, i32 4)
  %212 = load i32, ptr %height.i78, align 1
  %sub.i79 = add i32 %212, -1
  %or.i80 = or i32 %sub.i79, 15
  %add5.i = add i32 %or.i80, 1
  %mul6.i = mul i32 %add5.i, %div207.i
  %chroma_format_idc.i81 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %196, i32 0, i32 4
  %213 = ptrtoint ptr %chroma_format_idc.i81 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %chroma_format_idc.i81, align 4
  %215 = zext i8 %214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %214, label %if.end26.fold.split.i [
    i8 0, label %assemble_hw_rps.exit.if.end26.i_crit_edge
    i8 1, label %if.then13.i
    i8 2, label %if.then22.i
  ]

assemble_hw_rps.exit.if.end26.i_crit_edge:        ; preds = %assemble_hw_rps.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then13.i:                                      ; preds = %assemble_hw_rps.exit
  call void @__sanitizer_cov_trace_pc() #8
  %div14211.i = lshr exact i32 %mul6.i, 1
  %add15.i = add i32 %div14211.i, %mul6.i
  br label %if.end26.i

if.then22.i:                                      ; preds = %assemble_hw_rps.exit
  call void @__sanitizer_cov_trace_pc() #8
  %mul23.i = shl i32 %mul6.i, 1
  br label %if.end26.i

if.end26.fold.split.i:                            ; preds = %assemble_hw_rps.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end26.fold.split.i, %if.then22.i, %if.then13.i, %assemble_hw_rps.exit.if.end26.i_crit_edge
  %yuv_virstride.0.i = phi i32 [ %add15.i, %if.then13.i ], [ %mul23.i, %if.then22.i ], [ %mul6.i, %assemble_hw_rps.exit.if.end26.i_crit_edge ], [ 0, %if.end26.fold.split.i ]
  %div27208.i = lshr i32 %mul.i, 7
  %and.i82 = and i32 %div27208.i, 511
  %or30.i = mul nuw nsw i32 %and.i82, 4097
  %or32.i = add nuw nsw i32 %or30.i, -2095104
  %216 = call i32 @llvm.bswap.i32(i32 %or32.i) #6
  %217 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %regs.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %218, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %216) #6, !srcloc !17
  %call.i.i = call ptr @vb2_plane_cookie(ptr noundef %202, i32 noundef 0) #6
  %219 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %call.i.i, align 4
  %221 = call i32 @llvm.bswap.i32(i32 %220) #6
  %222 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regs.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %223, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %221) #6, !srcloc !17
  %224 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regs.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %225, i32 164
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %221) #6, !srcloc !17
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %202, i32 0, i32 4
  %226 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %cmp.not.i.i = icmp eq i32 %227, 0
  br i1 %cmp.not.i.i, label %if.end26.i.vb2_get_plane_payload.exit.i_crit_edge, label %if.then.i.i83

if.end26.i.vb2_get_plane_payload.exit.i_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vb2_get_plane_payload.exit.i

if.then.i.i83:                                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %bytesused.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %202, i32 0, i32 10, i32 0, i32 3
  %228 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %bytesused.i.i, align 4
  %phi.bo.i = and i32 %229, 134217727
  br label %vb2_get_plane_payload.exit.i

vb2_get_plane_payload.exit.i:                     ; preds = %if.then.i.i83, %if.end26.i.vb2_get_plane_payload.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %phi.bo.i, %if.then.i.i83 ], [ 0, %if.end26.i.vb2_get_plane_payload.exit.i_crit_edge ]
  %230 = call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #6
  %231 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %regs.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %232, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %230) #6, !srcloc !17
  %233 = call i32 @llvm.bswap.i32(i32 %200) #6
  %234 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regs.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %235, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 %233) #6, !srcloc !17
  %call.i212.i = call ptr @vb2_plane_cookie(ptr noundef %204, i32 noundef 0) #6
  %236 = ptrtoint ptr %call.i212.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %call.i212.i, align 4
  %238 = call i32 @llvm.bswap.i32(i32 %237) #6
  %239 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %regs.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %240, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %238) #6, !srcloc !17
  %div51209.i = lshr exact i32 %mul6.i, 4
  %and52.i = and i32 %div51209.i, 1048575
  %241 = call i32 @llvm.bswap.i32(i32 %and52.i) #6
  %242 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %regs.i, align 4
  %add.ptr54.i = getelementptr i8, ptr %243, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 %241) #6, !srcloc !17
  %div55210.i = lshr i32 %yuv_virstride.0.i, 4
  %and56.i = and i32 %div55210.i, 2097151
  %244 = call i32 @llvm.bswap.i32(i32 %and56.i) #6
  %245 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %regs.i, align 4
  %add.ptr58.i = getelementptr i8, ptr %246, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.i, i32 %244) #6, !srcloc !17
  %m2m_ctx1.i.i = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  br label %for.body.i85

for.body.i85:                                     ; preds = %if.end107.i.for.body.i85_crit_edge, %vb2_get_plane_payload.exit.i
  %i.0216.i = phi i32 [ 0, %vb2_get_plane_payload.exit.i ], [ %inc.i89, %if.end107.i.for.body.i85_crit_edge ]
  %247 = ptrtoint ptr %m2m_ctx1.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %m2m_ctx1.i.i, align 4
  %249 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %6, align 8
  %cap_q_ctx.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %248, i32 0, i32 7
  %flags.i.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %250, i32 %i.0216.i, i32 7
  %251 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %flags.i.i, align 4
  %and.i.i84 = and i32 %252, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i84)
  %tobool.not.i.i = icmp eq i32 %and.i.i84, 0
  br i1 %tobool.not.i.i, label %for.body.i85.cleanup.sink.split.i.i_crit_edge, label %if.end.i.i

for.body.i85.cleanup.sink.split.i.i_crit_edge:    ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end.i.i:                                       ; preds = %for.body.i85
  %arrayidx.i.i86 = getelementptr %struct.v4l2_h264_dpb_entry, ptr %250, i32 %i.0216.i
  %253 = ptrtoint ptr %arrayidx.i.i86 to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %arrayidx.i.i86, align 8
  %call.i213.i = call i32 @vb2_find_timestamp(ptr noundef %cap_q_ctx.i.i, i64 noundef %254, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213.i)
  %cmp.i.i87 = icmp slt i32 %call.i213.i, 0
  br i1 %cmp.i.i87, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end5.i.i

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %num_buffers.i.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %248, i32 0, i32 7, i32 0, i32 21
  %255 = ptrtoint ptr %num_buffers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %num_buffers.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %256, i32 %call.i213.i)
  %cmp.i.i.i = icmp ugt i32 %256, %call.i213.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.get_ref_buf.exit.i_crit_edge

if.end5.i.i.get_ref_buf.exit.i_crit_edge:         ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_ref_buf.exit.i

if.then.i.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i.i = getelementptr %struct.vb2_queue, ptr %cap_q_ctx.i.i, i32 0, i32 20, i32 %call.i213.i
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then.i.i.i, %if.end.i.i.cleanup.sink.split.i.i_crit_edge, %for.body.i85.cleanup.sink.split.i.i_crit_edge
  %arrayidx.i.sink.i.i = phi ptr [ %arrayidx.i.i.i, %if.then.i.i.i ], [ %5, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ], [ %5, %for.body.i85.cleanup.sink.split.i.i_crit_edge ]
  %257 = ptrtoint ptr %arrayidx.i.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %arrayidx.i.sink.i.i, align 4
  br label %get_ref_buf.exit.i

get_ref_buf.exit.i:                               ; preds = %cleanup.sink.split.i.i, %if.end5.i.i.get_ref_buf.exit.i_crit_edge
  %retval.0.i214.i = phi ptr [ null, %if.end5.i.i.get_ref_buf.exit.i_crit_edge ], [ %258, %cleanup.sink.split.i.i ]
  %call.i215.i = call ptr @vb2_plane_cookie(ptr noundef %retval.0.i214.i, i32 noundef 0) #6
  %259 = ptrtoint ptr %call.i215.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %call.i215.i, align 4
  %flags.i88 = getelementptr %struct.v4l2_h264_dpb_entry, ptr %194, i32 %i.0216.i, i32 7
  %261 = ptrtoint ptr %flags.i88 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %flags.i88, align 4
  %and63.i = shl i32 %262, 2
  %263 = and i32 %and63.i, 8
  %264 = or i32 %263, %260
  %and69.i = lshr i32 %262, 3
  %265 = and i32 %and69.i, 1
  %266 = or i32 %264, %265
  %fields.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %194, i32 %i.0216.i, i32 3
  %267 = ptrtoint ptr %fields.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %fields.i, align 2
  %269 = shl i8 %268, 1
  %270 = and i8 %269, 2
  %271 = zext i8 %270 to i32
  %272 = or i32 %266, %271
  %273 = and i8 %269, 4
  %274 = zext i8 %273 to i32
  %275 = or i32 %272, %274
  %top_field_order_cnt.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %194, i32 %i.0216.i, i32 5
  %276 = ptrtoint ptr %top_field_order_cnt.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %top_field_order_cnt.i, align 4
  %278 = call i32 @llvm.bswap.i32(i32 %277) #6
  %279 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %regs.i, align 4
  %arrayidx91.i = getelementptr [16 x i32], ptr @poc_reg_tbl_top_field, i32 0, i32 %i.0216.i
  %281 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %arrayidx91.i, align 4
  %add.ptr92.i = getelementptr i8, ptr %280, i32 %282
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.i, i32 %278) #6, !srcloc !17
  %bottom_field_order_cnt.i = getelementptr %struct.v4l2_h264_dpb_entry, ptr %194, i32 %i.0216.i, i32 6
  %283 = ptrtoint ptr %bottom_field_order_cnt.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %bottom_field_order_cnt.i, align 8
  %285 = call i32 @llvm.bswap.i32(i32 %284) #6
  %286 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %regs.i, align 4
  %arrayidx95.i = getelementptr [16 x i32], ptr @poc_reg_tbl_bottom_field, i32 0, i32 %i.0216.i
  %288 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx95.i, align 4
  %add.ptr96.i = getelementptr i8, ptr %287, i32 %289
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96.i, i32 %285) #6, !srcloc !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.0216.i)
  %cmp97.i = icmp ult i32 %i.0216.i, 15
  %290 = call i32 @llvm.bswap.i32(i32 %275) #6
  %291 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %regs.i, align 4
  br i1 %cmp97.i, label %if.then99.i, label %if.else104.i

if.then99.i:                                      ; preds = %get_ref_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul101.i = shl nuw nsw i32 %i.0216.i, 2
  %add102.i = add nuw nsw i32 %mul101.i, 40
  %add.ptr103.i = getelementptr i8, ptr %292, i32 %add102.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103.i, i32 %290) #6, !srcloc !17
  br label %if.end107.i

if.else104.i:                                     ; preds = %get_ref_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr106.i = getelementptr i8, ptr %292, i32 192
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.i, i32 %290) #6, !srcloc !17
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.else104.i, %if.then99.i
  %inc.i89 = add nuw nsw i32 %i.0216.i, 1
  %exitcond.not.i90 = icmp eq i32 %inc.i89, 16
  br i1 %exitcond.not.i90, label %config_registers.exit, label %if.end107.i.for.body.i85_crit_edge

if.end107.i.for.body.i85_crit_edge:               ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i85

config_registers.exit:                            ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #8
  %top_field_order_cnt108.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %194, i32 0, i32 3
  %293 = ptrtoint ptr %top_field_order_cnt108.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %top_field_order_cnt108.i, align 4
  %295 = call i32 @llvm.bswap.i32(i32 %294) #6
  %296 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %regs.i, align 4
  %add.ptr111.i = getelementptr i8, ptr %297, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.i, i32 %295) #6, !srcloc !17
  %bottom_field_order_cnt112.i = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %194, i32 0, i32 4
  %298 = ptrtoint ptr %bottom_field_order_cnt112.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %bottom_field_order_cnt112.i, align 8
  %300 = call i32 @llvm.bswap.i32(i32 %299) #6
  %301 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %regs.i, align 4
  %add.ptr115.i = getelementptr i8, ptr %302, i32 296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115.i, i32 %300) #6, !srcloc !17
  %add116.i = add i32 %200, 4576
  %303 = call i32 @llvm.bswap.i32(i32 %add116.i) #6
  %304 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %regs.i, align 4
  %add.ptr118.i = getelementptr i8, ptr %305, i32 168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118.i, i32 %303) #6, !srcloc !17
  %add119.i = add i32 %200, 4320
  %306 = call i32 @llvm.bswap.i32(i32 %add119.i) #6
  %307 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %regs.i, align 4
  %add.ptr121.i = getelementptr i8, ptr %308, i32 172
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121.i, i32 %306) #6, !srcloc !17
  %309 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %regs.i, align 4
  %add.ptr123.i = getelementptr i8, ptr %310, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123.i, i32 0) #6, !srcloc !17
  %311 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %regs.i, align 4
  %add.ptr125.i = getelementptr i8, ptr %312, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125.i, i32 0) #6, !srcloc !17
  %add126.i = add i32 %200, 12768
  %313 = call i32 @llvm.bswap.i32(i32 %add126.i) #6
  %314 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %regs.i, align 4
  %add.ptr128.i = getelementptr i8, ptr %315, i32 300
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128.i, i32 %313) #6, !srcloc !17
  call void @rkvdec_run_postamble(ptr noundef %ctx, ptr noundef nonnull %run) #6
  %watchdog_work = getelementptr inbounds %struct.rkvdec_dev, ptr %2, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %316 = load ptr, ptr @system_wq, align 4
  %call.i.i91 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %316, ptr noundef %watchdog_work, i32 noundef 200) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  call void @arm_heavy_mb() #6
  %regs = getelementptr inbounds %struct.rkvdec_dev, ptr %2, i32 0, i32 6
  %317 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %318, i32 176
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #6, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !19
  call void @arm_heavy_mb() #6
  %319 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %regs, align 4
  %add.ptr14 = getelementptr i8, ptr %320, i32 308
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 -1) #6, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !20
  call void @arm_heavy_mb() #6
  %321 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %regs, align 4
  %add.ptr19 = getelementptr i8, ptr %322, i32 1040
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 16777216) #6, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !21
  call void @arm_heavy_mb() #6
  %323 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %regs, align 4
  %add.ptr24 = getelementptr i8, ptr %324, i32 1104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 16777216) #6, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @arm_heavy_mb() #6
  %325 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %regs, align 4
  %add.ptr29 = getelementptr i8, ptr %326, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 1660944384) #6, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %run) #6
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %reflist_builder) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_h264_init_reflist_builder(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_h264_build_p_ref_list(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_h264_build_b_ref_lists(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rkvdec_run_postamble(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rkvdec_run_preamble(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_find_timestamp(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @rkvdec_h264_fmt_ops, !1, !"rkvdec_h264_fmt_ops", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/rkvdec/rkvdec-h264.c", i32 1125, i32 35}
!2 = !{ptr @rkvdec_h264_cabac_table, !3, !"rkvdec_h264_cabac_table", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/rkvdec/rkvdec-h264.c", i32 134, i32 17}
!4 = !{ptr @poc_reg_tbl_top_field, !5, !"poc_reg_tbl_top_field", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/rkvdec/rkvdec-h264.c", i32 819, i32 18}
!6 = !{ptr @poc_reg_tbl_bottom_field, !7, !"poc_reg_tbl_bottom_field", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/rkvdec/rkvdec-h264.c", i32 838, i32 18}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 6462299}
!18 = !{i64 2156625296}
!19 = !{i64 2156625725}
!20 = !{i64 2156626145}
!21 = !{i64 2156626538}
!22 = !{i64 2156627375}
