; ModuleID = '/llk/IR_all_yes/drivers/media/platform/qcom/camss/camss-vfe-4-7.c_pt.bc'
source_filename = "../drivers/media/platform/qcom/camss/camss-vfe-4-7.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vfe_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vfe_isr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vfe_hw_ops_gen1 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.camss_video_ops = type { ptr, ptr }
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

@vfe_ops_4_7 = dso_local constant { %struct.vfe_hw_ops, [40 x i8] } { %struct.vfe_hw_ops { ptr null, ptr @vfe_global_reset, ptr @vfe_hw_version, ptr @vfe_isr, ptr @vfe_isr_read, ptr @vfe_pm_domain_off, ptr @vfe_pm_domain_on, ptr @vfe_reg_update, ptr @vfe_reg_update_clear, ptr @vfe_subdev_init, ptr @vfe_gen1_disable, ptr @vfe_gen1_enable, ptr @vfe_gen1_halt, ptr @vfe_violation_read }, [40 x i8] zeroinitializer }, align 32
@vfe_hw_version.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom_camss\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vfe_hw_version\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/media/platform/qcom/camss/camss-vfe-4-7.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VFE HW Version = 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@vfe_isr.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 1, i8 8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vfe_isr\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"VFE: status0 = 0x%08x, status1 = 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@vfe_pm_domain_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1135, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to add VFE#%d to power domain\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vfe_pm_domain_on\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vfe_pm_domain_on._entry_ptr = internal global ptr @vfe_pm_domain_on._entry, section ".printk_index", align 4
@vfe_isr_ops_gen1 = external dso_local local_unnamed_addr constant %struct.vfe_isr_ops, align 4
@vfe_ops_gen1_4_7 = internal constant { %struct.vfe_hw_ops_gen1, [56 x i8] } { %struct.vfe_hw_ops_gen1 { ptr @vfe_bus_connect_wm_to_rdi, ptr @vfe_bus_disconnect_wm_from_rdi, ptr @vfe_bus_enable_wr_if, ptr @vfe_bus_reload_wm, ptr @vfe_camif_wait_for_stop, ptr @vfe_enable_irq_common, ptr @vfe_enable_irq_wm_line, ptr @vfe_enable_irq_pix_line, ptr @vfe_get_ub_size, ptr @vfe_halt_clear, ptr @vfe_halt_request, ptr @vfe_set_camif_cfg, ptr @vfe_set_camif_cmd, ptr @vfe_set_cgc_override, ptr @vfe_set_clamp_cfg, ptr @vfe_set_crop_cfg, ptr @vfe_set_demux_cfg, ptr @vfe_set_ds, ptr @vfe_set_module_cfg, ptr @vfe_set_scale_cfg, ptr @vfe_set_rdi_cid, ptr @vfe_set_realign_cfg, ptr @vfe_set_qos, ptr @vfe_set_xbar_cfg, ptr @vfe_wm_frame_based, ptr @vfe_wm_line_based, ptr @vfe_wm_set_ub_cfg, ptr @vfe_wm_set_subsample, ptr @vfe_wm_set_framedrop_period, ptr @vfe_wm_set_framedrop_pattern, ptr @vfe_wm_set_ping_addr, ptr @vfe_wm_set_pong_addr, ptr @vfe_wm_get_ping_pong_status, ptr @vfe_wm_enable }, [56 x i8] zeroinitializer }, align 32
@vfe_video_ops_gen1 = external dso_local local_unnamed_addr constant %struct.camss_video_ops, align 4
@vfe_camif_wait_for_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1033, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: camif stop timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vfe_camif_wait_for_stop\00", [40 x i8] zeroinitializer }, align 32
@vfe_camif_wait_for_stop._entry_ptr = internal global ptr @vfe_camif_wait_for_stop._entry, section ".printk_index", align 4
@vfe_violation_read._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vfe_violation_read = private unnamed_addr constant [19 x i8] c"vfe_violation_read\00", align 1
@vfe_violation_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.vfe_violation_read, ptr @.str.2, i32 1146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013VFE: violation = 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@vfe_violation_read._entry_ptr = internal global ptr @vfe_violation_read._entry, section ".printk_index", align 4
@switch.table.vfe_set_camif_cfg = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 385875968, i32 335544320, i32 352321536], [20 x i8] zeroinitializer }, align 32
@switch.table.vfe_set_demux_cfg = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 51913, i32 40108, i32 44188], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.14 = internal global [10 x i64] [i64 8, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 909203022, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.15 = internal global [10 x i64] [i64 8, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 909203022, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.16 = internal global [10 x i64] [i64 8, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 909203022, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"vfe_ops_4_7\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1195, i32 25 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 261, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1055, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1135, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"vfe_ops_gen1_4_7\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1149, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1033, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [53 x i8] c"../drivers/media/platform/qcom/camss/camss-vfe-4-7.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1146, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [31 x i8] c"switch.table.vfe_set_camif_cfg\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [31 x i8] c"switch.table.vfe_set_demux_cfg\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @vfe_camif_wait_for_stop._entry, ptr @vfe_camif_wait_for_stop._entry_ptr, ptr @vfe_pm_domain_on._entry, ptr @vfe_pm_domain_on._entry_ptr, ptr @vfe_violation_read._entry, ptr @vfe_violation_read._entry_ptr, ptr @vfe_ops_4_7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @vfe_ops_gen1_4_7, ptr @.str.10, ptr @.str.11, ptr @vfe_violation_read._rs, ptr @.str.12, ptr @.str.13, ptr @switch.table.vfe_set_camif_cfg, ptr @switch.table.vfe_set_demux_cfg], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_ops_4_7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_pm_domain_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_ops_gen1_4_7 to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_camif_wait_for_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_violation_read._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfe_violation_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfe_set_camif_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vfe_set_demux_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 0, i32 -1 }]
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
  %add.ptr = getelementptr i8, ptr %1, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 128) #8, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -16580608) #8, !srcloc !42
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
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !44
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfe_hw_version.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfe_hw_version, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !45

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
  store i32 -1, ptr %value0, align 4, !annotation !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value1) #8
  %1 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %value1, align 4, !annotation !46
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
          to label %do.end [label %if.then], !srcloc !45

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
  %line_num = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 16
  %28 = ptrtoint ptr %line_num to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %line_num, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp130.not = icmp eq i8 %29, 0
  br i1 %cmp130.not, label %if.end16.for.end_crit_edge, label %for.body.lr.ph

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end16
  %reg_update = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 21, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0131 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %30 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0131)
  %cmp18 = icmp eq i32 %i.0131, 3
  %shl = shl i32 32, %i.0131
  %cond = select i1 %cmp18, i32 16, i32 %shl
  %and20 = and i32 %31, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %for.body.for.inc_crit_edge, label %if.then22

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %reg_update to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_update, align 4
  call void %33(ptr noundef %dev, i32 noundef %i.0131) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0131, 1
  %34 = ptrtoint ptr %line_num to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %line_num, align 8
  %conv = zext i8 %35 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16.for.end_crit_edge
  %36 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %value0, align 4
  %and25 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %for.end.if.end29_crit_edge, label %if.then27

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %sof = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 21, i32 3
  %38 = ptrtoint ptr %sof to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sof, align 4
  call void %39(ptr noundef %dev, i32 noundef 3) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %for.end.if.end29_crit_edge
  %sof40 = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 21, i32 3
  %40 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %value1, align 4
  %and36 = and i32 %41, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end29.for.inc42_crit_edge, label %if.then38

if.end29.for.inc42_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc42

if.then38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %sof40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sof40, align 4
  call void %43(ptr noundef %dev, i32 noundef 0) #8
  br label %for.inc42

for.inc42:                                        ; preds = %if.then38, %if.end29.for.inc42_crit_edge
  %44 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %value1, align 4
  %and36.1 = and i32 %45, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.1)
  %tobool37.not.1 = icmp eq i32 %and36.1, 0
  br i1 %tobool37.not.1, label %for.inc42.for.inc42.1_crit_edge, label %if.then38.1

for.inc42.for.inc42.1_crit_edge:                  ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc42.1

if.then38.1:                                      ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %sof40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sof40, align 4
  call void %47(ptr noundef %dev, i32 noundef 1) #8
  %48 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr = load i32, ptr %value1, align 4
  br label %for.inc42.1

