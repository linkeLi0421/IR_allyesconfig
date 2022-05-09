; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.analogix_dp_device = type { ptr, ptr, ptr, %struct.drm_connector, ptr, %struct.drm_dp_aux, ptr, i32, ptr, %struct.video_info, %struct.link_train, ptr, i32, ptr, i8, i8, i8, %struct.mutex, i8, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.video_info = type { ptr, i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.link_train = type { i32, [4 x i32], i8, i8, [4 x i8], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dp_sdp_header = type { i8, i8, i8, i8 }
%struct.dp_sdp = type { %struct.dp_sdp_header, [32 x i8] }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }

@analogix_dp_init_analog_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 377, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get pll lock status\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"analogix_dp_init_analog_func\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@analogix_dp_init_analog_func._entry_ptr = internal global ptr @analogix_dp_init_analog_func._entry, section ".printk_index", align 4
@analogix_dp_is_slave_video_stream_clock_on.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"analogix_dp\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"analogix_dp_is_slave_video_stream_clock_on\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Input stream clock not detected.\0A\00", [62 x i8] zeroinitializer }, align 32
@analogix_dp_is_slave_video_stream_clock_on.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wait SYS_CTL_2.\0A\00", [47 x i8] zeroinitializer }, align 32
@analogix_dp_is_slave_video_stream_clock_on.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Input stream clk is changing\0A\00", [34 x i8] zeroinitializer }, align 32
@analogix_dp_is_video_stream_on.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 -37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"analogix_dp_is_video_stream_on\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Input video stream is not detected.\0A\00", [59 x i8] zeroinitializer }, align 32
@analogix_dp_send_psr_spd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1017, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to apply PSR %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"analogix_dp_send_psr_spd\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@analogix_dp_send_psr_spd._entry_ptr = internal global ptr @analogix_dp_send_psr_spd._entry, section ".printk_index", align 4
@analogix_dp_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1098, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AUX CH enable timeout!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"analogix_dp_transfer\00", [43 x i8] zeroinitializer }, align 32
@analogix_dp_transfer._entry_ptr = internal global ptr @analogix_dp_transfer._entry, section ".printk_index", align 4
@analogix_dp_transfer._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 1107, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AUX CH cmd reply timeout!\0A\00", [37 x i8] zeroinitializer }, align 32
@analogix_dp_transfer._entry_ptr.19 = internal global ptr @analogix_dp_transfer._entry.17, section ".printk_index", align 4
@analogix_dp_transfer._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 1121, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AUX CH error happened: %#x (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@analogix_dp_transfer._entry_ptr.22 = internal global ptr @analogix_dp_transfer._entry.20, section ".printk_index", align 4
@analogix_dp_get_psr_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 945, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PSR_STATUS read failed ret=%zd\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"analogix_dp_get_psr_status\00", [37 x i8] zeroinitializer }, align 32
@analogix_dp_get_psr_status._entry_ptr = internal global ptr @analogix_dp_get_psr_status._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 10]
@__sancov_gen_cov_switch_values.26 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 8, i64 9]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 33554432, i64 134217728]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 377, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 774, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 782, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 785, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 876, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1017, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1098, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1107, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1120, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [53 x i8] c"../drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 945, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @analogix_dp_get_psr_status._entry, ptr @analogix_dp_get_psr_status._entry_ptr, ptr @analogix_dp_init_analog_func._entry, ptr @analogix_dp_init_analog_func._entry_ptr, ptr @analogix_dp_send_psr_spd._entry, ptr @analogix_dp_send_psr_spd._entry_ptr, ptr @analogix_dp_transfer._entry, ptr @analogix_dp_transfer._entry.17, ptr @analogix_dp_transfer._entry.20, ptr @analogix_dp_transfer._entry_ptr, ptr @analogix_dp_transfer._entry_ptr.19, ptr @analogix_dp_transfer._entry_ptr.22, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analogix_dp_init_analog_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analogix_dp_send_psr_spd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analogix_dp_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analogix_dp_transfer._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analogix_dp_transfer._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analogix_dp_get_psr_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_enable_video_mute(ptr nocapture noundef readonly %dp, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = or i32 %2, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !57
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = and i32 %2, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base, align 8
  %add.ptr15 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %6) #5, !srcloc !57
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
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
define dso_local void @analogix_dp_stop_video(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %3 = and i32 %2, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_lane_swap(ptr nocapture noundef readonly %dp, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %. = select i1 %enable, i32 452984832, i32 -469762048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %.) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_init_analog_param(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 268435456) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 8
  %add.ptr5 = getelementptr i8, ptr %3, i32 884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 201326592) #5, !srcloc !57
  %plat_data = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 19
  %4 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_data, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end35_crit_edge, label %land.lhs.true

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %if.then, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %spec.select = select i1 %cmp, i32 0, i32 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base, align 8
  %add.ptr14 = getelementptr i8, ptr %11, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %spec.select) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base, align 8
  %add.ptr19 = getelementptr i8, ptr %13, i32 2532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 -1795162112) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base, align 8
  %add.ptr24 = getelementptr i8, ptr %15, i32 2536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 1073741824) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base, align 8
  %add.ptr29 = getelementptr i8, ptr %17, i32 2540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 1476395008) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base, align 8
  %add.ptr34 = getelementptr i8, ptr %19, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 570425344) #5, !srcloc !57
  br label %if.end35

if.end35:                                         ; preds = %if.then, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base, align 8
  %add.ptr40 = getelementptr i8, ptr %21, i32 888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 -2063597568) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base, align 8
  %add.ptr45 = getelementptr i8, ptr %23, i32 892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 1728053248) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base, align 8
  %add.ptr50 = getelementptr i8, ptr %25, i32 896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 0) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_init_interrupt(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 8
  %add.ptr4 = getelementptr i8, ptr %3, i32 964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -16777216) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr8 = getelementptr i8, ptr %5, i32 968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 1325400064) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 8
  %add.ptr12 = getelementptr i8, ptr %7, i32 972
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 -536870912) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 8
  %add.ptr16 = getelementptr i8, ptr %9, i32 976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 -419430400) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base, align 8
  %add.ptr20 = getelementptr i8, ptr %11, i32 988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 1660944384) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base, align 8
  %add.ptr24 = getelementptr i8, ptr %13, i32 992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base, align 8
  %add.ptr28 = getelementptr i8, ptr %15, i32 996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base, align 8
  %add.ptr32 = getelementptr i8, ptr %17, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base, align 8
  %add.ptr36 = getelementptr i8, ptr %19, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base, align 8
  %add.ptr40 = getelementptr i8, ptr %21, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 0) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_reset(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %3 = and i32 %2, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %3) #5, !srcloc !57
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i105 = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  %9 = and i32 %8, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %9) #5, !srcloc !57
  %plat_data = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 19
  %12 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %plat_data, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %do.body

