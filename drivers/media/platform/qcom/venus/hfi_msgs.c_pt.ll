; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/venus/hfi_msgs.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/venus/hfi_msgs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hfi_done_handler = type { i32, i32, i32, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.venus_core = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x ptr], [2 x ptr], [2 x ptr], ptr, ptr, i8, [3 x ptr], ptr, ptr, [2 x ptr], ptr, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, i32, %struct.video_firmware, %struct.mutex, %struct.list_head, %struct.atomic_t, i32, %struct.completion, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.mutex, i32, i32, i32, ptr, ptr, %struct.delayed_work, [32 x %struct.hfi_plat_caps], i32, i32, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.video_firmware = type { ptr, ptr, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hfi_plat_caps = type { i32, i32, i8, i32, [32 x %struct.hfi_capability], i32, [16 x %struct.hfi_profile_level], i32, [32 x %struct.raw_formats], i8 }
%struct.hfi_capability = type { i32, i32, i32, i32 }
%struct.hfi_profile_level = type { i32, i32 }
%struct.raw_formats = type { i32, i32 }
%struct.hfi_pkt_hdr = type { i32, i32 }
%struct.hfi_session_hdr_pkt = type { %struct.hfi_pkt_hdr, i32 }
%struct.hfi_event_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.98 }
%struct.anon.98 = type { i32, i32, i32, i32 }
%struct.hfi_msg_event_notify_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32, i32, [1 x i32] }
%struct.venus_inst = type { %struct.list_head, %struct.mutex, ptr, %struct.clock_data, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i8, %struct.v4l2_ctrl_handler, %union.anon.95, %struct.v4l2_fh, i32, i32, i32, i32, %struct.v4l2_rect, i32, i32, i32, i32, i8, i8, i8, i32, %struct.wait_queue_head, i32, i32, [32 x %struct.venus_ts_metadata], [32 x i32], i64, %struct.v4l2_fract, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, i32, %struct.completion, i32, i8, ptr, i32, %union.hfi_get_property, i8, i32, i32, i8, i8, i32, %struct.ida }
%struct.clock_data = type { i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%union.anon.95 = type { %struct.vdec_controls, [224 x i8] }
%struct.vdec_controls = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.venus_ts_metadata = type { i8, i64, i64, i32, %struct.v4l2_timecode }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_fract = type { i32, i32 }
%union.hfi_get_property = type { [11 x %struct.hfi_buffer_requirements] }
%struct.hfi_buffer_requirements = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hfi_inst_ops = type { ptr, ptr, ptr }
%struct.venus_resources = type { i64, ptr, i32, ptr, i32, ptr, i32, ptr, i32, [4 x ptr], i32, [2 x ptr], [2 x ptr], i32, [3 x ptr], i32, ptr, i32, [2 x ptr], i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.hfi_msg_sys_init_done_pkt = type { %struct.hfi_pkt_hdr, i32, i32, [1 x i32] }
%struct.hfi_msg_sys_property_info_pkt = type { %struct.hfi_pkt_hdr, i32, i32, [0 x i8] }
%struct.hfi_msg_sys_release_resource_done_pkt = type { %struct.hfi_pkt_hdr, i32, i32 }
%struct.hfi_msg_sys_ping_ack_pkt = type { %struct.hfi_pkt_hdr, i32 }
%struct.hfi_msg_sys_pc_prep_done_pkt = type { %struct.hfi_pkt_hdr, i32 }
%struct.hfi_msg_session_init_done_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32, [1 x i32] }
%struct.hfi_msg_session_end_done_pkt = type { %struct.hfi_session_hdr_pkt, i32 }
%struct.hfi_msg_session_load_resources_done_pkt = type { %struct.hfi_session_hdr_pkt, i32 }
%struct.hfi_msg_session_start_done_pkt = type { %struct.hfi_session_hdr_pkt, i32 }
%struct.hfi_msg_session_stop_done_pkt = type { %struct.hfi_session_hdr_pkt, i32 }
%struct.hfi_msg_sys_session_abort_done_pkt = type { %struct.hfi_session_hdr_pkt, i32 }
%struct.hfi_msg_session_empty_buffer_done_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.hfi_msg_session_fbd_compressed_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.hfi_msg_session_fbd_uncompressed_plane0_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.hfi_msg_session_flush_done_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32 }
%struct.hfi_msg_session_property_info_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32, [0 x i8] }
%struct.hfi_msg_session_release_resources_done_pkt = type { %struct.hfi_session_hdr_pkt, i32 }
%struct.hfi_msg_session_get_sequence_hdr_done_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32, i32 }
%struct.hfi_msg_session_release_buffers_done_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32, [1 x i32] }