for.inc42.1:                                      ; preds = %if.then38.1, %for.inc42.for.inc42.1_crit_edge
  %49 = phi i32 [ %.pr, %if.then38.1 ], [ %45, %for.inc42.for.inc42.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %tobool37.not.2 = icmp sgt i32 %49, -1
  br i1 %tobool37.not.2, label %for.inc42.1.for.inc42.2_crit_edge, label %if.then38.2

for.inc42.1.for.inc42.2_crit_edge:                ; preds = %for.inc42.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc42.2

if.then38.2:                                      ; preds = %for.inc42.1
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %sof40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sof40, align 4
  call void %51(ptr noundef %dev, i32 noundef 2) #8
  br label %for.inc42.2

for.inc42.2:                                      ; preds = %if.then38.2, %for.inc42.1.for.inc42.2_crit_edge
  %comp_done = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 21, i32 4
  %arrayidx = getelementptr %struct.vfe_device, ptr %dev, i32 0, i32 14, i32 0
  %arrayidx.1 = getelementptr %struct.vfe_device, ptr %dev, i32 0, i32 14, i32 1
  %arrayidx.2 = getelementptr %struct.vfe_device, ptr %dev, i32 0, i32 14, i32 2
  %arrayidx.3 = getelementptr %struct.vfe_device, ptr %dev, i32 0, i32 14, i32 3
  %arrayidx.4 = getelementptr %struct.vfe_device, ptr %dev, i32 0, i32 14, i32 4
  %arrayidx.5 = getelementptr %struct.vfe_device, ptr %dev, i32 0, i32 14, i32 5
  %arrayidx.6 = getelementptr %struct.vfe_device, ptr %dev, i32 0, i32 14, i32 6
  br label %for.body48

for.cond74.preheader:                             ; preds = %for.inc71
  %wm_done = getelementptr inbounds %struct.vfe_device, ptr %dev, i32 0, i32 21, i32 5
  %52 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %value0, align 4
  %and80 = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %for.cond74.preheader.for.inc86_crit_edge, label %if.then82

for.cond74.preheader.for.inc86_crit_edge:         ; preds = %for.cond74.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc86

for.body48:                                       ; preds = %for.inc71.for.body48_crit_edge, %for.inc42.2
  %i.2140 = phi i32 [ 0, %for.inc42.2 ], [ %inc72, %for.inc71.for.body48_crit_edge ]
  %54 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %value0, align 4
  %shl50 = shl i32 33554432, %i.2140
  %and51 = and i32 %55, %shl50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %for.body48.for.inc71_crit_edge, label %if.then53

for.body48.for.inc71_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc71

if.then53:                                        ; preds = %for.body48
  %56 = ptrtoint ptr %comp_done to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %comp_done, align 4
  %conv55 = trunc i32 %i.2140 to i8
  call void %57(ptr noundef %dev, i8 noundef zeroext %conv55) #8
  %58 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %value0.promoted = load i32, ptr %value0, align 4
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp60 = icmp eq i32 %60, 3
  br i1 %cmp60, label %if.then62, label %if.then53.for.inc67_crit_edge

if.then53.for.inc67_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc67

if.then62:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  %and65 = and i32 %value0.promoted, -257
  %61 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and65, ptr %value0, align 4
  br label %for.inc67

for.inc67:                                        ; preds = %if.then62, %if.then53.for.inc67_crit_edge
  %and65135 = phi i32 [ %value0.promoted, %if.then53.for.inc67_crit_edge ], [ %and65, %if.then62 ]
  %62 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp60.1 = icmp eq i32 %63, 3
  br i1 %cmp60.1, label %if.then62.1, label %for.inc67.for.inc67.1_crit_edge

for.inc67.for.inc67.1_crit_edge:                  ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc67.1

if.then62.1:                                      ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #10
  %and65.1 = and i32 %and65135, -513
  %64 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and65.1, ptr %value0, align 4
  br label %for.inc67.1

for.inc67.1:                                      ; preds = %if.then62.1, %for.inc67.for.inc67.1_crit_edge
  %and65135.1 = phi i32 [ %and65135, %for.inc67.for.inc67.1_crit_edge ], [ %and65.1, %if.then62.1 ]
  %65 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp60.2 = icmp eq i32 %66, 3
  br i1 %cmp60.2, label %if.then62.2, label %for.inc67.1.for.inc67.2_crit_edge

for.inc67.1.for.inc67.2_crit_edge:                ; preds = %for.inc67.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc67.2

if.then62.2:                                      ; preds = %for.inc67.1
  call void @__sanitizer_cov_trace_pc() #10
  %and65.2 = and i32 %and65135.1, -1025
  %67 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and65.2, ptr %value0, align 4
  br label %for.inc67.2

for.inc67.2:                                      ; preds = %if.then62.2, %for.inc67.1.for.inc67.2_crit_edge
  %and65135.2 = phi i32 [ %and65135.1, %for.inc67.1.for.inc67.2_crit_edge ], [ %and65.2, %if.then62.2 ]
  %68 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp60.3 = icmp eq i32 %69, 3
  br i1 %cmp60.3, label %if.then62.3, label %for.inc67.2.for.inc67.3_crit_edge

for.inc67.2.for.inc67.3_crit_edge:                ; preds = %for.inc67.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc67.3

if.then62.3:                                      ; preds = %for.inc67.2
  call void @__sanitizer_cov_trace_pc() #10
  %and65.3 = and i32 %and65135.2, -2049
  %70 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and65.3, ptr %value0, align 4
  br label %for.inc67.3

for.inc67.3:                                      ; preds = %if.then62.3, %for.inc67.2.for.inc67.3_crit_edge
  %and65135.3 = phi i32 [ %and65135.2, %for.inc67.2.for.inc67.3_crit_edge ], [ %and65.3, %if.then62.3 ]
  %71 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %72)
  %cmp60.4 = icmp eq i32 %72, 3
  br i1 %cmp60.4, label %if.then62.4, label %for.inc67.3.for.inc67.4_crit_edge

for.inc67.3.for.inc67.4_crit_edge:                ; preds = %for.inc67.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc67.4

if.then62.4:                                      ; preds = %for.inc67.3
  call void @__sanitizer_cov_trace_pc() #10
  %and65.4 = and i32 %and65135.3, -4097
  %73 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and65.4, ptr %value0, align 4
  br label %for.inc67.4

for.inc67.4:                                      ; preds = %if.then62.4, %for.inc67.3.for.inc67.4_crit_edge
  %and65135.4 = phi i32 [ %and65135.3, %for.inc67.3.for.inc67.4_crit_edge ], [ %and65.4, %if.then62.4 ]
  %74 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %75)
  %cmp60.5 = icmp eq i32 %75, 3
  br i1 %cmp60.5, label %if.then62.5, label %for.inc67.4.for.inc67.5_crit_edge

for.inc67.4.for.inc67.5_crit_edge:                ; preds = %for.inc67.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc67.5

if.then62.5:                                      ; preds = %for.inc67.4
  call void @__sanitizer_cov_trace_pc() #10
  %and65.5 = and i32 %and65135.4, -8193
  %76 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and65.5, ptr %value0, align 4
  br label %for.inc67.5

for.inc67.5:                                      ; preds = %if.then62.5, %for.inc67.4.for.inc67.5_crit_edge
  %and65135.5 = phi i32 [ %and65135.4, %for.inc67.4.for.inc67.5_crit_edge ], [ %and65.5, %if.then62.5 ]
  %77 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %78)
  %cmp60.6 = icmp eq i32 %78, 3
  br i1 %cmp60.6, label %if.then62.6, label %for.inc67.5.for.inc71_crit_edge

for.inc67.5.for.inc71_crit_edge:                  ; preds = %for.inc67.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc71

if.then62.6:                                      ; preds = %for.inc67.5
  call void @__sanitizer_cov_trace_pc() #10
  %and65.6 = and i32 %and65135.5, -16385
  %79 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %and65.6, ptr %value0, align 4
  br label %for.inc71

for.inc71:                                        ; preds = %if.then62.6, %for.inc67.5.for.inc71_crit_edge, %for.body48.for.inc71_crit_edge
  %inc72 = add nuw nsw i32 %i.2140, 1
  %exitcond.not = icmp eq i32 %inc72, 4
  br i1 %exitcond.not, label %for.cond74.preheader, label %for.inc71.for.body48_crit_edge

for.inc71.for.body48_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body48

if.then82:                                        ; preds = %for.cond74.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wm_done, align 4
  call void %81(ptr noundef %dev, i8 noundef zeroext 0) #8
  br label %for.inc86

for.inc86:                                        ; preds = %if.then82, %for.cond74.preheader.for.inc86_crit_edge
  %82 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %value0, align 4
  %and80.1 = and i32 %83, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.1)
  %tobool81.not.1 = icmp eq i32 %and80.1, 0
  br i1 %tobool81.not.1, label %for.inc86.for.inc86.1_crit_edge, label %if.then82.1

for.inc86.for.inc86.1_crit_edge:                  ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc86.1

if.then82.1:                                      ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wm_done, align 4
  call void %85(ptr noundef %dev, i8 noundef zeroext 1) #8
  br label %for.inc86.1