do.body:                                          ; preds = %if.else, %land.lhs.true.do.body_crit_edge
  %reg.0 = phi i32 [ -1124073472, %if.else ], [ 1627389952, %land.lhs.true.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i, align 8
  %add.ptr = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %reg.0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base.i, align 8
  %add.ptr6 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -2030043136) #5, !srcloc !57
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i107 = getelementptr i8, ptr %23, i32 860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 -469762048) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base.i, align 8
  %add.ptr11 = getelementptr i8, ptr %25, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base.i, align 8
  %add.ptr16 = getelementptr i8, ptr %27, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 1073741824) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base.i, align 8
  %add.ptr21 = getelementptr i8, ptr %29, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base.i, align 8
  %add.ptr26 = getelementptr i8, ptr %31, i32 1548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base.i, align 8
  %add.ptr31 = getelementptr i8, ptr %33, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_base.i, align 8
  %add.ptr36 = getelementptr i8, ptr %35, i32 1608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base.i, align 8
  %add.ptr41 = getelementptr i8, ptr %37, i32 1732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 1577058304) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_base.i, align 8
  %add.ptr46 = getelementptr i8, ptr %39, i32 1736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 436207616) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base.i, align 8
  %add.ptr51 = getelementptr i8, ptr %41, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 268435456) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base.i, align 8
  %add.ptr56 = getelementptr i8, ptr %43, i32 1828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base.i, align 8
  %add.ptr61 = getelementptr i8, ptr %45, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_base.i, align 8
  %add.ptr66 = getelementptr i8, ptr %47, i32 1852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 536870912) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_base.i, align 8
  %add.ptr71 = getelementptr i8, ptr %49, i32 1892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 67108864) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_base.i, align 8
  %add.ptr76 = getelementptr i8, ptr %51, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 33554432) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_base.i, align 8
  %add.ptr81 = getelementptr i8, ptr %53, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 16842752) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_swreset(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_config_interrupt(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 8
  %add.ptr5 = getelementptr i8, ptr %3, i32 996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr10 = getelementptr i8, ptr %5, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 8
  %add.ptr15 = getelementptr i8, ptr %7, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 117440512) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 8
  %add.ptr20 = getelementptr i8, ptr %9, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 1073741824) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_mute_hpd_interrupt(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1004
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  %3 = and i32 %2, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !57
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 8
  %add.ptr7 = getelementptr i8, ptr %7, i32 1016
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  %9 = and i32 %8, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base, align 8
  %add.ptr16 = getelementptr i8, ptr %11, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %9) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_unmute_hpd_interrupt(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 117440512) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 8
  %add.ptr5 = getelementptr i8, ptr %3, i32 1016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 1073741824) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_get_pll_lock_status(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1728
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %3 = lshr i32 %2, 28
  %.lobit = and i32 %3, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_pll_power_down(ptr nocapture noundef readonly %dp, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_data = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 19
  %0 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %5 = icmp ult i32 %4, 2
  %spec.select = select i1 %5, i32 300, i32 1820
  %spec.select16 = select i1 %5, i32 16, i32 128
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %pd_addr.0 = phi i32 [ 1820, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %mask.0 = phi i32 [ 128, %entry.if.end_crit_edge ], [ %spec.select16, %land.lhs.true ]
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 %pd_addr.0
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  %or = or i32 %9, %mask.0
  %neg = xor i32 %mask.0, -1
  %and = and i32 %9, %neg
  %reg.0 = select i1 %enable, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %11 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base, align 8
  %add.ptr8 = getelementptr i8, ptr %12, i32 %pd_addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %10) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_analog_power_down(ptr nocapture noundef readonly %dp, i32 noundef %block, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_data = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 19
  %0 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %5 = icmp ult i32 %4, 2
  %spec.select = select i1 %5, i32 300, i32 1824
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %phy_pd_addr.0 = phi i32 [ 1824, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %6 = zext i32 %block to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %block, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 2, label %sw.bb38
    i32 3, label %sw.bb58
    i32 4, label %sw.bb78
    i32 5, label %sw.bb98
    i32 6, label %sw.bb135
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  br i1 %tobool.not, label %sw.bb.if.else_crit_edge, label %land.lhs.true4

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true4:                                   ; preds = %sw.bb
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %9 = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %land.lhs.true4.if.end9_crit_edge, label %land.lhs.true4.if.else_crit_edge

land.lhs.true4.if.else_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true4.if.end9_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true4.if.else_crit_edge, %sw.bb.if.else_crit_edge
  br label %if.end9

if.end9:                                          ; preds = %if.else, %land.lhs.true4.if.end9_crit_edge
  %mask.0 = phi i32 [ 16, %if.else ], [ 32, %land.lhs.true4.if.end9_crit_edge ]
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %11 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 %phy_pd_addr.0
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  %or = or i32 %14, %mask.0
  %neg = xor i32 %mask.0, -1
  %and = and i32 %14, %neg
  %reg.0 = select i1 %enable, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %16 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base, align 8
  %add.ptr17 = getelementptr i8, ptr %17, i32 %phy_pd_addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %15) #5, !srcloc !57
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %reg_base21 = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %18 = ptrtoint ptr %reg_base21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base21, align 8
  %add.ptr22 = getelementptr i8, ptr %19, i32 %phy_pd_addr.0
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  %21 = and i32 %20, -16777217
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %masksel242 = zext i1 %enable to i32
  %reg.1 = or i32 %22, %masksel242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %23 = tail call i32 @llvm.bswap.i32(i32 %reg.1)
  %24 = ptrtoint ptr %reg_base21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base21, align 8
  %add.ptr37 = getelementptr i8, ptr %25, i32 %phy_pd_addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %23) #5, !srcloc !57
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %reg_base41 = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %26 = ptrtoint ptr %reg_base41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base41, align 8
  %add.ptr42 = getelementptr i8, ptr %27, i32 %phy_pd_addr.0
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  %29 = and i32 %28, -33554433
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %masksel241 = select i1 %enable, i32 2, i32 0
  %reg.2 = or i32 %30, %masksel241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void @arm_heavy_mb() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %reg.2)
  %32 = ptrtoint ptr %reg_base41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base41, align 8
  %add.ptr57 = getelementptr i8, ptr %33, i32 %phy_pd_addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %31) #5, !srcloc !57
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %reg_base61 = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %34 = ptrtoint ptr %reg_base61 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_base61, align 8
  %add.ptr62 = getelementptr i8, ptr %35, i32 %phy_pd_addr.0
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  %37 = and i32 %36, -67108865
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %masksel240 = select i1 %enable, i32 4, i32 0
  %reg.3 = or i32 %38, %masksel240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  %39 = tail call i32 @llvm.bswap.i32(i32 %reg.3)
  %40 = ptrtoint ptr %reg_base61 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base61, align 8
  %add.ptr77 = getelementptr i8, ptr %41, i32 %phy_pd_addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %39) #5, !srcloc !57
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %reg_base81 = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %42 = ptrtoint ptr %reg_base81 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base81, align 8
  %add.ptr82 = getelementptr i8, ptr %43, i32 %phy_pd_addr.0
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  %45 = and i32 %44, -134217729
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %masksel = select i1 %enable, i32 8, i32 0
  %reg.4 = or i32 %46, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void @arm_heavy_mb() #5
  %47 = tail call i32 @llvm.bswap.i32(i32 %reg.4)
  %48 = ptrtoint ptr %reg_base81 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_base81, align 8
  %add.ptr97 = getelementptr i8, ptr %49, i32 %phy_pd_addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %47) #5, !srcloc !57
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.end
  br i1 %tobool.not, label %sw.bb98.if.else106_crit_edge, label %land.lhs.true101

sw.bb98.if.else106_crit_edge:                     ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else106

land.lhs.true101:                                 ; preds = %sw.bb98
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %1, align 4
  %52 = add i32 %51, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %53 = icmp ult i32 %52, 2
  br i1 %53, label %land.lhs.true101.if.end107_crit_edge, label %land.lhs.true101.if.else106_crit_edge

land.lhs.true101.if.else106_crit_edge:            ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else106

land.lhs.true101.if.end107_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end107

if.else106:                                       ; preds = %land.lhs.true101.if.else106_crit_edge, %sw.bb98.if.else106_crit_edge
  br label %if.end107

if.end107:                                        ; preds = %if.else106, %land.lhs.true101.if.end107_crit_edge
  %mask.1 = phi i32 [ 32, %if.else106 ], [ 128, %land.lhs.true101.if.end107_crit_edge ]
  %reg_base110 = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %54 = ptrtoint ptr %reg_base110 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_base110, align 8
  %add.ptr111 = getelementptr i8, ptr %55, i32 %phy_pd_addr.0
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #5, !srcloc !59
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  %or117 = or i32 %57, %mask.1
  %neg119 = xor i32 %mask.1, -1
  %and120 = and i32 %57, %neg119
  %reg.5 = select i1 %enable, i32 %or117, i32 %and120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @arm_heavy_mb() #5
  %58 = tail call i32 @llvm.bswap.i32(i32 %reg.5)
  %59 = ptrtoint ptr %reg_base110 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_base110, align 8
  %add.ptr126 = getelementptr i8, ptr %60, i32 %phy_pd_addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %58) #5, !srcloc !57
  %61 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %plat_data, align 4
  %tobool128.not = icmp eq ptr %62, null
  br i1 %tobool128.not, label %if.end107.sw.epilog_crit_edge, label %land.lhs.true129

if.end107.sw.epilog_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true129:                                 ; preds = %if.end107
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %65 = add i32 %64, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %66 = icmp ult i32 %65, 2
  br i1 %66, label %if.then133, label %land.lhs.true129.sw.epilog_crit_edge

land.lhs.true129.sw.epilog_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then133:                                       ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #5
  br label %sw.epilog

sw.bb135:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %reg_base141 = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %67 = ptrtoint ptr %reg_base141 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_base141, align 8
  %add.ptr142 = getelementptr i8, ptr %68, i32 %phy_pd_addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142, i32 -16777216) #5
  br i1 %enable, label %sw.bb135.sw.epilog_crit_edge, label %if.else143

sw.bb135.sw.epilog_crit_edge:                     ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else143:                                       ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %reg_base141 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %reg_base141, align 8
  %add.ptr154 = getelementptr i8, ptr %70, i32 %phy_pd_addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 2130706432) #5, !srcloc !57
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %71 = ptrtoint ptr %reg_base141 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_base141, align 8
  %add.ptr159 = getelementptr i8, ptr %72, i32 %phy_pd_addr.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159, i32 0) #5, !srcloc !57
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else143, %sw.bb135.sw.epilog_crit_edge, %if.then133, %land.lhs.true129.sw.epilog_crit_edge, %if.end107.sw.epilog_crit_edge, %sw.bb78, %sw.bb58, %sw.bb38, %sw.bb18, %if.end9, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_init_analog_func(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @analogix_dp_set_analog_power_down(ptr noundef %dp, i32 noundef 6, i1 noundef zeroext false)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1073741824) #5, !srcloc !57
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 1728
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  %5 = and i32 %4, -201326593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 8
  %add.ptr8 = getelementptr i8, ptr %7, i32 1728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %5) #5, !srcloc !57
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 1728
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %11 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then:                                          ; preds = %entry
  %plat_data.i = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 19
  %12 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %plat_data.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.analogix_dp_set_pll_power_down.exit_crit_edge, label %land.lhs.true.i

if.then.analogix_dp_set_pll_power_down.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %analogix_dp_set_pll_power_down.exit

land.lhs.true.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %17 = icmp ult i32 %16, 2
  %spec.select.i = select i1 %17, i32 300, i32 1820
  %phi.bo = select i1 %17, i32 -17, i32 -129
  br label %analogix_dp_set_pll_power_down.exit