@handlers = internal constant { [20 x %struct.hfi_done_handler], [112 x i8] } { [20 x %struct.hfi_done_handler] [%struct.hfi_done_handler { i32 135169, i32 28, i32 0, ptr @hfi_event_notify, i8 0 }, %struct.hfi_done_handler { i32 131073, i32 20, i32 0, ptr @hfi_sys_init_done, i8 1 }, %struct.hfi_done_handler { i32 131082, i32 16, i32 0, ptr @hfi_sys_property_info, i8 1 }, %struct.hfi_done_handler { i32 131075, i32 16, i32 0, ptr @hfi_sys_rel_resource_done, i8 1 }, %struct.hfi_done_handler { i32 2228226, i32 12, i32 0, ptr @hfi_sys_ping_done, i8 1 }, %struct.hfi_done_handler { i32 131080, i32 8, i32 0, ptr @hfi_sys_idle_done, i8 1 }, %struct.hfi_done_handler { i32 131074, i32 12, i32 0, ptr @hfi_sys_pc_prepare_done, i8 1 }, %struct.hfi_done_handler { i32 131078, i32 24, i32 0, ptr @hfi_session_init_done, i8 0 }, %struct.hfi_done_handler { i32 131079, i32 16, i32 0, ptr @hfi_session_end_done, i8 0 }, %struct.hfi_done_handler { i32 2232321, i32 16, i32 0, ptr @hfi_session_load_res_done, i8 0 }, %struct.hfi_done_handler { i32 2232322, i32 16, i32 0, ptr @hfi_session_start_done, i8 0 }, %struct.hfi_done_handler { i32 2232323, i32 16, i32 0, ptr @hfi_session_stop_done, i8 0 }, %struct.hfi_done_handler { i32 2228228, i32 16, i32 0, ptr @hfi_session_abort_done, i8 0 }, %struct.hfi_done_handler { i32 2232327, i32 36, i32 0, ptr @hfi_session_etb_done, i8 0 }, %struct.hfi_done_handler { i32 2232328, i32 100, i32 72, ptr @hfi_session_ftb_done, i8 0 }, %struct.hfi_done_handler { i32 2232326, i32 20, i32 0, ptr @hfi_session_flush_done, i8 0 }, %struct.hfi_done_handler { i32 2232329, i32 20, i32 0, ptr @hfi_session_prop_info, i8 0 }, %struct.hfi_done_handler { i32 2232330, i32 16, i32 0, ptr @hfi_session_rel_res_done, i8 0 }, %struct.hfi_done_handler { i32 135170, i32 24, i32 0, ptr @hfi_session_get_seq_hdr_done, i8 0 }, %struct.hfi_done_handler { i32 2232332, i32 24, i32 0, ptr @hfi_session_rel_buf_done, i8 0 }], [112 x i8] zeroinitializer }, align 32
@hfi_process_msg_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 763, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"bad packet size (%d should be %d, pkt type:%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hfi_process_msg_packet\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/qcom/venus/hfi_msgs.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hfi_process_msg_packet._entry_ptr = internal global ptr @hfi_process_msg_packet._entry, section ".printk_index", align 4
@hfi_process_msg_packet._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 779, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"no valid instance(pkt session_id:%x, pkt:%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hfi_process_msg_packet._entry_ptr.8 = internal global ptr @hfi_process_msg_packet._entry.5, section ".printk_index", align 4
@hfi_process_msg_packet._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 787, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"got invalid session id:%x\0A\00", [37 x i8] zeroinitializer }, align 32
@hfi_process_msg_packet._entry_ptr.11 = internal global ptr @hfi_process_msg_packet._entry.9, section ".printk_index", align 4
@event_sys_error.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"venus_core\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"event_sys_error\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"VenusHigh: sys error (session id:%x, data1:%x, data2:%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@event_session_error.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"event_session_error\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"VenusHigh: session error: event id:%x, session id:%x\0A\00", [42 x i8] zeroinitializer }, align 32
@event_session_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"session error: event id:%x (%x), session id:%x\0A\00", [48 x i8] zeroinitializer }, align 32
@event_session_error._entry_ptr = internal global ptr @event_session_error._entry, section ".printk_index", align 4
@hfi_sys_property_info.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hfi_sys_property_info\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VenusLow : no properties\0A\00", [38 x i8] zeroinitializer }, align 32
@hfi_sys_property_info.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.18, ptr @.str.2, ptr @.str.20, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VenusLow : unknown property data\0A\00", [62 x i8] zeroinitializer }, align 32
@sys_get_prop_image_version.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sys_get_prop_image_version\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"VenusLow : F/W version: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@hfi_sys_idle_done.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hfi_sys_idle_done\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VenusLow : sys idle\0A\00", [43 x i8] zeroinitializer }, align 32
@hfi_sys_pc_prepare_done.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hfi_sys_pc_prepare_done\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VenusLow : pc prepare done (error %x)\0A\00", [57 x i8] zeroinitializer }, align 32
@hfi_session_prop_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 397, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: no properties\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hfi_session_prop_info\00", [42 x i8] zeroinitializer }, align 32
@hfi_session_prop_info._entry_ptr = internal global ptr @hfi_session_prop_info._entry, section ".printk_index", align 4
@hfi_session_prop_info.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VenusMed : unknown property id:%x\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [22 x i64] [i64 20, i64 32, i64 131073, i64 131074, i64 131075, i64 131078, i64 131079, i64 131080, i64 131082, i64 135169, i64 135170, i64 2228226, i64 2228228, i64 2232321, i64 2232322, i64 2232323, i64 2232326, i64 2232327, i64 2232328, i64 2232329, i64 2232330, i64 2232332]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 16777219, i64 16777222]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 4104, i64 4112, i64 4114, i64 4115]
@__sancov_gen_cov_switch_values.32 = internal global [11 x i64] [i64 9, i64 32, i64 4097, i64 4101, i64 2105345, i64 16789511, i64 16789513, i64 16789514, i64 18886670, i64 18890756, i64 117440526]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 4101, i64 2105345, i64 18890756]
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"handlers\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 631, i32 38 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 762, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 777, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 786, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 153, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 167, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 182, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 283, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 292, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 267, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 323, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 331, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 397, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [48 x i8] c"../drivers/media/platform/qcom/venus/hfi_msgs.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 414, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @event_session_error._entry, ptr @event_session_error._entry_ptr, ptr @hfi_process_msg_packet._entry, ptr @hfi_process_msg_packet._entry.5, ptr @hfi_process_msg_packet._entry.9, ptr @hfi_process_msg_packet._entry_ptr, ptr @hfi_process_msg_packet._entry_ptr.11, ptr @hfi_process_msg_packet._entry_ptr.8, ptr @hfi_session_prop_info._entry, ptr @hfi_session_prop_info._entry_ptr, ptr @handlers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handlers to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfi_process_msg_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfi_process_msg_packet._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfi_process_msg_packet._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_session_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfi_session_prop_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfi_process_watchdog_timeout(ptr noundef %core) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %core_ops.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 36
  %0 = ptrtoint ptr %core_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core_ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %core, i32 noundef 2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfi_process_msg_packet(ptr noundef %core, ptr noundef %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %pkt_type = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %hdr, i32 0, i32 1
  %2 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pkt_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup44_crit_edge [
    i32 135169, label %entry.if.end5_crit_edge
    i32 131073, label %if.end5.fold.split
    i32 131082, label %if.end5.fold.split95
    i32 131075, label %if.end5.fold.split96
    i32 2228226, label %if.end5.fold.split97
    i32 131080, label %if.end5.fold.split98
    i32 131074, label %if.end5.fold.split99
    i32 131078, label %if.end5.fold.split100
    i32 131079, label %if.end5.fold.split101
    i32 2232321, label %if.end5.fold.split102
    i32 2232322, label %if.end5.fold.split103
    i32 2232323, label %if.end5.fold.split104
    i32 2228228, label %if.end5.fold.split105
    i32 2232327, label %if.end5.fold.split106
    i32 2232328, label %if.end5.fold.split107
    i32 2232326, label %if.end5.fold.split108
    i32 2232329, label %if.end5.fold.split109
    i32 2232330, label %if.end5.fold.split110
    i32 135170, label %if.end5.fold.split111
    i32 2232332, label %if.end5.fold.split112
  ]

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup44

if.end5.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split95:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split96:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split97:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split98:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split99:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split100:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split101:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split102:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split103:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split104:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split105:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split106:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split107:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split108:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split109:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split110:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split111:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5.fold.split112:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5:                                          ; preds = %if.end5.fold.split112, %if.end5.fold.split111, %if.end5.fold.split110, %if.end5.fold.split109, %if.end5.fold.split108, %if.end5.fold.split107, %if.end5.fold.split106, %if.end5.fold.split105, %if.end5.fold.split104, %if.end5.fold.split103, %if.end5.fold.split102, %if.end5.fold.split101, %if.end5.fold.split100, %if.end5.fold.split99, %if.end5.fold.split98, %if.end5.fold.split97, %if.end5.fold.split96, %if.end5.fold.split95, %if.end5.fold.split, %entry.if.end5_crit_edge
  %i.090.lcssa = phi i32 [ 0, %entry.if.end5_crit_edge ], [ 1, %if.end5.fold.split ], [ 2, %if.end5.fold.split95 ], [ 3, %if.end5.fold.split96 ], [ 4, %if.end5.fold.split97 ], [ 5, %if.end5.fold.split98 ], [ 6, %if.end5.fold.split99 ], [ 7, %if.end5.fold.split100 ], [ 8, %if.end5.fold.split101 ], [ 9, %if.end5.fold.split102 ], [ 10, %if.end5.fold.split103 ], [ 11, %if.end5.fold.split104 ], [ 12, %if.end5.fold.split105 ], [ 13, %if.end5.fold.split106 ], [ 14, %if.end5.fold.split107 ], [ 15, %if.end5.fold.split108 ], [ 16, %if.end5.fold.split109 ], [ 17, %if.end5.fold.split110 ], [ 18, %if.end5.fold.split111 ], [ 19, %if.end5.fold.split112 ]
  %arrayidx.lcssa = phi ptr [ @handlers, %entry.if.end5_crit_edge ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 1), %if.end5.fold.split ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 2), %if.end5.fold.split95 ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 3), %if.end5.fold.split96 ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 4), %if.end5.fold.split97 ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 5), %if.end5.fold.split98 ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 6), %if.end5.fold.split99 ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 7), %if.end5.fold.split100 ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 8), %if.end5.fold.split101 ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 9), %if.end5.fold.split102 ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 10), %if.end5.fold.split103 ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 11), %if.end5.fold.split104 ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 12), %if.end5.fold.split105 ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 13), %if.end5.fold.split106 ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 14), %if.end5.fold.split107 ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 15), %if.end5.fold.split108 ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 16), %if.end5.fold.split109 ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 17), %if.end5.fold.split110 ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 18), %if.end5.fold.split111 ], [ getelementptr inbounds ([20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 19), %if.end5.fold.split112 ]
  %5 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hdr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %if.end5.if.end17_crit_edge, label %land.lhs.true

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end5
  %pkt_sz = getelementptr [20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 %i.090.lcssa, i32 1
  %7 = ptrtoint ptr %pkt_sz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pkt_sz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp8 = icmp ult i32 %6, %8
  br i1 %cmp8, label %land.lhs.true9, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

land.lhs.true9:                                   ; preds = %land.lhs.true
  %pkt_sz2 = getelementptr [20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 %i.090.lcssa, i32 2
  %9 = ptrtoint ptr %pkt_sz2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pkt_sz2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp11 = icmp ult i32 %6, %10
  br i1 %cmp11, label %do.end, label %land.lhs.true9.if.end17_crit_edge

land.lhs.true9.if.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

do.end:                                           ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pkt_type, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %6, i32 noundef %8, i32 noundef %12) #7
  br label %cleanup44

if.end17:                                         ; preds = %land.lhs.true9.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.end5.if.end17_crit_edge
  %13 = add nsw i32 %i.090.lcssa, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %13)
  %tobool18.not = icmp ult i32 %13, -6
  br i1 %tobool18.not, label %if.else, label %if.end17.if.end42_crit_edge

if.end17.if.end42_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.else:                                          ; preds = %if.end17
  %session_id = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %hdr, i32 0, i32 1
  %14 = ptrtoint ptr %session_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %session_id, align 4
  %lock.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %instances.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 29
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.else
  %inst.0.in.i = phi ptr [ %instances.i, %if.else ], [ %inst.0.i, %for.body.i.for.cond.i_crit_edge ]
  %16 = ptrtoint ptr %inst.0.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %inst.0.i = load ptr, ptr %inst.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %inst.0.i, %instances.i
  br i1 %cmp.not.i, label %to_instance.exit.thread, label %for.body.i

to_instance.exit.thread:                          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %lock.i) #4
  br label %cond.end

for.body.i:                                       ; preds = %for.cond.i
  %17 = ptrtoint ptr %inst.0.i to i32
  %cmp2.i = icmp eq i32 %15, %17
  br i1 %cmp2.i, label %to_instance.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

to_instance.exit:                                 ; preds = %for.body.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #4
  %tobool21.not = icmp eq ptr %inst.0.i, null
  br i1 %tobool21.not, label %to_instance.exit.cond.end_crit_edge, label %to_instance.exit.if.end42_crit_edge

to_instance.exit.if.end42_crit_edge:              ; preds = %to_instance.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

to_instance.exit.cond.end_crit_edge:              ; preds = %to_instance.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.end:                                         ; preds = %to_instance.exit.cond.end_crit_edge, %to_instance.exit.thread
  %18 = ptrtoint ptr %session_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %session_id, align 4
  %20 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.lcssa, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %19, i32 noundef %21) #7
  %22 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pkt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 135169, i32 %23)
  %cmp34.not = icmp eq i32 %23, 135169
  br i1 %cmp34.not, label %cond.end.if.end42_crit_edge, label %cleanup