for.inc86.1:                                      ; preds = %if.then82.1, %for.inc86.for.inc86.1_crit_edge
  %86 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %value0, align 4
  %and80.2 = and i32 %87, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.2)
  %tobool81.not.2 = icmp eq i32 %and80.2, 0
  br i1 %tobool81.not.2, label %for.inc86.1.for.inc86.2_crit_edge, label %if.then82.2

for.inc86.1.for.inc86.2_crit_edge:                ; preds = %for.inc86.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc86.2

if.then82.2:                                      ; preds = %for.inc86.1
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %wm_done, align 4
  call void %89(ptr noundef %dev, i8 noundef zeroext 2) #8
  br label %for.inc86.2

for.inc86.2:                                      ; preds = %if.then82.2, %for.inc86.1.for.inc86.2_crit_edge
  %90 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %value0, align 4
  %and80.3 = and i32 %91, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.3)
  %tobool81.not.3 = icmp eq i32 %and80.3, 0
  br i1 %tobool81.not.3, label %for.inc86.2.for.inc86.3_crit_edge, label %if.then82.3

for.inc86.2.for.inc86.3_crit_edge:                ; preds = %for.inc86.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc86.3

if.then82.3:                                      ; preds = %for.inc86.2
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %wm_done, align 4
  call void %93(ptr noundef %dev, i8 noundef zeroext 3) #8
  br label %for.inc86.3

for.inc86.3:                                      ; preds = %if.then82.3, %for.inc86.2.for.inc86.3_crit_edge
  %94 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %value0, align 4
  %and80.4 = and i32 %95, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.4)
  %tobool81.not.4 = icmp eq i32 %and80.4, 0
  br i1 %tobool81.not.4, label %for.inc86.3.for.inc86.4_crit_edge, label %if.then82.4

for.inc86.3.for.inc86.4_crit_edge:                ; preds = %for.inc86.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc86.4

if.then82.4:                                      ; preds = %for.inc86.3
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wm_done, align 4
  call void %97(ptr noundef %dev, i8 noundef zeroext 4) #8
  br label %for.inc86.4

for.inc86.4:                                      ; preds = %if.then82.4, %for.inc86.3.for.inc86.4_crit_edge
  %98 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %value0, align 4
  %and80.5 = and i32 %99, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.5)
  %tobool81.not.5 = icmp eq i32 %and80.5, 0
  br i1 %tobool81.not.5, label %for.inc86.4.for.inc86.5_crit_edge, label %if.then82.5

for.inc86.4.for.inc86.5_crit_edge:                ; preds = %for.inc86.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc86.5

if.then82.5:                                      ; preds = %for.inc86.4
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %wm_done, align 4
  call void %101(ptr noundef %dev, i8 noundef zeroext 5) #8
  br label %for.inc86.5

for.inc86.5:                                      ; preds = %if.then82.5, %for.inc86.4.for.inc86.5_crit_edge
  %102 = ptrtoint ptr %value0 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %value0, align 4
  %and80.6 = and i32 %103, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.6)
  %tobool81.not.6 = icmp eq i32 %and80.6, 0
  br i1 %tobool81.not.6, label %for.inc86.5.for.inc86.6_crit_edge, label %if.then82.6

for.inc86.5.for.inc86.6_crit_edge:                ; preds = %for.inc86.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc86.6

if.then82.6:                                      ; preds = %for.inc86.5
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %wm_done to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %wm_done, align 4
  call void %105(ptr noundef %dev, i8 noundef zeroext 6) #8
  br label %for.inc86.6

