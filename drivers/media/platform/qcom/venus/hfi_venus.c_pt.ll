; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/venus/hfi_venus.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/venus/hfi_venus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hfi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.venus_core = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x ptr], [2 x ptr], [2 x ptr], ptr, ptr, i8, [3 x ptr], ptr, ptr, [2 x ptr], ptr, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, i32, %struct.video_firmware, %struct.mutex, %struct.list_head, %struct.atomic_t, i32, %struct.completion, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.mutex, i32, i32, i32, ptr, ptr, %struct.delayed_work, [32 x %struct.hfi_plat_caps], i32, i32, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.hfi_plat_caps = type { i32, i32, i8, i32, [32 x %struct.hfi_capability], i32, [16 x %struct.hfi_profile_level], i32, [32 x %struct.raw_formats], i8 }
%struct.hfi_capability = type { i32, i32, i32, i32 }
%struct.hfi_profile_level = type { i32, i32 }
%struct.raw_formats = type { i32, i32 }
%struct.venus_hfi_device = type { ptr, i32, i32, i8, i8, i32, %struct.mutex, %struct.completion, %struct.completion, %struct.mem_desc, %struct.mem_desc, [3 x %struct.iface_queue], [12288 x i8], [12288 x i8] }
%struct.mem_desc = type { i32, ptr, i32, i32 }
%struct.iface_queue = type { ptr, %struct.mem_desc }
%struct.hfi_queue_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hfi_queue_table_header = type { i32, i32, i32, i32, i32, i32 }
%struct.hfi_sys_get_property_pkt = type { %struct.hfi_pkt_hdr, i32, [1 x i32] }
%struct.hfi_pkt_hdr = type { i32, i32 }
%struct.hfi_sys_init_pkt = type { %struct.hfi_pkt_hdr, i32 }
%struct.venus_resources = type { i64, ptr, i32, ptr, i32, ptr, i32, ptr, i32, [4 x ptr], i32, [2 x ptr], [2 x ptr], i32, [3 x ptr], i32, ptr, i32, [2 x ptr], i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.hfi_sys_ping_pkt = type { %struct.hfi_pkt_hdr, i32 }
%struct.hfi_sys_test_ssr_pkt = type { %struct.hfi_pkt_hdr, i32 }
%struct.hfi_session_init_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32 }
%struct.hfi_session_hdr_pkt = type { %struct.hfi_pkt_hdr, i32 }
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
%struct.hfi_session_pkt = type { %struct.hfi_session_hdr_pkt }
%struct.hfi_session_flush_pkt = type { %struct.hfi_session_hdr_pkt, i32 }
%struct.hfi_session_empty_buffer_compressed_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32] }
%struct.hfi_session_empty_buffer_uncompressed_plane0_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32] }
%struct.hfi_session_fill_buffer_pkt = type { %struct.hfi_session_hdr_pkt, i32, i32, i32, i32, i32, i32, i32, [1 x i32] }
%struct.hfi_session_get_property_pkt = type { %struct.hfi_session_hdr_pkt, i32, [1 x i32] }
%struct.hfi_sys_pc_prep_pkt = type { %struct.hfi_pkt_hdr }
%struct.hfi_sfr = type { i32, [1 x i8] }
%struct.reg_val = type { i32, i32 }

@venus_fw_debug = dso_local global { i32, [28 x i8] } { i32 24, [28 x i8] zeroinitializer }, align 32
@venus_hfi_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&hdev->lock\00", [20 x i8] zeroinitializer }, align 32
@venus_hfi_ops = internal constant { %struct.hfi_ops, [60 x i8] } { %struct.hfi_ops { ptr @venus_core_init, ptr @venus_core_deinit, ptr @venus_core_ping, ptr @venus_core_trigger_ssr, ptr @venus_session_init, ptr @venus_session_end, ptr @venus_session_abort, ptr @venus_session_flush, ptr @venus_session_start, ptr @venus_session_stop, ptr @venus_session_continue, ptr @venus_session_etb, ptr @venus_session_ftb, ptr @venus_session_set_buffers, ptr @venus_session_unset_buffers, ptr @venus_session_load_res, ptr @venus_session_release_res, ptr @venus_session_parse_seq_hdr, ptr @venus_session_get_seq_hdr, ptr @venus_session_set_property, ptr @venus_session_get_property, ptr @venus_resume, ptr @venus_suspend, ptr @venus_isr, ptr @venus_isr_thread }, [60 x i8] zeroinitializer }, align 32
@venus_core_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1149, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to send image version pkt to fw\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"venus_core_init\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/qcom/venus/hfi_venus.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@venus_core_init._entry_ptr = internal global ptr @venus_core_init._entry, section ".printk_index", align 4
@venus_iface_cmdq_write_nolock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 391, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"write to iface cmd queue failed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"venus_iface_cmdq_write_nolock\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@venus_iface_cmdq_write_nolock._entry_ptr = internal global ptr @venus_iface_cmdq_write_nolock._entry, section ".printk_index", align 4
@venus_sys_set_default_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 929, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"setting fw debug msg ON failed (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"venus_sys_set_default_properties\00", [63 x i8] zeroinitializer }, align 32
@venus_sys_set_default_properties._entry_ptr = internal global ptr @venus_sys_set_default_properties._entry, section ".printk_index", align 4
@venus_sys_idle_indicator = internal global { i1, [31 x i8] } zeroinitializer, align 32
@venus_sys_set_default_properties._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 941, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"setting idle response ON failed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@venus_sys_set_default_properties._entry_ptr.15 = internal global ptr @venus_sys_set_default_properties._entry.13, section ".printk_index", align 4
@venus_sys_set_default_properties._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 946, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"setting hw power collapse ON failed (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@venus_sys_set_default_properties._entry_ptr.18 = internal global ptr @venus_sys_set_default_properties._entry.16, section ".printk_index", align 4
@venus_flush_debug_queue.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 -13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"venus_core\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"venus_flush_debug_queue\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VenusFW  : %s\00", [18 x i8] zeroinitializer }, align 32
@venus_session_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 1225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fw coverage msg ON failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"venus_session_end\00", [46 x i8] zeroinitializer }, align 32
@venus_session_end._entry_ptr = internal global ptr @venus_session_end._entry, section ".printk_index", align 4
@venus_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 531, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to reset venus core\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"venus_run\00", [22 x i8] zeroinitializer }, align 32
@venus_run._entry_ptr = internal global ptr @venus_run._entry, section ".printk_index", align 4
@venus_boot_core._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 471, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid setting for UC_REGION\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"venus_boot_core\00", [16 x i8] zeroinitializer }, align 32
@venus_boot_core._entry_ptr = internal global ptr @venus_boot_core._entry, section ".printk_index", align 4
@venus_hwversion.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"venus_hwversion\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"VenusLow : venus hw version %x.%x.%x\0A\00", [58 x i8] zeroinitializer }, align 32
@venus_suspend_3xx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 1568, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad state, cannot suspend\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"venus_suspend_3xx\00", [46 x i8] zeroinitializer }, align 32
@venus_suspend_3xx._entry_ptr = internal global ptr @venus_suspend_3xx._entry, section ".printk_index", align 4
@venus_suspend_3xx._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 1591, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"prepare for power collapse fail (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@venus_suspend_3xx._entry_ptr.34 = internal global ptr @venus_suspend_3xx._entry.32, section ".printk_index", align 4
@venus_suspend_3xx._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.3, i32 1605, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"venus_power_off (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@venus_suspend_3xx._entry_ptr.37 = internal global ptr @venus_suspend_3xx._entry.35, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@venus_halt_axi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 578, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DBLP Release: lpi_status %x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"venus_halt_axi\00", [17 x i8] zeroinitializer }, align 32
@venus_halt_axi._entry_ptr = internal global ptr @venus_halt_axi._entry, section ".printk_index", align 4
@venus_halt_axi._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 595, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AXI bus port halt timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@venus_halt_axi._entry_ptr.43 = internal global ptr @venus_halt_axi._entry.41, section ".printk_index", align 4
@venus_halt_axi._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 613, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@venus_halt_axi._entry_ptr.45 = internal global ptr @venus_halt_axi._entry.44, section ".printk_index", align 4
@venus_suspend_1xx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.46, ptr @.str.3, i32 1469, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"venus_suspend_1xx\00", [46 x i8] zeroinitializer }, align 32
@venus_suspend_1xx._entry_ptr = internal global ptr @venus_suspend_1xx._entry, section ".printk_index", align 4
@venus_suspend_1xx._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.46, ptr @.str.3, i32 1475, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@venus_suspend_1xx._entry_ptr.48 = internal global ptr @venus_suspend_1xx._entry.47, section ".printk_index", align 4
@venus_sfr_print._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.49, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.venus_sfr_print = private unnamed_addr constant [16 x i8] c"venus_sfr_print\00", align 1
@venus_sfr_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @__func__.venus_sfr_print, ptr @.str.3, i32 1039, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SFR message from FW: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@venus_sfr_print._entry_ptr = internal global ptr @venus_sfr_print._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 32, i64 131073, i64 131074, i64 131075, i64 135169]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"venus_fw_debug\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 133, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1676, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"venus_hfi_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1625, i32 29 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1149, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 391, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 929, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [25 x i8] c"venus_sys_idle_indicator\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 941, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 945, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 972, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1225, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 531, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 471, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 505, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1568, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1591, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1605, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 87, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 578, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 595, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 613, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1469, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1475, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [49 x i8] c"../drivers/media/platform/qcom/venus/hfi_venus.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1039, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @venus_boot_core._entry, ptr @venus_boot_core._entry_ptr, ptr @venus_core_init._entry, ptr @venus_core_init._entry_ptr, ptr @venus_halt_axi._entry, ptr @venus_halt_axi._entry.41, ptr @venus_halt_axi._entry.44, ptr @venus_halt_axi._entry_ptr, ptr @venus_halt_axi._entry_ptr.43, ptr @venus_halt_axi._entry_ptr.45, ptr @venus_iface_cmdq_write_nolock._entry, ptr @venus_iface_cmdq_write_nolock._entry_ptr, ptr @venus_run._entry, ptr @venus_run._entry_ptr, ptr @venus_session_end._entry, ptr @venus_session_end._entry_ptr, ptr @venus_sfr_print._entry, ptr @venus_sfr_print._entry_ptr, ptr @venus_suspend_1xx._entry, ptr @venus_suspend_1xx._entry.47, ptr @venus_suspend_1xx._entry_ptr, ptr @venus_suspend_1xx._entry_ptr.48, ptr @venus_suspend_3xx._entry, ptr @venus_suspend_3xx._entry.32, ptr @venus_suspend_3xx._entry.35, ptr @venus_suspend_3xx._entry_ptr, ptr @venus_suspend_3xx._entry_ptr.34, ptr @venus_suspend_3xx._entry_ptr.37, ptr @venus_sys_set_default_properties._entry, ptr @venus_sys_set_default_properties._entry.13, ptr @venus_sys_set_default_properties._entry.16, ptr @venus_sys_set_default_properties._entry_ptr, ptr @venus_sys_set_default_properties._entry_ptr.15, ptr @venus_sys_set_default_properties._entry_ptr.18, ptr @venus_fw_debug, ptr @venus_hfi_create.__key, ptr @.str, ptr @venus_hfi_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @venus_sys_idle_indicator, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @init_completion.__key, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.46, ptr @venus_sfr_print._rs, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_fw_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_hfi_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_hfi_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_core_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_iface_cmdq_write_nolock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_sys_set_default_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_sys_idle_indicator to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_sys_set_default_properties._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_sys_set_default_properties._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_session_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_boot_core._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_suspend_3xx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_suspend_3xx._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_suspend_3xx._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_halt_axi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_halt_axi._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_halt_axi._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_suspend_1xx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_suspend_1xx._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_sfr_print._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venus_sfr_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @venus_hfi_destroy(ptr nocapture noundef %core) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 42
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  store ptr null, ptr %priv.i, align 4
  %lock.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %ifaceq_table.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1.i.i = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i.i, align 4
  %kva.i.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %kva.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kva.i.i, align 4
  %10 = ptrtoint ptr %ifaceq_table.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifaceq_table.i, align 4
  %attrs.i.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 9, i32 3
  %12 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %attrs.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %13) #7
  %sfr.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %dev1.i12.i = getelementptr inbounds %struct.venus_core, ptr %15, i32 0, i32 23
  %16 = ptrtoint ptr %dev1.i12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i12.i, align 4
  %size.i13.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 10, i32 2
  %18 = ptrtoint ptr %size.i13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i13.i, align 4
  %kva.i14.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %kva.i14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kva.i14.i, align 4
  %22 = ptrtoint ptr %sfr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sfr.i, align 4
  %attrs.i15.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 10, i32 3
  %24 = ptrtoint ptr %attrs.i15.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %attrs.i15.i, align 4
  tail call void @dma_free_attrs(ptr noundef %17, i32 noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef %25) #7
  %26 = call ptr @memset(ptr %ifaceq_table.i, i32 0, i32 92)
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  tail call void @mutex_destroy(ptr noundef %lock.i) #7
  tail call void @kfree(ptr noundef %1) #7
  %ops = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 43
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %ops, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @venus_hfi_create(ptr noundef %core) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.mem_desc, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 24892, i32 noundef 3520, i32 noundef 3) #10
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @venus_hfi_create.__key) #7
  %0 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %core, ptr %call1.i.i.i, align 4096
  %suspended = getelementptr inbounds %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %suspended, align 1
  %priv = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 42
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1.i.i.i, ptr %priv, align 4
  %ops = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 43
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @venus_hfi_ops, ptr %ops, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc.i) #7
  %4 = ptrtoint ptr %desc.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %desc.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %5 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1.i.i, align 4
  %attrs.i.i = getelementptr inbounds %struct.mem_desc, ptr %desc.i, i32 0, i32 3
  %7 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %attrs.i.i, align 4
  %size2.i.i = getelementptr inbounds %struct.mem_desc, ptr %desc.i, i32 0, i32 2
  %8 = ptrtoint ptr %size2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2461696, ptr %size2.i.i, align 8
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %6, i32 noundef 2461696, ptr noundef nonnull %desc.i, i32 noundef 3264, i32 noundef 4) #7
  %kva.i.i = getelementptr inbounds %struct.mem_desc, ptr %desc.i, i32 0, i32 1
  %9 = ptrtoint ptr %kva.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %kva.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.not.i, label %err_kfree, label %for.inc.2.i