cond.end.if.end42_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

cleanup:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %session_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %session_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %25) #7
  br label %cleanup44

if.end42:                                         ; preds = %cond.end.if.end42_crit_edge, %to_instance.exit.if.end42_crit_edge, %if.end17.if.end42_crit_edge
  %inst.0 = phi ptr [ null, %if.end17.if.end42_crit_edge ], [ null, %cond.end.if.end42_crit_edge ], [ %inst.0.i, %to_instance.exit.if.end42_crit_edge ]
  %done = getelementptr [20 x %struct.hfi_done_handler], ptr @handlers, i32 0, i32 %i.090.lcssa, i32 3
  %26 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %done, align 4
  tail call void %27(ptr noundef %core, ptr noundef %inst.0, ptr noundef %hdr) #4
  br label %cleanup44

cleanup44:                                        ; preds = %if.end42, %cleanup, %do.end, %entry.cleanup44_crit_edge
  %28 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %retval.0 = load i32, ptr %pkt_type, align 4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_event_notify(ptr noundef %core, ptr noundef %inst, ptr noundef readonly %packet) #0 align 64 {
entry:
  %event.i24 = alloca %struct.hfi_event_data, align 4
  %event.i = alloca %struct.hfi_event_data, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %packet, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %event_id = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, ptr %packet, i32 0, i32 1
  %0 = ptrtoint ptr %event_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 1, label %do.body.i
    i32 2, label %sw.bb1
    i32 16777219, label %sw.bb2
    i32 16777222, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @event_sys_error.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hfi_event_notify, %if.then4.i)) #4
          to label %event_sys_error.exit [label %if.then4.i], !srcloc !68

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %session_id.i = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %packet, i32 0, i32 1
  %5 = ptrtoint ptr %session_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %session_id.i, align 4
  %event_data1.i = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, ptr %packet, i32 0, i32 2
  %7 = ptrtoint ptr %event_data1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %event_data1.i, align 4
  %event_data2.i = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, ptr %packet, i32 0, i32 3
  %9 = ptrtoint ptr %event_data2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %event_data2.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @event_sys_error.__UNIQUE_ID_ddebug298, ptr noundef %4, ptr noundef nonnull @.str.14, i32 noundef %6, i32 noundef %8, i32 noundef %10) #4
  br label %event_sys_error.exit

event_sys_error.exit:                             ; preds = %if.then4.i, %do.body.i
  %core_ops.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 36
  %11 = ptrtoint ptr %core_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %core_ops.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void %14(ptr noundef %core, i32 noundef 3) #4
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %dev1.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %15 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @event_session_error.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hfi_event_notify, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !68

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  %event_data1.i14 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, ptr %packet, i32 0, i32 2
  %17 = ptrtoint ptr %event_data1.i14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %event_data1.i14, align 4
  %session_id.i15 = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %packet, i32 0, i32 1
  %19 = ptrtoint ptr %session_id.i15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %session_id.i15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @event_session_error.__UNIQUE_ID_ddebug299, ptr noundef %16, ptr noundef nonnull @.str.16, i32 noundef %18, i32 noundef %20) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb1
  %tobool4.not.i = icmp eq ptr %inst, null
  br i1 %tobool4.not.i, label %do.end.i.cleanup_crit_edge, label %if.end6.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.i:                                        ; preds = %do.end.i
  %event_data17.i = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, ptr %packet, i32 0, i32 2
  %21 = ptrtoint ptr %event_data17.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %event_data17.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %22, label %do.end10.i [
    i32 4114, label %if.end6.i.sw.bb.i_crit_edge
    i32 4112, label %if.end6.i.sw.bb.i_crit_edge30
    i32 4104, label %if.end6.i.sw.bb.i_crit_edge31
    i32 4115, label %if.end6.i.sw.bb.i_crit_edge32
  ]

if.end6.i.sw.bb.i_crit_edge32:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end6.i.sw.bb.i_crit_edge31:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end6.i.sw.bb.i_crit_edge30:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end6.i.sw.bb.i_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end6.i.sw.bb.i_crit_edge, %if.end6.i.sw.bb.i_crit_edge30, %if.end6.i.sw.bb.i_crit_edge31, %if.end6.i.sw.bb.i_crit_edge32
  %error.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %24 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %error.i, align 8
  br label %cleanup

do.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %event_data2.i16 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, ptr %packet, i32 0, i32 3
  %25 = ptrtoint ptr %event_data2.i16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %event_data2.i16, align 4
  %session_id13.i = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %packet, i32 0, i32 1
  %27 = ptrtoint ptr %session_id13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %session_id13.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.17, i32 noundef %22, i32 noundef %26, i32 noundef %28) #7
  %29 = ptrtoint ptr %event_data17.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %event_data17.i, align 4
  %error15.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %31 = ptrtoint ptr %error15.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %error15.i, align 8
  %ops.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 54
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 8
  %event_notify.i = getelementptr inbounds %struct.hfi_inst_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %event_notify.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %event_notify.i, align 4
  tail call void %35(ptr noundef nonnull %inst, i32 noundef 4, ptr noundef null) #4
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %res.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %36 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %res.i, align 4
  %hfi_version.i = getelementptr inbounds %struct.venus_resources, ptr %37, i32 0, i32 20
  %38 = ptrtoint ptr %hfi_version.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hfi_version.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %event.i) #4
  %40 = call ptr @memset(ptr %event.i, i32 0, i32 72)
  %error.i17 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %41 = ptrtoint ptr %error.i17 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %error.i17, align 8
  %event_data1.i18 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, ptr %packet, i32 0, i32 2
  %42 = ptrtoint ptr %event_data1.i18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %event_data1.i18, align 4
  %.off.i = add i32 %43, -16777217
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %sw.epilog.i, label %sw.bb2.done.sink.split.i_crit_edge

sw.bb2.done.sink.split.i_crit_edge:               ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %done.sink.split.i

sw.epilog.i:                                      ; preds = %sw.bb2
  %event_type.i = getelementptr inbounds %struct.hfi_event_data, ptr %event.i, i32 0, i32 3
  %44 = ptrtoint ptr %event_type.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %event_type.i, align 4
  %event_data2.i19 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, ptr %packet, i32 0, i32 3
  %45 = ptrtoint ptr %event_data2.i19 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %event_data2.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i20 = icmp eq i32 %46, 0
  br i1 %tobool.not.i20, label %sw.epilog.i.done.sink.split.i_crit_edge, label %if.end.i

sw.epilog.i.done.sink.split.i_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done.sink.split.i

if.end.i:                                         ; preds = %sw.epilog.i
  %ext_event_data.i = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, ptr %packet, i32 0, i32 4
  %buf_count45.i = getelementptr inbounds %struct.hfi_event_data, ptr %event.i, i32 0, i32 13
  %input_crop.i = getelementptr inbounds %struct.hfi_event_data, ptr %event.i, i32 0, i32 14
  %top35.i = getelementptr inbounds %struct.hfi_event_data, ptr %event.i, i32 0, i32 14, i32 1
  %width38.i = getelementptr inbounds %struct.hfi_event_data, ptr %event.i, i32 0, i32 14, i32 2
  %height41.i = getelementptr inbounds %struct.hfi_event_data, ptr %event.i, i32 0, i32 14, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp.i = icmp eq i32 %39, 2
  %cond.in.v.i = select i1 %cmp.i, i32 16, i32 20
  %entropy_mode.i = getelementptr inbounds %struct.hfi_event_data, ptr %event.i, i32 0, i32 12
  %colour_space23.i = getelementptr inbounds %struct.hfi_event_data, ptr %event.i, i32 0, i32 11
  %pic_struct19.i = getelementptr inbounds %struct.hfi_event_data, ptr %event.i, i32 0, i32 10
  %bit_depth15.i = getelementptr inbounds %struct.hfi_event_data, ptr %event.i, i32 0, i32 9
  %profile10.i = getelementptr inbounds %struct.hfi_event_data, ptr %event.i, i32 0, i32 7
  %level11.i = getelementptr inbounds %struct.hfi_event_data, ptr %event.i, i32 0, i32 8
  %width5.i = getelementptr inbounds %struct.hfi_event_data, ptr %event.i, i32 0, i32 2
  %height6.i = getelementptr inbounds %struct.hfi_event_data, ptr %event.i, i32 0, i32 1
  br label %do.body.i21

do.body.i21:                                      ; preds = %sw.epilog48.i.do.body.i21_crit_edge, %if.end.i
  %num_properties_changed.0.i = phi i32 [ %46, %if.end.i ], [ %dec.i, %sw.epilog48.i.do.body.i21_crit_edge ]
  %data_ptr.0.i = phi ptr [ %ext_event_data.i, %if.end.i ], [ %data_ptr.1.i, %sw.epilog48.i.do.body.i21_crit_edge ]
  %47 = ptrtoint ptr %data_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_ptr.0.i, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %48, label %do.body.i21.sw.epilog48.i_crit_edge [
    i32 4097, label %sw.bb4.i
    i32 4101, label %sw.bb8.i
    i32 16789511, label %do.body.i21.sw.epilog48.sink.split.i_crit_edge
    i32 16789513, label %sw.bb17.i
    i32 16789514, label %sw.bb21.i
    i32 18890756, label %sw.bb25.i
    i32 2105345, label %sw.bb28.i
    i32 117440526, label %sw.bb31.i
    i32 18886670, label %sw.bb43.i
  ]