for.inc86.6:                                      ; preds = %if.then82.6, %for.inc86.5.for.inc86.6_crit_edge
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
  %add.ptr = getelementptr i8, ptr %1, i32 108
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !44
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %value0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value0, align 4
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 8
  %add.ptr3 = getelementptr i8, ptr %6, i32 112
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !44
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
  %add.ptr7 = getelementptr i8, ptr %14, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %12) #8, !srcloc !42
  %15 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value1, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 8
  %add.ptr9 = getelementptr i8, ptr %19, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %17) #8, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 8
  %add.ptr11 = getelementptr i8, ptr %21, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 16777216) #8, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_pm_domain_off(ptr noundef readonly %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vfe, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfe, align 8
  %id = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.camss, ptr %1, i32 0, i32 14, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @device_link_del(ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfe_pm_domain_on(ptr nocapture noundef readonly %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vfe, align 8
  %id2 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 1
  %2 = ptrtoint ptr %id2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id2, align 4
  %conv = zext i8 %3 to i32
  %dev = getelementptr inbounds %struct.camss, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %arrayidx = getelementptr %struct.camss, ptr %1, i32 0, i32 13, i32 %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call = tail call ptr @device_link_add(ptr noundef %5, ptr noundef %7, i32 noundef 13) #8
  %arrayidx3 = getelementptr %struct.camss, ptr %1, i32 0, i32 14, i32 %conv
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %vfe to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vfe, align 8
  %dev7 = getelementptr inbounds %struct.camss, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %reg_update to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_update, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 1196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @arm_heavy_mb() #8
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vfe_reg_update_clear(ptr nocapture noundef %vfe, i32 noundef %line_id) #1 align 64 {
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
define internal void @vfe_subdev_init(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %vfe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %isr_ops = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 21
  %0 = call ptr @memcpy(ptr %isr_ops, ptr @vfe_isr_ops_gen1, i32 24)
  %ops_gen1 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 20
  %1 = ptrtoint ptr %ops_gen1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @vfe_ops_gen1_4_7, ptr %ops_gen1, align 8
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
declare dso_local i32 @vfe_gen1_disable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfe_gen1_enable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfe_gen1_halt(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_violation_read(ptr nocapture noundef readonly %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 124
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !44
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
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_bus_connect_wm_to_rdi(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %wm, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 1132
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !44
  %3 = or i32 %2, 50331648
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %5, i32 1132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #8, !srcloc !42
  %shl = mul i32 %id, 805306368
  %or = or i32 %shl, 4
  %mul1 = shl i32 %id, 2
  %add = add i32 %mul1, 1132
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr.i22 = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #8, !srcloc !44
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %or.i23 = or i32 %9, %or
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i23) #8
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 8
  %add.ptr2.i24 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i24, i32 %10) #8, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %id)
  %switch.selectcmp = icmp eq i32 %id, 1
  %switch.select = select i1 %switch.selectcmp, i32 3328, i32 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id)
  %switch.selectcmp19 = icmp eq i32 %id, 2
  %switch.select20 = select i1 %switch.selectcmp19, i32 3584, i32 %switch.select
  %conv = zext i8 %wm to i32
  %rem = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  %shl5 = shl nuw nsw i32 %switch.select20, 16
  %reg.1 = select i1 %cmp.not, i32 %switch.select20, i32 %shl5
  %13 = shl nuw nsw i32 %conv, 1
  %mul7 = and i32 %13, 508
  %add8 = add nuw nsw i32 %mul7, 144
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 8
  %add.ptr.i26 = getelementptr i8, ptr %15, i32 %add8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #8, !srcloc !44
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %or.i27 = or i32 %17, %reg.1
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i27) #8
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 8
  %add.ptr2.i28 = getelementptr i8, ptr %20, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i28, i32 %18) #8, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_bus_disconnect_wm_from_rdi(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %wm, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %id, 2
  %add = add i32 %mul, 1132
  %base.i = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !44
  %3 = and i32 %2, -67108865
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #8, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %id)
  %switch.selectcmp = icmp eq i32 %id, 1
  %switch.select = select i1 %switch.selectcmp, i32 3328, i32 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id)
  %switch.selectcmp13 = icmp eq i32 %id, 2
  %switch.select14 = select i1 %switch.selectcmp13, i32 3584, i32 %switch.select
  %conv = zext i8 %wm to i32
  %rem = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  %shl = shl nuw nsw i32 %switch.select14, 16
  %reg.1 = select i1 %cmp.not, i32 %switch.select14, i32 %shl
  %6 = shl nuw nsw i32 %conv, 1
  %mul5 = and i32 %6, 508
  %add6 = add nuw nsw i32 %mul5, 144
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 8
  %add.ptr.i16 = getelementptr i8, ptr %8, i32 %add6
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #8, !srcloc !44
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %neg.i = xor i32 %reg.1, -1
  %and.i17 = and i32 %10, %neg.i
  %11 = tail call i32 @llvm.bswap.i32(i32 %and.i17) #8
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 8
  %add.ptr2.i18 = getelementptr i8, ptr %13, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i18, i32 %11) #8, !srcloc !42
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
  %add.ptr2 = getelementptr i8, ptr %1, i32 132
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 16842752) #8, !srcloc !42
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #8, !srcloc !42
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_bus_reload_wm(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %wm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @arm_heavy_mb() #8
  %conv = zext i8 %wm to i32
  %shl = shl nuw i32 1, %conv
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
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
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1031) #8
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr48 = getelementptr i8, ptr %1, i32 1188
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
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
  %add.ptr = getelementptr i8, ptr %4, i32 1188
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
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
  %add.ptr20 = getelementptr i8, ptr %7, i32 1188
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #8, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  %.mask46 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask46)
  %tobool30.not.inv.not = icmp eq i32 %.mask46, 0
  br i1 %tobool30.not.inv.not, label %do.end35, label %for.end.if.end36_crit_edge

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #11
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
  %add.ptr.i = getelementptr i8, ptr %1, i32 92
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !44
  %3 = or i32 %2, 128
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %5, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #8, !srcloc !42
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %7, i32 96
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #8, !srcloc !44
  %9 = or i32 %8, -2147418112
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 8
  %add.ptr2.i5 = getelementptr i8, ptr %11, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i5, i32 %9) #8, !srcloc !42
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
  %add.ptr.i23 = getelementptr i8, ptr %1, i32 92
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
  %add.ptr2.i = getelementptr i8, ptr %6, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %4) #8, !srcloc !42
  %7 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i22, align 8
  %add.ptr.i19 = getelementptr i8, ptr %8, i32 96
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #8, !srcloc !44
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %or.i20 = or i32 %10, %or9
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i20) #8
  %12 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i22, align 8
  %add.ptr2.i21 = getelementptr i8, ptr %13, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i21, i32 %11) #8, !srcloc !42
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i = xor i32 %or, -1
  %and.i = and i32 %3, %neg.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %15 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i22, align 8
  %add.ptr2.i24 = getelementptr i8, ptr %16, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i24, i32 %14) #8, !srcloc !42
  %17 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i22, align 8
  %add.ptr.i26 = getelementptr i8, ptr %18, i32 96
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #8, !srcloc !44
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %neg.i27 = xor i32 %or9, -1
  %and.i28 = and i32 %20, %neg.i27
  %21 = tail call i32 @llvm.bswap.i32(i32 %and.i28) #8
  %22 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i22, align 8
  %add.ptr2.i29 = getelementptr i8, ptr %23, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i29, i32 %21) #8, !srcloc !42
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
  %add.ptr.i53 = getelementptr i8, ptr %5, i32 92
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
  %add.ptr2.i = getelementptr i8, ptr %10, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %8) #8, !srcloc !42
  %11 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i52, align 8
  %add.ptr.i45 = getelementptr i8, ptr %12, i32 96
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #8, !srcloc !44
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  %or.i46 = or i32 %14, %irq_en1.0.lcssa
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i46) #8
  %16 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i52, align 8
  %add.ptr2.i47 = getelementptr i8, ptr %17, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i47, i32 %15) #8, !srcloc !42
  %18 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i52, align 8
  %add.ptr.i49 = getelementptr i8, ptr %19, i32 116
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #8, !srcloc !44
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  %or.i50 = or i32 %21, %comp_mask.0.lcssa
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i50) #8
  %23 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i52, align 8
  %add.ptr2.i51 = getelementptr i8, ptr %24, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i51, i32 %22) #8, !srcloc !42
  br label %if.end

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i = xor i32 %or6, -1
  %and.i = and i32 %7, %neg.i
  %25 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %26 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i52, align 8
  %add.ptr2.i54 = getelementptr i8, ptr %27, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i54, i32 %25) #8, !srcloc !42
  %28 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i52, align 8
  %add.ptr.i56 = getelementptr i8, ptr %29, i32 96
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #8, !srcloc !44
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  %neg.i57 = xor i32 %irq_en1.0.lcssa, -1
  %and.i58 = and i32 %31, %neg.i57
  %32 = tail call i32 @llvm.bswap.i32(i32 %and.i58) #8
  %33 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i52, align 8
  %add.ptr2.i59 = getelementptr i8, ptr %34, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i59, i32 %32) #8, !srcloc !42
  %35 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i52, align 8
  %add.ptr.i61 = getelementptr i8, ptr %36, i32 116
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #8, !srcloc !44
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  %neg.i62 = xor i32 %comp_mask.0.lcssa, -1
  %and.i63 = and i32 %38, %neg.i62
  %39 = tail call i32 @llvm.bswap.i32(i32 %and.i63) #8
  %40 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i52, align 8
  %add.ptr2.i64 = getelementptr i8, ptr %41, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i64, i32 %39) #8, !srcloc !42
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @vfe_get_ub_size(i8 noundef zeroext %vfe_id) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %vfe_id)
  %switch.selectcmp = icmp eq i8 %vfe_id, 1
  %switch.select = select i1 %switch.selectcmp, i16 511, i16 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %vfe_id)
  %switch.selectcmp8 = icmp eq i8 %vfe_id, 0
  %switch.select9 = select i1 %switch.selectcmp8, i16 682, i16 %switch.select
  ret i16 %switch.select9
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
  %add.ptr = getelementptr i8, ptr %1, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !42
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
  %add.ptr = getelementptr i8, ptr %1, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #8, !srcloc !42
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
  %val.0 = phi i32 [ %switch.load, %switch.lookup ], [ 369098752, %entry.sw.epilog_crit_edge ]
  %fmt = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 3
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %val.0) #8, !srcloc !42
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt, align 8
  %mul = shl i32 %7, 1
  %sub = add i32 %mul, -1
  %height = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %sub8 = shl i32 %9, 16
  %shl = add i32 %sub8, -65536
  %or9 = or i32 %shl, %sub
  %10 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 8
  %add.ptr11 = getelementptr i8, ptr %12, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %10) #8, !srcloc !42
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt, align 8
  %mul15 = shl i32 %14, 1
  %sub16 = add i32 %mul15, -1
  %15 = tail call i32 @llvm.bswap.i32(i32 %sub16)
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 8
  %add.ptr18 = getelementptr i8, ptr %17, i32 1160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %15) #8, !srcloc !42
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %sub22 = add i32 %19, -1
  %20 = tail call i32 @llvm.bswap.i32(i32 %sub22)
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 8
  %add.ptr24 = getelementptr i8, ptr %22, i32 1164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %20) #8, !srcloc !42
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 8
  %add.ptr26 = getelementptr i8, ptr %24, i32 1168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 -1) #8, !srcloc !42
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 8
  %add.ptr28 = getelementptr i8, ptr %26, i32 1176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 -1) #8, !srcloc !42
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 8
  %add.ptr30 = getelementptr i8, ptr %28, i32 1180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 -1) #8, !srcloc !42
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 8
  %add.ptr.i = getelementptr i8, ptr %30, i32 1132
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !44
  %32 = or i32 %31, 50331648
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 8
  %add.ptr2.i = getelementptr i8, ptr %34, i32 1132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %32) #8, !srcloc !42
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 8
  %add.ptr32 = getelementptr i8, ptr %36, i32 1148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 1073741824) #8, !srcloc !42
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
  %add.ptr = getelementptr i8, ptr %1, i32 1144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 117440512) #8, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void @arm_heavy_mb() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %. = select i1 %tobool.not, i32 0, i32 16777216
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 1144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %.) #8, !srcloc !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vfe_set_cgc_override(ptr nocapture noundef %vfe, i8 noundef zeroext %wm, i8 noundef zeroext %enable) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
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
  %add.ptr = getelementptr i8, ptr %1, i32 2436
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -256) #8, !srcloc !42
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 2440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #8, !srcloc !42
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
  %add.ptr = getelementptr i8, ptr %8, i32 2420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #8, !srcloc !42
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
  %add.ptr20 = getelementptr i8, ptr %15, i32 2424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %13) #8, !srcloc !42
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
  %add.ptr38 = getelementptr i8, ptr %22, i32 2428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %20) #8, !srcloc !42
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
  %add.ptr70 = getelementptr i8, ptr %33, i32 2432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %31) #8, !srcloc !42
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
  %add.ptr = getelementptr i8, ptr %1, i32 1376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #8, !srcloc !42
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 1380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -2147450880) #8, !srcloc !42
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add.ptr4 = getelementptr i8, ptr %5, i32 1384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -2147450880) #8, !srcloc !42
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
  %add.ptr9 = getelementptr i8, ptr %12, i32 1396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %10) #8, !srcloc !42
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 8
  %add.ptr11 = getelementptr i8, ptr %14, i32 1400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %10) #8, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_set_ds(ptr nocapture noundef readonly %vfe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 285265100) #8, !srcloc !42
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 285265100) #8, !srcloc !42
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add.ptr4 = getelementptr i8, ptr %5, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 285265100) #8, !srcloc !42
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %add.ptr6 = getelementptr i8, ptr %7, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 285265100) #8, !srcloc !42
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  %add.ptr8 = getelementptr i8, ptr %9, i32 1076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 285265100) #8, !srcloc !42
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 8
  %add.ptr10 = getelementptr i8, ptr %11, i32 1080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 285265100) #8, !srcloc !42
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 8
  %add.ptr12 = getelementptr i8, ptr %13, i32 1084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 285265100) #8, !srcloc !42
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 8
  %add.ptr14 = getelementptr i8, ptr %15, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 285265100) #8, !srcloc !42
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 8
  %add.ptr16 = getelementptr i8, ptr %17, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 285265100) #8, !srcloc !42
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 8
  %add.ptr18 = getelementptr i8, ptr %19, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 285265100) #8, !srcloc !42
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 8
  %add.ptr20 = getelementptr i8, ptr %21, i32 1100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 285265100) #8, !srcloc !42
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 8
  %add.ptr22 = getelementptr i8, ptr %23, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 285265100) #8, !srcloc !42
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 8
  %add.ptr24 = getelementptr i8, ptr %25, i32 1108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 285265100) #8, !srcloc !42
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 8
  %add.ptr26 = getelementptr i8, ptr %27, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 285265100) #8, !srcloc !42
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 8
  %add.ptr28 = getelementptr i8, ptr %29, i32 1116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 285265100) #8, !srcloc !42
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 8
  %add.ptr30 = getelementptr i8, ptr %31, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 285265100) #8, !srcloc !42
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 8
  %add.ptr32 = getelementptr i8, ptr %33, i32 1124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 50397248) #8, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_set_module_cfg(ptr nocapture noundef readonly %vfe, i8 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %base.i10 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i10, align 8
  %add.ptr.i11 = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = or i32 %2, 201326592
  %4 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i10, align 8
  %add.ptr2.i = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #8, !srcloc !42
  %6 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i10, align 8
  %add.ptr.i7 = getelementptr i8, ptr %7, i32 76
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #8, !srcloc !44
  %9 = or i32 %8, 100663296
  %10 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i10, align 8
  %add.ptr2.i9 = getelementptr i8, ptr %11, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9, i32 %9) #8, !srcloc !42
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = and i32 %2, -201326593
  %13 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i10, align 8
  %add.ptr2.i12 = getelementptr i8, ptr %14, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i12, i32 %12) #8, !srcloc !42
  %15 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i10, align 8
  %add.ptr.i14 = getelementptr i8, ptr %16, i32 76
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #8, !srcloc !44
  %18 = and i32 %17, -100663297
  %19 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i10, align 8
  %add.ptr2.i16 = getelementptr i8, ptr %20, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i16, i32 %18) #8, !srcloc !42
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
  %add.ptr = getelementptr i8, ptr %3, i32 2332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #8, !srcloc !42
  %fmt1 = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 3
  %4 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt1, align 8
  %6 = trunc i32 %5 to i16
  %conv = add i16 %6, -1
  %width2 = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width2, align 8
  %9 = trunc i32 %8 to i16
  %conv4 = add i16 %9, -1
  %conv5 = zext i16 %conv4 to i32
  %shl = shl nuw i32 %conv5, 16
  %conv6 = zext i16 %conv to i32
  %or = or i32 %shl, %conv6
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 8
  %add.ptr8 = getelementptr i8, ptr %12, i32 2336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %10) #8, !srcloc !42
  %13 = udiv i16 %conv, %conv4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %13)
  %cmp.i = icmp ugt i16 %13, 15
  br i1 %cmp.i, label %entry.vfe_calc_interp_reso.exit_crit_edge, label %if.end.i

