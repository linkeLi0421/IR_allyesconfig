; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/camss/camss-vfe-4-1.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/camss/camss-vfe-4-1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vfe_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vfe_isr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vfe_hw_ops_gen1 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.camss_video_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vfe_device = type { ptr, i8, ptr, i32, [30 x i8], ptr, i32, %struct.completion, %struct.completion, %struct.mutex, i32, %struct.mutex, i32, %struct.spinlock, [7 x i32], [4 x %struct.vfe_line], i8, i32, i8, ptr, ptr, %struct.vfe_isr_ops, %struct.camss_video_ops }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.vfe_line = type { i32, %struct.v4l2_subdev, [2 x %struct.media_pad], [2 x %struct.v4l2_mbus_framefmt], %struct.v4l2_rect, %struct.v4l2_rect, %struct.camss_video, %struct.vfe_output, ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.camss_video = type { ptr, %struct.vb2_queue, %struct.video_device, %struct.media_pad, %struct.v4l2_format, i32, %struct.media_pipeline, ptr, %struct.mutex, %struct.mutex, i32, i32, ptr, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.v4l2_format = type { i32, %union.anon.95 }
%union.anon.95 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.vfe_output = type { i8, [3 x i8], [2 x ptr], ptr, %struct.list_head, i32, %union.anon.98, i32, i32, i32, %struct.completion, %struct.completion }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { i32, i32 }
%struct.camss = type { i32, %struct.v4l2_device, %struct.v4l2_async_notifier, %struct.media_device, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, %struct.atomic_t, [3 x ptr], [3 x ptr] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@vfe_ops_4_1 = dso_local constant { %struct.vfe_hw_ops, [40 x i8] } { %struct.vfe_hw_ops { ptr null, ptr @vfe_global_reset, ptr @vfe_hw_version, ptr @vfe_isr, ptr @vfe_isr_read, ptr @vfe_pm_domain_off, ptr @vfe_pm_domain_on, ptr @vfe_reg_update, ptr @vfe_reg_update_clear, ptr @vfe_subdev_init, ptr @vfe_gen1_disable, ptr @vfe_gen1_enable, ptr @vfe_gen1_halt, ptr @vfe_violation_read }, [40 x i8] zeroinitializer }, align 32
@vfe_hw_version.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom_camss\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vfe_hw_version\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/media/platform/qcom/camss/camss-vfe-4-1.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VFE HW Version = 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@vfe_isr.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vfe_isr\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"VFE: status0 = 0x%08x, status1 = 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@vfe_isr_ops_gen1 = external dso_local local_unnamed_addr constant %struct.vfe_isr_ops, align 4
@vfe_ops_gen1_4_1 = internal constant { %struct.vfe_hw_ops_gen1, [56 x i8] } { %struct.vfe_hw_ops_gen1 { ptr @vfe_bus_connect_wm_to_rdi, ptr @vfe_bus_disconnect_wm_from_rdi, ptr @vfe_bus_enable_wr_if, ptr @vfe_bus_reload_wm, ptr @vfe_camif_wait_for_stop, ptr @vfe_enable_irq_common, ptr @vfe_enable_irq_wm_line, ptr @vfe_enable_irq_pix_line, ptr @vfe_get_ub_size, ptr @vfe_halt_clear, ptr @vfe_halt_request, ptr @vfe_set_camif_cfg, ptr @vfe_set_camif_cmd, ptr @vfe_set_cgc_override, ptr @vfe_set_clamp_cfg, ptr @vfe_set_crop_cfg, ptr @vfe_set_demux_cfg, ptr @vfe_set_ds, ptr @vfe_set_module_cfg, ptr @vfe_set_scale_cfg, ptr @vfe_set_rdi_cid, ptr @vfe_set_realign_cfg, ptr @vfe_set_qos, ptr @vfe_set_xbar_cfg, ptr @vfe_wm_frame_based, ptr @vfe_wm_line_based, ptr @vfe_wm_set_ub_cfg, ptr @vfe_wm_set_subsample, ptr @vfe_wm_set_framedrop_period, ptr @vfe_wm_set_framedrop_pattern, ptr @vfe_wm_set_ping_addr, ptr @vfe_wm_set_pong_addr, ptr @vfe_wm_get_ping_pong_status, ptr @vfe_wm_enable }, [56 x i8] zeroinitializer }, align 32
@vfe_video_ops_gen1 = external dso_local local_unnamed_addr constant %struct.camss_video_ops, align 4
@vfe_camif_wait_for_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 858, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: camif stop timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vfe_camif_wait_for_stop\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vfe_camif_wait_for_stop._entry_ptr = internal global ptr @vfe_camif_wait_for_stop._entry, section ".printk_index", align 4
@vfe_violation_read._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vfe_violation_read = private unnamed_addr constant [19 x i8] c"vfe_violation_read\00", align 1
@vfe_violation_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.vfe_violation_read, ptr @.str.2, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013VFE: violation = 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@vfe_violation_read._entry_ptr = internal global ptr @vfe_violation_read._entry, section ".printk_index", align 4
@switch.table.vfe_set_camif_cfg = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 117440512, i32 67108864, i32 83886080], [20 x i8] zeroinitializer }, align 32
@switch.table.vfe_set_demux_cfg = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 51913, i32 40108, i32 44188], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 825382478, i64 842094158]
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"vfe_ops_4_1\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 999, i32 25 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 217, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 897, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"vfe_ops_gen1_4_1\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 953, i32 37 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 858, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [53 x i8] c"../drivers/media/platform/qcom/camss/camss-vfe-4-1.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 879, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [31 x i8] c"switch.table.vfe_set_camif_cfg\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [31 x i8] c"switch.table.vfe_set_demux_cfg\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @vfe_camif_wait_for_stop._entry, ptr @vfe_camif_wait_for_stop._entry_ptr, ptr @vfe_violation_read._entry, ptr @vfe_violation_read._entry_ptr, ptr @vfe_ops_4_1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @vfe_ops_gen1_4_1, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @vfe_violation_read._rs, ptr @.str.10, ptr @.str.11, ptr @switch.table.vfe_set_camif_cfg, ptr @switch.table.vfe_set_demux_cfg], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_ops_4_1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_ops_gen1_4_1 to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_camif_wait_for_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_violation_read._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_violation_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfe_set_camif_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfe_set_demux_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_global_reset(ptr nocapture noundef readonly %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16711680) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_hw_version(ptr nocapture noundef readonly %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !38
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfe_hw_version.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfe_hw_version, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !39

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfe, align 8
  %dev = getelementptr inbounds %struct.camss, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vfe_hw_version.__UNIQUE_ID_ddebug298, ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_isr(i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  %value0 = alloca i32, align 4
  %value1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value0) #8
  %0 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value0, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value1) #8
  %1 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %value1, align 4, !annotation !40
  %ops = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %isr_read = getelementptr inbounds %struct.vfe_hw_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %isr_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %isr_read, align 4
  call void %5(ptr noundef %dev, ptr noundef nonnull %value0, ptr noundef nonnull %value1) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfe_isr.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfe_isr, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !39

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %dev3 = getelementptr inbounds %struct.camss, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 8
  %10 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value0, align 4
  %12 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vfe_isr.__UNIQUE_ID_ddebug299, ptr noundef %9, ptr noundef nonnull @.str.5, i32 noundef %11, i32 noundef %13) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %14 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool4.not = icmp sgt i32 %15, -1
  br i1 %tobool4.not, label %do.end.if.end6_crit_edge, label %if.then5

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %isr_ops = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 21
  %16 = ptrtoint ptr %isr_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %isr_ops, align 4
  call void %17(ptr noundef %dev) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end.if.end6_crit_edge
  %18 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value1, align 4
  %and7 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %violation_read = getelementptr inbounds %struct.vfe_hw_ops, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %violation_read to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %violation_read, align 4
  call void %23(ptr noundef %dev) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %24 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value1, align 4
  %and12 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %halt_ack = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 21, i32 1
  %26 = ptrtoint ptr %halt_ack to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %halt_ack, align 4
  call void %27(ptr noundef %dev) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %reg_update = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 21, i32 2
  %28 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value0, align 4
  %and18 = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.for.inc_crit_edge, label %if.then20

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %reg_update to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_update, align 4
  call void %31(ptr noundef %dev, i32 noundef 0) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %if.end16.for.inc_crit_edge
  %32 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value0, align 4
  %and18.1 = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.1)
  %tobool19.not.1 = icmp eq i32 %and18.1, 0
  br i1 %tobool19.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then20.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then20.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %reg_update to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_update, align 4
  call void %35(ptr noundef %dev, i32 noundef 1) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then20.1, %for.inc.for.inc.1_crit_edge
  %36 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %value0, align 4
  %and18.2 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.2)
  %tobool19.not.2 = icmp eq i32 %and18.2, 0
  br i1 %tobool19.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then20.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then20.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %reg_update to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_update, align 4
  call void %39(ptr noundef %dev, i32 noundef 2) #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then20.2, %for.inc.1.for.inc.2_crit_edge
  %40 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %value0, align 4
  %and18.3 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.3)
  %tobool19.not.3 = icmp eq i32 %and18.3, 0
  br i1 %tobool19.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then20.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then20.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %reg_update to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_update, align 4
  call void %43(ptr noundef %dev, i32 noundef 3) #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then20.3, %for.inc.2.for.inc.3_crit_edge
  %44 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %value0, align 4
  %and23 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %for.inc.3.if.end27_crit_edge, label %if.then25