analogix_dp_set_pll_power_down.exit:              ; preds = %land.lhs.true.i, %if.then.analogix_dp_set_pll_power_down.exit_crit_edge
  %pd_addr.0.i = phi i32 [ 1820, %if.then.analogix_dp_set_pll_power_down.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %mask.0.i = phi i32 [ -129, %if.then.analogix_dp_set_pll_power_down.exit_crit_edge ], [ %phi.bo, %land.lhs.true.i ]
  %18 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base, align 8
  %add.ptr.i47 = getelementptr i8, ptr %19, i32 %pd_addr.0.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #5, !srcloc !59
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  %and.i = and i32 %21, %mask.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %and.i) #5
  %23 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base, align 8
  %add.ptr8.i = getelementptr i8, ptr %24, i32 %pd_addr.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %22) #5, !srcloc !57
  %25 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base, align 8
  %add.ptr.i4951 = getelementptr i8, ptr %26, i32 1728
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4951) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %28 = and i32 %27, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1152 = icmp eq i32 %28, 0
  br i1 %cmp1152, label %analogix_dp_set_pll_power_down.exit.while.body_crit_edge, label %analogix_dp_set_pll_power_down.exit.if.end17_crit_edge

analogix_dp_set_pll_power_down.exit.if.end17_crit_edge: ; preds = %analogix_dp_set_pll_power_down.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

analogix_dp_set_pll_power_down.exit.while.body_crit_edge: ; preds = %analogix_dp_set_pll_power_down.exit
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %analogix_dp_set_pll_power_down.exit.while.body_crit_edge
  %timeout_loop.053 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %analogix_dp_set_pll_power_down.exit.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %timeout_loop.053)
  %exitcond = icmp eq i32 %timeout_loop.053, 100
  br i1 %exitcond, label %do.end16, label %if.end

do.end16:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 1
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %while.body
  %inc = add nuw nsw i32 %timeout_loop.053, 1
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %31 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_base, align 8
  %add.ptr.i49 = getelementptr i8, ptr %32, i32 1728
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %34 = and i32 %33, 268435456
  %cmp11 = icmp eq i32 %34, 0
  br i1 %cmp11, label %if.end.while.body_crit_edge, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end17:                                         ; preds = %if.end.if.end17_crit_edge, %analogix_dp_set_pll_power_down.exit.if.end17_crit_edge, %entry.if.end17_crit_edge
  %35 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base, align 8
  %add.ptr21 = getelementptr i8, ptr %36, i32 28
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  %38 = and i32 %37, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_base, align 8
  %add.ptr30 = getelementptr i8, ptr %40, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %38) #5, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end16
  %retval.0 = phi i32 [ -110, %do.end16 ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_clear_hotplug_interrupts(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd_gpiod = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 13
  %0 = ptrtoint ptr %hpd_gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpd_gpiod, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 117440512) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr5 = getelementptr i8, ptr %5, i32 988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 1073741824) #5, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_init_hpd(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd_gpiod = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 13
  %0 = ptrtoint ptr %hpd_gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpd_gpiod, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %analogix_dp_clear_hotplug_interrupts.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

analogix_dp_clear_hotplug_interrupts.exit:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  tail call void @arm_heavy_mb() #5
  %reg_base.i = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 117440512) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %5, i32 988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 1073741824) #5, !srcloc !57
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 1544
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  %9 = and i32 %8, -805306369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base.i, align 8
  %add.ptr3 = getelementptr i8, ptr %11, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %9) #5, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %analogix_dp_clear_hotplug_interrupts.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_force_hpd(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1544
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %3 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %4, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 805306368) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_get_irq_type(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd_gpiod = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 13
  %0 = ptrtoint ptr %hpd_gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpd_gpiod, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else4, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @gpiod_get_value(ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  %. = select i1 %tobool2.not, i32 2, i32 1
  br label %cleanup

if.else4:                                         ; preds = %entry
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 976
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end, label %if.else4.cleanup_crit_edge

if.else4.cleanup_crit_edge:                       ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.else4
  %and9 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and13 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %.22 = select i1 %tobool14.not, i32 8, i32 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %if.else4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %., %if.then ], [ 1, %if.else4.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ %.22, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_reset_aux(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  %3 = or i32 %2, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_init_aux(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #5, !srcloc !57
  %plat_data.i = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 19
  %2 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_data.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true4.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true4.i:                                 ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %land.lhs.true4.i.analogix_dp_set_analog_power_down.exit_crit_edge, label %land.lhs.true4.i.if.else.i_crit_edge

land.lhs.true4.i.if.else.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true4.i.analogix_dp_set_analog_power_down.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %analogix_dp_set_analog_power_down.exit

if.else.i:                                        ; preds = %land.lhs.true4.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  br label %analogix_dp_set_analog_power_down.exit

analogix_dp_set_analog_power_down.exit:           ; preds = %if.else.i, %land.lhs.true4.i.analogix_dp_set_analog_power_down.exit_crit_edge
  %phy_pd_addr.0.i54 = phi i32 [ 1824, %if.else.i ], [ 300, %land.lhs.true4.i.analogix_dp_set_analog_power_down.exit_crit_edge ]
  %mask.0.i = phi i32 [ 16, %if.else.i ], [ 32, %land.lhs.true4.i.analogix_dp_set_analog_power_down.exit_crit_edge ]
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 %phy_pd_addr.0.i54
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !59
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  %or.i = or i32 %11, %mask.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %13 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base, align 8
  %add.ptr17.i = getelementptr i8, ptr %14, i32 %phy_pd_addr.0.i54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %12) #5, !srcloc !57
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 11, i32 noundef 2) #5
  %15 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %plat_data.i, align 4
  %tobool.not.i36 = icmp eq ptr %16, null
  br i1 %tobool.not.i36, label %analogix_dp_set_analog_power_down.exit.if.else.i42_crit_edge, label %land.lhs.true4.i41

analogix_dp_set_analog_power_down.exit.if.else.i42_crit_edge: ; preds = %analogix_dp_set_analog_power_down.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i42

land.lhs.true4.i41:                               ; preds = %analogix_dp_set_analog_power_down.exit
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = add i32 %18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %land.lhs.true4.i41.analogix_dp_set_analog_power_down.exit50_crit_edge, label %land.lhs.true4.i41.if.else.i42_crit_edge

land.lhs.true4.i41.if.else.i42_crit_edge:         ; preds = %land.lhs.true4.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i42

land.lhs.true4.i41.analogix_dp_set_analog_power_down.exit50_crit_edge: ; preds = %land.lhs.true4.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %analogix_dp_set_analog_power_down.exit50

if.else.i42:                                      ; preds = %land.lhs.true4.i41.if.else.i42_crit_edge, %analogix_dp_set_analog_power_down.exit.if.else.i42_crit_edge
  br label %analogix_dp_set_analog_power_down.exit50

analogix_dp_set_analog_power_down.exit50:         ; preds = %if.else.i42, %land.lhs.true4.i41.analogix_dp_set_analog_power_down.exit50_crit_edge
  %phy_pd_addr.0.i3957 = phi i32 [ 1824, %if.else.i42 ], [ 300, %land.lhs.true4.i41.analogix_dp_set_analog_power_down.exit50_crit_edge ]
  %mask.0.i43 = phi i32 [ -17, %if.else.i42 ], [ -33, %land.lhs.true4.i41.analogix_dp_set_analog_power_down.exit50_crit_edge ]
  %21 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base, align 8
  %add.ptr.i45 = getelementptr i8, ptr %22, i32 %phy_pd_addr.0.i3957
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #5, !srcloc !59
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  %and.i48 = and i32 %24, %mask.0.i43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %25 = tail call i32 @llvm.bswap.i32(i32 %and.i48) #5
  %26 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base, align 8
  %add.ptr17.i49 = getelementptr i8, ptr %27, i32 %phy_pd_addr.0.i3957
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i49, i32 %25) #5, !srcloc !57
  %28 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base, align 8
  %add.ptr.i52 = getelementptr i8, ptr %29, i32 28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  %31 = or i32 %30, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base, align 8
  %add.ptr3.i = getelementptr i8, ptr %33, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %31) #5, !srcloc !57
  %34 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %plat_data.i, align 4
  %tobool.not = icmp eq ptr %35, null
  br i1 %tobool.not, label %analogix_dp_set_analog_power_down.exit50.if.else_crit_edge, label %land.lhs.true