for.inc.2.i:                                      ; preds = %do.body
  %ifaceq_table.i = getelementptr inbounds %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 9
  %10 = call ptr @memcpy(ptr %ifaceq_table.i, ptr %desc.i, i32 16)
  %kva9.i = getelementptr inbounds %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 9, i32 1
  %arrayidx.i = getelementptr %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 11, i32 0
  %11 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %desc.i, align 8
  %add.i = add i32 %12, 192
  %qmem.i = getelementptr %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 11, i32 0, i32 1
  %13 = ptrtoint ptr %qmem.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add.i, ptr %qmem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 192
  %kva3.i = getelementptr %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 11, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %kva3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %kva3.i, align 8
  %size.i = getelementptr %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 11, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 819200, ptr %size.i, align 4
  %16 = ptrtoint ptr %kva9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kva9.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %17, i32 24
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr10.i, ptr %arrayidx.i, align 256
  %19 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %add.ptr10.i, align 4
  %type.i.i = getelementptr i8, ptr %17, i32 32
  %20 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16842752, ptr %type.i.i, align 4
  %q_size.i.i = getelementptr i8, ptr %17, i32 36
  %21 = ptrtoint ptr %q_size.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 204800, ptr %q_size.i.i, align 4
  %pkt_size.i.i = getelementptr i8, ptr %17, i32 40
  %22 = ptrtoint ptr %pkt_size.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %pkt_size.i.i, align 4
  %rx_wm.i.i = getelementptr i8, ptr %17, i32 48
  %23 = ptrtoint ptr %rx_wm.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %rx_wm.i.i, align 4
  %tx_wm.i.i = getelementptr i8, ptr %17, i32 52
  %24 = ptrtoint ptr %tx_wm.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %tx_wm.i.i, align 4
  %rx_req.i.i = getelementptr i8, ptr %17, i32 56
  %25 = ptrtoint ptr %rx_req.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %rx_req.i.i, align 4
  %tx_req.i.i = getelementptr i8, ptr %17, i32 60
  %26 = call ptr @memset(ptr %tx_req.i.i, i32 0, i32 20)
  %27 = load i32, ptr %qmem.i, align 4
  %28 = load ptr, ptr %arrayidx.i, align 256
  %start_addr.i = getelementptr inbounds %struct.hfi_queue_header, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %start_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %start_addr.i, align 4
  %arrayidx.1.i = getelementptr %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 11, i32 1
  %30 = load i32, ptr %desc.i, align 8
  %add.1.i = add i32 %30, 819392
  %qmem.1.i = getelementptr %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 11, i32 1, i32 1
  %31 = ptrtoint ptr %qmem.1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.1.i, ptr %qmem.1.i, align 8
  %32 = ptrtoint ptr %kva.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %kva.i.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %33, i32 819392
  %kva3.1.i = getelementptr %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 11, i32 1, i32 1, i32 1
  %34 = ptrtoint ptr %kva3.1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.1.i, ptr %kva3.1.i, align 4
  %size.1.i = getelementptr %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 11, i32 1, i32 1, i32 2
  %35 = ptrtoint ptr %size.1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 819200, ptr %size.1.i, align 32
  %36 = load ptr, ptr %kva9.i, align 4
  %add.ptr11.1.i = getelementptr i8, ptr %36, i32 80
  %37 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr11.1.i, ptr %arrayidx.1.i, align 4
  %38 = ptrtoint ptr %add.ptr11.1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %add.ptr11.1.i, align 4
  %type.i.1.i = getelementptr i8, ptr %36, i32 88
  %39 = ptrtoint ptr %type.i.1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16842752, ptr %type.i.1.i, align 4
  %q_size.i.1.i = getelementptr i8, ptr %36, i32 92
  %40 = ptrtoint ptr %q_size.i.1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 204800, ptr %q_size.i.1.i, align 4
  %pkt_size.i.1.i = getelementptr i8, ptr %36, i32 96
  %41 = ptrtoint ptr %pkt_size.i.1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %pkt_size.i.1.i, align 4
  %rx_wm.i.1.i = getelementptr i8, ptr %36, i32 104
  %42 = ptrtoint ptr %rx_wm.i.1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %rx_wm.i.1.i, align 4
  %tx_wm.i.1.i = getelementptr i8, ptr %36, i32 108
  %43 = ptrtoint ptr %tx_wm.i.1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %tx_wm.i.1.i, align 4
  %rx_req.i.1.i = getelementptr i8, ptr %36, i32 112
  %44 = ptrtoint ptr %rx_req.i.1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %rx_req.i.1.i, align 4
  %tx_req.i.1.i = getelementptr i8, ptr %36, i32 116
  %45 = call ptr @memset(ptr %tx_req.i.1.i, i32 0, i32 20)
  %46 = load i32, ptr %qmem.1.i, align 8
  %47 = load ptr, ptr %arrayidx.1.i, align 4
  %start_addr.1.i = getelementptr inbounds %struct.hfi_queue_header, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %start_addr.1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %46, ptr %start_addr.1.i, align 4
  %49 = load ptr, ptr %arrayidx.1.i, align 4
  %type22.1.i = getelementptr inbounds %struct.hfi_queue_header, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %type22.1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %type22.1.i, align 4
  %or23.1.i = or i32 %51, 1
  store i32 %or23.1.i, ptr %type22.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 11, i32 2
  %52 = load i32, ptr %desc.i, align 8
  %add.2.i = add i32 %52, 1638592
  %qmem.2.i = getelementptr %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 11, i32 2, i32 1
  %53 = ptrtoint ptr %qmem.2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add.2.i, ptr %qmem.2.i, align 4
  %54 = load ptr, ptr %kva.i.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %54, i32 1638592
  %kva3.2.i = getelementptr %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 11, i32 2, i32 1, i32 1
  %55 = ptrtoint ptr %kva3.2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr.2.i, ptr %kva3.2.i, align 16
  %size.2.i = getelementptr %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 11, i32 2, i32 1, i32 2
  %56 = ptrtoint ptr %size.2.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 819200, ptr %size.2.i, align 4
  %57 = load ptr, ptr %kva9.i, align 4
  %add.ptr11.2.i = getelementptr i8, ptr %57, i32 136
  %58 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr11.2.i, ptr %arrayidx.2.i, align 8
  %59 = ptrtoint ptr %add.ptr11.2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %add.ptr11.2.i, align 4
  %type.i.2.i = getelementptr i8, ptr %57, i32 144
  %60 = ptrtoint ptr %type.i.2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 16842752, ptr %type.i.2.i, align 4
  %q_size.i.2.i = getelementptr i8, ptr %57, i32 148
  %61 = ptrtoint ptr %q_size.i.2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 204800, ptr %q_size.i.2.i, align 4
  %pkt_size.i.2.i = getelementptr i8, ptr %57, i32 152
  %62 = ptrtoint ptr %pkt_size.i.2.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %pkt_size.i.2.i, align 4
  %rx_wm.i.2.i = getelementptr i8, ptr %57, i32 160
  %63 = ptrtoint ptr %rx_wm.i.2.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %rx_wm.i.2.i, align 4
  %tx_wm.i.2.i = getelementptr i8, ptr %57, i32 164
  %64 = ptrtoint ptr %tx_wm.i.2.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %tx_wm.i.2.i, align 4
  %rx_req.i.2.i = getelementptr i8, ptr %57, i32 168
  %65 = ptrtoint ptr %rx_req.i.2.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %rx_req.i.2.i, align 4
  %tx_req.i.2.i = getelementptr i8, ptr %57, i32 172
  %66 = call ptr @memset(ptr %tx_req.i.2.i, i32 0, i32 20)
  %67 = load i32, ptr %qmem.2.i, align 4
  %68 = load ptr, ptr %arrayidx.2.i, align 8
  %start_addr.2.i = getelementptr inbounds %struct.hfi_queue_header, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %start_addr.2.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %67, ptr %start_addr.2.i, align 4
  %70 = load ptr, ptr %arrayidx.2.i, align 8
  %type28.2.i = getelementptr inbounds %struct.hfi_queue_header, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %type28.2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %type28.2.i, align 4
  %or29.2.i = or i32 %72, 2
  store i32 %or29.2.i, ptr %type28.2.i, align 4
  %73 = load ptr, ptr %kva9.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %73, align 4
  %size35.i = getelementptr inbounds %struct.hfi_queue_table_header, ptr %73, i32 0, i32 1
  %75 = ptrtoint ptr %size35.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 192, ptr %size35.i, align 4
  %qhdr0_offset.i = getelementptr inbounds %struct.hfi_queue_table_header, ptr %73, i32 0, i32 2
  %76 = ptrtoint ptr %qhdr0_offset.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 24, ptr %qhdr0_offset.i, align 4
  %qhdr_size.i = getelementptr inbounds %struct.hfi_queue_table_header, ptr %73, i32 0, i32 3
  %77 = ptrtoint ptr %qhdr_size.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 56, ptr %qhdr_size.i, align 4
  %num_q.i = getelementptr inbounds %struct.hfi_queue_table_header, ptr %73, i32 0, i32 4
  %78 = ptrtoint ptr %num_q.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 3, ptr %num_q.i, align 4
  %num_active_q.i = getelementptr inbounds %struct.hfi_queue_table_header, ptr %73, i32 0, i32 5
  %79 = ptrtoint ptr %num_active_q.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 3, ptr %num_active_q.i, align 4
  %80 = load ptr, ptr %arrayidx.2.i, align 8
  %rx_req.i = getelementptr inbounds %struct.hfi_queue_header, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %rx_req.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %rx_req.i, align 4
  %82 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call1.i.i.i, align 4096
  %dev1.i90.i = getelementptr inbounds %struct.venus_core, ptr %83, i32 0, i32 23
  %84 = ptrtoint ptr %dev1.i90.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev1.i90.i, align 4
  %86 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 4, ptr %attrs.i.i, align 4
  %87 = ptrtoint ptr %size2.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 4096, ptr %size2.i.i, align 8
  %call.i93.i = call ptr @dma_alloc_attrs(ptr noundef %85, i32 noundef 4096, ptr noundef nonnull %desc.i, i32 noundef 3264, i32 noundef 4) #7
  %88 = ptrtoint ptr %kva.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i93.i, ptr %kva.i.i, align 4
  %tobool.not.i95.not.i = icmp eq ptr %call.i93.i, null
  %sfr42.i = getelementptr inbounds %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 10
  br i1 %tobool.not.i95.not.i, label %if.then41.i, label %if.else44.i

if.then41.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %sfr42.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %sfr42.i, align 16
  br label %venus_interface_queues_init.exit.thread

if.else44.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %90 = call ptr @memcpy(ptr %sfr42.i, ptr %desc.i, i32 16)
  %kva47.i = getelementptr inbounds %struct.venus_hfi_device, ptr %call1.i.i.i, i32 0, i32 10, i32 1
  %91 = ptrtoint ptr %kva47.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %kva47.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 4096, ptr %92, align 4
  br label %venus_interface_queues_init.exit.thread

venus_interface_queues_init.exit.thread:          ; preds = %if.else44.i, %if.then41.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  call void @arm_heavy_mb() #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #7
  br label %cleanup

err_kfree:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc.i) #7
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #7
  %94 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %priv, align 4
  %95 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_kfree, %venus_interface_queues_init.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_kfree ], [ -12, %entry.cleanup_crit_edge ], [ 0, %venus_interface_queues_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @venus_hfi_queues_reinit(ptr nocapture noundef readonly %core) local_unnamed_addr #0 align 64 {
for.inc.2:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 42
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %lock = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %kva = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 9, i32 1
  %arrayidx = getelementptr %struct.venus_hfi_device, ptr %1, i32 0, i32 11, i32 0
  %2 = ptrtoint ptr %kva to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kva, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 24
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %add.ptr, align 4
  %type.i = getelementptr i8, ptr %3, i32 32
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16842752, ptr %type.i, align 4
  %q_size.i = getelementptr i8, ptr %3, i32 36
  %7 = ptrtoint ptr %q_size.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 204800, ptr %q_size.i, align 4
  %pkt_size.i = getelementptr i8, ptr %3, i32 40
  %8 = ptrtoint ptr %pkt_size.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pkt_size.i, align 4
  %rx_wm.i = getelementptr i8, ptr %3, i32 48
  %9 = ptrtoint ptr %rx_wm.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %rx_wm.i, align 4
  %tx_wm.i = getelementptr i8, ptr %3, i32 52
  %10 = ptrtoint ptr %tx_wm.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %tx_wm.i, align 4
  %rx_req.i = getelementptr i8, ptr %3, i32 56
  %11 = ptrtoint ptr %rx_req.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %rx_req.i, align 4
  %tx_req.i = getelementptr i8, ptr %3, i32 60
  %12 = call ptr @memset(ptr %tx_req.i, i32 0, i32 20)
  %qmem = getelementptr %struct.venus_hfi_device, ptr %1, i32 0, i32 11, i32 0, i32 1
  %13 = ptrtoint ptr %qmem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qmem, align 4
  %15 = load ptr, ptr %arrayidx, align 4
  %start_addr = getelementptr inbounds %struct.hfi_queue_header, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %start_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %start_addr, align 4
  %arrayidx.1 = getelementptr %struct.venus_hfi_device, ptr %1, i32 0, i32 11, i32 1
  %17 = load ptr, ptr %kva, align 4
  %add.ptr1.1 = getelementptr i8, ptr %17, i32 80
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr1.1, ptr %arrayidx.1, align 4
  %19 = ptrtoint ptr %add.ptr1.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %add.ptr1.1, align 4
  %type.i.1 = getelementptr i8, ptr %17, i32 88
  %20 = ptrtoint ptr %type.i.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16842752, ptr %type.i.1, align 4
  %q_size.i.1 = getelementptr i8, ptr %17, i32 92
  %21 = ptrtoint ptr %q_size.i.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 204800, ptr %q_size.i.1, align 4
  %pkt_size.i.1 = getelementptr i8, ptr %17, i32 96
  %22 = ptrtoint ptr %pkt_size.i.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %pkt_size.i.1, align 4
  %rx_wm.i.1 = getelementptr i8, ptr %17, i32 104
  %23 = ptrtoint ptr %rx_wm.i.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %rx_wm.i.1, align 4
  %tx_wm.i.1 = getelementptr i8, ptr %17, i32 108
  %24 = ptrtoint ptr %tx_wm.i.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %tx_wm.i.1, align 4
  %rx_req.i.1 = getelementptr i8, ptr %17, i32 112
  %25 = ptrtoint ptr %rx_req.i.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %rx_req.i.1, align 4
  %tx_req.i.1 = getelementptr i8, ptr %17, i32 116
  %26 = call ptr @memset(ptr %tx_req.i.1, i32 0, i32 20)
  %qmem.1 = getelementptr %struct.venus_hfi_device, ptr %1, i32 0, i32 11, i32 1, i32 1
  %27 = ptrtoint ptr %qmem.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qmem.1, align 4
  %29 = load ptr, ptr %arrayidx.1, align 4
  %start_addr.1 = getelementptr inbounds %struct.hfi_queue_header, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %start_addr.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %start_addr.1, align 4
  %31 = load ptr, ptr %arrayidx.1, align 4
  %type9.1 = getelementptr inbounds %struct.hfi_queue_header, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %type9.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type9.1, align 4
  %or10.1 = or i32 %33, 1
  store i32 %or10.1, ptr %type9.1, align 4
  %arrayidx.2 = getelementptr %struct.venus_hfi_device, ptr %1, i32 0, i32 11, i32 2
  %34 = load ptr, ptr %kva, align 4
  %add.ptr1.2 = getelementptr i8, ptr %34, i32 136
  %35 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr1.2, ptr %arrayidx.2, align 4
  %36 = ptrtoint ptr %add.ptr1.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %add.ptr1.2, align 4
  %type.i.2 = getelementptr i8, ptr %34, i32 144
  %37 = ptrtoint ptr %type.i.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16842752, ptr %type.i.2, align 4
  %q_size.i.2 = getelementptr i8, ptr %34, i32 148
  %38 = ptrtoint ptr %q_size.i.2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 204800, ptr %q_size.i.2, align 4
  %pkt_size.i.2 = getelementptr i8, ptr %34, i32 152
  %39 = ptrtoint ptr %pkt_size.i.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %pkt_size.i.2, align 4
  %rx_wm.i.2 = getelementptr i8, ptr %34, i32 160
  %40 = ptrtoint ptr %rx_wm.i.2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %rx_wm.i.2, align 4
  %tx_wm.i.2 = getelementptr i8, ptr %34, i32 164
  %41 = ptrtoint ptr %tx_wm.i.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %tx_wm.i.2, align 4
  %rx_req.i.2 = getelementptr i8, ptr %34, i32 168
  %42 = ptrtoint ptr %rx_req.i.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %rx_req.i.2, align 4
  %tx_req.i.2 = getelementptr i8, ptr %34, i32 172
  %43 = call ptr @memset(ptr %tx_req.i.2, i32 0, i32 20)
  %qmem.2 = getelementptr %struct.venus_hfi_device, ptr %1, i32 0, i32 11, i32 2, i32 1
  %44 = ptrtoint ptr %qmem.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qmem.2, align 4
  %46 = load ptr, ptr %arrayidx.2, align 4
  %start_addr.2 = getelementptr inbounds %struct.hfi_queue_header, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %start_addr.2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %45, ptr %start_addr.2, align 4
  %48 = load ptr, ptr %arrayidx.2, align 4
  %type15.2 = getelementptr inbounds %struct.hfi_queue_header, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %type15.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type15.2, align 4
  %or16.2 = or i32 %50, 2
  store i32 %or16.2, ptr %type15.2, align 4
  %51 = load ptr, ptr %kva, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %51, align 4
  %size = getelementptr inbounds %struct.hfi_queue_table_header, ptr %51, i32 0, i32 1
  %53 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 192, ptr %size, align 4
  %qhdr0_offset = getelementptr inbounds %struct.hfi_queue_table_header, ptr %51, i32 0, i32 2
  %54 = ptrtoint ptr %qhdr0_offset to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 24, ptr %qhdr0_offset, align 4
  %qhdr_size = getelementptr inbounds %struct.hfi_queue_table_header, ptr %51, i32 0, i32 3
  %55 = ptrtoint ptr %qhdr_size to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 56, ptr %qhdr_size, align 4
  %num_q = getelementptr inbounds %struct.hfi_queue_table_header, ptr %51, i32 0, i32 4
  %56 = ptrtoint ptr %num_q to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3, ptr %num_q, align 4
  %num_active_q = getelementptr inbounds %struct.hfi_queue_table_header, ptr %51, i32 0, i32 5
  %57 = ptrtoint ptr %num_active_q to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3, ptr %num_active_q, align 4
  %58 = load ptr, ptr %arrayidx.2, align 4
  %rx_req = getelementptr inbounds %struct.hfi_queue_header, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %rx_req to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %rx_req, align 4
  %kva25 = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 10, i32 1
  %60 = ptrtoint ptr %kva25 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %kva25, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4096, ptr %61, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_core_init(ptr nocapture noundef readonly %core) #0 align 64 {
entry:
  %packet.i41.i = alloca [100 x i8], align 1
  %packet.i39.i = alloca [100 x i8], align 1
  %packet.i.i = alloca [100 x i8], align 1
  %version_pkt = alloca %struct.hfi_sys_get_property_pkt, align 4
  %pkt = alloca %struct.hfi_sys_init_pkt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 42
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %dev1 = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %version_pkt) #7
  %4 = call ptr @memset(ptr %version_pkt, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pkt) #7
  %5 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %pkt, align 4, !annotation !127
  %6 = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !127
  %8 = getelementptr inbounds %struct.hfi_sys_init_pkt, ptr %pkt, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !127
  call void @pkt_sys_init(ptr noundef nonnull %pkt, i32 noundef 1) #7
  %lock.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %state1.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %state1.i, align 4
  call void @mutex_unlock(ptr noundef %lock.i) #7
  %call2 = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %1, ptr noundef nonnull %pkt, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @pkt_sys_image_version(ptr noundef nonnull %version_pkt) #7
  %call3 = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %1, ptr noundef nonnull %version_pkt, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.1) #11
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %dev1.i = getelementptr inbounds %struct.venus_core, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1.i, align 4
  %15 = load i32, ptr @venus_fw_debug, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %packet.i.i) #7
  %16 = call ptr @memset(ptr %packet.i.i, i32 255, i32 100)
  call void @pkt_sys_debug_config(ptr noundef nonnull %packet.i.i, i32 noundef 1, i32 noundef %15) #7
  %call.i.i = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %1, ptr noundef nonnull %packet.i.i, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %packet.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end6.if.end.i_crit_edge, label %do.end.i