for.inc.3.if.end27_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %sof = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 21, i32 3
  %46 = ptrtoint ptr %sof to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sof, align 4
  call void %47(ptr noundef %dev, i32 noundef 3) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.inc.3.if.end27_crit_edge
  %sof37 = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 21, i32 3
  %48 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %value1, align 4
  %and33 = and i32 %49, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end27.for.inc39_crit_edge, label %if.then35

if.end27.for.inc39_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39

if.then35:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %sof37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sof37, align 4
  call void %51(ptr noundef %dev, i32 noundef 0) #8
  br label %for.inc39

for.inc39:                                        ; preds = %if.then35, %if.end27.for.inc39_crit_edge
  %52 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %value1, align 4
  %and33.1 = and i32 %53, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.1)
  %tobool34.not.1 = icmp eq i32 %and33.1, 0
  br i1 %tobool34.not.1, label %for.inc39.for.inc39.1_crit_edge, label %if.then35.1

for.inc39.for.inc39.1_crit_edge:                  ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.1

if.then35.1:                                      ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %sof37 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sof37, align 4
  call void %55(ptr noundef %dev, i32 noundef 1) #8
  %56 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr = load i32, ptr %value1, align 4
  br label %for.inc39.1

for.inc39.1:                                      ; preds = %if.then35.1, %for.inc39.for.inc39.1_crit_edge
  %57 = phi i32 [ %.pr, %if.then35.1 ], [ %53, %for.inc39.for.inc39.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %tobool34.not.2 = icmp sgt i32 %57, -1
  br i1 %tobool34.not.2, label %for.inc39.1.for.inc39.2_crit_edge, label %if.then35.2

for.inc39.1.for.inc39.2_crit_edge:                ; preds = %for.inc39.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc39.2

if.then35.2:                                      ; preds = %for.inc39.1
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %sof37 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sof37, align 4
  call void %59(ptr noundef %dev, i32 noundef 2) #8
  br label %for.inc39.2

for.inc39.2:                                      ; preds = %if.then35.2, %for.inc39.1.for.inc39.2_crit_edge
  %comp_done = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 21, i32 4
  %arrayidx = getelementptr %struct.vfe_device, ptr %dev, i32 0, i32 14, i32 0
  %arrayidx.1 = getelementptr %struct.vfe_device, ptr %dev, i32 0, i32 14, i32 1
  %arrayidx.2 = getelementptr %struct.vfe_device, ptr %dev, i32 0, i32 14, i32 2
  %arrayidx.3 = getelementptr %struct.vfe_device, ptr %dev, i32 0, i32 14, i32 3
  %arrayidx.4 = getelementptr %struct.vfe_device, ptr %dev, i32 0, i32 14, i32 4
  %arrayidx.5 = getelementptr %struct.vfe_device, ptr %dev, i32 0, i32 14, i32 5
  %arrayidx.6 = getelementptr %struct.vfe_device, ptr %dev, i32 0, i32 14, i32 6
  br label %for.body44

for.cond69.preheader:                             ; preds = %for.inc66
  %wm_done = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 21, i32 5
  %60 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %value0, align 4
  %and75 = and i32 %61, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %for.cond69.preheader.for.inc81_crit_edge, label %if.then77

for.cond69.preheader.for.inc81_crit_edge:         ; preds = %for.cond69.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81

for.body44:                                       ; preds = %for.inc66.for.body44_crit_edge, %for.inc39.2
  %i.2132 = phi i32 [ 0, %for.inc39.2 ], [ %inc67, %for.inc66.for.body44_crit_edge ]
  %62 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %value0, align 4
  %shl46 = shl i32 33554432, %i.2132
  %and47 = and i32 %63, %shl46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %for.body44.for.inc66_crit_edge, label %if.then49

for.body44.for.inc66_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc66

if.then49:                                        ; preds = %for.body44
  %64 = ptrtoint ptr %comp_done to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %comp_done, align 4
  %conv = trunc i32 %i.2132 to i8
  call void %65(ptr noundef %dev, i8 noundef zeroext %conv) #8
  %66 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %value0.promoted = load i32, ptr %value0, align 4
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %cmp55 = icmp eq i32 %68, 3
  br i1 %cmp55, label %if.then57, label %if.then49.for.inc62_crit_edge

if.then49.for.inc62_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc62

if.then57:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %and60 = and i32 %value0.promoted, -257
  %69 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and60, ptr %value0, align 4
  br label %for.inc62

for.inc62:                                        ; preds = %if.then57, %if.then49.for.inc62_crit_edge
  %and60127 = phi i32 [ %value0.promoted, %if.then49.for.inc62_crit_edge ], [ %and60, %if.then57 ]
  %70 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %71)
  %cmp55.1 = icmp eq i32 %71, 3
  br i1 %cmp55.1, label %if.then57.1, label %for.inc62.for.inc62.1_crit_edge

for.inc62.for.inc62.1_crit_edge:                  ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc62.1

if.then57.1:                                      ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #10
  %and60.1 = and i32 %and60127, -513
  %72 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and60.1, ptr %value0, align 4
  br label %for.inc62.1

for.inc62.1:                                      ; preds = %if.then57.1, %for.inc62.for.inc62.1_crit_edge
  %and60127.1 = phi i32 [ %and60127, %for.inc62.for.inc62.1_crit_edge ], [ %and60.1, %if.then57.1 ]
  %73 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %74)
  %cmp55.2 = icmp eq i32 %74, 3
  br i1 %cmp55.2, label %if.then57.2, label %for.inc62.1.for.inc62.2_crit_edge

for.inc62.1.for.inc62.2_crit_edge:                ; preds = %for.inc62.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc62.2

if.then57.2:                                      ; preds = %for.inc62.1
  call void @__sanitizer_cov_trace_pc() #10
  %and60.2 = and i32 %and60127.1, -1025
  %75 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %and60.2, ptr %value0, align 4
  br label %for.inc62.2

for.inc62.2:                                      ; preds = %if.then57.2, %for.inc62.1.for.inc62.2_crit_edge
  %and60127.2 = phi i32 [ %and60127.1, %for.inc62.1.for.inc62.2_crit_edge ], [ %and60.2, %if.then57.2 ]
  %76 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %77)
  %cmp55.3 = icmp eq i32 %77, 3
  br i1 %cmp55.3, label %if.then57.3, label %for.inc62.2.for.inc62.3_crit_edge

for.inc62.2.for.inc62.3_crit_edge:                ; preds = %for.inc62.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc62.3

if.then57.3:                                      ; preds = %for.inc62.2
  call void @__sanitizer_cov_trace_pc() #10
  %and60.3 = and i32 %and60127.2, -2049
  %78 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %and60.3, ptr %value0, align 4
  br label %for.inc62.3

for.inc62.3:                                      ; preds = %if.then57.3, %for.inc62.2.for.inc62.3_crit_edge
  %and60127.3 = phi i32 [ %and60127.2, %for.inc62.2.for.inc62.3_crit_edge ], [ %and60.3, %if.then57.3 ]
  %79 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %80)
  %cmp55.4 = icmp eq i32 %80, 3
  br i1 %cmp55.4, label %if.then57.4, label %for.inc62.3.for.inc62.4_crit_edge

for.inc62.3.for.inc62.4_crit_edge:                ; preds = %for.inc62.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc62.4