analogix_dp_set_analog_power_down.exit50.if.else_crit_edge: ; preds = %analogix_dp_set_analog_power_down.exit50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %analogix_dp_set_analog_power_down.exit50
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %38 = add i32 %37, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %analogix_dp_set_analog_power_down.exit50.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %reg.0 = phi i32 [ 196608, %if.else ], [ 0, %land.lhs.true.if.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  tail call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base, align 8
  %add.ptr6 = getelementptr i8, ptr %41, i32 912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %reg.0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base, align 8
  %add.ptr11 = getelementptr i8, ptr %43, i32 1928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 -2130706432) #5, !srcloc !57
  %44 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base, align 8
  %add.ptr13 = getelementptr i8, ptr %45, i32 28
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  %47 = and i32 %46, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_base, align 8
  %add.ptr20 = getelementptr i8, ptr %49, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %47) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_get_plug_in_status(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd_gpiod = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 13
  %0 = ptrtoint ptr %hpd_gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpd_gpiod, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @gpiod_get_value(ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end9_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.else:                                          ; preds = %entry
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 1544
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  %5 = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.else.if.end9_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end9:                                          ; preds = %if.else.if.end9_crit_edge, %if.then.if.end9_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end9 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_enable_sw_function(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_link_bandwidth(ptr nocapture noundef readonly %dp, i32 noundef %bwtype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %bwtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %bwtype, label %entry.if.end_crit_edge [
    i32 10, label %entry.do.body_crit_edge
    i32 6, label %entry.do.body_crit_edge4
  ]

entry.do.body_crit_edge4:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void @arm_heavy_mb() #5
  %1 = tail call i32 @llvm.bswap.i32(i32 %bwtype)
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 1664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #5, !srcloc !57
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_get_link_bandwidth(ptr nocapture noundef readonly %dp, ptr nocapture noundef writeonly %bwtype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1664
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  %4 = ptrtoint ptr %bwtype to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bwtype, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane_count(ptr nocapture noundef readonly %dp, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %count)
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %1 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 1668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_get_lane_count(ptr nocapture noundef readonly %dp, ptr nocapture noundef writeonly %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1668
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_enable_enhanced_mode(ptr nocapture noundef readonly %dp, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1548
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = or i32 %2, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 1548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !57
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = and i32 %2, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base, align 8
  %add.ptr15 = getelementptr i8, ptr %8, i32 1548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %6) #5, !srcloc !57
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_training_pattern(ptr nocapture noundef readonly %dp, i32 noundef %pattern) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pattern to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %pattern, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb7
    i32 3, label %sw.bb13
    i32 4, label %sw.bb19
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void @arm_heavy_mb() #5
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %1 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 201326592) #5, !srcloc !57
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void @arm_heavy_mb() #5
  %reg_base5 = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %3 = ptrtoint ptr %reg_base5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base5, align 8
  %add.ptr6 = getelementptr i8, ptr %4, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 67108864) #5, !srcloc !57
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  tail call void @arm_heavy_mb() #5
  %reg_base11 = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %5 = ptrtoint ptr %reg_base11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base11, align 8
  %add.ptr12 = getelementptr i8, ptr %6, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 553648128) #5, !srcloc !57
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %reg_base17 = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %7 = ptrtoint ptr %reg_base17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base17, align 8
  %add.ptr18 = getelementptr i8, ptr %8, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 570425344) #5, !srcloc !57
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %reg_base23 = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %9 = ptrtoint ptr %reg_base23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base23, align 8
  %add.ptr24 = getelementptr i8, ptr %10, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #5, !srcloc !57
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb13, %sw.bb7, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane0_pre_emphasis(ptr nocapture noundef readonly %dp, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1676
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  %3 = and i32 %2, -402653185
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %level, 3
  %or = or i32 %4, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 1676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane1_pre_emphasis(ptr nocapture noundef readonly %dp, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1680
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  %3 = and i32 %2, -402653185
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %level, 3
  %or = or i32 %4, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane2_pre_emphasis(ptr nocapture noundef readonly %dp, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1684
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  %3 = and i32 %2, -402653185
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %level, 3
  %or = or i32 %4, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 1684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane3_pre_emphasis(ptr nocapture noundef readonly %dp, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1688
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  %3 = and i32 %2, -402653185
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %level, 3
  %or = or i32 %4, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 1688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane0_link_training(ptr nocapture noundef readonly %dp, i32 noundef %training_lane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %training_lane)
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %1 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 1676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane1_link_training(ptr nocapture noundef readonly %dp, i32 noundef %training_lane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %training_lane)
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %1 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane2_link_training(ptr nocapture noundef readonly %dp, i32 noundef %training_lane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %training_lane)
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %1 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 1684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_lane3_link_training(ptr nocapture noundef readonly %dp, i32 noundef %training_lane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !174
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %training_lane)
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %1 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 1688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_get_lane0_link_training(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1676
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_get_lane1_link_training(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1680
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_get_lane2_link_training(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1684
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !177
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_get_lane3_link_training(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1688
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !178
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_reset_macro(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1828
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !179
  %3 = or i32 %2, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !180
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 1828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !57
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  %6 = and i32 %2, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base, align 8
  %add.ptr8 = getelementptr i8, ptr %8, i32 1828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %6) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_init_video(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !182
  tail call void @arm_heavy_mb() #5
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1979711488) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 8
  %add.ptr5 = getelementptr i8, ptr %3, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !184
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr10 = getelementptr i8, ptr %5, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 1090519040) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 8
  %add.ptr15 = getelementptr i8, ptr %7, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 8
  %add.ptr20 = getelementptr i8, ptr %9, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 536870912) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_video_color_format(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dynamic_range = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %dynamic_range to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dynamic_range, align 4
  %shl = shl i32 %1, 7
  %color_depth = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 9, i32 7
  %2 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %color_depth, align 4
  %shl2 = shl i32 %3, 4
  %or = or i32 %shl2, %shl
  %color_space = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 9, i32 4
  %4 = ptrtoint ptr %color_space to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %color_space, align 4
  %or5 = or i32 %or, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %7 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #5, !srcloc !57
  %9 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base, align 8
  %add.ptr7 = getelementptr i8, ptr %10, i32 40
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  %12 = and i32 %11, 2147483647
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %ycbcr_coeff = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 9, i32 6
  %14 = ptrtoint ptr %ycbcr_coeff to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ycbcr_coeff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  %or10 = or i32 %13, 128
  %reg.0 = select i1 %tobool.not, i32 %13, i32 %or10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %17 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base, align 8
  %add.ptr16 = getelementptr i8, ptr %18, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %16) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_is_slave_video_stream_clock_on(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1536
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  tail call void @arm_heavy_mb() #5
  %3 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %4, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #5, !srcloc !57
  %5 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base, align 8
  %add.ptr7 = getelementptr i8, ptr %6, i32 1536
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !192
  %8 = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.body11, label %if.end20

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @analogix_dp_is_slave_video_stream_clock_on.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@analogix_dp_is_slave_video_stream_clock_on, %if.then17)) #5
          to label %cleanup [label %if.then17], !srcloc !193

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @analogix_dp_is_slave_video_stream_clock_on.__UNIQUE_ID_ddebug306, ptr noundef %10, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.end20:                                         ; preds = %entry
  %11 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base, align 8
  %add.ptr24 = getelementptr i8, ptr %12, i32 1540
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !195
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base, align 8
  %add.ptr32 = getelementptr i8, ptr %15, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %13) #5, !srcloc !57
  %16 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base, align 8
  %add.ptr36 = getelementptr i8, ptr %17, i32 1540
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !196
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @analogix_dp_is_slave_video_stream_clock_on.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@analogix_dp_is_slave_video_stream_clock_on, %if.then52)) #5
          to label %do.end56 [label %if.then52], !srcloc !193

if.then52:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %dev53 = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 1
  %19 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @analogix_dp_is_slave_video_stream_clock_on.__UNIQUE_ID_ddebug307, ptr noundef %20, ptr noundef nonnull @.str.8) #5
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %if.end20
  %21 = and i32 %18, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool58.not = icmp eq i32 %21, 0
  br i1 %tobool58.not, label %do.end56.cleanup_crit_edge, label %do.body60

do.end56.cleanup_crit_edge:                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body60:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @analogix_dp_is_slave_video_stream_clock_on.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@analogix_dp_is_slave_video_stream_clock_on, %if.then72)) #5
          to label %cleanup [label %if.then72], !srcloc !193

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #7
  %dev73 = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 1
  %22 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev73, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @analogix_dp_is_slave_video_stream_clock_on.__UNIQUE_ID_ddebug308, ptr noundef %23, ptr noundef nonnull @.str.9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %do.body60, %do.end56.cleanup_crit_edge, %if.then17, %do.body11
  %retval.0 = phi i32 [ -22, %if.then17 ], [ -22, %if.then72 ], [ 0, %do.end56.cleanup_crit_edge ], [ -22, %do.body11 ], [ -22, %do.body60 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_video_cr_mn(ptr nocapture noundef readonly %dp, i32 noundef %type, i32 noundef %m_value, i32 noundef %n_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1548
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = or i32 %2, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !197
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 1548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !198
  tail call void @arm_heavy_mb() #5
  %and = shl i32 %m_value, 24
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 8
  %add.ptr8 = getelementptr i8, ptr %7, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %and) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !199
  tail call void @arm_heavy_mb() #5
  %8 = shl i32 %m_value, 16
  %and9 = and i32 %8, -16777216
  %9 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base, align 8
  %add.ptr14 = getelementptr i8, ptr %10, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %and9) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !200
  tail call void @arm_heavy_mb() #5
  %11 = shl i32 %m_value, 8
  %and16 = and i32 %11, -16777216
  %12 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base, align 8
  %add.ptr21 = getelementptr i8, ptr %13, i32 1800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %and16) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !201
  tail call void @arm_heavy_mb() #5
  %and22 = shl i32 %n_value, 24
  %14 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base, align 8
  %add.ptr27 = getelementptr i8, ptr %15, i32 1804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %and22) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !202
  tail call void @arm_heavy_mb() #5
  %16 = shl i32 %n_value, 16
  %and29 = and i32 %16, -16777216
  %17 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base, align 8
  %add.ptr34 = getelementptr i8, ptr %18, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %and29) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !203
  tail call void @arm_heavy_mb() #5
  %19 = shl i32 %n_value, 8
  %and36 = and i32 %19, -16777216
  %20 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_base, align 8
  %add.ptr41 = getelementptr i8, ptr %21, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %and36) #5, !srcloc !57
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %22 = and i32 %2, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !204
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base, align 8
  %add.ptr54 = getelementptr i8, ptr %24, i32 1548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %22) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !205
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base, align 8
  %add.ptr59 = getelementptr i8, ptr %26, i32 1804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !206
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base, align 8
  %add.ptr64 = getelementptr i8, ptr %28, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 -2147483648) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !207
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_base, align 8
  %add.ptr69 = getelementptr i8, ptr %30, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 0) #5, !srcloc !57
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_set_video_timing_mode(ptr nocapture noundef readonly %dp, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = and i32 %2, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !208
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !57
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = or i32 %2, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !209
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base, align 8
  %add.ptr15 = getelementptr i8, ptr %8, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %6) #5, !srcloc !57
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_enable_video_master(ptr nocapture noundef readonly %dp, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 2048
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = and i32 %2, -50331649
  %4 = or i32 %3, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !210
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %6, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #5, !srcloc !57
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !211
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 8
  %add.ptr17 = getelementptr i8, ptr %9, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %7) #5, !srcloc !57
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_start_video(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !212
  %3 = or i32 %2, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !213
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_is_video_stream_on(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1544
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !215
  tail call void @arm_heavy_mb() #5
  %3 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %4, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #5, !srcloc !57
  %5 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base, align 8
  %add.ptr7 = getelementptr i8, ptr %6, i32 1544
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !216
  %8 = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.body11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @analogix_dp_is_video_stream_on.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@analogix_dp_is_video_stream_on, %if.then17)) #5
          to label %cleanup [label %if.then17], !srcloc !193

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @analogix_dp_is_video_stream_on.__UNIQUE_ID_ddebug309, ptr noundef %10, ptr noundef nonnull @.str.11) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %do.body11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then17 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %do.body11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_config_video_slave_mode(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !217
  %plat_data = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 19
  %4 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_data, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %3, -97
  br label %do.body

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %and4 = and i32 %3, -161
  %or = or i32 %and4, 128
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %reg.0 = phi i32 [ %and, %if.then ], [ %or, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !218
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %11 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base, align 8
  %add.ptr6 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %10) #5, !srcloc !57
  %13 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base, align 8
  %add.ptr10 = getelementptr i8, ptr %14, i32 68
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !219
  %16 = and i32 %15, -67108865
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %interlaced = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 9, i32 3
  %18 = ptrtoint ptr %interlaced to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %interlaced, align 2, !range !220
  %20 = shl nuw nsw i8 %19, 2
  %shl = zext i8 %20 to i32
  %or16 = or i32 %17, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !221
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %22 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base, align 8
  %add.ptr21 = getelementptr i8, ptr %23, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %21) #5, !srcloc !57
  %24 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base, align 8
  %add.ptr25 = getelementptr i8, ptr %25, i32 68
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !222
  %27 = and i32 %26, -33554433
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %v_sync_polarity = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 9, i32 2
  %29 = ptrtoint ptr %v_sync_polarity to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %v_sync_polarity, align 1, !range !220
  %31 = shl nuw nsw i8 %30, 1
  %shl33 = zext i8 %31 to i32
  %or34 = or i32 %28, %shl33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !223
  tail call void @arm_heavy_mb() #5
  %32 = tail call i32 @llvm.bswap.i32(i32 %or34)
  %33 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base, align 8
  %add.ptr39 = getelementptr i8, ptr %34, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %32) #5, !srcloc !57
  %35 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base, align 8
  %add.ptr43 = getelementptr i8, ptr %36, i32 68
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !224
  %38 = and i32 %37, -16777217
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %h_sync_polarity = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 9, i32 1
  %40 = ptrtoint ptr %h_sync_polarity to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %h_sync_polarity, align 4, !range !220
  %42 = zext i8 %41 to i32
  %or52 = or i32 %39, %42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !225
  tail call void @arm_heavy_mb() #5
  %43 = tail call i32 @llvm.bswap.i32(i32 %or52)
  %44 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base, align 8
  %add.ptr57 = getelementptr i8, ptr %45, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %43) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !226
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_base, align 8
  %add.ptr62 = getelementptr i8, ptr %47, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 16842752) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_enable_scrambling(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1672
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !227
  %3 = and i32 %2, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !228
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_disable_scrambling(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1672
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !229
  %3 = or i32 %2, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !230
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @analogix_dp_enable_psr_crc(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !231
  tail call void @arm_heavy_mb() #5
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 2192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #5, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_send_psr_spd(ptr noundef %dp, ptr nocapture noundef readonly %vsc, i1 noundef zeroext %blocking) local_unnamed_addr #0 align 64 {
entry:
  %status.i237 = alloca i8, align 1
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1600
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !232
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !233
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr3 = getelementptr i8, ptr %5, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !234
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base, align 8
  %add.ptr8 = getelementptr i8, ptr %7, i32 792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 50331648) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !235
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %vsc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vsc, align 1
  %conv = zext i8 %9 to i32
  %10 = shl nuw i32 %conv, 24
  %11 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base, align 8
  %add.ptr13 = getelementptr i8, ptr %12, i32 760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %10) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !236
  tail call void @arm_heavy_mb() #5
  %HB1 = getelementptr inbounds %struct.dp_sdp_header, ptr %vsc, i32 0, i32 1
  %13 = ptrtoint ptr %HB1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %HB1, align 1
  %conv18 = zext i8 %14 to i32
  %15 = shl nuw i32 %conv18, 24
  %16 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_base, align 8
  %add.ptr20 = getelementptr i8, ptr %17, i32 764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %15) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !237
  tail call void @arm_heavy_mb() #5
  %HB2 = getelementptr inbounds %struct.dp_sdp_header, ptr %vsc, i32 0, i32 2
  %18 = ptrtoint ptr %HB2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %HB2, align 1
  %conv25 = zext i8 %19 to i32
  %20 = shl nuw i32 %conv25, 24
  %21 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base, align 8
  %add.ptr27 = getelementptr i8, ptr %22, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %20) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !238
  tail call void @arm_heavy_mb() #5
  %HB3 = getelementptr inbounds %struct.dp_sdp_header, ptr %vsc, i32 0, i32 3
  %23 = ptrtoint ptr %HB3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %HB3, align 1
  %conv32 = zext i8 %24 to i32
  %25 = shl nuw i32 %conv32, 24
  %26 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_base, align 8
  %add.ptr34 = getelementptr i8, ptr %27, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %25) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !239
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base, align 8
  %add.ptr39 = getelementptr i8, ptr %29, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !240
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base, align 8
  %add.ptr44 = getelementptr i8, ptr %31, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 369098752) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !241
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_base, align 8
  %add.ptr49 = getelementptr i8, ptr %33, i32 784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 -838860800) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !242
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_base, align 8
  %add.ptr54 = getelementptr i8, ptr %35, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 1560281088) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !243
  tail call void @arm_heavy_mb() #5
  %db = getelementptr inbounds %struct.dp_sdp, ptr %vsc, i32 0, i32 1
  %36 = ptrtoint ptr %db to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %db, align 1
  %conv58 = zext i8 %37 to i32
  %38 = shl nuw i32 %conv58, 24
  %39 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_base, align 8
  %add.ptr60 = getelementptr i8, ptr %40, i32 796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %38) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !244
  tail call void @arm_heavy_mb() #5
  %arrayidx65 = getelementptr %struct.dp_sdp, ptr %vsc, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %42 to i32
  %43 = shl nuw i32 %conv66, 24
  %44 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base, align 8
  %add.ptr68 = getelementptr i8, ptr %45, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %43) #5, !srcloc !57
  %46 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_base, align 8
  %add.ptr72 = getelementptr i8, ptr %47, i32 40
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !245
  %49 = or i32 %48, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !246
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_base, align 8
  %add.ptr80 = getelementptr i8, ptr %51, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %49) #5, !srcloc !57
  %52 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_base, align 8
  %add.ptr84 = getelementptr i8, ptr %53, i32 1600
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !247
  %55 = and i32 %54, -285212673
  %56 = or i32 %55, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !248
  tail call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_base, align 8
  %add.ptr94 = getelementptr i8, ptr %58, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %56) #5, !srcloc !57
  %59 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_base, align 8
  %add.ptr98 = getelementptr i8, ptr %60, i32 1600
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !249
  %62 = or i32 %61, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !250
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_base, align 8
  %add.ptr107 = getelementptr i8, ptr %64, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 %62) #5, !srcloc !57
  br i1 %blocking, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call108 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call108, 300000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1015) #5
  %aux.i = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 5
  %dev.i = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.then153, %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #5
  %65 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -1, ptr %status.i, align 1, !annotation !251
  %call.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux.i, i32 noundef 8200, ptr noundef nonnull %status.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %analogix_dp_get_psr_status.exit, label %land.lhs.true