entry.vfe_calc_interp_reso.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_calc_interp_reso.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %13)
  %cmp6.i = icmp ugt i16 %13, 7
  br i1 %cmp6.i, label %if.end.i.vfe_calc_interp_reso.exit_crit_edge, label %if.end9.i

if.end.i.vfe_calc_interp_reso.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_calc_interp_reso.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %13)
  %cmp13.i = icmp ugt i16 %13, 3
  %phi.cast = select i1 %cmp13.i, i32 2, i32 3
  br label %vfe_calc_interp_reso.exit

vfe_calc_interp_reso.exit:                        ; preds = %if.end9.i, %if.end.i.vfe_calc_interp_reso.exit_crit_edge, %entry.vfe_calc_interp_reso.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.vfe_calc_interp_reso.exit_crit_edge ], [ 1, %if.end.i.vfe_calc_interp_reso.exit_crit_edge ], [ %phi.cast, %if.end9.i ]
  %shl11 = shl nuw nsw i32 16384, %retval.0.i
  %mul = mul i32 %shl11, %conv6
  %div = sdiv i32 %mul, %conv5
  %shl14 = shl nuw nsw i32 %retval.0.i, 28
  %or15 = or i32 %shl14, %div
  %14 = tail call i32 @llvm.bswap.i32(i32 %or15)
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 8
  %add.ptr17 = getelementptr i8, ptr %16, i32 2340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %14) #8, !srcloc !42
  %height = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 3, i32 0, i32 1
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %19 = trunc i32 %18 to i16
  %conv21 = add i16 %19, -1
  %height23 = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %height23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height23, align 4
  %22 = trunc i32 %21 to i16
  %conv25 = add i16 %22, -1
  %conv26 = zext i16 %conv25 to i32
  %shl27 = shl nuw i32 %conv26, 16
  %conv28 = zext i16 %conv21 to i32
  %or29 = or i32 %shl27, %conv28
  %23 = tail call i32 @llvm.bswap.i32(i32 %or29)
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 8
  %add.ptr31 = getelementptr i8, ptr %25, i32 2356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %23) #8, !srcloc !42
  %26 = udiv i16 %conv21, %conv25
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %26)
  %cmp.i172 = icmp ugt i16 %26, 15
  br i1 %cmp.i172, label %vfe_calc_interp_reso.exit.vfe_calc_interp_reso.exit179_crit_edge, label %if.end.i174

vfe_calc_interp_reso.exit.vfe_calc_interp_reso.exit179_crit_edge: ; preds = %vfe_calc_interp_reso.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_calc_interp_reso.exit179

if.end.i174:                                      ; preds = %vfe_calc_interp_reso.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %26)
  %cmp6.i173 = icmp ugt i16 %26, 7
  br i1 %cmp6.i173, label %if.end.i174.vfe_calc_interp_reso.exit179_crit_edge, label %if.end9.i177

if.end.i174.vfe_calc_interp_reso.exit179_crit_edge: ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_calc_interp_reso.exit179

if.end9.i177:                                     ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %26)
  %cmp13.i175 = icmp ugt i16 %26, 3
  %phi.cast196 = select i1 %cmp13.i175, i32 2, i32 3
  br label %vfe_calc_interp_reso.exit179

vfe_calc_interp_reso.exit179:                     ; preds = %if.end9.i177, %if.end.i174.vfe_calc_interp_reso.exit179_crit_edge, %vfe_calc_interp_reso.exit.vfe_calc_interp_reso.exit179_crit_edge
  %retval.0.i178 = phi i32 [ 0, %vfe_calc_interp_reso.exit.vfe_calc_interp_reso.exit179_crit_edge ], [ 1, %if.end.i174.vfe_calc_interp_reso.exit179_crit_edge ], [ %phi.cast196, %if.end9.i177 ]
  %shl36 = shl nuw nsw i32 16384, %retval.0.i178
  %mul37 = mul i32 %shl36, %conv28
  %div39 = sdiv i32 %mul37, %conv26
  %shl41 = shl nuw nsw i32 %retval.0.i178, 28
  %or42 = or i32 %shl41, %div39
  %27 = tail call i32 @llvm.bswap.i32(i32 %or42)
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 8
  %add.ptr44 = getelementptr i8, ptr %29, i32 2360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %27) #8, !srcloc !42
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 8
  %add.ptr46 = getelementptr i8, ptr %31, i32 2376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 50331648) #8, !srcloc !42
  %32 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fmt1, align 8
  %34 = trunc i32 %33 to i16
  %conv51 = add i16 %34, -1
  %35 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %width2, align 8
  %div54170 = lshr i32 %36, 1
  %37 = trunc i32 %div54170 to i16
  %conv56 = add i16 %37, -1
  %conv57 = zext i16 %conv56 to i32
  %shl58 = shl nuw i32 %conv57, 16
  %conv59 = zext i16 %conv51 to i32
  %or60 = or i32 %shl58, %conv59
  %38 = tail call i32 @llvm.bswap.i32(i32 %or60)
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 8
  %add.ptr62 = getelementptr i8, ptr %40, i32 2380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %38) #8, !srcloc !42
  %41 = udiv i16 %conv51, %conv56
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %41)
  %cmp.i180 = icmp ugt i16 %41, 15
  br i1 %cmp.i180, label %vfe_calc_interp_reso.exit179.vfe_calc_interp_reso.exit187_crit_edge, label %if.end.i182