if.then57.4:                                      ; preds = %for.inc62.3
  call void @__sanitizer_cov_trace_pc() #10
  %and60.4 = and i32 %and60127.3, -4097
  %81 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and60.4, ptr %value0, align 4
  br label %for.inc62.4

for.inc62.4:                                      ; preds = %if.then57.4, %for.inc62.3.for.inc62.4_crit_edge
  %and60127.4 = phi i32 [ %and60127.3, %for.inc62.3.for.inc62.4_crit_edge ], [ %and60.4, %if.then57.4 ]
  %82 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %83)
  %cmp55.5 = icmp eq i32 %83, 3
  br i1 %cmp55.5, label %if.then57.5, label %for.inc62.4.for.inc62.5_crit_edge

for.inc62.4.for.inc62.5_crit_edge:                ; preds = %for.inc62.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc62.5

if.then57.5:                                      ; preds = %for.inc62.4
  call void @__sanitizer_cov_trace_pc() #10
  %and60.5 = and i32 %and60127.4, -8193
  %84 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and60.5, ptr %value0, align 4
  br label %for.inc62.5

for.inc62.5:                                      ; preds = %if.then57.5, %for.inc62.4.for.inc62.5_crit_edge
  %and60127.5 = phi i32 [ %and60127.4, %for.inc62.4.for.inc62.5_crit_edge ], [ %and60.5, %if.then57.5 ]
  %85 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %86)
  %cmp55.6 = icmp eq i32 %86, 3
  br i1 %cmp55.6, label %if.then57.6, label %for.inc62.5.for.inc66_crit_edge

for.inc62.5.for.inc66_crit_edge:                  ; preds = %for.inc62.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc66

if.then57.6:                                      ; preds = %for.inc62.5
  call void @__sanitizer_cov_trace_pc() #10
  %and60.6 = and i32 %and60127.5, -16385
  %87 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and60.6, ptr %value0, align 4
  br label %for.inc66

for.inc66:                                        ; preds = %if.then57.6, %for.inc62.5.for.inc66_crit_edge, %for.body44.for.inc66_crit_edge
  %inc67 = add nuw nsw i32 %i.2132, 1
  %exitcond.not = icmp eq i32 %inc67, 4
  br i1 %exitcond.not, label %for.cond69.preheader, label %for.inc66.for.body44_crit_edge

for.inc66.for.body44_crit_edge:                   ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44

if.then77:                                        ; preds = %for.cond69.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %wm_done, align 4
  call void %89(ptr noundef %dev, i8 noundef zeroext 0) #8
  br label %for.inc81

for.inc81:                                        ; preds = %if.then77, %for.cond69.preheader.for.inc81_crit_edge
  %90 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %value0, align 4
  %and75.1 = and i32 %91, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.1)
  %tobool76.not.1 = icmp eq i32 %and75.1, 0
  br i1 %tobool76.not.1, label %for.inc81.for.inc81.1_crit_edge, label %if.then77.1

for.inc81.for.inc81.1_crit_edge:                  ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81.1

if.then77.1:                                      ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %wm_done, align 4
  call void %93(ptr noundef %dev, i8 noundef zeroext 1) #8
  br label %for.inc81.1

for.inc81.1:                                      ; preds = %if.then77.1, %for.inc81.for.inc81.1_crit_edge
  %94 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %value0, align 4
  %and75.2 = and i32 %95, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.2)
  %tobool76.not.2 = icmp eq i32 %and75.2, 0
  br i1 %tobool76.not.2, label %for.inc81.1.for.inc81.2_crit_edge, label %if.then77.2

for.inc81.1.for.inc81.2_crit_edge:                ; preds = %for.inc81.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81.2

if.then77.2:                                      ; preds = %for.inc81.1
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wm_done, align 4
  call void %97(ptr noundef %dev, i8 noundef zeroext 2) #8
  br label %for.inc81.2

for.inc81.2:                                      ; preds = %if.then77.2, %for.inc81.1.for.inc81.2_crit_edge
  %98 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %value0, align 4
  %and75.3 = and i32 %99, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.3)
  %tobool76.not.3 = icmp eq i32 %and75.3, 0
  br i1 %tobool76.not.3, label %for.inc81.2.for.inc81.3_crit_edge, label %if.then77.3

for.inc81.2.for.inc81.3_crit_edge:                ; preds = %for.inc81.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81.3

if.then77.3:                                      ; preds = %for.inc81.2
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %wm_done, align 4
  call void %101(ptr noundef %dev, i8 noundef zeroext 3) #8
  br label %for.inc81.3

for.inc81.3:                                      ; preds = %if.then77.3, %for.inc81.2.for.inc81.3_crit_edge
  %102 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %value0, align 4
  %and75.4 = and i32 %103, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.4)
  %tobool76.not.4 = icmp eq i32 %and75.4, 0
  br i1 %tobool76.not.4, label %for.inc81.3.for.inc81.4_crit_edge, label %if.then77.4

for.inc81.3.for.inc81.4_crit_edge:                ; preds = %for.inc81.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81.4

if.then77.4:                                      ; preds = %for.inc81.3
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %wm_done, align 4
  call void %105(ptr noundef %dev, i8 noundef zeroext 4) #8
  br label %for.inc81.4

for.inc81.4:                                      ; preds = %if.then77.4, %for.inc81.3.for.inc81.4_crit_edge
  %106 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %value0, align 4
  %and75.5 = and i32 %107, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.5)
  %tobool76.not.5 = icmp eq i32 %and75.5, 0
  br i1 %tobool76.not.5, label %for.inc81.4.for.inc81.5_crit_edge, label %if.then77.5

for.inc81.4.for.inc81.5_crit_edge:                ; preds = %for.inc81.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81.5

if.then77.5:                                      ; preds = %for.inc81.4
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %wm_done, align 4
  call void %109(ptr noundef %dev, i8 noundef zeroext 5) #8
  br label %for.inc81.5

for.inc81.5:                                      ; preds = %if.then77.5, %for.inc81.4.for.inc81.5_crit_edge
  %110 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %value0, align 4
  %and75.6 = and i32 %111, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.6)
  %tobool76.not.6 = icmp eq i32 %and75.6, 0
  br i1 %tobool76.not.6, label %for.inc81.5.for.inc81.6_crit_edge, label %if.then77.6

for.inc81.5.for.inc81.6_crit_edge:                ; preds = %for.inc81.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81.6

if.then77.6:                                      ; preds = %for.inc81.5
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %wm_done, align 4
  call void %113(ptr noundef %dev, i8 noundef zeroext 6) #8
  br label %for.inc81.6