do.body.i21.sw.epilog48.sink.split.i_crit_edge:   ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog48.sink.split.i

do.body.i21.sw.epilog48.i_crit_edge:              ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog48.i

sw.bb4.i:                                         ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #6
  %width.i = getelementptr i8, ptr %data_ptr.0.i, i32 8
  %50 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %width.i, align 4
  %52 = ptrtoint ptr %width5.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %width5.i, align 4
  br label %sw.epilog48.sink.split.i

sw.bb8.i:                                         ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr9.i = getelementptr i8, ptr %data_ptr.0.i, i32 4
  %53 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr9.i, align 4
  %55 = ptrtoint ptr %profile10.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %profile10.i, align 4
  br label %sw.epilog48.sink.split.i

sw.bb17.i:                                        ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog48.sink.split.i

sw.bb21.i:                                        ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog48.sink.split.i

sw.bb25.i:                                        ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog48.sink.split.i

sw.bb28.i:                                        ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog48.sink.split.i

sw.bb31.i:                                        ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #6
  %left.i = getelementptr i8, ptr %data_ptr.0.i, i32 16
  %56 = ptrtoint ptr %left.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %left.i, align 4
  %58 = ptrtoint ptr %input_crop.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %input_crop.i, align 4
  %top.i = getelementptr i8, ptr %data_ptr.0.i, i32 20
  %59 = ptrtoint ptr %top.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %top.i, align 4
  %61 = ptrtoint ptr %top35.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %top35.i, align 4
  %width36.i = getelementptr i8, ptr %data_ptr.0.i, i32 24
  %62 = ptrtoint ptr %width36.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %width36.i, align 4
  %64 = ptrtoint ptr %width38.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %width38.i, align 4
  br label %sw.epilog48.sink.split.i

sw.bb43.i:                                        ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog48.sink.split.i

sw.epilog48.sink.split.i:                         ; preds = %sw.bb43.i, %sw.bb31.i, %sw.bb28.i, %sw.bb25.i, %sw.bb21.i, %sw.bb17.i, %sw.bb8.i, %sw.bb4.i, %do.body.i21.sw.epilog48.sink.split.i_crit_edge
  %.sink93.i = phi i32 [ 20, %sw.bb43.i ], [ 28, %sw.bb31.i ], [ %cond.in.v.i, %sw.bb28.i ], [ 4, %sw.bb25.i ], [ 4, %sw.bb21.i ], [ 4, %sw.bb17.i ], [ 8, %sw.bb8.i ], [ 12, %sw.bb4.i ], [ 8, %do.body.i21.sw.epilog48.sink.split.i_crit_edge ]
  %buf_count45.sink.i = phi ptr [ %buf_count45.i, %sw.bb43.i ], [ %height41.i, %sw.bb31.i ], [ %buf_count45.i, %sw.bb28.i ], [ %entropy_mode.i, %sw.bb25.i ], [ %colour_space23.i, %sw.bb21.i ], [ %pic_struct19.i, %sw.bb17.i ], [ %level11.i, %sw.bb8.i ], [ %height6.i, %sw.bb4.i ], [ %bit_depth15.i, %do.body.i21.sw.epilog48.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ 24, %sw.bb43.i ], [ 32, %sw.bb31.i ], [ 36, %sw.bb28.i ], [ 8, %sw.bb25.i ], [ 8, %sw.bb21.i ], [ 8, %sw.bb17.i ], [ 12, %sw.bb8.i ], [ 16, %sw.bb4.i ], [ 12, %do.body.i21.sw.epilog48.sink.split.i_crit_edge ]
  %fw_min_cnt.i = getelementptr i8, ptr %data_ptr.0.i, i32 %.sink93.i
  %65 = ptrtoint ptr %fw_min_cnt.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fw_min_cnt.i, align 4
  %67 = ptrtoint ptr %buf_count45.sink.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %buf_count45.sink.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %data_ptr.0.i, i32 %.sink.i
  br label %sw.epilog48.i

sw.epilog48.i:                                    ; preds = %sw.epilog48.sink.split.i, %do.body.i21.sw.epilog48.i_crit_edge
  %data_ptr.1.i = phi ptr [ %data_ptr.0.i, %do.body.i21.sw.epilog48.i_crit_edge ], [ %add.ptr46.i, %sw.epilog48.sink.split.i ]
  %dec.i = add i32 %num_properties_changed.0.i, -1
  %cmp49.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp49.i, label %sw.epilog48.i.do.body.i21_crit_edge, label %sw.epilog48.i.event_seq_changed.exit_crit_edge

sw.epilog48.i.event_seq_changed.exit_crit_edge:   ; preds = %sw.epilog48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %event_seq_changed.exit

sw.epilog48.i.do.body.i21_crit_edge:              ; preds = %sw.epilog48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i21

done.sink.split.i:                                ; preds = %sw.epilog.i.done.sink.split.i_crit_edge, %sw.bb2.done.sink.split.i_crit_edge
  %.sink94.i = phi i32 [ 4098, %sw.bb2.done.sink.split.i_crit_edge ], [ 4105, %sw.epilog.i.done.sink.split.i_crit_edge ]
  %68 = ptrtoint ptr %error.i17 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %.sink94.i, ptr %error.i17, align 8
  br label %event_seq_changed.exit

event_seq_changed.exit:                           ; preds = %done.sink.split.i, %sw.epilog48.i.event_seq_changed.exit_crit_edge
  %ops.i22 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 54
  %69 = ptrtoint ptr %ops.i22 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i22, align 8
  %event_notify.i23 = getelementptr inbounds %struct.hfi_inst_ops, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %event_notify.i23 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %event_notify.i23, align 4
  call void %72(ptr noundef %inst, i32 noundef 1, ptr noundef nonnull %event.i) #4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %event.i) #4
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %event.i24) #4
  %73 = call ptr @memset(ptr %event.i24, i32 0, i32 72)
  %ext_event_data.i25 = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, ptr %packet, i32 0, i32 4
  %event_type.i26 = getelementptr inbounds %struct.hfi_event_data, ptr %event.i24, i32 0, i32 3
  %74 = ptrtoint ptr %event_type.i26 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 16777222, ptr %event_type.i26, align 4
  %75 = ptrtoint ptr %ext_event_data.i25 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ext_event_data.i25, align 4
  %packet_buffer1.i = getelementptr inbounds %struct.hfi_event_data, ptr %event.i24, i32 0, i32 4
  %77 = ptrtoint ptr %packet_buffer1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %packet_buffer1.i, align 4
  %extradata_buffer.i = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, ptr %packet, i32 1
  %78 = ptrtoint ptr %extradata_buffer.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %extradata_buffer.i, align 4
  %extradata_buffer2.i = getelementptr inbounds %struct.hfi_event_data, ptr %event.i24, i32 0, i32 5
  %80 = ptrtoint ptr %extradata_buffer2.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %extradata_buffer2.i, align 4
  %output_tag.i = getelementptr inbounds %struct.hfi_msg_event_notify_pkt, ptr %packet, i32 1, i32 0, i32 0, i32 1
  %81 = ptrtoint ptr %output_tag.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %output_tag.i, align 4
  %tag.i = getelementptr inbounds %struct.hfi_event_data, ptr %event.i24, i32 0, i32 6
  %83 = ptrtoint ptr %tag.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %tag.i, align 4
  %error.i27 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %84 = ptrtoint ptr %error.i27 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %error.i27, align 8
  %ops.i28 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 54
  %85 = ptrtoint ptr %ops.i28 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops.i28, align 8
  %event_notify.i29 = getelementptr inbounds %struct.hfi_inst_ops, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %event_notify.i29 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %event_notify.i29, align 4
  call void %88(ptr noundef %inst, i32 noundef 1, ptr noundef nonnull %event.i24) #4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %event.i24) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %event_seq_changed.exit, %do.end10.i, %sw.bb.i, %do.end.i.cleanup_crit_edge, %event_sys_error.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_sys_init_done(ptr noundef %core, ptr noundef %inst, ptr noundef %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %error_type = getelementptr inbounds %struct.hfi_msg_sys_init_done_pkt, ptr %packet, i32 0, i32 1
  %0 = ptrtoint ptr %error_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end:                                           ; preds = %entry
  %num_properties = getelementptr inbounds %struct.hfi_msg_sys_init_done_pkt, ptr %packet, i32 0, i32 2
  %2 = ptrtoint ptr %num_properties to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_properties, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.done_crit_edge, label %if.end2

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %packet, align 4
  %add = add i32 %5, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp3 = icmp slt i32 %add, 1
  br i1 %cmp3, label %if.end2.done_crit_edge, label %if.end5

if.end2.done_crit_edge:                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  %data = getelementptr inbounds %struct.hfi_msg_sys_init_done_pkt, ptr %packet, i32 0, i32 3
  %call = tail call i32 @hfi_parser(ptr noundef %core, ptr noundef %inst, ptr noundef %data, i32 noundef %add) #4
  br label %done