if.end6.if.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.11, i32 noundef %call.i.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end6.if.end.i_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %res.i = getelementptr inbounds %struct.venus_core, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %res.i, align 4
  %hfi_version.i = getelementptr inbounds %struct.venus_resources, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %hfi_version.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hfi_version.i, align 4
  %23 = and i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %switch.i = icmp eq i32 %23, 2
  br i1 %switch.i, label %if.end8.thread.i, label %if.end8.i

if.end8.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @venus_sys_idle_indicator, align 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %packet.i39.i) #7
  %24 = call ptr @memset(ptr %packet.i39.i, i32 255, i32 100)
  br label %venus_sys_set_idle_message.exit.i

if.end8.i:                                        ; preds = %if.end.i
  %.b38.pr.i = load i1, ptr @venus_sys_idle_indicator, align 1
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %packet.i39.i) #7
  %25 = call ptr @memset(ptr %packet.i39.i, i32 255, i32 100)
  br i1 %.b38.pr.i, label %if.end8.i.venus_sys_set_idle_message.exit.i_crit_edge, label %venus_sys_set_idle_message.exit.thread.i

if.end8.i.venus_sys_set_idle_message.exit.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %venus_sys_set_idle_message.exit.i

venus_sys_set_idle_message.exit.thread.i:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %packet.i39.i) #7
  br label %if.end16.i

venus_sys_set_idle_message.exit.i:                ; preds = %if.end8.i.venus_sys_set_idle_message.exit.i_crit_edge, %if.end8.thread.i
  call void @pkt_sys_idle_indicator(ptr noundef nonnull %packet.i39.i, i32 noundef 1) #7
  %call.i40.i = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %1, ptr noundef nonnull %packet.i39.i, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %packet.i39.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %tobool11.not.i = icmp eq i32 %call.i40.i, 0
  br i1 %tobool11.not.i, label %venus_sys_set_idle_message.exit.i.if.end16.i_crit_edge, label %do.end15.i

venus_sys_set_idle_message.exit.i.if.end16.i_crit_edge: ; preds = %venus_sys_set_idle_message.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

do.end15.i:                                       ; preds = %venus_sys_set_idle_message.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.14, i32 noundef %call.i40.i) #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end15.i, %venus_sys_set_idle_message.exit.i.if.end16.i_crit_edge, %venus_sys_set_idle_message.exit.thread.i
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %packet.i41.i) #7
  %26 = call ptr @memset(ptr %packet.i41.i, i32 255, i32 100)
  call void @pkt_sys_power_control(ptr noundef nonnull %packet.i41.i, i32 noundef 1) #7
  %call.i42.i = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %1, ptr noundef nonnull %packet.i41.i, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %packet.i41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %tobool19.not.i = icmp eq i32 %call.i42.i, 0
  br i1 %tobool19.not.i, label %if.end16.i.cleanup_crit_edge, label %do.end23.i

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end23.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.17, i32 noundef %call.i42.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end23.i, %if.end16.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.end16.i.cleanup_crit_edge ], [ %call.i42.i, %do.end23.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pkt) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %version_pkt) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_core_deinit(ptr nocapture noundef readonly %core) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 42
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %lock.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %state1.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %state1.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  %suspended = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %suspended, align 1
  %power_enabled = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %power_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %power_enabled, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_core_ping(ptr nocapture noundef readonly %core, i32 noundef %cookie) #0 align 64 {
entry:
  %pkt = alloca %struct.hfi_sys_ping_pkt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 42
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pkt) #7
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pkt, align 4, !annotation !127
  %3 = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !127
  %5 = getelementptr inbounds %struct.hfi_sys_ping_pkt, ptr %pkt, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !127
  call void @pkt_sys_ping(ptr noundef nonnull %pkt, i32 noundef %cookie) #7
  %call1 = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %1, ptr noundef nonnull %pkt, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pkt) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_core_trigger_ssr(ptr nocapture noundef readonly %core, i32 noundef %trigger_type) #0 align 64 {
entry:
  %pkt = alloca %struct.hfi_sys_test_ssr_pkt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 42
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pkt) #7
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pkt, align 4, !annotation !127
  %3 = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !127
  %5 = getelementptr inbounds %struct.hfi_sys_test_ssr_pkt, ptr %pkt, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !127
  %call1 = call i32 @pkt_sys_ssr_cmd(ptr noundef nonnull %pkt, i32 noundef %trigger_type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %1, ptr noundef nonnull %pkt, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pkt) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_session_init(ptr noundef %inst, i32 noundef %session_type, i32 noundef %codec) #0 align 64 {
entry:
  %packet.i = alloca [100 x i8], align 1
  %pkt = alloca %struct.hfi_session_init_pkt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt) #7
  %4 = call ptr @memset(ptr %pkt, i32 255, i32 20)
  %5 = load i32, ptr @venus_fw_debug, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %packet.i) #7
  %6 = call ptr @memset(ptr %packet.i, i32 255, i32 100)
  call void @pkt_sys_debug_config(ptr noundef nonnull %packet.i, i32 noundef 1, i32 noundef %5) #7
  %call.i = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %packet.i, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %packet.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end:                                           ; preds = %entry
  %call2 = call i32 @pkt_session_init(ptr noundef nonnull %pkt, ptr noundef %inst, i32 noundef %session_type, i32 noundef %codec) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %pkt, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end5.err_crit_edge

if.end5.err_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err:                                              ; preds = %if.end5.err_crit_edge, %if.end.err_crit_edge, %entry.err_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.err_crit_edge ], [ %call2, %if.end.err_crit_edge ], [ %call6, %if.end5.err_crit_edge ]
  call fastcc void @venus_flush_debug_queue(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_session_end(ptr noundef %inst) #0 align 64 {
entry:
  %pkt.i = alloca %struct.hfi_session_pkt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pkt.i) #7
  %4 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pkt.i, align 4, !annotation !127
  %5 = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !127
  %7 = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !127
  call void @pkt_session_cmd(ptr noundef nonnull %pkt.i, i32 noundef 65544, ptr noundef %inst) #7
  %call1.i = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %pkt.i, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pkt.i) #7
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_session_abort(ptr noundef %inst) #0 align 64 {
entry:
  %pkt.i = alloca %struct.hfi_session_pkt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  tail call fastcc void @venus_flush_debug_queue(ptr noundef %3)
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %priv.i.i = getelementptr inbounds %struct.venus_core, ptr %5, i32 0, i32 42
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pkt.i) #7
  %8 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %pkt.i, align 4, !annotation !127
  %9 = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !127
  %11 = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !127
  call void @pkt_session_cmd(ptr noundef nonnull %pkt.i, i32 noundef 2162689, ptr noundef %inst) #7
  %call1.i = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %7, ptr noundef nonnull %pkt.i, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pkt.i) #7
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_session_flush(ptr noundef %inst, i32 noundef %flush_mode) #0 align 64 {
entry:
  %pkt = alloca %struct.hfi_session_flush_pkt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pkt) #7
  %4 = call ptr @memset(ptr %pkt, i32 255, i32 16)
  %call1 = call i32 @pkt_session_flush(ptr noundef nonnull %pkt, ptr noundef %inst, i32 noundef %flush_mode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %pkt, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pkt) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_session_start(ptr noundef %inst) #0 align 64 {
entry:
  %pkt.i = alloca %struct.hfi_session_pkt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core.i, align 4
  %priv.i.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pkt.i) #7
  %4 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pkt.i, align 4, !annotation !127
  %5 = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !127
  %7 = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !127
  call void @pkt_session_cmd(ptr noundef nonnull %pkt.i, i32 noundef 2166786, ptr noundef %inst) #7
  %call1.i = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %pkt.i, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pkt.i) #7
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_session_stop(ptr noundef %inst) #0 align 64 {
entry:
  %pkt.i = alloca %struct.hfi_session_pkt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core.i, align 4
  %priv.i.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pkt.i) #7
  %4 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pkt.i, align 4, !annotation !127
  %5 = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !127
  %7 = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !127
  call void @pkt_session_cmd(ptr noundef nonnull %pkt.i, i32 noundef 2166787, ptr noundef %inst) #7
  %call1.i = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %pkt.i, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pkt.i) #7
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_session_continue(ptr noundef %inst) #0 align 64 {
entry:
  %pkt.i = alloca %struct.hfi_session_pkt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core.i, align 4
  %priv.i.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pkt.i) #7
  %4 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pkt.i, align 4, !annotation !127
  %5 = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !127
  %7 = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !127
  call void @pkt_session_cmd(ptr noundef nonnull %pkt.i, i32 noundef 2166797, ptr noundef %inst) #7
  %call1.i = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %pkt.i, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pkt.i) #7
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_session_etb(ptr noundef %inst, ptr noundef %in_frame) #0 align 64 {
entry:
  %pkt = alloca %struct.hfi_session_empty_buffer_compressed_pkt, align 4
  %pkt7 = alloca %struct.hfi_session_empty_buffer_uncompressed_plane0_pkt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %session_type1 = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 55
  %4 = ptrtoint ptr %session_type1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %session_type1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup19_crit_edge [
    i32 2, label %if.then
    i32 1, label %if.then6
  ]

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup19

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %pkt) #7
  %7 = call ptr @memset(ptr %pkt, i32 255, i32 60)
  %call2 = call i32 @pkt_session_etb_decoder(ptr noundef nonnull %pkt, ptr noundef %inst, ptr noundef %in_frame) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %pkt, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %pkt) #7
  br label %cleanup19

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %pkt) #7
  br label %cleanup19

if.then6:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pkt7) #7
  %8 = call ptr @memset(ptr %pkt7, i32 255, i32 64)
  %call8 = call i32 @pkt_session_etb_encoder(ptr noundef nonnull %pkt7, ptr noundef %inst, ptr noundef %in_frame) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup13.thread, label %cleanup13

cleanup13.thread:                                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %pkt7, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pkt7) #7
  br label %cleanup19

cleanup13:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pkt7) #7
  br label %cleanup19

cleanup19:                                        ; preds = %cleanup13, %cleanup13.thread, %cleanup, %cleanup.thread, %entry.cleanup19_crit_edge
  %retval.2 = phi i32 [ %call2, %cleanup ], [ %call8, %cleanup13 ], [ -22, %entry.cleanup19_crit_edge ], [ %call4, %cleanup.thread ], [ %call12, %cleanup13.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_session_ftb(ptr noundef %inst, ptr noundef %out_frame) #0 align 64 {
entry:
  %pkt = alloca %struct.hfi_session_fill_buffer_pkt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %pkt) #7
  %4 = call ptr @memset(ptr %pkt, i32 255, i32 44)
  %call1 = call i32 @pkt_session_ftb(ptr noundef nonnull %pkt, ptr noundef %inst, ptr noundef %out_frame) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %pkt, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %pkt) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_session_set_buffers(ptr noundef %inst, ptr noundef %bd) #0 align 64 {
entry:
  %packet = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %packet) #7
  %4 = call ptr @memset(ptr %packet, i32 255, i32 512)
  %5 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @pkt_session_set_buffers(ptr noundef nonnull %packet, ptr noundef %inst, ptr noundef %bd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %packet, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %packet) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_session_unset_buffers(ptr noundef %inst, ptr noundef %bd) #0 align 64 {
entry:
  %packet = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %packet) #7
  %4 = call ptr @memset(ptr %packet, i32 255, i32 512)
  %5 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @pkt_session_unset_buffers(ptr noundef nonnull %packet, ptr noundef %inst, ptr noundef %bd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %packet, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %packet) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_session_load_res(ptr noundef %inst) #0 align 64 {