for.inc81.6:                                      ; preds = %if.then77.6, %for.inc81.5.for.inc81.6_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value0) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_isr_read(ptr nocapture noundef readonly %vfe, ptr nocapture noundef %value0, ptr nocapture noundef %value1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 56
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !38
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value0, align 4
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 8
  %add.ptr3 = getelementptr i8, ptr %6, i32 60
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !38
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value1, align 4
  %10 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value0, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 8
  %add.ptr7 = getelementptr i8, ptr %14, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %12) #8, !srcloc !37
  %15 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value1, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 8
  %add.ptr9 = getelementptr i8, ptr %19, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %17) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 8
  %add.ptr11 = getelementptr i8, ptr %21, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 16777216) #8, !srcloc !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vfe_pm_domain_off(ptr nocapture noundef %vfe) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vfe_pm_domain_on(ptr nocapture noundef readnone %vfe) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_reg_update(ptr nocapture noundef %vfe, i32 noundef %line_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %line_id)
  %cmp = icmp eq i32 %line_id, 3
  %add = add i32 %line_id, 1
  %shl = shl nuw i32 1, %add
  %cond = select i1 %cmp, i32 1, i32 %shl
  %reg_update = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 17
  %0 = ptrtoint ptr %reg_update to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_update, align 4
  %or = or i32 %1, %cond
  store i32 %or, ptr %reg_update, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %reg_update to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_update, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @arm_heavy_mb() #8
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vfe_reg_update_clear(ptr nocapture noundef %vfe, i32 noundef %line_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %line_id)
  %cmp = icmp eq i32 %line_id, 3
  %add = add i32 %line_id, 1
  %shl = shl nuw i32 1, %add
  %phi.bo = xor i32 %shl, -1
  %cond = select i1 %cmp, i32 -2, i32 %phi.bo
  %reg_update = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 17
  %0 = ptrtoint ptr %reg_update to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_update, align 4
  %and = and i32 %1, %cond
  store i32 %and, ptr %reg_update, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vfe_subdev_init(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %vfe) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %isr_ops = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 21
  %0 = call ptr @memcpy(ptr %isr_ops, ptr @vfe_isr_ops_gen1, i32 24)
  %ops_gen1 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 20
  %1 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @vfe_ops_gen1_4_1, ptr %ops_gen1, align 8
  %video_ops = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 22
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr @vfe_video_ops_gen1 to i32), i32 8)
  %2 = load i64, ptr @vfe_video_ops_gen1, align 4
  %3 = ptrtoint ptr %video_ops to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %2, ptr %video_ops, align 4
  %line_num = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 16
  %4 = ptrtoint ptr %line_num to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %line_num, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfe_gen1_disable(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfe_gen1_enable(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfe_gen1_halt(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_violation_read(ptr nocapture noundef readonly %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !38
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @vfe_violation_read._rs, ptr noundef nonnull @__func__.vfe_violation_read) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_bus_connect_wm_to_rdi(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %wm, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %id, 16
  %shl = shl nuw i32 1, %add
  %base.i = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 744
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !38
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  %or = or i32 %shl, %3
  %or.i = or i32 %or, 3
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %6, i32 744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %4) #8, !srcloc !37
  %shl1 = mul i32 %id, 805306368
  %or2 = or i32 %shl1, 4
  %mul3 = shl i32 %id, 2
  %add4 = add i32 %mul3, 744
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 8
  %add.ptr.i27 = getelementptr i8, ptr %8, i32 %add4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #8, !srcloc !38
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %or.i28 = or i32 %10, %or2
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i28) #8
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 8
  %add.ptr2.i29 = getelementptr i8, ptr %13, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i29, i32 %11) #8, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %id)
  %switch.selectcmp = icmp eq i32 %id, 1
  %switch.select = select i1 %switch.selectcmp, i32 1536, i32 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id)
  %switch.selectcmp24 = icmp eq i32 %id, 2
  %switch.select25 = select i1 %switch.selectcmp24, i32 1792, i32 %switch.select
  %conv = zext i8 %wm to i32
  %rem = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  %shl8 = shl nuw nsw i32 %switch.select25, 16
  %reg.1 = select i1 %cmp.not, i32 %switch.select25, i32 %shl8
  %14 = shl nuw nsw i32 %conv, 1
  %mul10 = and i32 %14, 508
  %add11 = add nuw nsw i32 %mul10, 88
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 8
  %add.ptr.i31 = getelementptr i8, ptr %16, i32 %add11
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #8, !srcloc !38
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %or.i32 = or i32 %18, %reg.1
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i32) #8
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 8
  %add.ptr2.i33 = getelementptr i8, ptr %21, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i33, i32 %19) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_bus_disconnect_wm_from_rdi(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %wm, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %id, 16
  %shl = shl nuw i32 1, %add
  %base.i = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 744
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !38
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %3, %neg.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %6, i32 744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %4) #8, !srcloc !37
  %mul = shl i32 %id, 2
  %add1 = add i32 %mul, 744
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 8
  %add.ptr.i21 = getelementptr i8, ptr %8, i32 %add1
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #8, !srcloc !38
  %10 = and i32 %9, -67108865
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 8
  %add.ptr2.i23 = getelementptr i8, ptr %12, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i23, i32 %10) #8, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %id)
  %switch.selectcmp = icmp eq i32 %id, 1
  %switch.select = select i1 %switch.selectcmp, i32 1536, i32 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id)
  %switch.selectcmp18 = icmp eq i32 %id, 2
  %switch.select19 = select i1 %switch.selectcmp18, i32 1792, i32 %switch.select
  %conv = zext i8 %wm to i32
  %rem = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  %shl5 = shl nuw nsw i32 %switch.select19, 16
  %reg.1 = select i1 %cmp.not, i32 %switch.select19, i32 %shl5
  %13 = shl nuw nsw i32 %conv, 1
  %mul7 = and i32 %13, 508
  %add8 = add nuw nsw i32 %mul7, 88
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 8
  %add.ptr.i25 = getelementptr i8, ptr %15, i32 %add8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #8, !srcloc !38
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %neg.i26 = xor i32 %reg.1, -1
  %and.i27 = and i32 %17, %neg.i26
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i27) #8
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 8
  %add.ptr2.i28 = getelementptr i8, ptr %20, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i28, i32 %18) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_bus_enable_wr_if(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %base1 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 8
  %add.ptr2 = getelementptr i8, ptr %1, i32 80
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 150994960) #8, !srcloc !37
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #8, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_bus_reload_wm(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %wm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  tail call void @arm_heavy_mb() #8
  %conv = zext i8 %wm to i32
  %shl = shl nuw i32 1, %conv
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !45
  tail call void @arm_heavy_mb() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_camif_wait_for_stop(ptr nocapture noundef readonly %vfe, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 856) #8
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr48 = getelementptr i8, ptr %1, i32 796
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #8, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  %.mask49 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask49)
  %tobool.not50 = icmp eq i32 %.mask49, 0
  br i1 %tobool.not50, label %entry.land.lhs.true_crit_edge, label %entry.if.end36_crit_edge

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #8
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 796
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  %.mask = and i32 %5, 128
  %tobool.not = icmp eq i32 %.mask, 0
  br i1 %tobool.not, label %if.then26.land.lhs.true_crit_edge, label %if.then26.if.end36_crit_edge

if.then26.if.end36_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %add.ptr20 = getelementptr i8, ptr %7, i32 796
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #8, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  %.mask46 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask46)
  %tobool30.not.inv.not = icmp eq i32 %.mask46, 0
  br i1 %tobool30.not.inv.not, label %do.end35, label %for.end.if.end36_crit_edge

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #11
  br label %if.end36