vfe_calc_interp_reso.exit179.vfe_calc_interp_reso.exit187_crit_edge: ; preds = %vfe_calc_interp_reso.exit179
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_calc_interp_reso.exit187

if.end.i182:                                      ; preds = %vfe_calc_interp_reso.exit179
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %41)
  %cmp6.i181 = icmp ugt i16 %41, 7
  br i1 %cmp6.i181, label %if.end.i182.vfe_calc_interp_reso.exit187_crit_edge, label %if.end9.i185

if.end.i182.vfe_calc_interp_reso.exit187_crit_edge: ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_calc_interp_reso.exit187

if.end9.i185:                                     ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %41)
  %cmp13.i183 = icmp ugt i16 %41, 3
  %phi.cast197 = select i1 %cmp13.i183, i32 2, i32 3
  br label %vfe_calc_interp_reso.exit187

vfe_calc_interp_reso.exit187:                     ; preds = %if.end9.i185, %if.end.i182.vfe_calc_interp_reso.exit187_crit_edge, %vfe_calc_interp_reso.exit179.vfe_calc_interp_reso.exit187_crit_edge
  %retval.0.i186 = phi i32 [ 0, %vfe_calc_interp_reso.exit179.vfe_calc_interp_reso.exit187_crit_edge ], [ 1, %if.end.i182.vfe_calc_interp_reso.exit187_crit_edge ], [ %phi.cast197, %if.end9.i185 ]
  %shl67 = shl nuw nsw i32 16384, %retval.0.i186
  %mul68 = mul i32 %shl67, %conv59
  %div70 = sdiv i32 %mul68, %conv57
  %shl72 = shl nuw nsw i32 %retval.0.i186, 28
  %or73 = or i32 %shl72, %div70
  %42 = tail call i32 @llvm.bswap.i32(i32 %or73)
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 8
  %add.ptr75 = getelementptr i8, ptr %44, i32 2384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %42) #8, !srcloc !42
  %45 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %1)
  %cmp = icmp eq i32 %1, 842094158
  br i1 %cmp, label %vfe_calc_interp_reso.exit187.if.then_crit_edge, label %lor.lhs.false

vfe_calc_interp_reso.exit187.if.then_crit_edge:   ; preds = %vfe_calc_interp_reso.exit187
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %vfe_calc_interp_reso.exit187
  %47 = ptrtoint ptr %height23 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %height23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825382478, i32 %1)
  %cmp86 = icmp eq i32 %1, 825382478
  br i1 %cmp86, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %vfe_calc_interp_reso.exit187.if.then_crit_edge
  %49 = ptrtoint ptr %height23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height23, align 4
  %div90171 = lshr i32 %50, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %output.0.in.in = phi i32 [ %div90171, %if.then ], [ %48, %lor.lhs.false.if.end_crit_edge ]
  %output.0.in = trunc i32 %output.0.in.in to i16
  %output.0 = add i16 %output.0.in, -1
  %51 = trunc i32 %46 to i16
  %conv80 = add i16 %51, -1
  %conv93 = zext i16 %output.0 to i32
  %shl94 = shl nuw i32 %conv93, 16
  %conv95 = zext i16 %conv80 to i32
  %or96 = or i32 %shl94, %conv95
  %52 = tail call i32 @llvm.bswap.i32(i32 %or96)
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 8
  %add.ptr98 = getelementptr i8, ptr %54, i32 2400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %52) #8, !srcloc !42
  %55 = udiv i16 %conv80, %output.0
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %55)
  %cmp.i188 = icmp ugt i16 %55, 15
  br i1 %cmp.i188, label %if.end.vfe_calc_interp_reso.exit195_crit_edge, label %if.end.i190

if.end.vfe_calc_interp_reso.exit195_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_calc_interp_reso.exit195

if.end.i190:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %55)
  %cmp6.i189 = icmp ugt i16 %55, 7
  br i1 %cmp6.i189, label %if.end.i190.vfe_calc_interp_reso.exit195_crit_edge, label %if.end9.i193

if.end.i190.vfe_calc_interp_reso.exit195_crit_edge: ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_calc_interp_reso.exit195

if.end9.i193:                                     ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %55)
  %cmp13.i191 = icmp ugt i16 %55, 3
  %phi.cast198 = select i1 %cmp13.i191, i32 2, i32 3
  br label %vfe_calc_interp_reso.exit195

vfe_calc_interp_reso.exit195:                     ; preds = %if.end9.i193, %if.end.i190.vfe_calc_interp_reso.exit195_crit_edge, %if.end.vfe_calc_interp_reso.exit195_crit_edge
  %retval.0.i194 = phi i32 [ 0, %if.end.vfe_calc_interp_reso.exit195_crit_edge ], [ 1, %if.end.i190.vfe_calc_interp_reso.exit195_crit_edge ], [ %phi.cast198, %if.end9.i193 ]
  %shl103 = shl nuw nsw i32 16384, %retval.0.i194
  %mul104 = mul i32 %shl103, %conv95
  %div106 = sdiv i32 %mul104, %conv93
  %shl108 = shl nuw nsw i32 %retval.0.i194, 28
  %or109 = or i32 %shl108, %div106
  %56 = tail call i32 @llvm.bswap.i32(i32 %or109)
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 8
  %add.ptr111 = getelementptr i8, ptr %58, i32 2404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 %56) #8, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_set_rdi_cid(ptr nocapture noundef readonly %vfe, i32 noundef %id, i8 noundef zeroext %cid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %id, 2
  %add = add i32 %mul, 1132
  %base.i = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !44
  %3 = and i32 %2, 268435455
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #8, !srcloc !42
  %conv = zext i8 %cid to i32
  %shl = shl nuw nsw i32 %conv, 4
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #8, !srcloc !44
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %or.i = or i32 %9, %shl
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 8
  %add.ptr2.i7 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i7, i32 %10) #8, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_set_realign_cfg(ptr nocapture noundef readonly %vfe, ptr nocapture noundef readonly %line, i8 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat = getelementptr inbounds %struct.vfe_line, ptr %line, i32 0, i32 6, i32 4, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1448695129, label %entry.if.end_crit_edge
    i32 1431918169, label %entry.if.end_crit_edge29
    i32 1498765654, label %entry.if.end_crit_edge30
    i32 1498831189, label %entry.if.end_crit_edge31
  ]

entry.if.end_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge29, %entry.if.end_crit_edge30, %entry.if.end_crit_edge31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %base.i26 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %3 = ptrtoint ptr %base.i26 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i26, align 8
  %add.ptr.i27 = getelementptr i8, ptr %4, i32 76
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #8
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = or i32 %5, 131072
  %7 = ptrtoint ptr %base.i26 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i26, align 8
  %add.ptr2.i = getelementptr i8, ptr %8, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %6) #8, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 1498831189, i32 %1)
  %switch.selectcmp.case1 = icmp eq i32 %1, 1498831189
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %1)
  %switch.selectcmp.case2 = icmp eq i32 %1, 1448695129
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %9 = select i1 %switch.selectcmp, i32 402653184, i32 335544320
  %10 = ptrtoint ptr %base.i26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i26, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 2732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #8, !srcloc !42
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = and i32 %5, -131073
  %13 = ptrtoint ptr %base.i26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i26, align 8
  %add.ptr2.i28 = getelementptr i8, ptr %14, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i28, i32 %12) #8, !srcloc !42
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %entry.cleanup_crit_edge
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
  %add.ptr = getelementptr i8, ptr %1, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1448433238) #8, !srcloc !42
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 -1448433238) #8, !srcloc !42
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add.ptr4 = getelementptr i8, ptr %5, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -1448433238) #8, !srcloc !42
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %add.ptr6 = getelementptr i8, ptr %7, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -1448433238) #8, !srcloc !42
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  %add.ptr8 = getelementptr i8, ptr %9, i32 1044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -1448433238) #8, !srcloc !42
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 8
  %add.ptr10 = getelementptr i8, ptr %11, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 -1448433238) #8, !srcloc !42
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 8
  %add.ptr12 = getelementptr i8, ptr %13, i32 1052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 -1448433238) #8, !srcloc !42
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 8
  %add.ptr14 = getelementptr i8, ptr %15, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 -1448476416) #8, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfe_set_xbar_cfg(ptr nocapture noundef readonly %vfe, ptr nocapture noundef readonly %output, i8 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat = getelementptr i8, ptr %output, i32 -548
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 842094158, label %entry.sw.bb_crit_edge
    i32 825382478, label %entry.sw.bb_crit_edge129
    i32 909203022, label %entry.sw.bb_crit_edge130
    i32 825644622, label %entry.sw.bb_crit_edge131
    i32 1448695129, label %entry.if.then51_crit_edge
    i32 1431918169, label %entry.if.then51_crit_edge132
    i32 1498765654, label %entry.if.end53_crit_edge
    i32 1498831189, label %entry.if.end53_crit_edge133
  ]