entry:
  %pkt.i = alloca %struct.hfi_session_pkt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core.i, align 4
  %priv.i.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pkt.i) #7
  %4 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pkt.i, align 4, !annotation !127
  %5 = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !127
  %7 = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !127
  call void @pkt_session_cmd(ptr noundef nonnull %pkt.i, i32 noundef 2166785, ptr noundef %inst) #7
  %call1.i = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %pkt.i, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pkt.i) #7
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_session_release_res(ptr noundef %inst) #0 align 64 {
entry:
  %pkt.i = alloca %struct.hfi_session_pkt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core.i = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core.i, align 4
  %priv.i.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pkt.i) #7
  %4 = ptrtoint ptr %pkt.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %pkt.i, align 4, !annotation !127
  %5 = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !127
  %7 = getelementptr inbounds %struct.hfi_session_hdr_pkt, ptr %pkt.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !127
  call void @pkt_session_cmd(ptr noundef nonnull %pkt.i, i32 noundef 2166796, ptr noundef %inst) #7
  %call1.i = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %pkt.i, i1 noundef zeroext true) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pkt.i) #7
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_session_parse_seq_hdr(ptr noundef %inst, i32 noundef %seq_hdr, i32 noundef %seq_hdr_len) #0 align 64 {
entry:
  %packet = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %packet) #7
  %4 = call ptr @memset(ptr %packet, i32 255, i32 100)
  %call1 = call i32 @pkt_session_parse_seq_header(ptr noundef nonnull %packet, ptr noundef %inst, i32 noundef %seq_hdr, i32 noundef %seq_hdr_len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %packet, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %packet) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_session_get_seq_hdr(ptr noundef %inst, i32 noundef %seq_hdr, i32 noundef %seq_hdr_len) #0 align 64 {
entry:
  %packet = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %packet) #7
  %4 = call ptr @memset(ptr %packet, i32 255, i32 100)
  %call1 = call i32 @pkt_session_get_seq_hdr(ptr noundef nonnull %packet, ptr noundef %inst, i32 noundef %seq_hdr, i32 noundef %seq_hdr_len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %packet, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %packet) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_session_set_property(ptr noundef %inst, i32 noundef %ptype, ptr noundef %pdata) #0 align 64 {
entry:
  %packet = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %packet) #7
  %4 = call ptr @memset(ptr %packet, i32 255, i32 512)
  %call1 = call i32 @pkt_session_set_property(ptr noundef nonnull %packet, ptr noundef %inst, i32 noundef %ptype, ptr noundef %pdata) #7
  %5 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %call1, label %if.then2 [
    i32 -524, label %entry.cleanup_crit_edge
    i32 0, label %if.end3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %packet, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ %call4, %if.end3 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %packet) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_session_get_property(ptr noundef %inst, i32 noundef %ptype) #0 align 64 {
entry:
  %pkt = alloca %struct.hfi_session_get_property_pkt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.venus_inst, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pkt) #7
  %4 = call ptr @memset(ptr %pkt, i32 255, i32 20)
  %call1 = call i32 @pkt_session_get_property(ptr noundef nonnull %pkt, ptr noundef %inst, i32 noundef %ptype) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %3, ptr noundef nonnull %pkt, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pkt) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_resume(ptr nocapture noundef readonly %core) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 42
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %lock = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %suspended = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.then3_crit_edge, label %if.end

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.end:                                           ; preds = %entry
  %power_enabled.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %power_enabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %power_enabled.i, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @venus_set_hw_state(ptr noundef %7, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.unlock.thread17_crit_edge

if.end.i.unlock.thread17_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock.thread17

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call fastcc i32 @venus_run(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %unlock, label %err_suspend.i

err_suspend.i:                                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i19.i = tail call i32 @venus_set_hw_state(ptr noundef %9, i1 noundef zeroext false) #7
  br label %unlock.thread17

unlock.thread17:                                  ; preds = %err_suspend.i, %if.end.i.unlock.thread17_crit_edge
  %retval.0.ph.i.ph = phi i32 [ %call4.i, %err_suspend.i ], [ %call.i.i, %if.end.i.unlock.thread17_crit_edge ]
  %10 = ptrtoint ptr %power_enabled.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %power_enabled.i, align 4
  br label %if.end5

unlock:                                           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %power_enabled.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %power_enabled.i, align 4
  br label %if.then3

if.then3:                                         ; preds = %unlock, %if.end.if.then3_crit_edge, %entry.if.then3_crit_edge
  %12 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %suspended, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %unlock.thread17
  %ret.014 = phi i32 [ 0, %if.then3 ], [ %retval.0.ph.i.ph, %unlock.thread17 ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.014
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_suspend(ptr nocapture noundef readonly %core) #0 align 64 {
entry:
  %pkt.i.i13 = alloca %struct.hfi_sys_pc_prep_pkt, align 4
  %pkt.i.i = alloca %struct.hfi_sys_pc_prep_pkt, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %hfi_version = getelementptr inbounds %struct.venus_resources, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %hfi_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hfi_version, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  %priv.i.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 42
  %4 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i.i, align 4
  %dev1.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 23
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %cpu_cs_base3.i = getelementptr inbounds %struct.venus_core, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu_cs_base3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpu_cs_base3.i, align 4
  %power_enabled.i = getelementptr inbounds %struct.venus_hfi_device, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %power_enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %power_enabled.i, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %switch, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.then.return_crit_edge, label %lor.lhs.false.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false.i:                                  ; preds = %if.then
  %suspended.i = getelementptr inbounds %struct.venus_hfi_device, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %suspended.i, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not.i = icmp eq i8 %15, 0
  br i1 %tobool4.not.i, label %if.end.i, label %lor.lhs.false.i.return_crit_edge

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false.i
  %lock.i = getelementptr inbounds %struct.venus_hfi_device, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %state.i.i = getelementptr inbounds %struct.venus_hfi_device, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i.not.i = icmp eq i32 %17, 1
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  br i1 %cmp.i.not.i, label %do.end.i, label %if.end9.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.30) #11
  br label %return

if.end9.i:                                        ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %11, i32 76
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  %19 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not.i = icmp eq i32 %19, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end9.i.power_off.i_crit_edge

if.end9.i.power_off.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %power_off.i

if.end14.i:                                       ; preds = %if.end9.i
  %call15.i = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call15.i, 150000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1585) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.then43.i, %if.end14.i
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %cpu_cs_base5.i.i = getelementptr inbounds %struct.venus_core, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu_cs_base5.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cpu_cs_base5.i.i, align 4
  %res.i.i = getelementptr inbounds %struct.venus_core, ptr %21, i32 0, i32 22
  %24 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %res.i.i, align 4
  %hfi_version.i.i = getelementptr inbounds %struct.venus_resources, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %hfi_version.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hfi_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp.i160.i = icmp eq i32 %27, 3
  br i1 %cmp.i160.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %wrapper_tz_base3.i.i = getelementptr inbounds %struct.venus_core, ptr %21, i32 0, i32 6
  %28 = ptrtoint ptr %wrapper_tz_base3.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wrapper_tz_base3.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !129
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  br label %venus_cpu_and_video_core_idle.exit.i

if.else.i.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %wrapper_base1.i.i = getelementptr inbounds %struct.venus_core, ptr %21, i32 0, i32 5
  %32 = ptrtoint ptr %wrapper_base1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wrapper_base1.i.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %33, i32 8212
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #7, !srcloc !129
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  br label %venus_cpu_and_video_core_idle.exit.i

venus_cpu_and_video_core_idle.exit.i:             ; preds = %if.else.i.i, %if.then.i.i
  %cpu_status.0.i.i = phi i32 [ %31, %if.then.i.i ], [ %35, %if.else.i.i ]
  %add.ptr16.i.i = getelementptr i8, ptr %23, i32 76
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %and.i.i = and i32 %cpu_status.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  %37 = and i32 %36, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool21.not.i.i = icmp ne i32 %37, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %tobool21.not.i.i, i1 false
  br i1 %or.cond.i.i, label %venus_cpu_and_video_core_idle.exit.i.if.end50.i_crit_edge, label %land.lhs.true.i

venus_cpu_and_video_core_idle.exit.i.if.end50.i_crit_edge: ; preds = %venus_cpu_and_video_core_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

land.lhs.true.i:                                  ; preds = %venus_cpu_and_video_core_idle.exit.i
  %call34.i = tail call i64 @ktime_get() #7
  %cmp3.i.i = icmp sgt i64 %call34.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then38.i, label %if.then43.i

if.then38.i:                                      ; preds = %land.lhs.true.i
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %5, align 4
  %cpu_cs_base5.i162.i = getelementptr inbounds %struct.venus_core, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu_cs_base5.i162.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cpu_cs_base5.i162.i, align 4
  %res.i163.i = getelementptr inbounds %struct.venus_core, ptr %39, i32 0, i32 22
  %42 = ptrtoint ptr %res.i163.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %res.i163.i, align 4
  %hfi_version.i164.i = getelementptr inbounds %struct.venus_resources, ptr %43, i32 0, i32 20
  %44 = ptrtoint ptr %hfi_version.i164.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hfi_version.i164.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp.i165.i = icmp eq i32 %45, 3
  br i1 %cmp.i165.i, label %if.then.i168.i, label %if.else.i171.i

if.then.i168.i:                                   ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  %wrapper_tz_base3.i166.i = getelementptr inbounds %struct.venus_core, ptr %39, i32 0, i32 6
  %46 = ptrtoint ptr %wrapper_tz_base3.i166.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wrapper_tz_base3.i166.i, align 4
  %add.ptr.i167.i = getelementptr i8, ptr %47, i32 16
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i167.i) #7, !srcloc !129
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  br label %for.end.i

if.else.i171.i:                                   ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  %wrapper_base1.i169.i = getelementptr inbounds %struct.venus_core, ptr %39, i32 0, i32 5
  %50 = ptrtoint ptr %wrapper_base1.i169.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wrapper_base1.i169.i, align 4
  %add.ptr10.i170.i = getelementptr i8, ptr %51, i32 8212
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i170.i) #7, !srcloc !129
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  br label %for.end.i

if.then43.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 376, i32 noundef 1500, i32 noundef 2) #7
  br label %for.cond.i

for.end.i:                                        ; preds = %if.else.i171.i, %if.then.i168.i
  %cpu_status.0.i172.i = phi i32 [ %49, %if.then.i168.i ], [ %53, %if.else.i171.i ]
  %add.ptr16.i173.i = getelementptr i8, ptr %41, i32 76
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i173.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %and.i174.i = and i32 %cpu_status.0.i172.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174.i)
  %tobool.not.i175.i = icmp ne i32 %and.i174.i, 0
  %55 = and i32 %54, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool21.not.i176.i = icmp ne i32 %55, 0
  %or.cond.i177.i = select i1 %tobool.not.i175.i, i1 %tobool21.not.i176.i, i1 false
  br i1 %or.cond.i177.i, label %for.end.i.if.end50.i_crit_edge, label %for.end.i.return_crit_edge

for.end.i.return_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

for.end.i.if.end50.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

if.end50.i:                                       ; preds = %for.end.i.if.end50.i_crit_edge, %venus_cpu_and_video_core_idle.exit.i.if.end50.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pkt.i.i) #7
  %56 = ptrtoint ptr %pkt.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %pkt.i.i, align 4, !annotation !127
  %57 = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %57, align 4, !annotation !127
  %pwr_collapse_prep.i.i = getelementptr inbounds %struct.venus_hfi_device, ptr %5, i32 0, i32 7
  %59 = ptrtoint ptr %pwr_collapse_prep.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %pwr_collapse_prep.i.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.venus_hfi_device, ptr %5, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @init_completion.__key) #7
  call void @pkt_sys_pc_prep(ptr noundef nonnull %pkt.i.i) #7
  %call1.i.i = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %5, ptr noundef nonnull %pkt.i.i, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pkt.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool52.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool52.not.i, label %if.end57.i, label %do.end56.i

do.end56.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.33, i32 noundef %call1.i.i) #11
  br label %return

if.end57.i:                                       ; preds = %if.end50.i
  %call61.i = call i64 @ktime_get() #7
  %add.i181.i = add i64 %call61.i, 150000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1596) #7
  br label %for.cond76.i

for.cond76.i:                                     ; preds = %if.then93.i, %if.end57.i
  %60 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %5, align 4
  %cpu_cs_base5.i182.i = getelementptr inbounds %struct.venus_core, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %cpu_cs_base5.i182.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cpu_cs_base5.i182.i, align 4
  %res.i183.i = getelementptr inbounds %struct.venus_core, ptr %61, i32 0, i32 22
  %64 = ptrtoint ptr %res.i183.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %res.i183.i, align 4
  %hfi_version.i184.i = getelementptr inbounds %struct.venus_resources, ptr %65, i32 0, i32 20
  %66 = ptrtoint ptr %hfi_version.i184.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hfi_version.i184.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp.i185.i = icmp eq i32 %67, 3
  br i1 %cmp.i185.i, label %if.then.i188.i, label %if.else.i191.i

if.then.i188.i:                                   ; preds = %for.cond76.i
  call void @__sanitizer_cov_trace_pc() #9
  %wrapper_tz_base3.i186.i = getelementptr inbounds %struct.venus_core, ptr %61, i32 0, i32 6
  %68 = ptrtoint ptr %wrapper_tz_base3.i186.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wrapper_tz_base3.i186.i, align 4
  %add.ptr.i187.i = getelementptr i8, ptr %69, i32 16
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187.i) #7, !srcloc !129
  %71 = call i32 @llvm.bswap.i32(i32 %70) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  br label %venus_cpu_idle_and_pc_ready.exit.i

if.else.i191.i:                                   ; preds = %for.cond76.i
  call void @__sanitizer_cov_trace_pc() #9
  %wrapper_base1.i189.i = getelementptr inbounds %struct.venus_core, ptr %61, i32 0, i32 5
  %72 = ptrtoint ptr %wrapper_base1.i189.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %wrapper_base1.i189.i, align 4
  %add.ptr10.i190.i = getelementptr i8, ptr %73, i32 8212
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i190.i) #7, !srcloc !129
  %75 = call i32 @llvm.bswap.i32(i32 %74) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  br label %venus_cpu_idle_and_pc_ready.exit.i

venus_cpu_idle_and_pc_ready.exit.i:               ; preds = %if.else.i191.i, %if.then.i188.i
  %cpu_status.0.i192.i = phi i32 [ %71, %if.then.i188.i ], [ %75, %if.else.i191.i ]
  %add.ptr16.i193.i = getelementptr i8, ptr %63, i32 76
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i193.i) #7, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %and.i194.i = and i32 %cpu_status.0.i192.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i194.i)
  %tobool.not.i195.i = icmp ne i32 %and.i194.i, 0
  %77 = and i32 %76, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool21.not.i196.i = icmp ne i32 %77, 0
  %or.cond.i197.i = select i1 %tobool.not.i195.i, i1 %tobool21.not.i196.i, i1 false
  br i1 %or.cond.i197.i, label %venus_cpu_idle_and_pc_ready.exit.i.power_off.i_crit_edge, label %land.lhs.true83.i

venus_cpu_idle_and_pc_ready.exit.i.power_off.i_crit_edge: ; preds = %venus_cpu_idle_and_pc_ready.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %power_off.i

land.lhs.true83.i:                                ; preds = %venus_cpu_idle_and_pc_ready.exit.i
  %call84.i = call i64 @ktime_get() #7
  %cmp3.i199.i = icmp sgt i64 %call84.i, %add.i181.i
  br i1 %cmp3.i199.i, label %if.then88.i, label %if.then93.i

if.then88.i:                                      ; preds = %land.lhs.true83.i
  %78 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %5, align 4
  %cpu_cs_base5.i202.i = getelementptr inbounds %struct.venus_core, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %cpu_cs_base5.i202.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cpu_cs_base5.i202.i, align 4
  %res.i203.i = getelementptr inbounds %struct.venus_core, ptr %79, i32 0, i32 22
  %82 = ptrtoint ptr %res.i203.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %res.i203.i, align 4
  %hfi_version.i204.i = getelementptr inbounds %struct.venus_resources, ptr %83, i32 0, i32 20
  %84 = ptrtoint ptr %hfi_version.i204.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %hfi_version.i204.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %85)
  %cmp.i205.i = icmp eq i32 %85, 3
  br i1 %cmp.i205.i, label %if.then.i208.i, label %if.else.i211.i