if.end36:                                         ; preds = %do.end35, %for.end.if.end36_crit_edge, %if.then26.if.end36_crit_edge, %entry.if.end36_crit_edge
  %cond = phi i32 [ -110, %do.end35 ], [ 0, %for.end.if.end36_crit_edge ], [ 0, %entry.if.end36_crit_edge ], [ 0, %if.then26.if.end36_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_enable_irq_common(ptr nocapture noundef readonly %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !38
  %3 = or i32 %2, 128
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #8, !srcloc !37
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %7, i32 44
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #8, !srcloc !38
  %9 = or i32 %8, -2147418112
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 8
  %add.ptr2.i5 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i5, i32 %9) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_enable_irq_wm_line(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %wm, i32 noundef %line_id, i8 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %wm to i32
  %shl = shl i32 256, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %line_id)
  %cmp = icmp eq i32 %line_id, 3
  %add2 = add i32 %line_id, 5
  %shl3 = shl nuw i32 1, %add2
  %cond = select i1 %cmp, i32 16, i32 %shl3
  %or = or i32 %cond, %shl
  %shl6 = shl i32 512, %conv
  %add7 = add i32 %line_id, 29
  %shl8 = shl nuw i32 1, %add7
  %or9 = or i32 %shl8, %shl6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %base.i22 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i22, align 8
  %add.ptr.i23 = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %3, %or
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %5 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i22, align 8
  %add.ptr2.i = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %4) #8, !srcloc !37
  %7 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i22, align 8
  %add.ptr.i19 = getelementptr i8, ptr %8, i32 44
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #8, !srcloc !38
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %or.i20 = or i32 %10, %or9
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i20) #8
  %12 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i22, align 8
  %add.ptr2.i21 = getelementptr i8, ptr %13, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i21, i32 %11) #8, !srcloc !37
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i = xor i32 %or, -1
  %and.i = and i32 %3, %neg.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %15 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i22, align 8
  %add.ptr2.i24 = getelementptr i8, ptr %16, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i24, i32 %14) #8, !srcloc !37
  %17 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i22, align 8
  %add.ptr.i26 = getelementptr i8, ptr %18, i32 44
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #8, !srcloc !38
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %neg.i27 = xor i32 %or9, -1
  %and.i28 = and i32 %20, %neg.i27
  %21 = tail call i32 @llvm.bswap.i32(i32 %and.i28) #8
  %22 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i22, align 8
  %add.ptr2.i29 = getelementptr i8, ptr %23, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i29, i32 %21) #8, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_enable_irq_pix_line(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %comp, i32 noundef %line_id, i8 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %output1 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7
  %conv = zext i8 %comp to i32
  %shl = shl i32 33554432, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %line_id)
  %cmp = icmp eq i32 %line_id, 3
  %add4 = add i32 %line_id, 5
  %shl5 = shl nuw i32 1, %add4
  %cond = select i1 %cmp, i32 16, i32 %shl5
  %or2 = or i32 %shl, %cond
  %or6 = or i32 %or2, 3
  %0 = ptrtoint ptr %output1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %output1, align 4
  %conv7 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp865.not = icmp eq i8 %1, 0
  br i1 %cmp865.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mul = shl nuw nsw i32 %conv, 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %comp_mask.068 = phi i32 [ 0, %for.body.lr.ph ], [ %or21, %for.body.for.body_crit_edge ]
  %irq_en1.067 = phi i32 [ 1, %for.body.lr.ph ], [ %or14, %for.body.for.body_crit_edge ]
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx10 = getelementptr %struct.vfe_device, ptr %vfe, i32 0, i32 15, i32 %line_id, i32 7, i32 1, i32 %i.066
  %2 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %3 to i32
  %shl13 = shl i32 512, %conv11
  %or14 = or i32 %shl13, %irq_en1.067
  %shl18 = shl nuw i32 1, %conv11
  %shl20 = shl i32 %shl18, %mul
  %or21 = or i32 %shl20, %comp_mask.068
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, %conv7
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %irq_en1.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %or14, %for.body.for.end_crit_edge ]
  %comp_mask.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or21, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %base.i52 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %4 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i52, align 8
  %add.ptr.i53 = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %7, %or6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %9 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i52, align 8
  %add.ptr2.i = getelementptr i8, ptr %10, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %8) #8, !srcloc !37
  %11 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i52, align 8
  %add.ptr.i45 = getelementptr i8, ptr %12, i32 44
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #8, !srcloc !38
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %or.i46 = or i32 %14, %irq_en1.0.lcssa
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i46) #8
  %16 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i52, align 8
  %add.ptr2.i47 = getelementptr i8, ptr %17, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i47, i32 %15) #8, !srcloc !37
  %18 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i52, align 8
  %add.ptr.i49 = getelementptr i8, ptr %19, i32 64
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #8, !srcloc !38
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  %or.i50 = or i32 %21, %comp_mask.0.lcssa
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i50) #8
  %23 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i52, align 8
  %add.ptr2.i51 = getelementptr i8, ptr %24, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i51, i32 %22) #8, !srcloc !37
  br label %if.end

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i = xor i32 %or6, -1
  %and.i = and i32 %7, %neg.i
  %25 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %26 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i52, align 8
  %add.ptr2.i54 = getelementptr i8, ptr %27, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i54, i32 %25) #8, !srcloc !37
  %28 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i52, align 8
  %add.ptr.i56 = getelementptr i8, ptr %29, i32 44
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #8, !srcloc !38
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  %neg.i57 = xor i32 %irq_en1.0.lcssa, -1
  %and.i58 = and i32 %31, %neg.i57
  %32 = tail call i32 @llvm.bswap.i32(i32 %and.i58) #8
  %33 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i52, align 8
  %add.ptr2.i59 = getelementptr i8, ptr %34, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i59, i32 %32) #8, !srcloc !37
  %35 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i52, align 8
  %add.ptr.i61 = getelementptr i8, ptr %36, i32 64
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #8, !srcloc !38
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  %neg.i62 = xor i32 %comp_mask.0.lcssa, -1
  %and.i63 = and i32 %38, %neg.i62
  %39 = tail call i32 @llvm.bswap.i32(i32 %and.i63) #8
  %40 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i52, align 8
  %add.ptr2.i64 = getelementptr i8, ptr %41, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i64, i32 %39) #8, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @vfe_get_ub_size(i8 noundef zeroext %vfe_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vfe_id)
  %cmp = icmp eq i8 %vfe_id, 0
  %. = select i1 %cmp, i16 341, i16 0
  ret i16 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_halt_clear(ptr nocapture noundef readonly %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_halt_request(ptr nocapture noundef readonly %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 704
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_set_camif_cfg(ptr nocapture noundef readonly %vfe, ptr nocapture noundef readonly %line) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %code = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 3, i32 0, i32 2
  %0 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %code, align 8
  %switch.tableidx = add i32 %1, -8199
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.vfe_set_camif_cfg, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ %switch.load, %switch.lookup ], [ 100663296, %entry.sw.epilog_crit_edge ]
  %fmt = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 3
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %val.0) #8, !srcloc !37
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt, align 8
  %mul = shl i32 %7, 1
  %height = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %shl = shl i32 %9, 16
  %or = or i32 %shl, %mul
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 8
  %add.ptr9 = getelementptr i8, ptr %12, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %10) #8, !srcloc !37
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt, align 8
  %mul13 = shl i32 %14, 1
  %sub = add i32 %mul13, -1
  %15 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 8
  %add.ptr15 = getelementptr i8, ptr %17, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %15) #8, !srcloc !37
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %sub19 = add i32 %19, -1
  %20 = tail call i32 @llvm.bswap.i32(i32 %sub19)
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 8
  %add.ptr21 = getelementptr i8, ptr %22, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %20) #8, !srcloc !37
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 8
  %add.ptr23 = getelementptr i8, ptr %24, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 -1) #8, !srcloc !37
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 8
  %add.ptr25 = getelementptr i8, ptr %26, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 -1) #8, !srcloc !37
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 8
  %add.ptr.i = getelementptr i8, ptr %28, i32 744
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !38
  %30 = or i32 %29, 50331648
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 8
  %add.ptr2.i = getelementptr i8, ptr %32, i32 744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %30) #8, !srcloc !37
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 8
  %add.ptr27 = getelementptr i8, ptr %34, i32 760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 1073741824) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_set_camif_cmd(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 117440512) #8, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %. = select i1 %tobool.not, i32 0, i32 16777216
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %.) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_set_cgc_override(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %wm, i8 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %wm to i32
  %shl = shl nuw i32 1, %conv
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %base.i3 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base.i3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i3, align 8
  %add.ptr.i4 = getelementptr i8, ptr %1, i32 2420
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %3, %shl
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %5 = ptrtoint ptr %base.i3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i3, align 8
  %add.ptr2.i = getelementptr i8, ptr %6, i32 2420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %4) #8, !srcloc !37
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %3, %neg.i
  %7 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %8 = ptrtoint ptr %base.i3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i3, align 8
  %add.ptr2.i5 = getelementptr i8, ptr %9, i32 2420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i5, i32 %7) #8, !srcloc !37
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @arm_heavy_mb() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_set_clamp_cfg(ptr nocapture noundef readonly %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 2164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -256) #8, !srcloc !37
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 2168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_set_crop_cfg(ptr nocapture noundef readonly %vfe, ptr nocapture noundef readonly %line) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 6, i32 4, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %crop = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 5
  %2 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crop, align 8
  %width = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %add = add i32 %3, 65535
  %conv4 = add i32 %add, %5
  %shl = shl i32 %3, 16
  %conv6 = and i32 %conv4, 65535
  %or = or i32 %conv6, %shl
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 2132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !37
  %top = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %top, align 4
  %height = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %add12 = add i32 %10, 65535
  %conv14 = add i32 %add12, %12
  %shl16 = shl i32 %10, 16
  %conv17 = and i32 %conv14, 65535
  %or18 = or i32 %conv17, %shl16
  %13 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 8
  %add.ptr20 = getelementptr i8, ptr %15, i32 2136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %13) #8, !srcloc !37
  %16 = ptrtoint ptr %crop to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crop, align 8
  %div = sdiv i32 %17, 2
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 8
  %div2999 = lshr i32 %19, 1
  %add30 = add nsw i32 %div, 65535
  %conv32 = add i32 %add30, %div2999
  %shl34 = shl i32 %div, 16
  %conv35 = and i32 %conv32, 65535
  %or36 = or i32 %conv35, %shl34
  %20 = tail call i32 @llvm.bswap.i32(i32 %or36)
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 8
  %add.ptr38 = getelementptr i8, ptr %22, i32 2140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %20) #8, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %1)
  %cmp = icmp eq i32 %1, 842094158
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %23 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %top, align 4
  %25 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height, align 4
  %add46 = add i32 %24, 65535
  %conv48 = add i32 %add46, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 825382478, i32 %1)
  %cmp50 = icmp eq i32 %1, 825382478
  br i1 %cmp50, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %27 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %top, align 4
  %div54 = sdiv i32 %28, 2
  %29 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %height, align 4
  %div61100 = lshr i32 %30, 1
  %add62 = add nsw i32 %div54, -1
  %sub63 = add i32 %add62, %div61100
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %first.0.in = phi i32 [ %div54, %if.then ], [ %24, %lor.lhs.false.if.end_crit_edge ]
  %last.0 = phi i32 [ %sub63, %if.then ], [ %conv48, %lor.lhs.false.if.end_crit_edge ]
  %shl66 = shl i32 %first.0.in, 16
  %conv67 = and i32 %last.0, 65535
  %or68 = or i32 %conv67, %shl66
  %31 = tail call i32 @llvm.bswap.i32(i32 %or68)
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 8
  %add.ptr70 = getelementptr i8, ptr %33, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %31) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_set_demux_cfg(ptr nocapture noundef readonly %vfe, ptr nocapture noundef readonly %line) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #8, !srcloc !37
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -2147450880) #8, !srcloc !37
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add.ptr4 = getelementptr i8, ptr %5, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -2147450880) #8, !srcloc !37
  %code = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 3, i32 0, i32 2
  %6 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code, align 8
  %switch.tableidx = add i32 %7, -8199
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 3
  br i1 %8, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.vfe_set_demux_cfg, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %odd_cfg.0 = phi i32 [ %switch.load, %switch.lookup ], [ 51658, %entry.sw.epilog_crit_edge ]
  %10 = tail call i32 @llvm.bswap.i32(i32 %odd_cfg.0)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 8
  %add.ptr9 = getelementptr i8, ptr %12, i32 1080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %10) #8, !srcloc !37
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 8
  %add.ptr11 = getelementptr i8, ptr %14, i32 1084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %10) #8, !srcloc !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vfe_set_ds(ptr nocapture noundef %vfe) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_set_module_cfg(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %base1 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 8
  %add.ptr2 = getelementptr i8, ptr %1, i32 24
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 201359368) #8, !srcloc !37
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #8, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_set_scale_cfg(ptr nocapture noundef readonly %vfe, ptr nocapture noundef readonly %line) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 6, i32 4, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 1884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #8, !srcloc !37
  %fmt1 = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 3
  %4 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt1, align 8
  %conv = trunc i32 %5 to i16
  %width2 = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width2, align 8
  %conv3 = trunc i32 %7 to i16
  %conv4 = and i32 %7, 65535
  %shl = shl i32 %7, 16
  %conv5 = and i32 %5, 65535
  %or = or i32 %shl, %conv5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 8
  %add.ptr7 = getelementptr i8, ptr %10, i32 1888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %8) #8, !srcloc !37
  %11 = udiv i16 %conv, %conv3
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %11)
  %cmp.i = icmp ugt i16 %11, 15
  br i1 %cmp.i, label %entry.vfe_calc_interp_reso.exit_crit_edge, label %if.end.i