analogix_dp_get_psr_status.exit:                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.23, i32 noundef %call.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #5
  br label %land.lhs.true144

land.lhs.true:                                    ; preds = %for.cond
  %68 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %status.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #5
  %70 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool128.not = icmp ne i8 %71, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %69)
  %cmp130 = icmp eq i8 %69, 2
  %or.cond = select i1 %tobool128.not, i1 %cmp130, i1 false
  br i1 %or.cond, label %land.lhs.true.land.rhs_crit_edge, label %lor.lhs.false

land.lhs.true.land.rhs_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool134.not = icmp eq i8 %71, 0
  br i1 %tobool134.not, label %land.lhs.true135, label %lor.lhs.false.land.lhs.true144_crit_edge

lor.lhs.false.land.lhs.true144_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true144

land.lhs.true135:                                 ; preds = %lor.lhs.false
  %72 = zext i8 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %69, label %land.lhs.true135.land.lhs.true144_crit_edge [
    i8 4, label %land.rhs.thread.loopexit
    i8 0, label %land.lhs.true135.land.rhs.thread_crit_edge
  ]

land.lhs.true135.land.rhs.thread_crit_edge:       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.thread

land.lhs.true135.land.lhs.true144_crit_edge:      ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true144

land.lhs.true144:                                 ; preds = %land.lhs.true135.land.lhs.true144_crit_edge, %lor.lhs.false.land.lhs.true144_crit_edge, %analogix_dp_get_psr_status.exit
  %call145 = call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call145, %add.i
  br i1 %cmp3.i, label %if.then149, label %if.then153