if.then.i208.i:                                   ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #9
  %wrapper_tz_base3.i206.i = getelementptr inbounds %struct.venus_core, ptr %79, i32 0, i32 6
  %86 = ptrtoint ptr %wrapper_tz_base3.i206.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wrapper_tz_base3.i206.i, align 4
  %add.ptr.i207.i = getelementptr i8, ptr %87, i32 16
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i207.i) #7, !srcloc !129
  %89 = call i32 @llvm.bswap.i32(i32 %88) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  br label %for.end97.i

if.else.i211.i:                                   ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #9
  %wrapper_base1.i209.i = getelementptr inbounds %struct.venus_core, ptr %79, i32 0, i32 5
  %90 = ptrtoint ptr %wrapper_base1.i209.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wrapper_base1.i209.i, align 4
  %add.ptr10.i210.i = getelementptr i8, ptr %91, i32 8212
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i210.i) #7, !srcloc !129
  %93 = call i32 @llvm.bswap.i32(i32 %92) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  br label %for.end97.i

if.then93.i:                                      ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 376, i32 noundef 1500, i32 noundef 2) #7
  br label %for.cond76.i

for.end97.i:                                      ; preds = %if.else.i211.i, %if.then.i208.i
  %cpu_status.0.i212.i = phi i32 [ %89, %if.then.i208.i ], [ %93, %if.else.i211.i ]
  %add.ptr16.i213.i = getelementptr i8, ptr %81, i32 76
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i213.i) #7, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %and.i214.i = and i32 %cpu_status.0.i212.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i214.i)
  %tobool.not.i215.i = icmp ne i32 %and.i214.i, 0
  %95 = and i32 %94, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool21.not.i216.i = icmp ne i32 %95, 0
  %or.cond.i217.i = select i1 %tobool.not.i215.i, i1 %tobool21.not.i216.i, i1 false
  br i1 %or.cond.i217.i, label %for.end97.i.power_off.i_crit_edge, label %for.end97.i.return_crit_edge

for.end97.i.return_crit_edge:                     ; preds = %for.end97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

for.end97.i.power_off.i_crit_edge:                ; preds = %for.end97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %power_off.i

power_off.i:                                      ; preds = %for.end97.i.power_off.i_crit_edge, %venus_cpu_idle_and_pc_ready.exit.i.power_off.i_crit_edge, %if.end9.i.power_off.i_crit_edge
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %call106.i = call fastcc i32 @venus_power_off(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %tobool107.not.i = icmp eq i32 %call106.i, 0
  br i1 %tobool107.not.i, label %if.end113.i, label %do.end111.i

do.end111.i:                                      ; preds = %power_off.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.36, i32 noundef %call106.i) #11
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %return

if.end113.i:                                      ; preds = %power_off.i
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %suspended.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %suspended.i, align 1
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %return

if.end:                                           ; preds = %entry
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %lor.lhs.false.i21

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false.i21:                                ; preds = %if.end
  %suspended.i19 = getelementptr inbounds %struct.venus_hfi_device, ptr %5, i32 0, i32 4
  %97 = ptrtoint ptr %suspended.i19 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %suspended.i19, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool4.not.i20 = icmp eq i8 %98, 0
  br i1 %tobool4.not.i20, label %if.end.i25, label %lor.lhs.false.i21.return_crit_edge

lor.lhs.false.i21.return_crit_edge:               ; preds = %lor.lhs.false.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i25:                                       ; preds = %lor.lhs.false.i21
  %lock.i22 = getelementptr inbounds %struct.venus_hfi_device, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i22, i32 noundef 0) #7
  %state.i.i23 = getelementptr inbounds %struct.venus_hfi_device, ptr %5, i32 0, i32 5
  %99 = ptrtoint ptr %state.i.i23 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %state.i.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp.i.not.i24 = icmp eq i32 %100, 1
  tail call void @mutex_unlock(ptr noundef %lock.i22) #7
  br i1 %cmp.i.not.i24, label %do.end.i26, label %if.end9.i31

do.end.i26:                                       ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.30) #11
  br label %return

if.end9.i31:                                      ; preds = %if.end.i25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pkt.i.i13) #7
  %101 = ptrtoint ptr %pkt.i.i13 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %pkt.i.i13, align 4, !annotation !127
  %102 = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt.i.i13, i32 0, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %102, align 4, !annotation !127
  %pwr_collapse_prep.i.i27 = getelementptr inbounds %struct.venus_hfi_device, ptr %5, i32 0, i32 7
  %104 = ptrtoint ptr %pwr_collapse_prep.i.i27 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %pwr_collapse_prep.i.i27, align 4
  %wait.i.i.i28 = getelementptr inbounds %struct.venus_hfi_device, ptr %5, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i28, ptr noundef nonnull @.str.38, ptr noundef nonnull @init_completion.__key) #7
  call void @pkt_sys_pc_prep(ptr noundef nonnull %pkt.i.i13) #7
  %call1.i.i29 = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %5, ptr noundef nonnull %pkt.i.i13, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i29)
  %tobool.not.i.i30 = icmp eq i32 %call1.i.i29, 0
  br i1 %tobool.not.i.i30, label %if.end4.i.i, label %if.end9.i31.do.end15.i_crit_edge

if.end9.i31.do.end15.i_crit_edge:                 ; preds = %if.end9.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i

if.end4.i.i:                                      ; preds = %if.end9.i31
  %call6.i.i = call i32 @wait_for_completion_timeout(ptr noundef %pwr_collapse_prep.i.i27, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.end16.i

if.then8.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @venus_flush_debug_queue(ptr noundef %5) #7
  br label %do.end15.i

do.end15.i:                                       ; preds = %if.then8.i.i, %if.end9.i31.do.end15.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i29, %if.end9.i31.do.end15.i_crit_edge ], [ -110, %if.then8.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pkt.i.i13) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.33, i32 noundef %retval.0.i.ph.i) #11
  br label %return

if.end16.i:                                       ; preds = %if.end4.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pkt.i.i13) #7
  call void @mutex_lock_nested(ptr noundef %lock.i22, i32 noundef 0) #7
  %last_packet_type.i = getelementptr inbounds %struct.venus_hfi_device, ptr %5, i32 0, i32 2
  %105 = ptrtoint ptr %last_packet_type.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %last_packet_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65538, i32 %106)
  %cmp.not.i = icmp eq i32 %106, 65538
  br i1 %cmp.not.i, label %if.end21.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %lock.i22) #7
  br label %return

if.end21.i:                                       ; preds = %if.end16.i
  %arrayidx.i.i.i = getelementptr %struct.venus_hfi_device, ptr %5, i32 0, i32 11, i32 1
  %107 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %108, null
  br i1 %tobool.not.i.i.i, label %if.end21.i.if.then27.i_crit_edge, label %venus_get_queue_size.exit.i.i

if.end21.i.if.then27.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27.i

venus_get_queue_size.exit.i.i:                    ; preds = %if.end21.i
  %read_idx.i.i.i = getelementptr inbounds %struct.hfi_queue_header, ptr %108, i32 0, i32 12
  %109 = ptrtoint ptr %read_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %read_idx.i.i.i, align 4
  %write_idx.i.i.i = getelementptr inbounds %struct.hfi_queue_header, ptr %108, i32 0, i32 13
  %111 = ptrtoint ptr %write_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %write_idx.i.i.i, align 4
  %sub.i.i.i = sub i32 %110, %112
  %113 = call i32 @llvm.abs.i32(i32 %sub.i.i.i, i1 false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp.i72.i = icmp slt i32 %113, 0
  br i1 %cmp.i72.i, label %venus_get_queue_size.exit.i.i.if.then27.i_crit_edge, label %if.end.i.i

venus_get_queue_size.exit.i.i.if.then27.i_crit_edge: ; preds = %venus_get_queue_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27.i

if.end.i.i:                                       ; preds = %venus_get_queue_size.exit.i.i
  %arrayidx.i14.i.i = getelementptr %struct.venus_hfi_device, ptr %5, i32 0, i32 11, i32 0
  %114 = ptrtoint ptr %arrayidx.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i14.i.i, align 4
  %tobool.not.i15.i.i = icmp eq ptr %115, null
  br i1 %tobool.not.i15.i.i, label %if.end.i.i.if.then27.i_crit_edge, label %venus_get_queue_size.exit21.i.i

if.end.i.i.if.then27.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27.i

venus_get_queue_size.exit21.i.i:                  ; preds = %if.end.i.i
  %read_idx.i16.i.i = getelementptr inbounds %struct.hfi_queue_header, ptr %115, i32 0, i32 12
  %116 = ptrtoint ptr %read_idx.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %read_idx.i16.i.i, align 4
  %write_idx.i17.i.i = getelementptr inbounds %struct.hfi_queue_header, ptr %115, i32 0, i32 13
  %118 = ptrtoint ptr %write_idx.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %write_idx.i17.i.i, align 4
  %sub.i18.i.i = sub i32 %117, %119
  %120 = call i32 @llvm.abs.i32(i32 %sub.i18.i.i, i1 false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp2.i.i = icmp slt i32 %120, 0
  br i1 %cmp2.i.i, label %venus_get_queue_size.exit21.i.i.if.then27.i_crit_edge, label %venus_are_queues_empty.exit.i

venus_get_queue_size.exit21.i.i.if.then27.i_crit_edge: ; preds = %venus_get_queue_size.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27.i

venus_are_queues_empty.exit.i:                    ; preds = %venus_get_queue_size.exit21.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %112)
  %tobool.not.i73.i = icmp ne i32 %110, %112
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %119)
  %tobool5.not.i.i = icmp ne i32 %117, %119
  %or.cond.i.i32 = select i1 %tobool.not.i73.i, i1 true, i1 %tobool5.not.i.i
  br i1 %or.cond.i.i32, label %venus_are_queues_empty.exit.i.if.then27.i_crit_edge, label %if.end29.i

venus_are_queues_empty.exit.i.if.then27.i_crit_edge: ; preds = %venus_are_queues_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27.i

if.then27.i:                                      ; preds = %venus_are_queues_empty.exit.i.if.then27.i_crit_edge, %venus_get_queue_size.exit21.i.i.if.then27.i_crit_edge, %if.end.i.i.if.then27.i_crit_edge, %venus_get_queue_size.exit.i.i.if.then27.i_crit_edge, %if.end21.i.if.then27.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i22) #7
  br label %return

if.end29.i:                                       ; preds = %venus_are_queues_empty.exit.i
  %add.ptr.i33 = getelementptr i8, ptr %11, i32 76
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #7, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  %122 = and i32 %121, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool32.not.i = icmp eq i32 %122, 0
  br i1 %tobool32.not.i, label %if.then33.i, label %if.end35.i

if.then33.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %lock.i22) #7
  br label %return

if.end35.i:                                       ; preds = %if.end29.i
  %call36.i = call fastcc i32 @venus_power_off(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end40.i, label %if.then38.i34

if.then38.i34:                                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %lock.i22) #7
  br label %return

if.end40.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %suspended.i19 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %suspended.i19, align 1
  call void @mutex_unlock(ptr noundef %lock.i22) #7
  br label %return

return:                                           ; preds = %if.end40.i, %if.then38.i34, %if.then33.i, %if.then27.i, %if.then19.i, %do.end15.i, %do.end.i26, %lor.lhs.false.i21.return_crit_edge, %if.end.return_crit_edge, %if.end113.i, %do.end111.i, %for.end97.i.return_crit_edge, %do.end56.i, %for.end.i.return_crit_edge, %do.end.i, %lor.lhs.false.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call106.i, %do.end111.i ], [ 0, %if.end113.i ], [ %call1.i.i, %do.end56.i ], [ -22, %do.end.i ], [ 0, %lor.lhs.false.i.return_crit_edge ], [ 0, %if.then.return_crit_edge ], [ -110, %for.end.i.return_crit_edge ], [ -110, %for.end97.i.return_crit_edge ], [ %retval.0.i.ph.i, %do.end15.i ], [ -22, %if.then19.i ], [ -22, %if.then27.i ], [ %call36.i, %if.then38.i34 ], [ 0, %if.end40.i ], [ -22, %if.then33.i ], [ -22, %do.end.i26 ], [ 0, %lor.lhs.false.i21.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_isr(ptr nocapture noundef readonly %core) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 42
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cpu_cs_base2 = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu_cs_base2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_cs_base2, align 4
  %wrapper_base4 = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %wrapper_base4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wrapper_base4, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !129
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %res = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 22
  %10 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %res, align 4
  %hfi_version = getelementptr inbounds %struct.venus_resources, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %hfi_version to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hfi_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp = icmp eq i32 %13, 3
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %14 = and i32 %9, 1073741836
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %if.then7.do.body_crit_edge, label %if.then7.do.body.sink.split_crit_edge

if.then7.do.body.sink.split_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

if.then7.do.body_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.else:                                          ; preds = %if.end
  %16 = and i32 %9, 1073741844
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %if.else.do.body_crit_edge, label %if.else.do.body.sink.split_crit_edge

if.else.do.body.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.sink.split

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body.sink.split:                               ; preds = %if.else.do.body.sink.split_crit_edge, %if.then7.do.body.sink.split_crit_edge
  %irq_status = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %9, ptr %irq_status, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.else.do.body_crit_edge, %if.then7.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  tail call void @arm_heavy_mb() #7
  %add.ptr28 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 16777216) #7, !srcloc !140
  %19 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %res, align 4
  %hfi_version30 = getelementptr inbounds %struct.venus_resources, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %hfi_version30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hfi_version30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp31 = icmp eq i32 %22, 3
  br i1 %cmp31, label %do.body.cleanup_crit_edge, label %do.body33

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %add.ptr36 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %8) #7, !srcloc !140
  br label %cleanup

cleanup:                                          ; preds = %do.body33, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 2, %do.body33 ], [ 2, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venus_isr_thread(ptr noundef %core) #0 align 64 {
entry:
  %packet.i = alloca [100 x i8], align 1
  %tx_req.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.venus_core, ptr %core, i32 0, i32 42
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %res2 = getelementptr inbounds %struct.venus_core, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %res2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res2, align 4
  %pkt_buf = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 12
  %arrayidx.i.i = getelementptr %struct.venus_hfi_device, ptr %1, i32 0, i32 11, i32 1
  %lock.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_req.i.i) #7
  %6 = ptrtoint ptr %tx_req.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tx_req.i.i, align 4, !annotation !127
  %state.i.i.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i.not.i.i33 = icmp eq i32 %8, 1
  br i1 %cmp.i.not.i.i33, label %if.end.while.end_crit_edge, label %if.end.i.i.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.i.i.lr.ph:                                 ; preds = %if.end
  %pwr_collapse_prep = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 7
  %release_resource = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 8
  %vmem_id = getelementptr inbounds %struct.venus_resources, ptr %5, i32 0, i32 23
  %vmem_size = getelementptr inbounds %struct.venus_resources, ptr %5, i32 0, i32 24
  %vmem_addr = getelementptr inbounds %struct.venus_resources, ptr %5, i32 0, i32 25
  %event_id.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 12, i32 12
  %kva.i.i = getelementptr inbounds %struct.venus_hfi_device, ptr %1, i32 0, i32 10, i32 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %sw.epilog.if.end.i.i_crit_edge, %if.end.i.i.lr.ph
  %call1.i.i = call fastcc i32 @venus_read_queue(ptr noundef %arrayidx.i.i, ptr noundef %pkt_buf, ptr noundef nonnull %tx_req.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i, label %if.end.i.i.while.end_crit_edge

if.end.i.i.while.end_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end3.i.i:                                      ; preds = %if.end.i.i
  %9 = ptrtoint ptr %tx_req.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_req.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool4.not.i.i, label %if.end3.i.i.while.body_crit_edge, label %if.then5.i.i

if.end3.i.i.while.body_crit_edge:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %cpu_ic_base1.i.i.i = getelementptr inbounds %struct.venus_core, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %cpu_ic_base1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpu_ic_base1.i.i.i, align 4
  %res.i.i.i = getelementptr inbounds %struct.venus_core, ptr %12, i32 0, i32 22
  %15 = ptrtoint ptr %res.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %res.i.i.i, align 4
  %hfi_version.i.i.i = getelementptr inbounds %struct.venus_resources, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %hfi_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hfi_version.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp.i13.i.i = icmp eq i32 %18, 3
  %..i.i.i = select i1 %cmp.i13.i.i, i32 1, i32 32768
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  call void @arm_heavy_mb() #7
  %19 = call i32 @llvm.bswap.i32(i32 %..i.i.i) #7
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %19) #7, !srcloc !140
  br label %while.body