entry.if.end53_crit_edge133:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

entry.if.then51_crit_edge132:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51

entry.if.then51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51

entry.sw.bb_crit_edge131:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge130:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge129:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge129, %entry.sw.bb_crit_edge130, %entry.sw.bb_crit_edge131
  %wm_idx = getelementptr inbounds %struct.vfe_output, ptr %output, i32 0, i32 1
  %3 = ptrtoint ptr %wm_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wm_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp eq i8 %enable, 0
  %5 = lshr i8 %4, 1
  %div9 = zext i8 %5 to i32
  %mul10 = shl nuw nsw i32 %div9, 2
  %add11 = add nuw nsw i32 %mul10, 144
  %base.i111 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %6 = ptrtoint ptr %base.i111 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i111, align 8
  %add.ptr.i112 = getelementptr i8, ptr %7, i32 %add11
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #8
  %9 = ptrtoint ptr %base.i111 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i111, align 8
  %add.ptr2.i113 = getelementptr i8, ptr %10, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i113, i32 %8) #8
  %11 = add nsw i32 %1, -842094158
  %switch.and = and i32 %11, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %12 = select i1 %switch.selectcmp, i32 52, i32 4
  %arrayidx20 = getelementptr %struct.vfe_output, ptr %output, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx20, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp23.not = icmp eq i8 %15, 0
  %shl26 = shl nuw nsw i32 %12, 16
  %spec.select = select i1 %cmp23.not, i32 %12, i32 %shl26
  %16 = lshr i8 %14, 1
  %div40 = zext i8 %16 to i32
  %mul41 = shl nuw nsw i32 %div40, 2
  %add42 = add nuw nsw i32 %mul41, 144
  %base.i117 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %17 = ptrtoint ptr %base.i117 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i117, align 8
  %add.ptr.i118 = getelementptr i8, ptr %18, i32 %add42
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118) #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  br i1 %tobool.not, label %if.else36, label %if.then29

if.then29:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %20, %spec.select
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %22 = ptrtoint ptr %base.i117 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i117, align 8
  %add.ptr2.i116 = getelementptr i8, ptr %23, i32 %add42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i116, i32 %21) #8, !srcloc !42
  br label %sw.epilog

if.else36:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i = xor i32 %spec.select, -1
  %and.i = and i32 %20, %neg.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %25 = ptrtoint ptr %base.i117 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i117, align 8
  %add.ptr2.i119 = getelementptr i8, ptr %26, i32 %add42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i119, i32 %24) #8, !srcloc !42
  br label %sw.epilog

if.then51:                                        ; preds = %entry.if.then51_crit_edge, %entry.if.then51_crit_edge132
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %entry.if.end53_crit_edge, %entry.if.end53_crit_edge133
  %reg.3 = phi i32 [ 60, %if.then51 ], [ 12, %entry.if.end53_crit_edge ], [ 12, %entry.if.end53_crit_edge133 ]
  %wm_idx54 = getelementptr inbounds %struct.vfe_output, ptr %output, i32 0, i32 1
  %27 = ptrtoint ptr %wm_idx54 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %wm_idx54, align 1
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp58.not = icmp eq i8 %29, 0
  %shl61 = shl nuw nsw i32 %reg.3, 16
  %spec.select110 = select i1 %cmp58.not, i32 %reg.3, i32 %shl61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool63.not = icmp eq i8 %enable, 0
  %30 = lshr i8 %28, 1
  %div75 = zext i8 %30 to i32
  %mul76 = shl nuw nsw i32 %div75, 2
  %add77 = add nuw nsw i32 %mul76, 144
  %base.i124 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %31 = ptrtoint ptr %base.i124 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i124, align 8
  %add.ptr.i125 = getelementptr i8, ptr %32, i32 %add77
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  br i1 %tobool63.not, label %if.else71, label %if.then64

if.then64:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %or.i122 = or i32 %34, %spec.select110
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i122) #8
  %36 = ptrtoint ptr %base.i124 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i124, align 8
  %add.ptr2.i123 = getelementptr i8, ptr %37, i32 %add77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i123, i32 %35) #8, !srcloc !42
  br label %sw.epilog

if.else71:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i126 = xor i32 %spec.select110, -1
  %and.i127 = and i32 %34, %neg.i126
  %38 = tail call i32 @llvm.bswap.i32(i32 %and.i127) #8
  %39 = ptrtoint ptr %base.i124 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i124, align 8
  %add.ptr2.i128 = getelementptr i8, ptr %40, i32 %add77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i128, i32 %38) #8, !srcloc !42
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else71, %if.then64, %if.else36, %if.then29, %entry.sw.epilog_crit_edge
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
  %mul2 = mul nuw nsw i32 %conv1, 44
  %add3 = add nuw nsw i32 %mul2, 180
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #8, !srcloc !42
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = and i32 %2, -33554433
  %7 = ptrtoint ptr %base.i6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i6, align 8
  %add.ptr2.i8 = getelementptr i8, ptr %8, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8, i32 %6) #8, !srcloc !42
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
  %pixelformat.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %pixelformat.i, align 1
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %5, label %if.then.vfe_get_wm_sizes.exit_crit_edge [
    i32 842094158, label %if.then.sw.bb.i_crit_edge
    i32 825382478, label %if.then.sw.bb.i_crit_edge48
    i32 909203022, label %if.then.sw.bb10.i_crit_edge
    i32 825644622, label %if.then.sw.bb10.i_crit_edge49
    i32 1448695129, label %if.then.sw.bb15.i_crit_edge
    i32 1431918169, label %if.then.sw.bb15.i_crit_edge50
    i32 1498765654, label %if.then.sw.bb15.i_crit_edge51
    i32 1498831189, label %if.then.sw.bb15.i_crit_edge52
  ]

if.then.sw.bb15.i_crit_edge52:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i

if.then.sw.bb15.i_crit_edge51:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i

if.then.sw.bb15.i_crit_edge50:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i

if.then.sw.bb15.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i

if.then.sw.bb10.i_crit_edge49:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10.i

if.then.sw.bb10.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10.i

if.then.sw.bb.i_crit_edge48:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then.vfe_get_wm_sizes.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_get_wm_sizes.exit

sw.bb.i:                                          ; preds = %if.then.sw.bb.i_crit_edge, %if.then.sw.bb.i_crit_edge48
  %bytesperline4.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %bytesperline4.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %bytesperline4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %plane)
  %cmp.i = icmp eq i8 %plane, 1
  %9 = zext i1 %cmp.i to i16
  %spec.select = lshr i16 %conv3.i, %9
  br label %vfe_get_wm_sizes.exit

sw.bb10.i:                                        ; preds = %if.then.sw.bb10.i_crit_edge, %if.then.sw.bb10.i_crit_edge49
  %bytesperline13.i = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %bytesperline13.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %bytesperline13.i, align 1
  br label %vfe_get_wm_sizes.exit

sw.bb15.i:                                        ; preds = %if.then.sw.bb15.i_crit_edge, %if.then.sw.bb15.i_crit_edge50, %if.then.sw.bb15.i_crit_edge51, %if.then.sw.bb15.i_crit_edge52
  %idxprom.i = zext i8 %plane to i32
  %bytesperline18.i = getelementptr %struct.v4l2_pix_format_mplane, ptr %pix, i32 0, i32 5, i32 %idxprom.i, i32 1
  %12 = ptrtoint ptr %bytesperline18.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %bytesperline18.i, align 1
  br label %vfe_get_wm_sizes.exit

vfe_get_wm_sizes.exit:                            ; preds = %sw.bb15.i, %sw.bb10.i, %sw.bb.i, %if.then.vfe_get_wm_sizes.exit_crit_edge
  %height.0 = phi i16 [ %conv3.i, %if.then.vfe_get_wm_sizes.exit_crit_edge ], [ %conv3.i, %sw.bb15.i ], [ %conv3.i, %sw.bb10.i ], [ %spec.select, %sw.bb.i ]
  %bytesperline.0 = phi i32 [ 0, %if.then.vfe_get_wm_sizes.exit_crit_edge ], [ %13, %sw.bb15.i ], [ %11, %sw.bb10.i ], [ %8, %sw.bb.i ]
  %conv = and i32 %1, 65535
  %14 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %5, label %vfe_get_wm_sizes.exit.vfe_word_per_line_by_pixel.exit_crit_edge [
    i32 842094158, label %vfe_get_wm_sizes.exit.sw.bb.i44_crit_edge
    i32 825382478, label %vfe_get_wm_sizes.exit.sw.bb.i44_crit_edge53
    i32 909203022, label %vfe_get_wm_sizes.exit.sw.bb.i44_crit_edge54
    i32 825644622, label %vfe_get_wm_sizes.exit.sw.bb.i44_crit_edge55
    i32 1448695129, label %vfe_get_wm_sizes.exit.sw.bb1.i_crit_edge
    i32 1431918169, label %vfe_get_wm_sizes.exit.sw.bb1.i_crit_edge56
    i32 1498831189, label %vfe_get_wm_sizes.exit.sw.bb1.i_crit_edge57
    i32 1498765654, label %vfe_get_wm_sizes.exit.sw.bb1.i_crit_edge58
  ]