if.then149:                                       ; preds = %land.lhs.true144
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i237) #5
  %73 = ptrtoint ptr %status.i237 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -1, ptr %status.i237, align 1, !annotation !251
  %call.i.i239 = call i32 @drm_dp_dpcd_read(ptr noundef %aux.i, i32 noundef 8200, ptr noundef nonnull %status.i237, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i239)
  %cmp.i240 = icmp slt i32 %call.i.i239, 0
  br i1 %cmp.i240, label %for.end, label %for.end.thread253

for.end.thread253:                                ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %status.i237 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %status.i237, align 1
  %conv.i243 = zext i8 %75 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i237) #5
  br label %land.rhs

if.then153:                                       ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 376, i32 noundef 1500, i32 noundef 2) #5
  br label %for.cond

for.end:                                          ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.23, i32 noundef %call.i.i239) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i237) #5
  br label %do.end180

land.rhs.thread.loopexit:                         ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.thread

land.rhs.thread:                                  ; preds = %land.rhs.thread.loopexit, %land.lhs.true135.land.rhs.thread_crit_edge
  %psr_status.0252.ph = phi i32 [ 4, %land.rhs.thread.loopexit ], [ 0, %land.lhs.true135.land.rhs.thread_crit_edge ]
  %78 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx65, align 1
  br label %lor.rhs

land.rhs:                                         ; preds = %for.end.thread253, %land.lhs.true.land.rhs_crit_edge
  %psr_status.0252 = phi i32 [ %conv.i243, %for.end.thread253 ], [ 2, %land.lhs.true.land.rhs_crit_edge ]
  %80 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool161.not = icmp ne i8 %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %psr_status.0252)
  %cmp163 = icmp eq i32 %psr_status.0252, 2
  %or.cond234 = select i1 %tobool161.not, i1 %cmp163, i1 false
  br i1 %or.cond234, label %land.rhs.cleanup_crit_edge, label %land.rhs.lor.rhs_crit_edge

land.rhs.lor.rhs_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.rhs:                                          ; preds = %land.rhs.lor.rhs_crit_edge, %land.rhs.thread
  %82 = phi i8 [ %79, %land.rhs.thread ], [ %81, %land.rhs.lor.rhs_crit_edge ]
  %psr_status.0252261 = phi i32 [ %psr_status.0252.ph, %land.rhs.thread ], [ %psr_status.0252, %land.rhs.lor.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool167.not = icmp eq i8 %82, 0
  br i1 %tobool167.not, label %land.rhs168, label %lor.rhs.do.end180_crit_edge

lor.rhs.do.end180_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end180

land.rhs168:                                      ; preds = %lor.rhs
  %83 = zext i32 %psr_status.0252261 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %psr_status.0252261, label %land.rhs168.do.end180_crit_edge [
    i32 4, label %land.rhs168.cleanup_crit_edge
    i32 0, label %land.rhs168.cleanup_crit_edge267
  ]

land.rhs168.cleanup_crit_edge267:                 ; preds = %land.rhs168
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs168.cleanup_crit_edge:                    ; preds = %land.rhs168
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs168.do.end180_crit_edge:                  ; preds = %land.rhs168
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end180

do.end180:                                        ; preds = %land.rhs168.do.end180_crit_edge, %lor.rhs.do.end180_crit_edge, %for.end
  %84 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %85, ptr noundef nonnull @.str.12, i32 noundef -110) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end180, %land.rhs168.cleanup_crit_edge, %land.rhs168.cleanup_crit_edge267, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end180 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.rhs168.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %land.rhs168.cleanup_crit_edge267 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @analogix_dp_transfer(ptr nocapture noundef readonly %dp, ptr nocapture noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer1 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %buffer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer1, align 4
  %size = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp ugt i32 %3, 16
  br i1 %cmp, label %do.end, label %if.end22, !prof !252

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1034, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end22:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !253
  tail call void @arm_heavy_mb() #5
  %reg_base = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 8
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2147483648) #5, !srcloc !57
  %request = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %request, align 4
  %conv = zext i8 %7 to i32
  %and = and i8 %7, -5
  %8 = zext i8 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %and, label %if.end22.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb32
    i8 8, label %if.end22.sw.epilog_crit_edge
    i8 9, label %sw.bb41
  ]

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %and28 = and i32 %conv, 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %and35 = and i32 %conv, 4
  %9 = or i32 %and35, 1
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb41, %sw.bb32, %sw.bb, %if.end22.sw.epilog_crit_edge
  %reg.0 = phi i32 [ 9, %sw.bb41 ], [ %and28, %sw.bb ], [ %9, %sw.bb32 ], [ 8, %if.end22.sw.epilog_crit_edge ]
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %sub = shl i32 %11, 4
  %and43 = add i32 %sub, 240
  %shl = and i32 %and43, 240
  %or44 = or i32 %shl, %reg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !254
  tail call void @arm_heavy_mb() #5
  %12 = shl nuw i32 %or44, 24
  %13 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base, align 8
  %add.ptr49 = getelementptr i8, ptr %14, i32 1940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %12) #5, !srcloc !57
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !255
  tail call void @arm_heavy_mb() #5
  %and50 = shl i32 %16, 24
  %17 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base, align 8
  %add.ptr55 = getelementptr i8, ptr %18, i32 1944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %and50) #5, !srcloc !57
  %19 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !256
  tail call void @arm_heavy_mb() #5
  %21 = shl i32 %20, 16
  %and58 = and i32 %21, -16777216
  %22 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base, align 8
  %add.ptr63 = getelementptr i8, ptr %23, i32 1948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %and58) #5, !srcloc !57
  %24 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !257
  tail call void @arm_heavy_mb() #5
  %26 = shl i32 %25, 8
  %27 = and i32 %26, 251658240
  %28 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base, align 8
  %add.ptr71 = getelementptr i8, ptr %29, i32 1952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %27) #5, !srcloc !57
  %30 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %request, align 4
  %32 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool75.not = icmp eq i8 %32, 0
  br i1 %tobool75.not, label %for.cond.preheader, label %sw.epilog.if.end88_crit_edge

sw.epilog.if.end88_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

for.cond.preheader:                               ; preds = %sw.epilog
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp78430.not = icmp eq i32 %34, 0
  br i1 %cmp78430.not, label %for.cond.preheader.if.end88_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end88_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0432 = phi i32 [ %inc87, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %1, i32 %i.0432
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %conv80 = zext i8 %36 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !258
  tail call void @arm_heavy_mb() #5
  %37 = shl nuw i32 %conv80, 24
  %38 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_base, align 8
  %add.ptr85 = getelementptr i8, ptr %39, i32 1984
  %mul = shl i32 %i.0432, 2
  %add.ptr86 = getelementptr i8, ptr %add.ptr85, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %37) #5, !srcloc !57
  %inc87 = add nuw i32 %i.0432, 1
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size, align 4
  %cmp78 = icmp ult i32 %inc87, %41
  br i1 %cmp78, label %for.body.for.body_crit_edge, label %for.body.if.end88_crit_edge

for.body.if.end88_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end88:                                         ; preds = %for.body.if.end88_crit_edge, %for.cond.preheader.if.end88_crit_edge, %sw.epilog.if.end88_crit_edge
  %num_transferred.1 = phi i32 [ 0, %sw.epilog.if.end88_crit_edge ], [ 0, %for.cond.preheader.if.end88_crit_edge ], [ %inc87, %for.body.if.end88_crit_edge ]
  %42 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp90 = icmp eq i32 %43, 0
  %spec.select420 = select i1 %cmp90, i32 50331648, i32 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !259
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_base, align 8
  %add.ptr99 = getelementptr i8, ptr %45, i32 1956
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %spec.select420) #5, !srcloc !57
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1096) #5
  %46 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_base, align 8
  %add.ptr116433 = getelementptr i8, ptr %47, i32 1956
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr116433) #5, !srcloc !59
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !260
  %and120434 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120434)
  %tobool121.not435 = icmp eq i32 %and120434, 0
  br i1 %tobool121.not435, label %if.end88.for.end142_crit_edge, label %if.end88.land.lhs.true_crit_edge

if.end88.land.lhs.true_crit_edge:                 ; preds = %if.end88
  br label %land.lhs.true

if.end88.for.end142_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end142

land.lhs.true:                                    ; preds = %if.then139.land.lhs.true_crit_edge, %if.end88.land.lhs.true_crit_edge
  %call125 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call125, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call125, %add.i
  br i1 %cmp3.i, label %if.then129, label %if.then139

if.then129:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_base, align 8
  %add.ptr133 = getelementptr i8, ptr %51, i32 1956
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr133) #5, !srcloc !59
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !261
  br label %for.end142

if.then139:                                       ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 7, i32 noundef 25, i32 noundef 2) #5
  %54 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_base, align 8
  %add.ptr116 = getelementptr i8, ptr %55, i32 1956
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr116) #5, !srcloc !59
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !260
  %and120 = and i32 %57, 1
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.then139.for.end142_crit_edge, label %if.then139.land.lhs.true_crit_edge