while.body:                                       ; preds = %if.then5.i.i, %if.end3.i.i.while.body_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_req.i.i) #7
  call void @mutex_unlock(ptr noundef %lock.i) #7
  %call5 = call i32 @hfi_process_msg_packet(ptr noundef %core, ptr noundef %pkt_buf) #7
  %20 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %call5, label %while.body.sw.epilog_crit_edge [
    i32 135169, label %sw.bb
    i32 131073, label %sw.bb6
    i32 131075, label %sw.bb8
    i32 131074, label %sw.bb9
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  %21 = ptrtoint ptr %event_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %event_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.not.i = icmp eq i32 %22, 1
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %23 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %state.i.i.i, align 4
  call void @mutex_unlock(ptr noundef %lock.i) #7
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %dev1.i.i = getelementptr inbounds %struct.venus_core, ptr %25, i32 0, i32 23
  %26 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1.i.i, align 4
  %28 = ptrtoint ptr %kva.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %kva.i.i, align 4
  %tobool.not.i.i27 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i27, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.i28

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i.i28:                                     ; preds = %if.end.i
  %data.i.i = getelementptr inbounds %struct.hfi_sfr, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %call.i.i = call ptr @memchr(ptr noundef %data.i.i, i32 noundef 0, i32 noundef %31) #12
  %tobool3.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end.i.i28.do.body.i.i_crit_edge

if.end.i.i28.do.body.i.i_crit_edge:               ; preds = %if.end.i.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i28
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %31, -1
  %arrayidx.i.i29 = getelementptr %struct.hfi_sfr, ptr %29, i32 0, i32 1, i32 %sub.i.i
  %32 = ptrtoint ptr %arrayidx.i.i29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx.i.i29, align 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i28.do.body.i.i_crit_edge
  %call8.i.i = call i32 @___ratelimit(ptr noundef nonnull @venus_sfr_print._rs, ptr noundef nonnull @__func__.venus_sfr_print) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %do.body.i.i.sw.epilog_crit_edge, label %do.end.i.i

do.body.i.i.sw.epilog_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.50, ptr noundef %data.i.i) #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %while.body
  %33 = ptrtoint ptr %vmem_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vmem_id, align 8
  %35 = ptrtoint ptr %vmem_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vmem_size, align 4
  %37 = ptrtoint ptr %vmem_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vmem_addr, align 8
  %39 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %packet.i) #7
  %41 = call ptr @memset(ptr %packet.i, i32 255, i32 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i = icmp eq i32 %34, 0
  br i1 %cmp.i, label %sw.bb6.venus_hfi_core_set_resource.exit_crit_edge, label %if.end.i30

sw.bb6.venus_hfi_core_set_resource.exit_crit_edge: ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %venus_hfi_core_set_resource.exit

if.end.i30:                                       ; preds = %sw.bb6
  %call1.i = call i32 @pkt_sys_set_resource(ptr noundef nonnull %packet.i, i32 noundef %34, i32 noundef %36, i32 noundef %38, ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i30.venus_hfi_core_set_resource.exit_crit_edge

if.end.i30.venus_hfi_core_set_resource.exit_crit_edge: ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %venus_hfi_core_set_resource.exit

if.end3.i:                                        ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = call fastcc i32 @venus_iface_cmdq_write(ptr noundef %40, ptr noundef nonnull %packet.i, i1 noundef zeroext false) #7
  br label %venus_hfi_core_set_resource.exit

venus_hfi_core_set_resource.exit:                 ; preds = %if.end3.i, %if.end.i30.venus_hfi_core_set_resource.exit_crit_edge, %sw.bb6.venus_hfi_core_set_resource.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %packet.i) #7
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @complete(ptr noundef %release_resource) #7
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @complete(ptr noundef %pwr_collapse_prep) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb8, %venus_hfi_core_set_resource.exit, %do.end.i.i, %do.body.i.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %while.body.sw.epilog_crit_edge
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_req.i.i) #7
  %42 = ptrtoint ptr %tx_req.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %tx_req.i.i, align 4, !annotation !127
  %43 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq i32 %44, 1
  br i1 %cmp.i.not.i.i, label %sw.epilog.while.end_crit_edge, label %sw.epilog.if.end.i.i_crit_edge

sw.epilog.if.end.i.i_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %if.end.i.i.while.end_crit_edge, %if.end.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_req.i.i) #7
  call void @mutex_unlock(ptr noundef %lock.i) #7
  call fastcc void @venus_flush_debug_queue(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pkt_sys_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @venus_iface_cmdq_write(ptr noundef %hdev, ptr nocapture noundef readonly %pkt, i1 noundef zeroext %sync) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.venus_hfi_device, ptr %hdev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %dev1.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %state.i.i = getelementptr inbounds %struct.venus_hfi_device, ptr %hdev, i32 0, i32 5
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.not.i = icmp eq i32 %5, 1
  br i1 %cmp.i.not.i, label %entry.venus_iface_cmdq_write_nolock.exit_crit_edge, label %if.end.i

entry.venus_iface_cmdq_write_nolock.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %venus_iface_cmdq_write_nolock.exit

if.end.i:                                         ; preds = %entry
  %pkt_type.i = getelementptr inbounds %struct.hfi_pkt_hdr, ptr %pkt, i32 0, i32 1
  %6 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pkt_type.i, align 4
  %last_packet_type.i = getelementptr inbounds %struct.venus_hfi_device, ptr %hdev, i32 0, i32 2
  %8 = ptrtoint ptr %last_packet_type.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %last_packet_type.i, align 4
  %kva.i.i = getelementptr inbounds %struct.venus_hfi_device, ptr %hdev, i32 0, i32 11, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %kva.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kva.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end.i
  %queues.i = getelementptr inbounds %struct.venus_hfi_device, ptr %hdev, i32 0, i32 11
  %11 = ptrtoint ptr %queues.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queues.i, align 4
  %tobool2.not.i.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.end.i_crit_edge, label %if.end4.i.i

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %13 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pkt, align 4
  %shr.i.i = lshr i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %tobool5.not.i.i = icmp ult i32 %14, 4
  br i1 %tobool5.not.i.i, label %if.end4.i.i.do.end.i_crit_edge, label %if.end7.i.i

if.end4.i.i.do.end.i_crit_edge:                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end7.i.i:                                      ; preds = %if.end4.i.i
  %read_idx.i.i = getelementptr inbounds %struct.hfi_queue_header, ptr %12, i32 0, i32 12
  %15 = ptrtoint ptr %read_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %read_idx.i.i, align 4
  %write_idx.i.i = getelementptr inbounds %struct.hfi_queue_header, ptr %12, i32 0, i32 13
  %17 = ptrtoint ptr %write_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %write_idx.i.i, align 4
  %q_size.i.i = getelementptr inbounds %struct.hfi_queue_header, ptr %12, i32 0, i32 3
  %19 = ptrtoint ptr %q_size.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %q_size.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not.i.i = icmp ugt i32 %16, %18
  %sub.neg.i.i = sub i32 %16, %18
  %sub9.i.i = select i1 %cmp.not.i.i, i32 0, i32 %20
  %empty_space.0.i.i = add i32 %sub.neg.i.i, %sub9.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %empty_space.0.i.i, i32 %shr.i.i)
  %cmp12.not.i.i = icmp ugt i32 %empty_space.0.i.i, %shr.i.i
  %tx_req15.i.i = getelementptr inbounds %struct.hfi_queue_header, ptr %12, i32 0, i32 9
  br i1 %cmp12.not.i.i, label %if.end14.i.i, label %venus_write_queue.exit.i

if.end14.i.i:                                     ; preds = %if.end7.i.i
  %21 = ptrtoint ptr %tx_req15.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %tx_req15.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  tail call void @arm_heavy_mb() #7
  %add.i.i = add i32 %18, %shr.i.i
  %22 = ptrtoint ptr %kva.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %kva.i.i, align 4
  %shl.i.i = shl i32 %18, 2
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %shl.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %20)
  %cmp21.i.i = icmp ult i32 %add.i.i, %20
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.else24.i.i

if.then22.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl23.i.i = and i32 %14, -4
  %24 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %pkt, i32 %shl23.i.i)
  br label %if.end4.i

if.else24.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub25.i.i = sub i32 %add.i.i, %20
  %sub26.i.i = sub i32 %shr.i.i, %sub25.i.i
  %shl27.i.i = shl i32 %sub26.i.i, 2
  %25 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %pkt, i32 %shl27.i.i)
  %26 = ptrtoint ptr %kva.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %kva.i.i, align 4
  %add.ptr30.i.i = getelementptr i8, ptr %pkt, i32 %shl27.i.i
  %shl31.i.i = shl i32 %sub25.i.i, 2
  %28 = call ptr @memcpy(ptr %27, ptr %add.ptr30.i.i, i32 %shl31.i.i)
  br label %if.end4.i

venus_write_queue.exit.i:                         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %tx_req15.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %tx_req15.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  br label %do.end.i

do.end.i:                                         ; preds = %venus_write_queue.exit.i, %if.end4.i.i.do.end.i_crit_edge, %if.end.i.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %retval.0.i36.i = phi i32 [ -28, %venus_write_queue.exit.i ], [ -22, %if.end.i.do.end.i_crit_edge ], [ -22, %if.end.i.i.do.end.i_crit_edge ], [ -22, %if.end4.i.i.do.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i36.i) #11
  br label %venus_iface_cmdq_write_nolock.exit

if.end4.i:                                        ; preds = %if.else24.i.i, %if.then22.i.i
  %new_wr_idx.0.i.i = phi i32 [ %add.i.i, %if.then22.i.i ], [ %sub25.i.i, %if.else24.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %write_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %new_wr_idx.0.i.i, ptr %write_idx.i.i, align 4
  %rx_req37.i.i = getelementptr inbounds %struct.hfi_queue_header, ptr %12, i32 0, i32 8
  %31 = ptrtoint ptr %rx_req37.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_req37.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool38.not.i.not.i = icmp eq i32 %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  br i1 %sync, label %if.then6.i, label %if.end4.i.if.end13.i_crit_edge

if.end4.i.if.end13.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx8.i = getelementptr %struct.venus_hfi_device, ptr %hdev, i32 0, i32 11, i32 1
  %33 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx8.i, align 4
  %rx_req9.i = getelementptr inbounds %struct.hfi_queue_header, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %rx_req9.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %rx_req9.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  tail call void @arm_heavy_mb() #7
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then6.i, %if.end4.i.if.end13.i_crit_edge
  br i1 %tobool38.not.i.not.i, label %if.end13.i.venus_iface_cmdq_write_nolock.exit_crit_edge, label %if.then15.i

if.end13.i.venus_iface_cmdq_write_nolock.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %venus_iface_cmdq_write_nolock.exit

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hdev, align 4
  %cpu_ic_base1.i.i = getelementptr inbounds %struct.venus_core, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %cpu_ic_base1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cpu_ic_base1.i.i, align 4
  %res.i.i = getelementptr inbounds %struct.venus_core, ptr %37, i32 0, i32 22
  %40 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %res.i.i, align 4
  %hfi_version.i.i = getelementptr inbounds %struct.venus_resources, ptr %41, i32 0, i32 20
  %42 = ptrtoint ptr %hfi_version.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hfi_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp.i31.i = icmp eq i32 %43, 3
  %..i.i = select i1 %cmp.i31.i, i32 1, i32 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %..i.i) #7
  %add.ptr.i32.i = getelementptr i8, ptr %39, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %44) #7, !srcloc !140
  br label %venus_iface_cmdq_write_nolock.exit

venus_iface_cmdq_write_nolock.exit:               ; preds = %if.then15.i, %if.end13.i.venus_iface_cmdq_write_nolock.exit_crit_edge, %do.end.i, %entry.venus_iface_cmdq_write_nolock.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i36.i, %do.end.i ], [ -22, %entry.venus_iface_cmdq_write_nolock.exit_crit_edge ], [ 0, %if.then15.i ], [ 0, %if.end13.i.venus_iface_cmdq_write_nolock.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pkt_sys_image_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pkt_sys_debug_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pkt_sys_idle_indicator(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pkt_sys_power_control(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pkt_sys_ping(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkt_sys_ssr_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkt_session_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @venus_flush_debug_queue(ptr noundef %hdev) unnamed_addr #0 align 64 {
entry:
  %tx_req.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %dev1 = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %dbg_buf = getelementptr inbounds %struct.venus_hfi_device, ptr %hdev, i32 0, i32 13
  %tobool.not.i = icmp eq ptr %dbg_buf, null
  br i1 %tobool.not.i, label %entry.while.end_crit_edge, label %if.end.i.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.i.lr.ph:                                   ; preds = %entry
  %lock.i = getelementptr inbounds %struct.venus_hfi_device, ptr %hdev, i32 0, i32 6
  %state.i.i.i = getelementptr inbounds %struct.venus_hfi_device, ptr %hdev, i32 0, i32 5
  %arrayidx.i.i = getelementptr %struct.venus_hfi_device, ptr %hdev, i32 0, i32 11, i32 2
  %pkt_type = getelementptr inbounds %struct.venus_hfi_device, ptr %hdev, i32 0, i32 13, i32 4
  %msg_data = getelementptr inbounds %struct.venus_hfi_device, ptr %hdev, i32 0, i32 13, i32 24
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_req.i.i) #7
  %4 = ptrtoint ptr %tx_req.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tx_req.i.i, align 4, !annotation !127
  %5 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i.not.i.i22 = icmp eq i32 %6, 1
  br i1 %cmp.i.not.i.i22, label %if.end.i.lr.ph.venus_iface_dbgq_read.exit_crit_edge, label %if.end.i.lr.ph.if.end.i.i_crit_edge

if.end.i.lr.ph.if.end.i.i_crit_edge:              ; preds = %if.end.i.lr.ph
  br label %if.end.i.i

if.end.i.lr.ph.venus_iface_dbgq_read.exit_crit_edge: ; preds = %if.end.i.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %venus_iface_dbgq_read.exit

if.end.i.i:                                       ; preds = %if.end10.if.end.i.i_crit_edge, %if.end.i.lr.ph.if.end.i.i_crit_edge
  %call1.i.i = call fastcc i32 @venus_read_queue(ptr noundef %arrayidx.i.i, ptr noundef nonnull %dbg_buf, ptr noundef nonnull %tx_req.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.venus_iface_dbgq_read.exit_crit_edge

if.end.i.i.venus_iface_dbgq_read.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %venus_iface_dbgq_read.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %7 = ptrtoint ptr %tx_req.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_req.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool5.not.i.i, label %if.end4.i.i.while.body_crit_edge, label %if.then6.i.i

if.end4.i.i.while.body_crit_edge:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.then6.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev, align 4
  %cpu_ic_base1.i.i.i = getelementptr inbounds %struct.venus_core, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %cpu_ic_base1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu_ic_base1.i.i.i, align 4
  %res.i.i.i = getelementptr inbounds %struct.venus_core, ptr %10, i32 0, i32 22
  %13 = ptrtoint ptr %res.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %res.i.i.i, align 4
  %hfi_version.i.i.i = getelementptr inbounds %struct.venus_resources, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %hfi_version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hfi_version.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp.i15.i.i = icmp eq i32 %16, 3
  %..i.i.i = select i1 %cmp.i15.i.i, i32 1, i32 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %..i.i.i) #7
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %17) #7, !srcloc !140
  br label %while.body

venus_iface_dbgq_read.exit:                       ; preds = %if.end10.venus_iface_dbgq_read.exit_crit_edge, %if.end.i.i.venus_iface_dbgq_read.exit_crit_edge, %if.end.i.lr.ph.venus_iface_dbgq_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_req.i.i) #7
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %while.end

while.body:                                       ; preds = %if.then6.i.i, %if.end4.i.i.while.body_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_req.i.i) #7
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  %18 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pkt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131081, i32 %19)
  %cmp.not = icmp eq i32 %19, 131081
  br i1 %cmp.not, label %while.body.if.end10_crit_edge, label %if.then

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @venus_flush_debug_queue.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@venus_flush_debug_queue, %if.then8)) #7
          to label %if.end10 [label %if.then8], !srcloc !149

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @venus_flush_debug_queue.__UNIQUE_ID_ddebug299, ptr noundef %3, ptr noundef nonnull @.str.21, ptr noundef %msg_data) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then, %while.body.if.end10_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_req.i.i) #7
  %20 = ptrtoint ptr %tx_req.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %tx_req.i.i, align 4, !annotation !127
  %21 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq i32 %22, 1
  br i1 %cmp.i.not.i.i, label %if.end10.venus_iface_dbgq_read.exit_crit_edge, label %if.end10.if.end.i.i_crit_edge