done:                                             ; preds = %if.end5, %if.end2.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  %error.0 = phi i32 [ %1, %entry.done_crit_edge ], [ %call, %if.end5 ], [ 2, %if.end.done_crit_edge ], [ 4, %if.end2.done_crit_edge ]
  %error6 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 33
  %6 = ptrtoint ptr %error6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %error.0, ptr %error6, align 4
  %done7 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 32
  tail call void @complete(ptr noundef %done7) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_sys_property_info(ptr nocapture noundef readonly %core, ptr nocapture noundef readnone %inst, ptr noundef %packet) #0 align 64 {
entry:
  %smem_blk_sz.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %num_properties = getelementptr inbounds %struct.hfi_msg_sys_property_info_pkt, ptr %packet, i32 0, i32 1
  %2 = ptrtoint ptr %num_properties to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_properties, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hfi_sys_property_info.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hfi_sys_property_info, %if.then5)) #4
          to label %cleanup [label %if.then5], !srcloc !68

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hfi_sys_property_info.__UNIQUE_ID_ddebug301, ptr noundef %1, ptr noundef nonnull @.str.19) #4
  br label %cleanup

if.end6:                                          ; preds = %entry
  %property = getelementptr inbounds %struct.hfi_msg_sys_property_info_pkt, ptr %packet, i32 0, i32 2
  %4 = ptrtoint ptr %property to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %property, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cond = icmp eq i32 %5, 6
  br i1 %cond, label %sw.bb, label %do.body7

sw.bb:                                            ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smem_blk_sz.i) #4
  %6 = ptrtoint ptr %smem_blk_sz.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %smem_blk_sz.i, align 4, !annotation !69
  %7 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %packet, align 4
  %sub.i = add i32 %8, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 128
  br i1 %cmp.i, label %sw.bb.sys_get_prop_image_version.exit_crit_edge, label %lor.lhs.false.i

sw.bb.sys_get_prop_image_version.exit_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sys_get_prop_image_version.exit

lor.lhs.false.i:                                  ; preds = %sw.bb
  %data.i = getelementptr inbounds %struct.hfi_msg_sys_property_info_pkt, ptr %packet, i32 0, i32 3
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2.i = icmp ugt i32 %3, 1
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %cmp2.i
  br i1 %or.cond, label %lor.lhs.false.i.sys_get_prop_image_version.exit_crit_edge, label %if.end.i

lor.lhs.false.i.sys_get_prop_image_version.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sys_get_prop_image_version.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sys_get_prop_image_version.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hfi_sys_property_info, %if.then7.i)) #4
          to label %do.end.i [label %if.then7.i], !srcloc !68

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sys_get_prop_image_version.__UNIQUE_ID_ddebug300, ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef %data.i) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %if.end.i
  %call9.i = call ptr @qcom_smem_get(i32 noundef -1, i32 noundef 469, ptr noundef nonnull %smem_blk_sz.i) #4
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i.sys_get_prop_image_version.exit_crit_edge, label %land.lhs.true.i

do.end.i.sys_get_prop_image_version.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sys_get_prop_image_version.exit

land.lhs.true.i:                                  ; preds = %do.end.i
  %11 = ptrtoint ptr %smem_blk_sz.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smem_blk_sz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1919, i32 %12)
  %cmp11.i = icmp ugt i32 %12, 1919
  br i1 %cmp11.i, label %if.then12.i, label %land.lhs.true.i.sys_get_prop_image_version.exit_crit_edge

land.lhs.true.i.sys_get_prop_image_version.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sys_get_prop_image_version.exit

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %call9.i, i32 1792
  %13 = call ptr @memcpy(ptr %add.ptr.i, ptr %data.i, i32 128)
  br label %sys_get_prop_image_version.exit

sys_get_prop_image_version.exit:                  ; preds = %if.then12.i, %land.lhs.true.i.sys_get_prop_image_version.exit_crit_edge, %do.end.i.sys_get_prop_image_version.exit_crit_edge, %lor.lhs.false.i.sys_get_prop_image_version.exit_crit_edge, %sw.bb.sys_get_prop_image_version.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smem_blk_sz.i) #4
  br label %cleanup