if.then139.land.lhs.true_crit_edge:               ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then139.for.end142_crit_edge:                  ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end142

for.end142:                                       ; preds = %if.then139.for.end142_crit_edge, %if.then129, %if.end88.for.end142_crit_edge
  %reg.2 = phi i32 [ %53, %if.then129 ], [ %49, %if.end88.for.end142_crit_edge ], [ %57, %if.then139.for.end142_crit_edge ]
  %and144 = and i32 %reg.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end153, label %do.end152

do.end152:                                        ; preds = %for.end142
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 1
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.15) #8
  br label %aux_error

if.end153:                                        ; preds = %for.end142
  %call157 = tail call i64 @ktime_get() #5
  %add.i422 = add i64 %call157, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1105) #5
  %60 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_base, align 8
  %add.ptr176437 = getelementptr i8, ptr %61, i32 988
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr176437) #5, !srcloc !59
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  %and180438 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180438)
  %tobool181.not439 = icmp eq i32 %and180438, 0
  br i1 %tobool181.not439, label %if.end153.land.lhs.true185_crit_edge, label %if.end153.for.end204_crit_edge

if.end153.for.end204_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end204

if.end153.land.lhs.true185_crit_edge:             ; preds = %if.end153
  br label %land.lhs.true185

land.lhs.true185:                                 ; preds = %if.then200.land.lhs.true185_crit_edge, %if.end153.land.lhs.true185_crit_edge
  %call186 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call186, i64 %add.i422)
  %cmp3.i424 = icmp sgt i64 %call186, %add.i422
  br i1 %cmp3.i424, label %if.then190, label %if.then200

if.then190:                                       ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_base, align 8
  %add.ptr194 = getelementptr i8, ptr %65, i32 988
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr194) #5, !srcloc !59
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !263
  br label %for.end204

if.then200:                                       ; preds = %land.lhs.true185
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %68 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_base, align 8
  %add.ptr176 = getelementptr i8, ptr %69, i32 988
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr176) #5, !srcloc !59
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  %and180 = and i32 %71, 2
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %if.then200.land.lhs.true185_crit_edge, label %if.then200.for.end204_crit_edge

if.then200.for.end204_crit_edge:                  ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end204

if.then200.land.lhs.true185_crit_edge:            ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true185

for.end204:                                       ; preds = %if.then200.for.end204_crit_edge, %if.then190, %if.end153.for.end204_crit_edge
  %reg.3 = phi i32 [ %67, %if.then190 ], [ %63, %if.end153.for.end204_crit_edge ], [ %71, %if.then200.for.end204_crit_edge ]
  %and206 = and i32 %reg.3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206)
  %tobool207.not = icmp eq i32 %and206, 0
  br i1 %tobool207.not, label %do.end213, label %do.body216

do.end213:                                        ; preds = %for.end204
  call void @__sanitizer_cov_trace_pc() #7
  %dev214 = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 1
  %72 = ptrtoint ptr %dev214 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev214, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.18) #8
  br label %aux_error

do.body216:                                       ; preds = %for.end204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !264
  tail call void @arm_heavy_mb() #5
  %74 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg_base, align 8
  %add.ptr220 = getelementptr i8, ptr %75, i32 988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr220, i32 33554432) #5, !srcloc !57
  %76 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg_base, align 8
  %add.ptr224 = getelementptr i8, ptr %77, i32 988
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr224) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !265
  %79 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_base, align 8
  %add.ptr231 = getelementptr i8, ptr %80, i32 1920
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr231) #5, !srcloc !59
  %82 = lshr i32 %81, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !266
  %83 = and i32 %78, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool236.not = icmp eq i32 %83, 0
  %and237 = and i32 %82, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %tobool238.not = icmp eq i32 %and237, 0
  %or.cond = select i1 %tobool236.not, i1 %tobool238.not, i1 false
  br i1 %or.cond, label %if.end256, label %do.body240

do.body240:                                       ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !267
  tail call void @arm_heavy_mb() #5
  %84 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg_base, align 8
  %add.ptr244 = getelementptr i8, ptr %85, i32 988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr244, i32 16777216) #5, !srcloc !57
  %dev248 = getelementptr inbounds %struct.analogix_dp_device, ptr %dp, i32 0, i32 1
  %86 = ptrtoint ptr %dev248 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev248, align 4
  %.lobit = lshr exact i32 %83, 24
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %87, ptr noundef nonnull @.str.21, i32 noundef %and237, i32 noundef %.lobit) #8
  br label %aux_error

if.end256:                                        ; preds = %do.body216
  %88 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %request, align 4
  %90 = and i8 %89, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool260.not = icmp eq i8 %90, 0
  br i1 %tobool260.not, label %if.end256.if.end282_crit_edge, label %for.cond262.preheader

if.end256.if.end282_crit_edge:                    ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end282

for.cond262.preheader:                            ; preds = %if.end256
  %91 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp264441.not = icmp eq i32 %92, 0
  br i1 %cmp264441.not, label %for.cond262.preheader.if.end282_crit_edge, label %for.cond262.preheader.for.body266_crit_edge

for.cond262.preheader.for.body266_crit_edge:      ; preds = %for.cond262.preheader
  br label %for.body266

for.cond262.preheader.if.end282_crit_edge:        ; preds = %for.cond262.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end282

for.body266:                                      ; preds = %for.body266.for.body266_crit_edge, %for.cond262.preheader.for.body266_crit_edge
  %i.1443 = phi i32 [ %inc280, %for.body266.for.body266_crit_edge ], [ 0, %for.cond262.preheader.for.body266_crit_edge ]
  %num_transferred.2442 = phi i32 [ %inc278, %for.body266.for.body266_crit_edge ], [ %num_transferred.1, %for.cond262.preheader.for.body266_crit_edge ]
  %93 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg_base, align 8
  %add.ptr270 = getelementptr i8, ptr %94, i32 1984
  %mul271 = shl i32 %i.1443, 2
  %add.ptr272 = getelementptr i8, ptr %add.ptr270, i32 %mul271
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr272) #5, !srcloc !59
  %96 = lshr i32 %95, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !268
  %conv276 = trunc i32 %96 to i8
  %arrayidx277 = getelementptr i8, ptr %1, i32 %i.1443
  %97 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv276, ptr %arrayidx277, align 1
  %inc278 = add i32 %num_transferred.2442, 1
  %inc280 = add nuw i32 %i.1443, 1
  %98 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %size, align 4
  %cmp264 = icmp ult i32 %inc280, %99
  br i1 %cmp264, label %for.body266.for.body266_crit_edge, label %for.body266.if.end282_crit_edge

for.body266.if.end282_crit_edge:                  ; preds = %for.body266
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end282

for.body266.for.body266_crit_edge:                ; preds = %for.body266
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body266

if.end282:                                        ; preds = %for.body266.if.end282_crit_edge, %for.cond262.preheader.if.end282_crit_edge, %if.end256.if.end282_crit_edge
  %num_transferred.3 = phi i32 [ %num_transferred.1, %if.end256.if.end282_crit_edge ], [ %num_transferred.1, %for.cond262.preheader.if.end282_crit_edge ], [ %inc278, %for.body266.if.end282_crit_edge ]
  %100 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %reg_base, align 8
  %add.ptr286 = getelementptr i8, ptr %101, i32 1932
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr286) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !269
  %103 = zext i32 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %102, label %if.else297 [
    i32 33554432, label %if.end282.if.end328.sink.split_crit_edge
    i32 134217728, label %if.then295
  ]

if.end282.if.end328.sink.split_crit_edge:         ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end328.sink.split

if.then295:                                       ; preds = %if.end282
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end328.sink.split

if.else297:                                       ; preds = %if.end282
  %104 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %request, align 4
  %106 = and i8 %105, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %106)
  %107 = icmp ult i8 %106, 10
  br i1 %107, label %switch.hole_check, label %if.else297.if.end328_crit_edge

if.else297.if.end328_crit_edge:                   ; preds = %if.else297
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end328

switch.hole_check:                                ; preds = %if.else297
  %switch.maskindex = zext i8 %106 to i16
  %switch.shifted = lshr i16 771, %switch.maskindex
  %108 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %switch.lobit.not = icmp eq i16 %108, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end328_crit_edge, label %switch.hole_check.if.end328.sink.split_crit_edge

switch.hole_check.if.end328.sink.split_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end328.sink.split

switch.hole_check.if.end328_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end328

if.end328.sink.split:                             ; preds = %switch.hole_check.if.end328.sink.split_crit_edge, %if.then295, %if.end282.if.end328.sink.split_crit_edge
  %.sink = phi i8 [ 8, %if.then295 ], [ 2, %if.end282.if.end328.sink.split_crit_edge ], [ 0, %switch.hole_check.if.end328.sink.split_crit_edge ]
  %reply296 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 2
  %109 = ptrtoint ptr %reply296 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %.sink, ptr %reply296, align 1
  br label %if.end328

if.end328:                                        ; preds = %if.end328.sink.split, %switch.hole_check.if.end328_crit_edge, %if.else297.if.end328_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_transferred.3)
  %cmp329 = icmp sgt i32 %num_transferred.3, 0
  %spec.select421 = select i1 %cmp329, i32 %num_transferred.3, i32 -16
  br label %cleanup

aux_error:                                        ; preds = %do.body240, %do.end213, %do.end152
  tail call void @analogix_dp_init_aux(ptr noundef %dp)
  br label %cleanup