if.end10.if.end.i.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end10.venus_iface_dbgq_read.exit_crit_edge:    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %venus_iface_dbgq_read.exit

while.end:                                        ; preds = %venus_iface_dbgq_read.exit, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @venus_read_queue(ptr nocapture noundef readonly %queue, ptr nocapture noundef writeonly %pkt, ptr nocapture noundef writeonly %tx_req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %kva = getelementptr inbounds %struct.iface_queue, ptr %queue, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %kva to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kva, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %type5 = getelementptr inbounds %struct.hfi_queue_header, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %type5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type5, align 4
  %read_idx = getelementptr inbounds %struct.hfi_queue_header, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %read_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %read_idx, align 4
  %write_idx = getelementptr inbounds %struct.hfi_queue_header, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %write_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %write_idx, align 4
  %q_size = getelementptr inbounds %struct.hfi_queue_header, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %q_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %q_size, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %rx_req = getelementptr inbounds %struct.hfi_queue_header, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %rx_req to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %rx_req, align 4
  %13 = ptrtoint ptr %tx_req to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tx_req, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end4
  %14 = ptrtoint ptr %kva to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kva, align 4
  %shl = shl i32 %7, 2
  %add.ptr = getelementptr i8, ptr %15, i32 %shl
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %tobool13.not = icmp ult i32 %17, 4
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %add = add i32 %shr, %7
  %shl16 = and i32 %17, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %shl16)
  %cmp17 = icmp ugt i32 %shl16, 12288
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp18.not = icmp ugt i32 %7, %11
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp18.not
  br i1 %or.cond, label %if.else30, label %if.then19

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp20 = icmp ult i32 %add, %11
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %18 = call ptr @memcpy(ptr %pkt, ptr %add.ptr, i32 %shl16)
  br label %if.end32

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %add, %11
  %sub23 = sub i32 %shr, %sub
  %shl24 = shl i32 %sub23, 2
  %19 = call ptr @memcpy(ptr %pkt, ptr %add.ptr, i32 %shl24)
  %add.ptr25 = getelementptr i8, ptr %pkt, i32 %shl24
  %20 = ptrtoint ptr %kva to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kva, align 4
  %shl28 = shl i32 %sub, 2
  %22 = call ptr @memcpy(ptr %add.ptr25, ptr %21, i32 %shl28)
  br label %if.end32

if.else30:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %write_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %write_idx, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.else, %if.then21
  %new_rd_idx.0 = phi i32 [ %add, %if.then21 ], [ %sub, %if.else ], [ %24, %if.else30 ]
  %ret.0 = phi i32 [ 0, %if.then21 ], [ 0, %if.else ], [ -74, %if.else30 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  %25 = ptrtoint ptr %read_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %new_rd_idx.0, ptr %read_idx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %read_idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %read_idx, align 4
  %28 = ptrtoint ptr %write_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %write_idx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp39.not = icmp eq i32 %27, %29
  %spec.select = select i1 %cmp39.not, i32 %and, i32 0
  %30 = getelementptr inbounds %struct.hfi_queue_header, ptr %3, i32 0, i32 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.select, ptr %30, align 4
  %tx_req45 = getelementptr inbounds %struct.hfi_queue_header, ptr %3, i32 0, i32 9
  %32 = ptrtoint ptr %tx_req45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_req45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool46.not = icmp ne i32 %33, 0
  %cond = zext i1 %tobool46.not to i32
  %34 = ptrtoint ptr %tx_req to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cond, ptr %tx_req, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end32, %if.then9
  %retval.0.ph = phi i32 [ %ret.0, %if.end32 ], [ -61, %if.then9 ]
  tail call void @arm_heavy_mb() #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pkt_session_cmd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkt_session_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkt_session_etb_decoder(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkt_session_etb_encoder(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkt_session_ftb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkt_session_set_buffers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkt_session_unset_buffers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkt_session_parse_seq_header(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkt_session_get_seq_hdr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkt_session_set_property(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkt_session_get_property(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @venus_run(ptr nocapture noundef readonly %hdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %dev1 = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %cpu_cs_base3 = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cpu_cs_base3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_cs_base3, align 4
  %res1.i = getelementptr inbounds %struct.venus_core, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %res1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res1.i, align 4
  %reg_tbl.i = getelementptr inbounds %struct.venus_resources, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %reg_tbl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_tbl.i, align 8
  %reg_tbl_size.i = getelementptr inbounds %struct.venus_resources, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %reg_tbl_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_tbl_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp10.not.i = icmp eq i32 %11, 0
  br i1 %cmp10.not.i, label %entry.venus_set_registers.exit_crit_edge, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

entry.venus_set_registers.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %venus_set_registers.exit

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %entry.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  tail call void @arm_heavy_mb() #7
  %arrayidx.i = getelementptr %struct.reg_val, ptr %9, i32 %i.011.i
  %value.i = getelementptr %struct.reg_val, ptr %9, i32 %i.011.i, i32 1
  %12 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %15 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdev, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #7, !srcloc !140
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %do.body.i.venus_set_registers.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i.venus_set_registers.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %venus_set_registers.exit

venus_set_registers.exit:                         ; preds = %do.body.i.venus_set_registers.exit_crit_edge, %entry.venus_set_registers.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  %ifaceq_table = getelementptr inbounds %struct.venus_hfi_device, ptr %hdev, i32 0, i32 9
  %21 = ptrtoint ptr %ifaceq_table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ifaceq_table, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %add.ptr = getelementptr i8, ptr %5, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #7, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %add.ptr7 = getelementptr i8, ptr %5, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 12288) #7, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %ifaceq_table to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ifaceq_table, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %add.ptr13 = getelementptr i8, ptr %5, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %26) #7, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  %add.ptr17 = getelementptr i8, ptr %5, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 16777216) #7, !srcloc !140
  %sfr = getelementptr inbounds %struct.venus_hfi_device, ptr %hdev, i32 0, i32 10
  %27 = ptrtoint ptr %sfr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sfr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %venus_set_registers.exit.if.end_crit_edge, label %do.body19

venus_set_registers.exit.if.end_crit_edge:        ; preds = %venus_set_registers.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body19:                                        ; preds = %venus_set_registers.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %sfr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sfr, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %add.ptr24 = getelementptr i8, ptr %5, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %31) #7, !srcloc !140
  br label %if.end

if.end:                                           ; preds = %do.body19, %venus_set_registers.exit.if.end_crit_edge
  %32 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hdev, align 4
  %dev1.i = getelementptr inbounds %struct.venus_core, ptr %33, i32 0, i32 23
  %34 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1.i, align 4
  %cpu_cs_base3.i = getelementptr inbounds %struct.venus_core, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %cpu_cs_base3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cpu_cs_base3.i, align 4
  %wrapper_base5.i = getelementptr inbounds %struct.venus_core, ptr %33, i32 0, i32 5
  %38 = ptrtoint ptr %wrapper_base5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wrapper_base5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @arm_heavy_mb() #7
  %add.ptr.i47 = getelementptr i8, ptr %37, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 16777216) #7, !srcloc !140
  %40 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hdev, align 4
  %res.i = getelementptr inbounds %struct.venus_core, ptr %41, i32 0, i32 22
  %42 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %res.i, align 4
  %hfi_version.i = getelementptr inbounds %struct.venus_resources, ptr %43, i32 0, i32 20
  %44 = ptrtoint ptr %hfi_version.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hfi_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp.i = icmp eq i32 %45, 3
  br i1 %cmp.i, label %if.then.i, label %if.end.do.body9.i_crit_edge

if.end.do.body9.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr7.i = getelementptr i8, ptr %39, i32 16
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %47 = and i32 %46, -201326593
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  br label %do.body9.i

do.body9.i:                                       ; preds = %if.then.i, %if.end.do.body9.i_crit_edge
  %mask_val.0.i = phi i32 [ %48, %if.then.i ], [ 8, %if.end.do.body9.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %49 = tail call i32 @llvm.bswap.i32(i32 %mask_val.0.i) #7
  %add.ptr12.i = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %49) #7, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  tail call void @arm_heavy_mb() #7
  %add.ptr16.i = getelementptr i8, ptr %37, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 16777216) #7, !srcloc !140
  %add.ptr20.i = getelementptr i8, ptr %37, i32 76
  br label %while.body.i

while.body.i:                                     ; preds = %if.end30.i.while.body.i_crit_edge, %do.body9.i
  %count.063.i = phi i32 [ 0, %do.body9.i ], [ %inc.i48, %if.end30.i.while.body.i_crit_edge ]
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  %51 = and i32 %50, -33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %51)
  %cmp25.i = icmp eq i32 %51, 67108864
  br i1 %cmp25.i, label %do.end29.i, label %if.end30.i

do.end29.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.26) #11
  br label %while.end.i

if.end30.i:                                       ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #7
  %inc.i48 = add nuw nsw i32 %count.063.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i = icmp eq i32 %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %count.063.i)
  %cmp17.i = icmp ult i32 %count.063.i, 99
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp17.i, i1 false
  br i1 %or.cond.i, label %if.end30.i.while.body.i_crit_edge, label %if.end30.i.while.end.i_crit_edge

if.end30.i.while.end.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end30.i.while.body.i_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %if.end30.i.while.end.i_crit_edge, %do.end29.i
  %count.062.i = phi i32 [ %count.063.i, %do.end29.i ], [ %inc.i48, %if.end30.i.while.end.i_crit_edge ]
  %ret.0.i = phi i32 [ -22, %do.end29.i ], [ 0, %if.end30.i.while.end.i_crit_edge ]
  %52 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hdev, align 4
  %res35.i = getelementptr inbounds %struct.venus_core, ptr %53, i32 0, i32 22
  %54 = ptrtoint ptr %res35.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %res35.i, align 4
  %hfi_version36.i = getelementptr inbounds %struct.venus_resources, ptr %55, i32 0, i32 20
  %56 = ptrtoint ptr %hfi_version36.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hfi_version36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp37.i = icmp eq i32 %57, 3
  br i1 %cmp37.i, label %do.body39.i, label %while.end.i.venus_boot_core.exit_crit_edge

while.end.i.venus_boot_core.exit_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %venus_boot_core.exit

do.body39.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  tail call void @arm_heavy_mb() #7
  %add.ptr42.i = getelementptr i8, ptr %37, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 16777216) #7, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %add.ptr46.i = getelementptr i8, ptr %37, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 0) #7, !srcloc !140
  br label %venus_boot_core.exit

venus_boot_core.exit:                             ; preds = %do.body39.i, %while.end.i.venus_boot_core.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %count.062.i)
  %cmp31.i = icmp ugt i32 %count.062.i, 99
  %spec.select.i = select i1 %cmp31.i, i32 -110, i32 %ret.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool25.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool25.not, label %if.end30, label %do.end29

do.end29:                                         ; preds = %venus_boot_core.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24) #11
  br label %cleanup

if.end30:                                         ; preds = %venus_boot_core.exit
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hdev, align 4
  %dev1.i49 = getelementptr inbounds %struct.venus_core, ptr %59, i32 0, i32 23
  %60 = ptrtoint ptr %dev1.i49 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1.i49, align 4
  %wrapper_base3.i = getelementptr inbounds %struct.venus_core, ptr %59, i32 0, i32 5
  %62 = ptrtoint ptr %wrapper_base3.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wrapper_base3.i, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @venus_hwversion.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@venus_run, %if.then.i50)) #7
          to label %cleanup [label %if.then.i50], !srcloc !149

if.then.i50:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #7
  %and7.i = and i32 %65, 65535
  %and5.i = lshr i32 %65, 16
  %shr6.i = and i32 %and5.i, 4095
  %and.i = lshr i32 %65, 28
  %shr.i = and i32 %and.i, 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @venus_hwversion.__UNIQUE_ID_ddebug298, ptr noundef %61, ptr noundef nonnull @.str.29, i32 noundef %shr.i, i32 noundef %shr6.i, i32 noundef %and7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i50, %if.end30, %do.end29
  ret i32 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @venus_set_hw_state(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @venus_power_off(ptr nocapture noundef %hdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %power_enabled = getelementptr inbounds %struct.venus_hfi_device, ptr %hdev, i32 0, i32 3
  %0 = ptrtoint ptr %power_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_enabled, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %call.i = tail call i32 @venus_set_hw_state(ptr noundef %3, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 4
  %wrapper_base1.i = getelementptr inbounds %struct.venus_core, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %wrapper_base1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wrapper_base1.i, align 4
  %aon_base7.i = getelementptr inbounds %struct.venus_core, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %aon_base7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aon_base7.i, align 4
  %dev9.i = getelementptr inbounds %struct.venus_core, ptr %5, i32 0, i32 23
  %10 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev9.i, align 4
  %res.i = getelementptr inbounds %struct.venus_core, ptr %5, i32 0, i32 22
  %12 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %res.i, align 4
  %hfi_version.i = getelementptr inbounds %struct.venus_resources, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %hfi_version.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hfi_version.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %15, label %if.end204.i [
    i32 3, label %do.body.i
    i32 2, label %if.then134.i
  ]

do.body.i:                                        ; preds = %if.end3
  %cpu_cs_base5.i = getelementptr inbounds %struct.venus_core, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %cpu_cs_base5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpu_cs_base5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %18, i32 360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #7, !srcloc !140
  %19 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hdev, align 4
  %res12.i = getelementptr inbounds %struct.venus_core, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %res12.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %res12.i, align 4
  %num_vpp_pipes.i = getelementptr inbounds %struct.venus_resources, ptr %22, i32 0, i32 21
  %23 = ptrtoint ptr %num_vpp_pipes.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_vpp_pipes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp13.i = icmp eq i8 %24, 1
  br i1 %cmp13.i, label %do.body.i.skip_aon_mvp_noc.i_crit_edge, label %do.body16.i

do.body.i.skip_aon_mvp_noc.i_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_aon_mvp_noc.i

do.body16.i:                                      ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 16777216) #7, !srcloc !140
  %call.i15 = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i15, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 562) #7
  %add.ptr34.i = getelementptr i8, ptr %9, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not366.i = icmp eq i32 %26, 0
  br i1 %tobool.not366.i, label %do.body16.i.land.lhs.true.i_crit_edge, label %do.body16.i.skip_aon_mvp_noc.i_crit_edge

do.body16.i.skip_aon_mvp_noc.i_crit_edge:         ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_aon_mvp_noc.i

do.body16.i.land.lhs.true.i_crit_edge:            ; preds = %do.body16.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then53.i.land.lhs.true.i_crit_edge, %do.body16.i.land.lhs.true.i_crit_edge
  %call40.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call40.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call40.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then53.i

if.then53.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 13, i32 noundef 50, i32 noundef 2) #7
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %28 = and i32 %27, 16777216
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.then53.i.land.lhs.true.i_crit_edge, label %if.then53.i.skip_aon_mvp_noc.i_crit_edge