do.body7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hfi_sys_property_info.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hfi_sys_property_info, %if.then19)) #4
          to label %cleanup [label %if.then19], !srcloc !68

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hfi_sys_property_info.__UNIQUE_ID_ddebug302, ptr noundef %1, ptr noundef nonnull @.str.20) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %do.body7, %sys_get_prop_image_version.exit, %if.then5, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_sys_rel_resource_done(ptr noundef %core, ptr nocapture noundef readnone %inst, ptr nocapture noundef readonly %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %error_type = getelementptr inbounds %struct.hfi_msg_sys_release_resource_done_pkt, ptr %packet, i32 0, i32 2
  %0 = ptrtoint ptr %error_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_type, align 4
  %error = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 33
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %error, align 4
  %done = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 32
  tail call void @complete(ptr noundef %done) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_sys_ping_done(ptr noundef %core, ptr nocapture noundef readnone %inst, ptr nocapture noundef readonly %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 33
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %error, align 4
  %client_data = getelementptr inbounds %struct.hfi_msg_sys_ping_ack_pkt, ptr %packet, i32 0, i32 1
  %1 = ptrtoint ptr %client_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %client_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48879, i32 %2)
  %cmp.not = icmp ne i32 %2, 48879
  %spec.store.select = zext i1 %cmp.not to i32
  %3 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.store.select, ptr %error, align 4
  %done = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 32
  tail call void @complete(ptr noundef %done) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_sys_idle_done(ptr nocapture noundef readonly %core, ptr nocapture noundef readnone %inst, ptr nocapture noundef readnone %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hfi_sys_idle_done.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hfi_sys_idle_done, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hfi_sys_idle_done.__UNIQUE_ID_ddebug303, ptr noundef %1, ptr noundef nonnull @.str.24) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_sys_pc_prepare_done(ptr nocapture noundef readonly %core, ptr nocapture noundef readnone %inst, ptr nocapture noundef readonly %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hfi_sys_pc_prepare_done.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hfi_sys_pc_prepare_done, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %error_type = getelementptr inbounds %struct.hfi_msg_sys_pc_prep_done_pkt, ptr %packet, i32 0, i32 1
  %2 = ptrtoint ptr %error_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error_type, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hfi_sys_pc_prepare_done.__UNIQUE_ID_ddebug304, ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %3) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_session_init_done(ptr noundef %core, ptr noundef %inst, ptr noundef %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %error_type = getelementptr inbounds %struct.hfi_msg_session_init_done_pkt, ptr %packet, i32 0, i32 1
  %0 = ptrtoint ptr %error_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end:                                           ; preds = %entry
  %res = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %hfi_version = getelementptr inbounds %struct.venus_resources, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %hfi_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hfi_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.end3, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %packet, align 4
  %add = add i32 %7, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add)
  %cmp4 = icmp slt i32 %add, 1
  br i1 %cmp4, label %if.end3.done_crit_edge, label %if.end6

if.end3.done_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %data = getelementptr inbounds %struct.hfi_msg_session_init_done_pkt, ptr %packet, i32 0, i32 3
  %call = tail call i32 @hfi_parser(ptr noundef %core, ptr noundef %inst, ptr noundef %data, i32 noundef %add) #4
  br label %done

done:                                             ; preds = %if.end6, %if.end3.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  %error.0 = phi i32 [ %1, %entry.done_crit_edge ], [ %call, %if.end6 ], [ 0, %if.end.done_crit_edge ], [ 4105, %if.end3.done_crit_edge ]
  %error7 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %8 = ptrtoint ptr %error7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %error.0, ptr %error7, align 8
  %done8 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 51
  tail call void @complete(ptr noundef %done8) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_session_end_done(ptr nocapture noundef readnone %core, ptr noundef %inst, ptr nocapture noundef readonly %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %error_type = getelementptr inbounds %struct.hfi_msg_session_end_done_pkt, ptr %packet, i32 0, i32 1
  %0 = ptrtoint ptr %error_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_type, align 4
  %error = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %error, align 8
  %done = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 51
  tail call void @complete(ptr noundef %done) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_session_load_res_done(ptr nocapture noundef readnone %core, ptr noundef %inst, ptr nocapture noundef readonly %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %error_type = getelementptr inbounds %struct.hfi_msg_session_load_resources_done_pkt, ptr %packet, i32 0, i32 1
  %0 = ptrtoint ptr %error_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_type, align 4
  %error = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %error, align 8
  %done = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 51
  tail call void @complete(ptr noundef %done) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_session_start_done(ptr nocapture noundef readnone %core, ptr noundef %inst, ptr nocapture noundef readonly %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %error_type = getelementptr inbounds %struct.hfi_msg_session_start_done_pkt, ptr %packet, i32 0, i32 1
  %0 = ptrtoint ptr %error_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_type, align 4
  %error = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %error, align 8
  %done = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 51
  tail call void @complete(ptr noundef %done) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_session_stop_done(ptr nocapture noundef readnone %core, ptr noundef %inst, ptr nocapture noundef readonly %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %error_type = getelementptr inbounds %struct.hfi_msg_session_stop_done_pkt, ptr %packet, i32 0, i32 1
  %0 = ptrtoint ptr %error_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_type, align 4
  %error = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %error, align 8
  %done = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 51
  tail call void @complete(ptr noundef %done) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_session_abort_done(ptr nocapture noundef readnone %core, ptr noundef %inst, ptr nocapture noundef readonly %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %error_type = getelementptr inbounds %struct.hfi_msg_sys_session_abort_done_pkt, ptr %packet, i32 0, i32 1
  %0 = ptrtoint ptr %error_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_type, align 4
  %error = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %error, align 8
  %done = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 51
  tail call void @complete(ptr noundef %done) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_session_etb_done(ptr nocapture noundef readnone %core, ptr noundef %inst, ptr nocapture noundef readonly %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %error_type = getelementptr inbounds %struct.hfi_msg_session_empty_buffer_done_pkt, ptr %packet, i32 0, i32 1
  %0 = ptrtoint ptr %error_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_type, align 4
  %error = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %error, align 8
  %ops = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 54
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %input_tag = getelementptr inbounds %struct.hfi_msg_session_empty_buffer_done_pkt, ptr %packet, i32 0, i32 4
  %7 = ptrtoint ptr %input_tag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %input_tag, align 4
  %filled_len = getelementptr inbounds %struct.hfi_msg_session_empty_buffer_done_pkt, ptr %packet, i32 0, i32 3
  %9 = ptrtoint ptr %filled_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %filled_len, align 4
  %offset = getelementptr inbounds %struct.hfi_msg_session_empty_buffer_done_pkt, ptr %packet, i32 0, i32 2
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  tail call void %6(ptr noundef %inst, i32 noundef 1, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef 0, i32 noundef 0, i64 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_session_ftb_done(ptr nocapture noundef readnone %core, ptr noundef %inst, ptr nocapture noundef readonly %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %session_type1 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 55
  %0 = ptrtoint ptr %session_type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %session_type1, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %1, label %entry.done_crit_edge [
    i32 1, label %if.end26.thread
    i32 2, label %if.end26
  ]

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end26.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %time_stamp_hi = getelementptr inbounds %struct.hfi_msg_session_fbd_compressed_pkt, ptr %packet, i32 0, i32 1
  %time_stamp_lo = getelementptr inbounds %struct.hfi_msg_session_fbd_compressed_pkt, ptr %packet, i32 0, i32 2
  %flags2 = getelementptr inbounds %struct.hfi_msg_session_fbd_compressed_pkt, ptr %packet, i32 0, i32 4
  %3 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags2, align 4
  %offset3 = getelementptr inbounds %struct.hfi_msg_session_fbd_compressed_pkt, ptr %packet, i32 0, i32 8
  %5 = ptrtoint ptr %offset3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset3, align 4
  %filled_len4 = getelementptr inbounds %struct.hfi_msg_session_fbd_compressed_pkt, ptr %packet, i32 0, i32 10
  %7 = ptrtoint ptr %filled_len4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %filled_len4, align 4
  %picture_type = getelementptr inbounds %struct.hfi_msg_session_fbd_compressed_pkt, ptr %packet, i32 0, i32 13
  %output_tag5 = getelementptr inbounds %struct.hfi_msg_session_fbd_compressed_pkt, ptr %packet, i32 0, i32 12
  %9 = ptrtoint ptr %output_tag5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %output_tag5, align 4
  %error_type = getelementptr inbounds %struct.hfi_msg_session_fbd_compressed_pkt, ptr %packet, i32 0, i32 3
  %11 = ptrtoint ptr %error_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error_type, align 4
  br label %if.end30

if.end26:                                         ; preds = %entry
  %time_stamp_hi9 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, ptr %packet, i32 0, i32 4
  %time_stamp_lo10 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, ptr %packet, i32 0, i32 5
  %flags11 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, ptr %packet, i32 0, i32 6
  %13 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags11, align 4
  %offset12 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, ptr %packet, i32 0, i32 12
  %15 = ptrtoint ptr %offset12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset12, align 4
  %filled_len13 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, ptr %packet, i32 0, i32 11
  %17 = ptrtoint ptr %filled_len13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %filled_len13, align 4
  %picture_type14 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, ptr %packet, i32 0, i32 20
  %output_tag15 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, ptr %packet, i32 0, i32 19
  %19 = ptrtoint ptr %output_tag15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %output_tag15, align 4
  %stream_id = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, ptr %packet, i32 0, i32 1
  %21 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stream_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %switch.selectcmp = icmp eq i32 %22, 1
  %switch.select = select i1 %switch.selectcmp, i32 3, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %switch.selectcmp80 = icmp eq i32 %22, 0
  %switch.select81 = select i1 %switch.selectcmp80, i32 2, i32 %switch.select
  %error_type23 = getelementptr inbounds %struct.hfi_msg_session_fbd_uncompressed_plane0_pkt, ptr %packet, i32 0, i32 3
  %23 = ptrtoint ptr %error_type23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %error_type23, align 4
  %25 = and i32 %switch.select81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %switch.not = icmp eq i32 %25, 0
  br i1 %switch.not, label %if.end26.done_crit_edge, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.end26.done_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end30:                                         ; preds = %if.end26.if.end30_crit_edge, %if.end26.thread
  %output_tag.0107 = phi i32 [ %10, %if.end26.thread ], [ %20, %if.end26.if.end30_crit_edge ]
  %buffer_type.1105 = phi i32 [ 2, %if.end26.thread ], [ %switch.select81, %if.end26.if.end30_crit_edge ]
  %pic_type.0103.in = phi ptr [ %picture_type, %if.end26.thread ], [ %picture_type14, %if.end26.if.end30_crit_edge ]
  %filled_len.0102 = phi i32 [ %8, %if.end26.thread ], [ %18, %if.end26.if.end30_crit_edge ]
  %offset.0100 = phi i32 [ %6, %if.end26.thread ], [ %16, %if.end26.if.end30_crit_edge ]
  %hfi_flags.098 = phi i32 [ %4, %if.end26.thread ], [ %14, %if.end26.if.end30_crit_edge ]
  %error.096 = phi i32 [ %12, %if.end26.thread ], [ %24, %if.end26.if.end30_crit_edge ]
  %timestamp_lo.094.in = phi ptr [ %time_stamp_lo, %if.end26.thread ], [ %time_stamp_lo10, %if.end26.if.end30_crit_edge ]
  %timestamp_hi.093.in = phi ptr [ %time_stamp_hi, %if.end26.thread ], [ %time_stamp_hi9, %if.end26.if.end30_crit_edge ]
  %26 = ptrtoint ptr %timestamp_hi.093.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %timestamp_hi.093 = load i32, ptr %timestamp_hi.093.in, align 4
  %27 = ptrtoint ptr %timestamp_lo.094.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %timestamp_lo.094 = load i32, ptr %timestamp_lo.094.in, align 4
  %28 = ptrtoint ptr %pic_type.0103.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %pic_type.0103 = load i32, ptr %pic_type.0103.in, align 4
  %and = shl i32 %hfi_flags.098, 20
  %29 = and i32 %and, 1048576
  %30 = zext i32 %pic_type.0103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %pic_type.0103, label %if.end30.sw.epilog_crit_edge [
    i32 8, label %if.end30.sw.bb_crit_edge
    i32 1, label %if.end30.sw.bb_crit_edge120
    i32 2, label %sw.bb34
    i32 4, label %sw.bb36
  ]

if.end30.sw.bb_crit_edge120:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end30.sw.bb_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end30.sw.epilog_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end30.sw.bb_crit_edge, %if.end30.sw.bb_crit_edge120
  %or33 = or i32 %29, 8
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %or35 = or i32 %29, 16
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %or37 = or i32 %29, 32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb36, %sw.bb34, %sw.bb, %if.end30.sw.epilog_crit_edge
  %flags.1 = phi i32 [ %29, %if.end30.sw.epilog_crit_edge ], [ %or37, %sw.bb36 ], [ %or35, %sw.bb34 ], [ %or33, %sw.bb ]
  %and39 = and i32 %hfi_flags.098, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp ne i32 %and39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %filled_len.0102)
  %tobool42.not = icmp eq i32 %filled_len.0102, 0
  %or.cond = select i1 %tobool40.not, i1 true, i1 %tobool42.not
  br i1 %or.cond, label %sw.epilog.done_crit_edge, label %if.then43

sw.epilog.done_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.then43:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i32 %timestamp_hi.093 to i64
  %shl = shl nuw i64 %conv, 32
  %conv44 = zext i32 %timestamp_lo.094 to i64
  %or45 = or i64 %shl, %conv44
  br label %done

done:                                             ; preds = %if.then43, %sw.epilog.done_crit_edge, %if.end26.done_crit_edge, %entry.done_crit_edge
  %output_tag.0106 = phi i32 [ %output_tag.0107, %sw.epilog.done_crit_edge ], [ %output_tag.0107, %if.then43 ], [ %20, %if.end26.done_crit_edge ], [ -1, %entry.done_crit_edge ]
  %buffer_type.1104 = phi i32 [ %buffer_type.1105, %sw.epilog.done_crit_edge ], [ %buffer_type.1105, %if.then43 ], [ %switch.select, %if.end26.done_crit_edge ], [ 0, %entry.done_crit_edge ]
  %filled_len.0101 = phi i32 [ %filled_len.0102, %sw.epilog.done_crit_edge ], [ %filled_len.0102, %if.then43 ], [ %18, %if.end26.done_crit_edge ], [ 0, %entry.done_crit_edge ]
  %offset.099 = phi i32 [ %offset.0100, %sw.epilog.done_crit_edge ], [ %offset.0100, %if.then43 ], [ %16, %if.end26.done_crit_edge ], [ 0, %entry.done_crit_edge ]
  %hfi_flags.097 = phi i32 [ %hfi_flags.098, %sw.epilog.done_crit_edge ], [ %hfi_flags.098, %if.then43 ], [ %14, %if.end26.done_crit_edge ], [ 0, %entry.done_crit_edge ]
  %error.095 = phi i32 [ %error.096, %sw.epilog.done_crit_edge ], [ %error.096, %if.then43 ], [ %24, %if.end26.done_crit_edge ], [ 4098, %entry.done_crit_edge ]
  %timestamp_us.0 = phi i64 [ 0, %sw.epilog.done_crit_edge ], [ %or45, %if.then43 ], [ 0, %if.end26.done_crit_edge ], [ 0, %entry.done_crit_edge ]
  %flags.2 = phi i32 [ %flags.1, %sw.epilog.done_crit_edge ], [ %flags.1, %if.then43 ], [ 0, %if.end26.done_crit_edge ], [ 0, %entry.done_crit_edge ]
  %error47 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %31 = ptrtoint ptr %error47 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %error.095, ptr %error47, align 8
  %ops = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 54
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  tail call void %35(ptr noundef %inst, i32 noundef %buffer_type.1104, i32 noundef %output_tag.0106, i32 noundef %filled_len.0101, i32 noundef %offset.099, i32 noundef %flags.2, i32 noundef %hfi_flags.097, i64 noundef %timestamp_us.0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_session_flush_done(ptr nocapture noundef readnone %core, ptr noundef %inst, ptr nocapture noundef readonly %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %error_type = getelementptr inbounds %struct.hfi_msg_session_flush_done_pkt, ptr %packet, i32 0, i32 1
  %0 = ptrtoint ptr %error_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_type, align 4
  %error = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %error, align 8
  %done = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 51
  tail call void @complete(ptr noundef %done) #4
  %ops = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 54
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 8
  %flush_done = getelementptr inbounds %struct.hfi_inst_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %flush_done to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %flush_done, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %6(ptr noundef %inst) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_session_prop_info(ptr nocapture noundef readonly %core, ptr noundef %inst, ptr nocapture noundef readonly %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %hprop2 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 56
  %num_properties = getelementptr inbounds %struct.hfi_msg_session_property_info_pkt, ptr %packet, i32 0, i32 1
  %2 = ptrtoint ptr %num_properties to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_properties, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #7
  br label %done

if.end:                                           ; preds = %entry
  %property = getelementptr inbounds %struct.hfi_msg_session_property_info_pkt, ptr %packet, i32 0, i32 2
  %4 = ptrtoint ptr %property to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %property, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %5, label %do.body6 [
    i32 2105345, label %sw.bb
    i32 4101, label %sw.bb4
    i32 18890756, label %if.end.done_crit_edge
  ]

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

sw.bb:                                            ; preds = %if.end
  %7 = call ptr @memset(ptr %hprop2, i32 0, i32 352)
  %8 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %packet, align 4
  %sub.i = add i32 %9, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i = icmp ne i32 %sub.i, 0
  %rem.i = and i32 %sub.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  %or.cond.i = and i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %lor.lhs.false2.i, label %sw.bb.done_crit_edge

sw.bb.done_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

lor.lhs.false2.i:                                 ; preds = %sw.bb
  %data.i = getelementptr inbounds %struct.hfi_msg_session_property_info_pkt, ptr %packet, i32 0, i32 3
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not.i = icmp eq i8 %11, 0
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.done_crit_edge, label %while.body.preheader.i

lor.lhs.false2.i.done_crit_edge:                  ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

while.body.preheader.i:                           ; preds = %lor.lhs.false2.i
  %12 = call ptr @memcpy(ptr %hprop2, ptr %data.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %9)
  %tobool9.not.i = icmp eq i32 %9, 52
  br i1 %tobool9.not.i, label %while.body.preheader.i.done_crit_edge, label %while.body.1.i

while.body.preheader.i.done_crit_edge:            ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

while.body.1.i:                                   ; preds = %while.body.preheader.i
  %incdec.ptr.i = getelementptr %struct.hfi_msg_session_property_info_pkt, ptr %packet, i32 2, i32 1
  %arrayidx10.1.i = getelementptr %struct.venus_inst, ptr %inst, i32 0, i32 56, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %arrayidx10.1.i, ptr %incdec.ptr.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %9)
  %tobool9.not.1.i = icmp eq i32 %9, 84
  br i1 %tobool9.not.1.i, label %while.body.1.i.done_crit_edge, label %while.body.2.i

while.body.1.i.done_crit_edge:                    ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

while.body.2.i:                                   ; preds = %while.body.1.i
  %incdec.ptr.1.i = getelementptr %struct.hfi_msg_session_property_info_pkt, ptr %packet, i32 4, i32 0, i32 0, i32 1
  %arrayidx10.2.i = getelementptr %struct.venus_inst, ptr %inst, i32 0, i32 56, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %arrayidx10.2.i, ptr %incdec.ptr.1.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 116, i32 %9)
  %tobool9.not.2.i = icmp eq i32 %9, 116
  br i1 %tobool9.not.2.i, label %while.body.2.i.done_crit_edge, label %while.body.3.i

while.body.2.i.done_crit_edge:                    ; preds = %while.body.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

while.body.3.i:                                   ; preds = %while.body.2.i
  %incdec.ptr.2.i = getelementptr %struct.hfi_msg_session_property_info_pkt, ptr %packet, i32 5, i32 2
  %arrayidx10.3.i = getelementptr %struct.venus_inst, ptr %inst, i32 0, i32 56, i32 0, i32 3
  %15 = call ptr @memcpy(ptr %arrayidx10.3.i, ptr %incdec.ptr.2.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 148, i32 %9)
  %tobool9.not.3.i = icmp eq i32 %9, 148
  br i1 %tobool9.not.3.i, label %while.body.3.i.done_crit_edge, label %while.body.4.i

while.body.3.i.done_crit_edge:                    ; preds = %while.body.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

while.body.4.i:                                   ; preds = %while.body.3.i
  %incdec.ptr.3.i = getelementptr %struct.hfi_msg_session_property_info_pkt, ptr %packet, i32 7, i32 0, i32 1
  %arrayidx10.4.i = getelementptr %struct.venus_inst, ptr %inst, i32 0, i32 56, i32 0, i32 4
  %16 = call ptr @memcpy(ptr %arrayidx10.4.i, ptr %incdec.ptr.3.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %9)
  %tobool9.not.4.i = icmp eq i32 %9, 180
  br i1 %tobool9.not.4.i, label %while.body.4.i.done_crit_edge, label %while.body.5.i

while.body.4.i.done_crit_edge:                    ; preds = %while.body.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

while.body.5.i:                                   ; preds = %while.body.4.i
  %incdec.ptr.4.i = getelementptr %struct.hfi_msg_session_property_info_pkt, ptr %packet, i32 9
  %arrayidx10.5.i = getelementptr %struct.venus_inst, ptr %inst, i32 0, i32 56, i32 0, i32 5
  %17 = call ptr @memcpy(ptr %arrayidx10.5.i, ptr %incdec.ptr.4.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 212, i32 %9)
  %tobool9.not.5.i = icmp eq i32 %9, 212
  br i1 %tobool9.not.5.i, label %while.body.5.i.done_crit_edge, label %while.body.6.i

while.body.5.i.done_crit_edge:                    ; preds = %while.body.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

while.body.6.i:                                   ; preds = %while.body.5.i
  %incdec.ptr.5.i = getelementptr %struct.hfi_msg_session_property_info_pkt, ptr %packet, i32 10, i32 1
  %arrayidx10.6.i = getelementptr %struct.venus_inst, ptr %inst, i32 0, i32 56, i32 0, i32 6
  %18 = call ptr @memcpy(ptr %arrayidx10.6.i, ptr %incdec.ptr.5.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 244, i32 %9)
  %tobool9.not.6.i = icmp eq i32 %9, 244
  br i1 %tobool9.not.6.i, label %while.body.6.i.done_crit_edge, label %while.body.7.i

while.body.6.i.done_crit_edge:                    ; preds = %while.body.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

while.body.7.i:                                   ; preds = %while.body.6.i
  %incdec.ptr.6.i = getelementptr %struct.hfi_msg_session_property_info_pkt, ptr %packet, i32 12, i32 0, i32 0, i32 1
  %arrayidx10.7.i = getelementptr %struct.venus_inst, ptr %inst, i32 0, i32 56, i32 0, i32 7
  %19 = call ptr @memcpy(ptr %arrayidx10.7.i, ptr %incdec.ptr.6.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 276, i32 %9)
  %tobool9.not.7.i = icmp eq i32 %9, 276
  br i1 %tobool9.not.7.i, label %while.body.7.i.done_crit_edge, label %while.body.8.i

while.body.7.i.done_crit_edge:                    ; preds = %while.body.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

while.body.8.i:                                   ; preds = %while.body.7.i
  %incdec.ptr.7.i = getelementptr %struct.hfi_msg_session_property_info_pkt, ptr %packet, i32 13, i32 2
  %arrayidx10.8.i = getelementptr %struct.venus_inst, ptr %inst, i32 0, i32 56, i32 0, i32 8
  %20 = call ptr @memcpy(ptr %arrayidx10.8.i, ptr %incdec.ptr.7.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 308, i32 %9)
  %tobool9.not.8.i = icmp eq i32 %9, 308
  br i1 %tobool9.not.8.i, label %while.body.8.i.done_crit_edge, label %while.body.9.i

while.body.8.i.done_crit_edge:                    ; preds = %while.body.8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

while.body.9.i:                                   ; preds = %while.body.8.i
  %incdec.ptr.8.i = getelementptr %struct.hfi_msg_session_property_info_pkt, ptr %packet, i32 15, i32 0, i32 1
  %arrayidx10.9.i = getelementptr %struct.venus_inst, ptr %inst, i32 0, i32 56, i32 0, i32 9
  %21 = call ptr @memcpy(ptr %arrayidx10.9.i, ptr %incdec.ptr.8.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 340, i32 %9)
  %tobool9.not.9.i = icmp eq i32 %9, 340
  br i1 %tobool9.not.9.i, label %while.body.9.i.done_crit_edge, label %while.body.10.i

while.body.9.i.done_crit_edge:                    ; preds = %while.body.9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

while.body.10.i:                                  ; preds = %while.body.9.i
  %incdec.ptr.9.i = getelementptr %struct.hfi_msg_session_property_info_pkt, ptr %packet, i32 17
  %arrayidx10.10.i = getelementptr %struct.venus_inst, ptr %inst, i32 0, i32 56, i32 0, i32 10
  %22 = call ptr @memcpy(ptr %arrayidx10.10.i, ptr %incdec.ptr.9.i, i32 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 372, i32 %9)
  %tobool9.not.10.i = icmp eq i32 %9, 372
  br i1 %tobool9.not.10.i, label %while.body.10.i.done_crit_edge, label %while.body.11.i

while.body.10.i.done_crit_edge:                   ; preds = %while.body.10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

while.body.11.i:                                  ; preds = %while.body.10.i
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr.10.i = getelementptr %struct.hfi_msg_session_property_info_pkt, ptr %packet, i32 18, i32 1
  %arrayidx10.11.i = getelementptr %struct.venus_inst, ptr %inst, i32 0, i32 57
  %23 = call ptr @memcpy(ptr %arrayidx10.11.i, ptr %incdec.ptr.10.i, i32 32)
  br label %done

sw.bb4:                                           ; preds = %if.end
  %24 = ptrtoint ptr %hprop2 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 0, ptr %hprop2, align 4
  %25 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %packet, align 4
  %sub.i32 = add i32 %26, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i32)
  %tobool.not.i33 = icmp ne i32 %sub.i32, 0
  %rem.i34 = and i32 %sub.i32, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i34)
  %tobool1.not.i35 = icmp eq i32 %rem.i34, 0
  %or.cond.i36 = and i1 %tobool.not.i33, %tobool1.not.i35
  br i1 %or.cond.i36, label %if.end.i, label %sw.bb4.done_crit_edge

sw.bb4.done_crit_edge:                            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end.i:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  %data.i37 = getelementptr inbounds %struct.hfi_msg_session_property_info_pkt, ptr %packet, i32 0, i32 3
  %27 = ptrtoint ptr %data.i37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data.i37, align 4
  %29 = ptrtoint ptr %hprop2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %hprop2, align 4
  %level.i = getelementptr inbounds %struct.hfi_msg_session_property_info_pkt, ptr %packet, i32 1, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %level.i, align 4
  %level3.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 56, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %level3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %level3.i, align 4
  br label %done

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hfi_session_prop_info.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hfi_session_prop_info, %if.then11)) #4
          to label %cleanup [label %if.then11], !srcloc !68

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %property to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %property, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hfi_session_prop_info.__UNIQUE_ID_ddebug305, ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %34) #4
  br label %cleanup

done:                                             ; preds = %if.end.i, %sw.bb4.done_crit_edge, %while.body.11.i, %while.body.10.i.done_crit_edge, %while.body.9.i.done_crit_edge, %while.body.8.i.done_crit_edge, %while.body.7.i.done_crit_edge, %while.body.6.i.done_crit_edge, %while.body.5.i.done_crit_edge, %while.body.4.i.done_crit_edge, %while.body.3.i.done_crit_edge, %while.body.2.i.done_crit_edge, %while.body.1.i.done_crit_edge, %while.body.preheader.i.done_crit_edge, %lor.lhs.false2.i.done_crit_edge, %sw.bb.done_crit_edge, %if.end.done_crit_edge, %if.then
  %error.0 = phi i32 [ 0, %if.end.done_crit_edge ], [ 4098, %if.then ], [ 4098, %lor.lhs.false2.i.done_crit_edge ], [ 4098, %sw.bb.done_crit_edge ], [ 0, %while.body.preheader.i.done_crit_edge ], [ 0, %while.body.1.i.done_crit_edge ], [ 0, %while.body.2.i.done_crit_edge ], [ 0, %while.body.3.i.done_crit_edge ], [ 0, %while.body.4.i.done_crit_edge ], [ 0, %while.body.5.i.done_crit_edge ], [ 0, %while.body.6.i.done_crit_edge ], [ 0, %while.body.7.i.done_crit_edge ], [ 0, %while.body.8.i.done_crit_edge ], [ 0, %while.body.9.i.done_crit_edge ], [ 0, %while.body.10.i.done_crit_edge ], [ 4098, %while.body.11.i ], [ 0, %if.end.i ], [ 4098, %sw.bb4.done_crit_edge ]
  %error16 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %35 = ptrtoint ptr %error16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %error.0, ptr %error16, align 8
  %done17 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 51
  tail call void @complete(ptr noundef %done17) #4
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then11, %do.body6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_session_rel_res_done(ptr nocapture noundef readnone %core, ptr noundef %inst, ptr nocapture noundef readonly %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %error_type = getelementptr inbounds %struct.hfi_msg_session_release_resources_done_pkt, ptr %packet, i32 0, i32 1
  %0 = ptrtoint ptr %error_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_type, align 4
  %error = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %error, align 8
  %done = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 51
  tail call void @complete(ptr noundef %done) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_session_get_seq_hdr_done(ptr nocapture noundef readnone %core, ptr noundef %inst, ptr nocapture noundef readonly %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %error_type = getelementptr inbounds %struct.hfi_msg_session_get_sequence_hdr_done_pkt, ptr %packet, i32 0, i32 1
  %0 = ptrtoint ptr %error_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_type, align 4
  %error = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %error, align 8
  %done = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 51
  tail call void @complete(ptr noundef %done) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hfi_session_rel_buf_done(ptr nocapture noundef readnone %core, ptr noundef %inst, ptr nocapture noundef readonly %packet) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %error_type = getelementptr inbounds %struct.hfi_msg_session_release_buffers_done_pkt, ptr %packet, i32 0, i32 1
  %0 = ptrtoint ptr %error_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error_type, align 4
  %error = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 52
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %error, align 8
  %done = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 51
  tail call void @complete(ptr noundef %done) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_parser(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_smem_get(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/venus/hfi_msgs.c", i32 762, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hfi_process_msg_packet._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hfi_process_msg_packet._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/qcom/venus/hfi_msgs.c", i32 777, i32 4}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hfi_process_msg_packet._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @hfi_process_msg_packet._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/qcom/venus/hfi_msgs.c", i32 786, i32 4}
!15 = !{ptr @hfi_process_msg_packet._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @hfi_process_msg_packet._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/qcom/venus/hfi_msgs.c", i32 153, i32 3}
!19 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.14, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @event_sys_error.__UNIQUE_ID_ddebug298, !18, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!22 = !{ptr @handlers, !23, !"handlers", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/qcom/venus/hfi_msgs.c", i32 631, i32 38}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/qcom/venus/hfi_msgs.c", i32 167, i32 2}
!26 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @event_session_error.__UNIQUE_ID_ddebug299, !25, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/qcom/venus/hfi_msgs.c", i32 182, i32 3}
!30 = !{ptr @event_session_error._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @event_session_error._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/qcom/venus/hfi_msgs.c", i32 283, i32 3}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hfi_sys_property_info.__UNIQUE_ID_ddebug301, !33, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/qcom/venus/hfi_msgs.c", i32 292, i32 3}
!38 = !{ptr @hfi_sys_property_info.__UNIQUE_ID_ddebug302, !37, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/qcom/venus/hfi_msgs.c", i32 267, i32 2}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sys_get_prop_image_version.__UNIQUE_ID_ddebug300, !40, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/qcom/venus/hfi_msgs.c", i32 323, i32 2}
!45 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @hfi_sys_idle_done.__UNIQUE_ID_ddebug303, !44, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/qcom/venus/hfi_msgs.c", i32 331, i32 2}
!49 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @hfi_sys_pc_prepare_done.__UNIQUE_ID_ddebug304, !48, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/qcom/venus/hfi_msgs.c", i32 397, i32 3}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @hfi_session_prop_info._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @hfi_session_prop_info._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/qcom/venus/hfi_msgs.c", i32 414, i32 3}
!58 = !{ptr @hfi_session_prop_info.__UNIQUE_ID_ddebug305, !57, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2148340460, i64 2148340465, i64 2148340478, i64 2148340522, i64 2148340556, i64 2148340577}
!69 = !{!"auto-init"}