cleanup:                                          ; preds = %aux_error, %if.end328, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -7, %do.end ], [ -121, %aux_error ], [ %spec.select421, %if.end328 ], [ -22, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !18, !19, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c", i32 377, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @analogix_dp_init_analog_func._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @analogix_dp_init_analog_func._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c", i32 774, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @analogix_dp_is_slave_video_stream_clock_on.__UNIQUE_ID_ddebug306, !9, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c", i32 782, i32 2}
!15 = !{ptr @analogix_dp_is_slave_video_stream_clock_on.__UNIQUE_ID_ddebug307, !14, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c", i32 785, i32 3}
!18 = !{ptr @analogix_dp_is_slave_video_stream_clock_on.__UNIQUE_ID_ddebug308, !17, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c", i32 876, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @analogix_dp_is_video_stream_on.__UNIQUE_ID_ddebug309, !20, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c", i32 1017, i32 3}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @analogix_dp_send_psr_spd._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @analogix_dp_send_psr_spd._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c", i32 1098, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @analogix_dp_transfer._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @analogix_dp_transfer._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c", i32 1107, i32 3}
!36 = !{ptr @analogix_dp_transfer._entry.17, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @analogix_dp_transfer._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c", i32 1120, i32 3}
!40 = !{ptr @analogix_dp_transfer._entry.20, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @analogix_dp_transfer._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c", i32 945, i32 3}
!44 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @analogix_dp_get_psr_status._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @analogix_dp_get_psr_status._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 2156538409}
!57 = !{i64 4833646}
!58 = !{i64 2156539317}
!59 = !{i64 4834064}
!60 = !{i64 2156539993}
!61 = !{i64 2156540225}
!62 = !{i64 2156540713}
!63 = !{i64 2156541125}
!64 = !{i64 2156541548}
!65 = !{i64 2156541969}
!66 = !{i64 2156542370}
!67 = !{i64 2156542775}
!68 = !{i64 2156543180}
!69 = !{i64 2156543585}
!70 = !{i64 2156544011}
!71 = !{i64 2156544456}
!72 = !{i64 2156544903}
!73 = !{i64 2156545346}
!74 = !{i64 2156545808}
!75 = !{i64 2156546213}
!76 = !{i64 2156546618}
!77 = !{i64 2156547023}
!78 = !{i64 2156547428}
!79 = !{i64 2156547833}
!80 = !{i64 2156548238}
!81 = !{i64 2156548643}
!82 = !{i64 2156549048}
!83 = !{i64 2156549453}
!84 = !{i64 2156549954}
!85 = !{i64 2156550396}
!86 = !{i64 2156550796}
!87 = !{i64 2156551198}
!88 = !{i64 2156551602}
!89 = !{i64 2156552003}
!90 = !{i64 2156552404}
!91 = !{i64 2156552805}
!92 = !{i64 2156553207}
!93 = !{i64 2156553612}
!94 = !{i64 2156554017}
!95 = !{i64 2156554421}
!96 = !{i64 2156554822}
!97 = !{i64 2156555224}
!98 = !{i64 2156555628}
!99 = !{i64 2156556029}
!100 = !{i64 2156556437}
!101 = !{i64 2156556875}
!102 = !{i64 2156557298}
!103 = !{i64 2156557701}
!104 = !{i64 2156558104}
!105 = !{i64 2156558570}
!106 = !{i64 2156558990}
!107 = !{i64 2156559672}
!108 = !{i64 2156559960}
!109 = !{i64 2156560642}
!110 = !{i64 2156560884}
!111 = !{i64 2156561350}
!112 = !{i64 2156561770}
!113 = !{i64 2156562452}
!114 = !{i64 2156563003}
!115 = !{i64 2156563222}
!116 = !{i64 2156563958}
!117 = !{i64 2156564181}
!118 = !{i64 2156564898}
!119 = !{i64 2156565121}
!120 = !{i64 2156565838}
!121 = !{i64 2156566061}
!122 = !{i64 2156566778}
!123 = !{i64 2156567001}
!124 = !{i64 2156567718}
!125 = !{i64 2156567941}
!126 = !{i64 2156568669}
!127 = !{i64 2156568892}
!128 = !{i64 2156570138}
!129 = !{i64 2156570546}
!130 = !{i64 2156570967}
!131 = !{i64 2156571649}
!132 = !{i64 2156571894}
!133 = !{i64 2156574253}
!134 = !{i64 2156574507}
!135 = !{i64 2156574940}
!136 = !{i64 2156575352}
!137 = !{i64 2156576034}
!138 = !{i64 2156576279}
!139 = !{i64 2156576961}
!140 = !{i64 2156577206}
!141 = !{i64 2156577888}
!142 = !{i64 2156578420}
!143 = !{i64 2156578652}
!144 = !{i64 2156579074}
!145 = !{i64 2156579528}
!146 = !{i64 2156579962}
!147 = !{i64 2156580639}
!148 = !{i64 2156580871}
!149 = !{i64 2156581552}
!150 = !{i64 2156582065}
!151 = !{i64 2156582297}
!152 = !{i64 2156582707}
!153 = !{i64 2156583389}
!154 = !{i64 2156583612}
!155 = !{i64 2156584294}
!156 = !{i64 2156585032}
!157 = !{i64 2156585948}
!158 = !{i64 2156586371}
!159 = !{i64 2156586794}
!160 = !{i64 2156587217}
!161 = !{i64 2156587640}
!162 = !{i64 2156588074}
!163 = !{i64 2156588756}
!164 = !{i64 2156588994}
!165 = !{i64 2156589676}
!166 = !{i64 2156589914}
!167 = !{i64 2156590596}
!168 = !{i64 2156590834}
!169 = !{i64 2156591516}
!170 = !{i64 2156591754}
!171 = !{i64 2156592155}
!172 = !{i64 2156592556}
!173 = !{i64 2156592957}
!174 = !{i64 2156593358}
!175 = !{i64 2156594040}
!176 = !{i64 2156594544}
!177 = !{i64 2156595048}
!178 = !{i64 2156595552}
!179 = !{i64 2156596056}
!180 = !{i64 2156596290}
!181 = !{i64 2156596702}
!182 = !{i64 2156597136}
!183 = !{i64 2156597537}
!184 = !{i64 2156597970}
!185 = !{i64 2156598371}
!186 = !{i64 2156598812}
!187 = !{i64 2156599222}
!188 = !{i64 2156599898}
!189 = !{i64 2156600152}
!190 = !{i64 2156600833}
!191 = !{i64 2156601056}
!192 = !{i64 2156601738}
!193 = !{i64 2148785539, i64 2148785544, i64 2148785557, i64 2148785601, i64 2148785635, i64 2148785656}
!194 = !{i64 2156604614}
!195 = !{i64 2156604837}
!196 = !{i64 2156605519}
!197 = !{i64 2156610798}
!198 = !{i64 2156611199}
!199 = !{i64 2156611600}
!200 = !{i64 2156612001}
!201 = !{i64 2156612402}
!202 = !{i64 2156612803}
!203 = !{i64 2156613204}
!204 = !{i64 2156614120}
!205 = !{i64 2156614522}
!206 = !{i64 2156614927}
!207 = !{i64 2156615332}
!208 = !{i64 2156616244}
!209 = !{i64 2156617152}
!210 = !{i64 2156618089}
!211 = !{i64 2156619016}
!212 = !{i64 2156619693}
!213 = !{i64 2156619925}
!214 = !{i64 2156620606}
!215 = !{i64 2156620829}
!216 = !{i64 2156621511}
!217 = !{i64 2156624409}
!218 = !{i64 2156624685}
!219 = !{i64 2156625361}
!220 = !{i8 0, i8 2}
!221 = !{i64 2156625593}
!222 = !{i64 2156626269}
!223 = !{i64 2156626501}
!224 = !{i64 2156627177}
!225 = !{i64 2156627409}
!226 = !{i64 2156627831}
!227 = !{i64 2156628513}
!228 = !{i64 2156628747}
!229 = !{i64 2156629429}
!230 = !{i64 2156629663}
!231 = !{i64 2156630082}
!232 = !{i64 2156632465}
!233 = !{i64 2156632699}
!234 = !{i64 2156633142}
!235 = !{i64 2156633619}
!236 = !{i64 2156634084}
!237 = !{i64 2156634549}
!238 = !{i64 2156635014}
!239 = !{i64 2156635464}
!240 = !{i64 2156635869}
!241 = !{i64 2156636274}
!242 = !{i64 2156636679}
!243 = !{i64 2156637090}
!244 = !{i64 2156637519}
!245 = !{i64 2156638217}
!246 = !{i64 2156638449}
!247 = !{i64 2156639130}
!248 = !{i64 2156639375}
!249 = !{i64 2156640057}
!250 = !{i64 2156640291}
!251 = !{!"auto-init"}
!252 = !{!"branch_weights", i32 1, i32 2000}
!253 = !{i64 2156644238}
!254 = !{i64 2156644813}
!255 = !{i64 2156645247}
!256 = !{i64 2156645681}
!257 = !{i64 2156646116}
!258 = !{i64 2156646539}
!259 = !{i64 2156646980}
!260 = !{i64 2156648704}
!261 = !{i64 2156649202}
!262 = !{i64 2156652350}
!263 = !{i64 2156652848}
!264 = !{i64 2156654732}
!265 = !{i64 2156655435}
!266 = !{i64 2156655939}
!267 = !{i64 2156656202}
!268 = !{i64 2156658790}
!269 = !{i64 2156659294}