entry.vfe_calc_interp_reso.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_calc_interp_reso.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %11)
  %cmp6.i = icmp ugt i16 %11, 7
  br i1 %cmp6.i, label %if.end.i.vfe_calc_interp_reso.exit_crit_edge, label %if.end9.i

if.end.i.vfe_calc_interp_reso.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_calc_interp_reso.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %11)
  %cmp13.i = icmp ugt i16 %11, 3
  %phi.cast = select i1 %cmp13.i, i32 2, i32 3
  br label %vfe_calc_interp_reso.exit

vfe_calc_interp_reso.exit:                        ; preds = %if.end9.i, %if.end.i.vfe_calc_interp_reso.exit_crit_edge, %entry.vfe_calc_interp_reso.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.vfe_calc_interp_reso.exit_crit_edge ], [ 1, %if.end.i.vfe_calc_interp_reso.exit_crit_edge ], [ %phi.cast, %if.end9.i ]
  %shl10 = shl nuw nsw i32 8192, %retval.0.i
  %mul = mul nuw i32 %shl10, %conv5
  %div = sdiv i32 %mul, %conv4
  %shl13 = shl nuw nsw i32 %retval.0.i, 20
  %or14 = or i32 %shl13, %div
  %12 = tail call i32 @llvm.bswap.i32(i32 %or14)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 8
  %add.ptr16 = getelementptr i8, ptr %14, i32 1892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %12) #8, !srcloc !37
  %height = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 3, i32 0, i32 1
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %conv19 = trunc i32 %16 to i16
  %height21 = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 4, i32 3
  %17 = ptrtoint ptr %height21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height21, align 4
  %conv22 = trunc i32 %18 to i16
  %conv23 = and i32 %18, 65535
  %shl24 = shl i32 %18, 16
  %conv25 = and i32 %16, 65535
  %or26 = or i32 %shl24, %conv25
  %19 = tail call i32 @llvm.bswap.i32(i32 %or26)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 8
  %add.ptr28 = getelementptr i8, ptr %21, i32 1900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %19) #8, !srcloc !37
  %22 = udiv i16 %conv19, %conv22
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %22)
  %cmp.i164 = icmp ugt i16 %22, 15
  br i1 %cmp.i164, label %vfe_calc_interp_reso.exit.vfe_calc_interp_reso.exit171_crit_edge, label %if.end.i166

vfe_calc_interp_reso.exit.vfe_calc_interp_reso.exit171_crit_edge: ; preds = %vfe_calc_interp_reso.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_calc_interp_reso.exit171

if.end.i166:                                      ; preds = %vfe_calc_interp_reso.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %22)
  %cmp6.i165 = icmp ugt i16 %22, 7
  br i1 %cmp6.i165, label %if.end.i166.vfe_calc_interp_reso.exit171_crit_edge, label %if.end9.i169

if.end.i166.vfe_calc_interp_reso.exit171_crit_edge: ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_calc_interp_reso.exit171

if.end9.i169:                                     ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %22)
  %cmp13.i167 = icmp ugt i16 %22, 3
  %phi.cast188 = select i1 %cmp13.i167, i32 2, i32 3
  br label %vfe_calc_interp_reso.exit171

vfe_calc_interp_reso.exit171:                     ; preds = %if.end9.i169, %if.end.i166.vfe_calc_interp_reso.exit171_crit_edge, %vfe_calc_interp_reso.exit.vfe_calc_interp_reso.exit171_crit_edge
  %retval.0.i170 = phi i32 [ 0, %vfe_calc_interp_reso.exit.vfe_calc_interp_reso.exit171_crit_edge ], [ 1, %if.end.i166.vfe_calc_interp_reso.exit171_crit_edge ], [ %phi.cast188, %if.end9.i169 ]
  %shl33 = shl nuw nsw i32 8192, %retval.0.i170
  %mul34 = mul nuw i32 %shl33, %conv25
  %div36 = sdiv i32 %mul34, %conv23
  %shl38 = shl nuw nsw i32 %retval.0.i170, 20
  %or39 = or i32 %shl38, %div36
  %23 = tail call i32 @llvm.bswap.i32(i32 %or39)
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 8
  %add.ptr41 = getelementptr i8, ptr %25, i32 1904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %23) #8, !srcloc !37
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 8
  %add.ptr43 = getelementptr i8, ptr %27, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 50331648) #8, !srcloc !37
  %28 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fmt1, align 8
  %conv47 = trunc i32 %29 to i16
  %30 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width2, align 8
  %div50162 = lshr i32 %31, 1
  %conv51 = trunc i32 %div50162 to i16
  %conv52 = and i32 %div50162, 65535
  %shl53 = shl i32 %div50162, 16
  %conv54 = and i32 %29, 65535
  %or55 = or i32 %shl53, %conv54
  %32 = tail call i32 @llvm.bswap.i32(i32 %or55)
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 8
  %add.ptr57 = getelementptr i8, ptr %34, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %32) #8, !srcloc !37
  %35 = udiv i16 %conv47, %conv51
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %35)
  %cmp.i172 = icmp ugt i16 %35, 15
  br i1 %cmp.i172, label %vfe_calc_interp_reso.exit171.vfe_calc_interp_reso.exit179_crit_edge, label %if.end.i174

vfe_calc_interp_reso.exit171.vfe_calc_interp_reso.exit179_crit_edge: ; preds = %vfe_calc_interp_reso.exit171
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_calc_interp_reso.exit179