if.then53.i.skip_aon_mvp_noc.i_crit_edge:         ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_aon_mvp_noc.i

if.then53.i.land.lhs.true.i_crit_edge:            ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %30 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool57.not.i = icmp eq i32 %30, 0
  br i1 %tobool57.not.i, label %for.end.i.cleanup_crit_edge, label %for.end.i.skip_aon_mvp_noc.i_crit_edge

for.end.i.skip_aon_mvp_noc.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_aon_mvp_noc.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

skip_aon_mvp_noc.i:                               ; preds = %for.end.i.skip_aon_mvp_noc.i_crit_edge, %if.then53.i.skip_aon_mvp_noc.i_crit_edge, %do.body16.i.skip_aon_mvp_noc.i_crit_edge, %do.body.i.skip_aon_mvp_noc.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  tail call void @arm_heavy_mb() #7
  %add.ptr64.i = getelementptr i8, ptr %7, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 117440512) #7, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 0) #7, !srcloc !140
  %call72.i = tail call i64 @ktime_get() #7
  %add.i337.i = add i64 %call72.i, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 575) #7
  %add.ptr90.i = getelementptr i8, ptr %7, i32 88
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp94368.i = icmp eq i32 %31, 0
  br i1 %cmp94368.i, label %skip_aon_mvp_noc.i.if.end7_crit_edge, label %skip_aon_mvp_noc.i.land.lhs.true99.i_crit_edge

skip_aon_mvp_noc.i.land.lhs.true99.i_crit_edge:   ; preds = %skip_aon_mvp_noc.i
  br label %land.lhs.true99.i

skip_aon_mvp_noc.i.if.end7_crit_edge:             ; preds = %skip_aon_mvp_noc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true99.i:                                ; preds = %if.then113.i.land.lhs.true99.i_crit_edge, %skip_aon_mvp_noc.i.land.lhs.true99.i_crit_edge
  %call100.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call100.i, i64 %add.i337.i)
  %cmp3.i339.i = icmp sgt i64 %call100.i, %add.i337.i
  br i1 %cmp3.i339.i, label %for.end117.i, label %if.then113.i

if.then113.i:                                     ; preds = %land.lhs.true99.i
  tail call void @usleep_range_state(i32 noundef 13, i32 noundef 50, i32 noundef 2) #7
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  %cmp94.i = icmp eq i32 %32, 0
  br i1 %cmp94.i, label %if.then113.i.if.end7_crit_edge, label %if.then113.i.land.lhs.true99.i_crit_edge

if.then113.i.land.lhs.true99.i_crit_edge:         ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true99.i

if.then113.i.if.end7_crit_edge:                   ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.end117.i:                                     ; preds = %land.lhs.true99.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp119.i = icmp eq i32 %33, 0
  br i1 %cmp119.i, label %for.end117.i.if.end7_crit_edge, label %do.end126.i

for.end117.i.if.end7_crit_edge:                   ; preds = %for.end117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end126.i:                                      ; preds = %for.end117.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.39, i32 noundef %34) #11
  br label %cleanup

if.then134.i:                                     ; preds = %if.end3
  %add.ptr137.i = getelementptr i8, ptr %7, i32 8200
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %36 = or i32 %35, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137.i, i32 %36) #7, !srcloc !140
  %call148.i = tail call i64 @ktime_get() #7
  %add.i342.i = add i64 %call148.i, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 593) #7
  %add.ptr166.i = getelementptr i8, ptr %7, i32 8204
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr166.i) #7, !srcloc !129
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  %and170363.i = and i32 %38, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170363.i)
  %tobool171.not364.i = icmp eq i32 %and170363.i, 0
  br i1 %tobool171.not364.i, label %if.then134.i.land.lhs.true175.i_crit_edge, label %if.then134.i.for.end193.i_crit_edge

if.then134.i.for.end193.i_crit_edge:              ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end193.i

if.then134.i.land.lhs.true175.i_crit_edge:        ; preds = %if.then134.i
  br label %land.lhs.true175.i

land.lhs.true175.i:                               ; preds = %if.then189.i.land.lhs.true175.i_crit_edge, %if.then134.i.land.lhs.true175.i_crit_edge
  %call176.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call176.i, i64 %add.i342.i)
  %cmp3.i344.i = icmp sgt i64 %call176.i, %add.i342.i
  br i1 %cmp3.i344.i, label %if.then180.i, label %if.then189.i

if.then180.i:                                     ; preds = %land.lhs.true175.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr166.i) #7, !srcloc !129
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  br label %for.end193.i

if.then189.i:                                     ; preds = %land.lhs.true175.i
  tail call void @usleep_range_state(i32 noundef 13, i32 noundef 50, i32 noundef 2) #7
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr166.i) #7, !srcloc !129
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  %and170.i = and i32 %42, 16777216
  %tobool171.not.i = icmp eq i32 %and170.i, 0
  br i1 %tobool171.not.i, label %if.then189.i.land.lhs.true175.i_crit_edge, label %if.then189.i.for.end193.i_crit_edge

if.then189.i.for.end193.i_crit_edge:              ; preds = %if.then189.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end193.i

if.then189.i.land.lhs.true175.i_crit_edge:        ; preds = %if.then189.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true175.i

for.end193.i:                                     ; preds = %if.then189.i.for.end193.i_crit_edge, %if.then180.i, %if.then134.i.for.end193.i_crit_edge
  %val.2.i = phi i32 [ %40, %if.then180.i ], [ %38, %if.then134.i.for.end193.i_crit_edge ], [ %42, %if.then189.i.for.end193.i_crit_edge ]
  %and195.i = and i32 %val.2.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195.i)
  %tobool196.not.i = icmp eq i32 %and195.i, 0
  br i1 %tobool196.not.i, label %do.end202.i, label %for.end193.i.if.end7_crit_edge

for.end193.i.if.end7_crit_edge:                   ; preds = %for.end193.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end202.i:                                      ; preds = %for.end193.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.42) #11
  br label %cleanup

if.end204.i:                                      ; preds = %if.end3
  %vbif_base3.i = getelementptr inbounds %struct.venus_core, ptr %5, i32 0, i32 1
  %43 = ptrtoint ptr %vbif_base3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vbif_base3.i, align 4
  %add.ptr207.i = getelementptr i8, ptr %44, i32 520
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr207.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  %46 = or i32 %45, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207.i, i32 %46) #7, !srcloc !140
  %call219.i = tail call i64 @ktime_get() #7
  %add.i347.i = add i64 %call219.i, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 611) #7
  %add.ptr237.i = getelementptr i8, ptr %44, i32 524
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr237.i) #7, !srcloc !129
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  %and241369.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241369.i)
  %tobool242.not370.i = icmp eq i32 %and241369.i, 0
  br i1 %tobool242.not370.i, label %if.end204.i.land.lhs.true246.i_crit_edge, label %if.end204.i.for.end264.i_crit_edge

if.end204.i.for.end264.i_crit_edge:               ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end264.i

if.end204.i.land.lhs.true246.i_crit_edge:         ; preds = %if.end204.i
  br label %land.lhs.true246.i

land.lhs.true246.i:                               ; preds = %if.then260.i.land.lhs.true246.i_crit_edge, %if.end204.i.land.lhs.true246.i_crit_edge
  %call247.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call247.i, i64 %add.i347.i)
  %cmp3.i349.i = icmp sgt i64 %call247.i, %add.i347.i
  br i1 %cmp3.i349.i, label %if.then251.i, label %if.then260.i

if.then251.i:                                     ; preds = %land.lhs.true246.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr237.i) #7, !srcloc !129
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  br label %for.end264.i

if.then260.i:                                     ; preds = %land.lhs.true246.i
  tail call void @usleep_range_state(i32 noundef 13, i32 noundef 50, i32 noundef 2) #7
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr237.i) #7, !srcloc !129
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  %and241.i = and i32 %52, 1
  %tobool242.not.i = icmp eq i32 %and241.i, 0
  br i1 %tobool242.not.i, label %if.then260.i.land.lhs.true246.i_crit_edge, label %if.then260.i.for.end264.i_crit_edge

if.then260.i.for.end264.i_crit_edge:              ; preds = %if.then260.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end264.i

if.then260.i.land.lhs.true246.i_crit_edge:        ; preds = %if.then260.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true246.i

for.end264.i:                                     ; preds = %if.then260.i.for.end264.i_crit_edge, %if.then251.i, %if.end204.i.for.end264.i_crit_edge
  %val.3.i = phi i32 [ %50, %if.then251.i ], [ %48, %if.end204.i.for.end264.i_crit_edge ], [ %52, %if.then260.i.for.end264.i_crit_edge ]
  %and266.i = and i32 %val.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266.i)
  %tobool267.not.i = icmp eq i32 %and266.i, 0
  br i1 %tobool267.not.i, label %do.end273.i, label %for.end264.i.if.end7_crit_edge

for.end264.i.if.end7_crit_edge:                   ; preds = %for.end264.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end273.i:                                      ; preds = %for.end264.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.42) #11
  br label %cleanup

if.end7:                                          ; preds = %for.end264.i.if.end7_crit_edge, %for.end193.i.if.end7_crit_edge, %for.end117.i.if.end7_crit_edge, %if.then113.i.if.end7_crit_edge, %skip_aon_mvp_noc.i.if.end7_crit_edge
  %53 = ptrtoint ptr %power_enabled to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %power_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end273.i, %do.end202.i, %do.end126.i, %for.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -110, %do.end126.i ], [ -110, %do.end202.i ], [ -110, %do.end273.i ], [ -110, %for.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pkt_sys_pc_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfi_process_msg_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pkt_sys_set_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !58, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !104, !105, !106, !108, !109, !111, !112, !113, !114, !115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @venus_fw_debug, !1, !"venus_fw_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 133, i32 5}
!2 = !{ptr @venus_hfi_create.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 1676, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @venus_hfi_ops, !6, !"venus_hfi_ops", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 1625, i32 29}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 1149, i32 3}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @venus_core_init._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @venus_core_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 391, i32 3}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @venus_iface_cmdq_write_nolock._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @venus_iface_cmdq_write_nolock._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 159, i32 17}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 159, i32 29}
!25 = distinct !{null, !26, !"venus_pkt_debug", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 132, i32 13}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 929, i32 3}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @venus_sys_set_default_properties._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @venus_sys_set_default_properties._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 941, i32 3}
!34 = !{ptr @venus_sys_set_default_properties._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @venus_sys_set_default_properties._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 945, i32 3}
!38 = !{ptr @venus_sys_set_default_properties._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @venus_sys_set_default_properties._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"venus_sys_idle_indicator", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 134, i32 13}
!42 = distinct !{null, !43, !"venus_fw_low_power_mode", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 135, i32 13}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 972, i32 4}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @venus_flush_debug_queue.__UNIQUE_ID_ddebug299, !45, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 1225, i32 4}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @venus_session_end._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @venus_session_end._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = distinct !{null, !55, !"venus_fw_coverage", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 137, i32 13}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 531, i32 3}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @venus_run._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @venus_run._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"max_tries", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 450, i32 28}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 471, i32 4}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @venus_boot_core._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @venus_boot_core._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 505, i32 2}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @venus_hwversion.__UNIQUE_ID_ddebug298, !69, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 1568, i32 3}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @venus_suspend_3xx._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @venus_suspend_3xx._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 1591, i32 3}
!79 = !{ptr @venus_suspend_3xx._entry.32, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @venus_suspend_3xx._entry_ptr.34, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 1605, i32 3}
!83 = !{ptr @venus_suspend_3xx._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @venus_suspend_3xx._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = distinct !{null, !86, !"venus_hw_rsp_timeout", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 136, i32 12}
!87 = !{ptr @init_completion.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../include/linux/completion.h", i32 87, i32 2}
!89 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 578, i32 4}
!92 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @venus_halt_axi._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @venus_halt_axi._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 595, i32 4}
!97 = !{ptr @venus_halt_axi._entry.41, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @venus_halt_axi._entry_ptr.43, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @venus_halt_axi._entry.44, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 613, i32 3}
!101 = !{ptr @venus_halt_axi._entry_ptr.45, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 1469, i32 3}
!104 = !{ptr @venus_suspend_1xx._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @venus_suspend_1xx._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @venus_suspend_1xx._entry.47, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 1475, i32 3}
!108 = !{ptr @venus_suspend_1xx._entry_ptr.48, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/qcom/venus/hfi_venus.c", i32 1039, i32 2}
!111 = !{ptr @venus_sfr_print._rs, !110, !"_rs", i1 false, i1 false}
!112 = !{ptr @__func__.venus_sfr_print, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @venus_sfr_print._entry, !110, !"_entry", i1 false, i1 false}
!115 = !{ptr @venus_sfr_print._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{i64 2156528187}
!126 = !{i64 2156566425}
!127 = !{!"auto-init"}
!128 = !{i8 0, i8 2}
!129 = !{i64 6263468}
!130 = !{i64 2156559677}
!131 = !{i64 2156554607}
!132 = !{i64 2156555116}
!133 = !{i64 2156555611}
!134 = !{i64 2156556345}
!135 = !{i64 2156556854}
!136 = !{i64 2156557349}
!137 = !{i64 2156553954}
!138 = !{i64 2156545391}
!139 = !{i64 2156545845}
!140 = !{i64 6263050}
!141 = !{i64 2156546290}
!142 = !{i64 2156478502}
!143 = !{i64 2156475832}
!144 = !{i64 2156476131}
!145 = !{i64 2156475980}
!146 = !{i64 2156476279}
!147 = !{i64 2156476422}
!148 = !{i64 2156480584}
!149 = !{i64 2148795254, i64 2148795259, i64 2148795272, i64 2148795316, i64 2148795350, i64 2148795371}
!150 = !{i64 2156476519}
!151 = !{i64 2156476669}
!152 = !{i64 2156476781}
!153 = !{i64 2156476929}
!154 = !{i64 2156477020}
!155 = !{i64 2156477163}
!156 = !{i64 2156477843}
!157 = !{i64 2156488861}
!158 = !{i64 2156497999}
!159 = !{i64 2156505166}
!160 = !{i64 2156505617}
!161 = !{i64 2156506025}
!162 = !{i64 2156480950}
!163 = !{i64 2156481754}
!164 = !{i64 2156481992}
!165 = !{i64 2156482402}
!166 = !{i64 2156483067}
!167 = !{i64 2156485020}
!168 = !{i64 2156485419}
!169 = !{i64 2156486095}
!170 = !{i64 2156508142}
!171 = !{i64 2156508536}
!172 = !{i64 2156510448}
!173 = !{i64 2156510926}
!174 = !{i64 2156511385}
!175 = !{i64 2156511799}
!176 = !{i64 2156513575}
!177 = !{i64 2156514069}
!178 = !{i64 2156516295}
!179 = !{i64 2156516604}
!180 = !{i64 2156518585}
!181 = !{i64 2156519087}
!182 = !{i64 2156521209}
!183 = !{i64 2156521511}
!184 = !{i64 2156523449}
!185 = !{i64 2156523935}