vfe_get_wm_sizes.exit.sw.bb1.i_crit_edge58:       ; preds = %vfe_get_wm_sizes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

vfe_get_wm_sizes.exit.sw.bb1.i_crit_edge57:       ; preds = %vfe_get_wm_sizes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

vfe_get_wm_sizes.exit.sw.bb1.i_crit_edge56:       ; preds = %vfe_get_wm_sizes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

vfe_get_wm_sizes.exit.sw.bb1.i_crit_edge:         ; preds = %vfe_get_wm_sizes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

vfe_get_wm_sizes.exit.sw.bb.i44_crit_edge55:      ; preds = %vfe_get_wm_sizes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i44

vfe_get_wm_sizes.exit.sw.bb.i44_crit_edge54:      ; preds = %vfe_get_wm_sizes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i44

vfe_get_wm_sizes.exit.sw.bb.i44_crit_edge53:      ; preds = %vfe_get_wm_sizes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i44

vfe_get_wm_sizes.exit.sw.bb.i44_crit_edge:        ; preds = %vfe_get_wm_sizes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i44

vfe_get_wm_sizes.exit.vfe_word_per_line_by_pixel.exit_crit_edge: ; preds = %vfe_get_wm_sizes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfe_word_per_line_by_pixel.exit

sw.bb.i44:                                        ; preds = %vfe_get_wm_sizes.exit.sw.bb.i44_crit_edge, %vfe_get_wm_sizes.exit.sw.bb.i44_crit_edge53, %vfe_get_wm_sizes.exit.sw.bb.i44_crit_edge54, %vfe_get_wm_sizes.exit.sw.bb.i44_crit_edge55
  %sub.i = add nuw nsw i32 %conv, 7
  %div8.i = lshr i32 %sub.i, 3
  br label %vfe_word_per_line_by_pixel.exit

sw.bb1.i:                                         ; preds = %vfe_get_wm_sizes.exit.sw.bb1.i_crit_edge, %vfe_get_wm_sizes.exit.sw.bb1.i_crit_edge56, %vfe_get_wm_sizes.exit.sw.bb1.i_crit_edge57, %vfe_get_wm_sizes.exit.sw.bb1.i_crit_edge58
  %mul2.i = shl nuw nsw i32 %conv, 1
  %sub4.i = add nuw nsw i32 %mul2.i, 7
  %div57.i = lshr i32 %sub4.i, 3
  br label %vfe_word_per_line_by_pixel.exit

vfe_word_per_line_by_pixel.exit:                  ; preds = %sw.bb1.i, %sw.bb.i44, %vfe_get_wm_sizes.exit.vfe_word_per_line_by_pixel.exit_crit_edge
  %val.0.i = phi i32 [ 0, %vfe_get_wm_sizes.exit.vfe_word_per_line_by_pixel.exit_crit_edge ], [ %div57.i, %sw.bb1.i ], [ %div8.i, %sw.bb.i44 ]
  %conv2 = zext i16 %height.0 to i32
  %sub = add nsw i32 %conv2, -1
  %conv3 = shl nuw nsw i32 %val.0.i, 14
  %add = and i32 %conv3, 1073725440
  %15 = add nuw nsw i32 %add, 49152
  %sub4 = and i32 %15, 2147418112
  %shl = add nsw i32 %sub4, -65536
  %or = or i32 %shl, %sub
  %16 = tail call i32 @llvm.bswap.i32(i32 %or)
  %base = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 8
  %mul = mul i32 %wm, 44
  %add5 = add i32 %mul, 188
  %add.ptr = getelementptr i8, ptr %18, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #8, !srcloc !42
  %sub10 = shl nuw nsw i32 %conv2, 2
  %shl11 = add nsw i32 %sub10, -4
  %conv6 = shl i32 %bytesperline.0, 12
  %sub.i45 = and i32 %conv6, 268431360
  %19 = add nuw nsw i32 %sub.i45, 28672
  %conv13 = and i32 %19, 536838144
  %20 = add nuw nsw i32 %conv13, 32768
  %shl16 = and i32 %20, 1073676288
  %or12 = or i32 %shl11, %shl16
  %or17 = or i32 %or12, 3
  %21 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 8
  %add20 = add i32 %mul, 192
  %add.ptr21 = getelementptr i8, ptr %23, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %21) #8, !srcloc !42
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base22 = getelementptr inbounds %struct.vfe_device, ptr %vfe, i32 0, i32 2
  %24 = ptrtoint ptr %base22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base22, align 8
  %mul23 = mul i32 %wm, 44
  %add24 = add i32 %mul23, 188
  %add.ptr25 = getelementptr i8, ptr %25, i32 %add24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #8, !srcloc !42
  %26 = ptrtoint ptr %base22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base22, align 8
  %add28 = add i32 %mul23, 192
  %add.ptr29 = getelementptr i8, ptr %27, i32 %add28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #8, !srcloc !42
  br label %if.end

if.end:                                           ; preds = %if.else, %vfe_word_per_line_by_pixel.exit
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
  %mul = mul nuw nsw i32 %conv2, 44
  %add = add nuw nsw i32 %mul, 184
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !42
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
  %mul = mul nuw nsw i32 %conv, 44
  %add = add nuw nsw i32 %mul, 200
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #8, !srcloc !42
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
  %mul = mul nuw nsw i32 %conv, 44
  %add = add nuw nsw i32 %mul, 180
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !44
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %5) #8, !srcloc !42
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
  %mul = mul nuw nsw i32 %conv, 44
  %add = add nuw nsw i32 %mul, 196
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !42
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
  %mul = mul nuw nsw i32 %conv, 44
  %add = add nuw nsw i32 %mul, 164
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !42
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
  %mul = mul nuw nsw i32 %conv, 44
  %add = add nuw nsw i32 %mul, 172
  %add.ptr = getelementptr i8, ptr %2, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !42
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
  %add.ptr = getelementptr i8, ptr %1, i32 824
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !44
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
  %mul2 = mul nuw nsw i32 %conv1, 44
  %add3 = add nuw nsw i32 %mul2, 160
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %3) #8, !srcloc !42
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = and i32 %2, -16777217
  %7 = ptrtoint ptr %base.i6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i6, align 8
  %add.ptr2.i8 = getelementptr i8, ptr %8, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8, i32 %6) #8, !srcloc !42
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @vfe_ops_4_7, !1, !"vfe_ops_4_7", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-4-7.c", i32 1195, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-4-7.c", i32 261, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @vfe_hw_version.__UNIQUE_ID_ddebug298, !3, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-4-7.c", i32 1055, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vfe_isr.__UNIQUE_ID_ddebug299, !9, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-4-7.c", i32 1135, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @vfe_pm_domain_on._entry, !13, !"_entry", i1 false, i1 false}
!18 = !{ptr @vfe_pm_domain_on._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @vfe_ops_gen1_4_7, !20, !"vfe_ops_gen1_4_7", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-4-7.c", i32 1149, i32 37}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-4-7.c", i32 1033, i32 3}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @vfe_camif_wait_for_stop._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @vfe_camif_wait_for_stop._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/qcom/camss/camss-vfe-4-7.c", i32 1146, i32 2}
!28 = !{ptr @vfe_violation_read._rs, !27, !"_rs", i1 false, i1 false}
!29 = !{ptr @__func__.vfe_violation_read, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @vfe_violation_read._entry, !27, !"_entry", i1 false, i1 false}
!32 = !{ptr @vfe_violation_read._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 4894072}
!43 = !{i64 2156459810}
!44 = !{i64 4894490}
!45 = !{i64 2148312819, i64 2148312824, i64 2148312837, i64 2148312881, i64 2148312915, i64 2148312936}
!46 = !{!"auto-init"}
!47 = !{i64 2156494912}
!48 = !{i64 2156471751}
!49 = !{i64 2156472116}
!50 = !{i64 2156464702}
!51 = !{i64 2156465190}
!52 = !{i64 2156487677}
!53 = !{i64 2156488163}
!54 = !{i64 2156485342}