if.end.i174:                                      ; preds = %vfe_calc_interp_reso.exit171
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %35)
  %cmp6.i173 = icmp ugt i16 %35, 7
  br i1 %cmp6.i173, label %if.end.i174.vfe_calc_interp_reso.exit179_crit_edge, label %if.end9.i177

if.end.i174.vfe_calc_interp_reso.exit179_crit_edge: ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_calc_interp_reso.exit179

if.end9.i177:                                     ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %35)
  %cmp13.i175 = icmp ugt i16 %35, 3
  %phi.cast189 = select i1 %cmp13.i175, i32 2, i32 3
  br label %vfe_calc_interp_reso.exit179

vfe_calc_interp_reso.exit179:                     ; preds = %if.end9.i177, %if.end.i174.vfe_calc_interp_reso.exit179_crit_edge, %vfe_calc_interp_reso.exit171.vfe_calc_interp_reso.exit179_crit_edge
  %retval.0.i178 = phi i32 [ 0, %vfe_calc_interp_reso.exit171.vfe_calc_interp_reso.exit179_crit_edge ], [ 1, %if.end.i174.vfe_calc_interp_reso.exit179_crit_edge ], [ %phi.cast189, %if.end9.i177 ]
  %shl62 = shl nuw nsw i32 8192, %retval.0.i178
  %mul63 = mul nuw i32 %shl62, %conv54
  %div65 = sdiv i32 %mul63, %conv52
  %shl67 = shl nuw nsw i32 %retval.0.i178, 20
  %or68 = or i32 %shl67, %div65
  %36 = tail call i32 @llvm.bswap.i32(i32 %or68)
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 8
  %add.ptr70 = getelementptr i8, ptr %38, i32 1920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %36) #8, !srcloc !37
  %39 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %1)
  %cmp = icmp eq i32 %1, 842094158
  br i1 %cmp, label %vfe_calc_interp_reso.exit179.if.then_crit_edge, label %lor.lhs.false

vfe_calc_interp_reso.exit179.if.then_crit_edge:   ; preds = %vfe_calc_interp_reso.exit179
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %vfe_calc_interp_reso.exit179
  %41 = ptrtoint ptr %height21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %height21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825382478, i32 %1)
  %cmp79 = icmp eq i32 %1, 825382478
  br i1 %cmp79, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %vfe_calc_interp_reso.exit179.if.then_crit_edge
  %43 = ptrtoint ptr %height21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height21, align 4
  %div83163 = lshr i32 %44, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %output.0.in = phi i32 [ %div83163, %if.then ], [ %42, %lor.lhs.false.if.end_crit_edge ]
  %output.0 = trunc i32 %output.0.in to i16
  %conv74 = trunc i32 %40 to i16
  %shl86 = shl i32 %output.0.in, 16
  %conv87 = and i32 %40, 65535
  %or88 = or i32 %shl86, %conv87
  %45 = tail call i32 @llvm.bswap.i32(i32 %or88)
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 8
  %add.ptr90 = getelementptr i8, ptr %47, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %45) #8, !srcloc !37
  %48 = udiv i16 %conv74, %output.0
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %48)
  %cmp.i180 = icmp ugt i16 %48, 15
  br i1 %cmp.i180, label %if.end.vfe_calc_interp_reso.exit187_crit_edge, label %if.end.i182

if.end.vfe_calc_interp_reso.exit187_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_calc_interp_reso.exit187

if.end.i182:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %48)
  %cmp6.i181 = icmp ugt i16 %48, 7
  br i1 %cmp6.i181, label %if.end.i182.vfe_calc_interp_reso.exit187_crit_edge, label %if.end9.i185

if.end.i182.vfe_calc_interp_reso.exit187_crit_edge: ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_calc_interp_reso.exit187

if.end9.i185:                                     ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %48)
  %cmp13.i183 = icmp ugt i16 %48, 3
  %phi.cast190 = select i1 %cmp13.i183, i32 2, i32 3
  br label %vfe_calc_interp_reso.exit187

vfe_calc_interp_reso.exit187:                     ; preds = %if.end9.i185, %if.end.i182.vfe_calc_interp_reso.exit187_crit_edge, %if.end.vfe_calc_interp_reso.exit187_crit_edge
  %retval.0.i186 = phi i32 [ 0, %if.end.vfe_calc_interp_reso.exit187_crit_edge ], [ 1, %if.end.i182.vfe_calc_interp_reso.exit187_crit_edge ], [ %phi.cast190, %if.end9.i185 ]
  %conv85 = and i32 %output.0.in, 65535
  %shl95 = shl nuw nsw i32 8192, %retval.0.i186
  %mul96 = mul nuw i32 %shl95, %conv87
  %div98 = sdiv i32 %mul96, %conv85
  %shl100 = shl nuw nsw i32 %retval.0.i186, 20
  %or101 = or i32 %shl100, %div98
  %49 = tail call i32 @llvm.bswap.i32(i32 %or101)
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 8
  %add.ptr103 = getelementptr i8, ptr %51, i32 1940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %49) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_set_rdi_cid(ptr nocapture noundef readonly %vfe, i32 noundef %id, i8 noundef zeroext %cid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %id, 2
  %add = add i32 %mul, 744
  %base.i = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !38
  %3 = and i32 %2, 268435455
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #8, !srcloc !37
  %conv = zext i8 %cid to i32
  %shl = shl nuw nsw i32 %conv, 4
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #8, !srcloc !38
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %or.i = or i32 %9, %shl
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 8
  %add.ptr2.i7 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i7, i32 %10) #8, !srcloc !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vfe_set_realign_cfg(ptr nocapture noundef %vfe, ptr nocapture noundef %line, i8 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_set_qos(ptr nocapture noundef readonly %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 708
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1515543126) #8, !srcloc !37
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 712
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -1515543126) #8, !srcloc !37
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add.ptr4 = getelementptr i8, ptr %5, i32 716
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -1515543126) #8, !srcloc !37
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %add.ptr6 = getelementptr i8, ptr %7, i32 720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -1515543126) #8, !srcloc !37
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  %add.ptr8 = getelementptr i8, ptr %9, i32 724
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -1515543126) #8, !srcloc !37
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 8
  %add.ptr10 = getelementptr i8, ptr %11, i32 728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 -1515543126) #8, !srcloc !37
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 8
  %add.ptr12 = getelementptr i8, ptr %13, i32 732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 -1515543126) #8, !srcloc !37
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 8
  %add.ptr14 = getelementptr i8, ptr %15, i32 736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 -1515585280) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_set_xbar_cfg(ptr nocapture noundef readonly %vfe, ptr nocapture noundef readonly %output, i8 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %output to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %output, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp51.not = icmp eq i8 %1, 0
  br i1 %cmp51.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pixelformat = getelementptr i8, ptr %output, i32 -548
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %4 = add i32 %3, -842094158
  %switch.and = and i32 %4, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %5 = select i1 %switch.selectcmp, i32 50, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %base.i = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = zext i32 %i.052 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.052, label %for.body.for.end_crit_edge [
    i32 0, label %for.body.if.end14_crit_edge
    i32 1, label %if.then6
  ]

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %for.body.if.end14_crit_edge
  %reg.0 = phi i32 [ %i.052, %for.body.if.end14_crit_edge ], [ %5, %if.then6 ]
  %arrayidx = getelementptr %struct.vfe_output, ptr %output, i32 0, i32 1, i32 %i.052
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp16.not = icmp eq i8 %9, 0
  %shl = shl nuw nsw i32 %reg.0, 16
  %spec.select = select i1 %cmp16.not, i32 %reg.0, i32 %shl
  %10 = lshr i8 %8, 1
  %div28 = zext i8 %10 to i32
  %mul29 = shl nuw nsw i32 %div28, 2
  %add30 = add nuw nsw i32 %mul29, 88
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 8
  %add.ptr.i48 = getelementptr i8, ptr %12, i32 %add30
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  br i1 %tobool.not, label %if.else24, label %if.then20

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %14, %spec.select
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %17, i32 %add30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %15) #8, !srcloc !37
  br label %for.inc

if.else24:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i = xor i32 %spec.select, -1
  %and.i = and i32 %14, %neg.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 8
  %add.ptr2.i49 = getelementptr i8, ptr %20, i32 %add30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i49, i32 %18) #8, !srcloc !37
  br label %for.inc

for.inc:                                          ; preds = %if.else24, %if.then20
  %inc = add nuw nsw i32 %i.052, 1
  %21 = ptrtoint ptr %output to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %output, align 4
  %conv = zext i8 %22 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_wm_frame_based(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %wm, i8 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %conv1 = zext i8 %wm to i32
  %mul2 = mul nuw nsw i32 %conv1, 36
  %add3 = add nuw nsw i32 %mul2, 108
  %base.i6 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base.i6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i6, align 8
  %add.ptr.i7 = getelementptr i8, ptr %1, i32 %add3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = or i32 %2, 33554432
  %4 = ptrtoint ptr %base.i6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i6, align 8
  %add.ptr2.i = getelementptr i8, ptr %5, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #8, !srcloc !37
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = and i32 %2, -33554433
  %7 = ptrtoint ptr %base.i6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i6, align 8
  %add.ptr2.i8 = getelementptr i8, ptr %8, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8, i32 %6) #8, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_wm_line_based(ptr nocapture noundef readonly %vfe, i32 noundef %wm, ptr nocapture noundef readonly %pix, i8 noundef zeroext %plane, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %pix to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %pix, align 1
  %height2.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 1
  %2 = ptrtoint ptr %height2.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %height2.i, align 1
  %conv3.i = trunc i32 %3 to i16
  %bytesperline4.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %bytesperline4.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %bytesperline4.i, align 1
  %pixelformat.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 2
  %6 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %pixelformat.i, align 1
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %7, label %if.then.vfe_get_wm_sizes.exit_crit_edge [
    i32 842094158, label %if.then.if.then.i_crit_edge
    i32 825382478, label %if.then.if.then.i_crit_edge45
  ]

if.then.if.then.i_crit_edge45:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.vfe_get_wm_sizes.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_get_wm_sizes.exit

if.then.i:                                        ; preds = %if.then.if.then.i_crit_edge, %if.then.if.then.i_crit_edge45
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %plane)
  %cmp11.i = icmp eq i8 %plane, 1
  %9 = zext i1 %cmp11.i to i16
  %spec.select = lshr i16 %conv3.i, %9
  br label %vfe_get_wm_sizes.exit

vfe_get_wm_sizes.exit:                            ; preds = %if.then.i, %if.then.vfe_get_wm_sizes.exit_crit_edge
  %height.0 = phi i16 [ %conv3.i, %if.then.vfe_get_wm_sizes.exit_crit_edge ], [ %spec.select, %if.then.i ]
  %conv = and i32 %1, 65535
  %call = tail call i32 @vfe_word_per_line(i32 noundef %7, i32 noundef %conv) #8
  %conv2 = zext i16 %height.0 to i32
  %sub = add nsw i32 %conv2, -1
  %conv3 = shl i32 %call, 15
  %add = and i32 %conv3, 2147450880
  %10 = add nsw i32 %add, -32768
  %shl = and i32 %10, -65536
  %or = or i32 %shl, %sub
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 8
  %mul = mul i32 %wm, 36
  %add5 = add i32 %mul, 128
  %add.ptr = getelementptr i8, ptr %13, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #8, !srcloc !37
  %14 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %pixelformat.i, align 1
  %conv7 = and i32 %5, 65535
  %call8 = tail call i32 @vfe_word_per_line(i32 noundef %15, i32 noundef %conv7) #8
  %sub11 = shl nuw nsw i32 %conv2, 4
  %shl12 = add nsw i32 %sub11, -16
  %shl15 = shl i32 %call8, 16
  %or13 = or i32 %shl12, %shl15
  %or16 = or i32 %or13, 3
  %16 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 8
  %add19 = add i32 %mul, 132
  %add.ptr20 = getelementptr i8, ptr %18, i32 %add19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %16) #8, !srcloc !37
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base21 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %19 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base21, align 8
  %mul22 = mul i32 %wm, 36
  %add23 = add i32 %mul22, 128
  %add.ptr24 = getelementptr i8, ptr %20, i32 %add23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #8, !srcloc !37
  %21 = ptrtoint ptr %base21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base21, align 8
  %add27 = add i32 %mul22, 132
  %add.ptr28 = getelementptr i8, ptr %22, i32 %add27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 0) #8, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %if.else, %vfe_get_wm_sizes.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_wm_set_ub_cfg(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %wm, i16 noundef zeroext %offset, i16 noundef zeroext %depth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %offset to i32
  %shl = shl nuw i32 %conv, 16
  %conv1 = zext i16 %depth to i32
  %or = or i32 %shl, %conv1
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 8
  %conv2 = zext i8 %wm to i32
  %mul = mul nuw nsw i32 %conv2, 36
  %add = add nuw nsw i32 %mul, 124
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_wm_set_subsample(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %wm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %conv = zext i8 %wm to i32
  %mul = mul nuw nsw i32 %conv, 36
  %add = add nuw nsw i32 %mul, 140
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_wm_set_framedrop_period(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %wm, i8 noundef zeroext %per) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %conv = zext i8 %wm to i32
  %mul = mul nuw nsw i32 %conv, 36
  %add = add nuw nsw i32 %mul, 120
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !38
  %3 = and i32 %2, -2080374785
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv1 = zext i8 %per to i32
  %shl = shl nuw nsw i32 %conv1, 2
  %and2 = and i32 %shl, 124
  %or = or i32 %4, %and2
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %add.ptr7 = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %5) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_wm_set_framedrop_pattern(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %wm, i32 noundef %pattern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %pattern)
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 8
  %conv = zext i8 %wm to i32
  %mul = mul nuw nsw i32 %conv, 36
  %add = add nuw nsw i32 %mul, 136
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_wm_set_ping_addr(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %wm, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 8
  %conv = zext i8 %wm to i32
  %mul = mul nuw nsw i32 %conv, 36
  %add = add nuw nsw i32 %mul, 112
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_wm_set_pong_addr(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %wm, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 8
  %conv = zext i8 %wm to i32
  %mul = mul nuw nsw i32 %conv, 36
  %add = add nuw nsw i32 %mul, 116
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_wm_get_ping_pong_status(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %wm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 616
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !38
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %conv = zext i8 %wm to i32
  %shr = lshr i32 %3, %conv
  %and = and i32 %shr, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_wm_enable(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %wm, i8 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %conv1 = zext i8 %wm to i32
  %mul2 = mul nuw nsw i32 %conv1, 36
  %add3 = add nuw nsw i32 %mul2, 108
  %base.i6 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base.i6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i6, align 8
  %add.ptr.i7 = getelementptr i8, ptr %1, i32 %add3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %base.i6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i6, align 8
  %add.ptr2.i = getelementptr i8, ptr %5, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #8, !srcloc !37
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = and i32 %2, -16777217
  %7 = ptrtoint ptr %base.i6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i6, align 8
  %add.ptr2.i8 = getelementptr i8, ptr %8, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8, i32 %6) #8, !srcloc !37
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfe_word_per_line(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @vfe_ops_4_1, !1, !"vfe_ops_4_1", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-4-1.c", i32 999, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-4-1.c", i32 217, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @vfe_hw_version.__UNIQUE_ID_ddebug298, !3, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-4-1.c", i32 897, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vfe_isr.__UNIQUE_ID_ddebug299, !9, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!12 = !{ptr @vfe_ops_gen1_4_1, !13, !"vfe_ops_gen1_4_1", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-4-1.c", i32 953, i32 37}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-4-1.c", i32 858, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vfe_camif_wait_for_stop._entry, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @vfe_camif_wait_for_stop._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-4-1.c", i32 879, i32 2}
!23 = !{ptr @vfe_violation_read._rs, !22, !"_rs", i1 false, i1 false}
!24 = !{ptr @__func__.vfe_violation_read, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @vfe_violation_read._entry, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @vfe_violation_read._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 4227262}
!38 = !{i64 4227680}
!39 = !{i64 2148746454, i64 2148746459, i64 2148746472, i64 2148746516, i64 2148746550, i64 2148746571}
!40 = !{!"auto-init"}
!41 = !{i64 2156476963}
!42 = !{i64 2156460521}
!43 = !{i64 2156460886}
!44 = !{i64 2156456079}
!45 = !{i64 2156456567}
!46 = !{i64 2156473664}
!47 = !{i64 2156474150}
!48 = !{i64 2156470988}
!49 = !{i64 2156469144}
